﻿using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System;
using System.Collections.Generic;

namespace Leap.Unity.InputModule {
  public class CompressibleUI : MonoBehaviour, ILeapWidget {
    public Layer[] Layers;
    [System.Serializable]
    public struct Layer {
      public RectTransform LayerTransform;
      public float MaxFloatDistance;
      public float MinFloatDistance;
      public UnityEngine.UI.Image Shadow;
      public bool ShadowOnAboveLayer;
      public bool TriggerLayerEvent;

      [HideInInspector]
      public float MaxShadowOpacity;
      [HideInInspector]
      public float CurrentFloatingDistance;
      [HideInInspector]
      public bool touchingFinger;
      [HideInInspector]
      public float distanceToAboveLayer;
      [HideInInspector]
      public float maxDistanceToAboveLayer;
    }

    public float ExpandSpeed = 0.1f;
    public float ContractSpeed = 0.1f;
    public float PushPaddingDistance = 0.01f;
    //public bool RetractWhenOutsideofTouchingDistance = false;

    public UnityEvent LayerCollapseStateChange;

    //How quickly the button layers are Lerping
    private float curLerpSpeed = 0.1f;

    //How far the finger is from the base of the button
    private float HoveringDistance = 0f;

    //Whether or not the buttons are currently in float mode
    private bool currentlyFloating = false;

    private float TimeLastHovered = 0f;

    //Reset the Positions of the UI Elements on both Start and Quit
    void Start() {
      for (int i = 0; i < Layers.Length; i++) {
        if (Layers[i].LayerTransform != null) {
          Vector3 LocalPosition = transform.InverseTransformPoint(Layers[i].LayerTransform.position);
          Layers[i].LayerTransform.position = transform.TransformPoint(new Vector3(LocalPosition.x, LocalPosition.y, 0f));

          if (Layers[i].Shadow != null) {
            Layers[i].MaxShadowOpacity = Layers[i].Shadow.color.a;
            Layers[i].Shadow.color = new Color(Layers[i].Shadow.color.r, Layers[i].Shadow.color.g, Layers[i].Shadow.color.b, 0f);
          }
        } else {
          Debug.LogWarning("Ensure that the layers that you have allotted have UI Elements in them!");
        }
      }
      //if (!RetractWhenOutsideofTouchingDistance) {
        Expand();
      //}
    }

    void OnApplicationQuit() {
      for (int i = 0; i < Layers.Length; i++) {
        if (Layers[i].LayerTransform != null) {
          Vector3 LocalPosition = transform.InverseTransformPoint(Layers[i].LayerTransform.position);
          Layers[i].LayerTransform.position = transform.TransformPoint(new Vector3(LocalPosition.x, LocalPosition.y, 0f));
        }
      }
    }

    void Update() {
      //Reset Hovering Distance when "HoverDistance" isn't being called
      if (Time.time > TimeLastHovered + 0.1f && HoveringDistance != 100f) {
        HoveringDistance = 100f;
      }
      for (int i = 0; i < Layers.Length; i++) {
        //Only float the UI Elements when a hand is near a set of buttons...
        if (currentlyFloating) {
          if (Layers[i].LayerTransform != null) {
            if (HoveringDistance < Layers[i].MaxFloatDistance && HoveringDistance > Layers[i].MinFloatDistance) {
              Layers[i].CurrentFloatingDistance = Mathf.Lerp(Layers[i].CurrentFloatingDistance, HoveringDistance, 0.2f); //Set to 1f for responsive touching...
              if (Layers[i].TriggerLayerEvent && !Layers[i].touchingFinger) {
                Layers[i].touchingFinger = true;
                Graphic image = Layers[i].LayerTransform.GetComponent<Graphic>();
                if (image != null) {
                  image.color = new Color(image.color.r - 0.175f, image.color.g - 0.175f, image.color.b - 0.175f, image.color.a);
                }
                LayerCollapseStateChange.Invoke();
              }
            } else if (HoveringDistance < Layers[i].MinFloatDistance) {
              Layers[i].CurrentFloatingDistance = Mathf.Lerp(Layers[i].CurrentFloatingDistance, Layers[i].MinFloatDistance, curLerpSpeed);
              if (Layers[i].TriggerLayerEvent && !Layers[i].touchingFinger) {
                Layers[i].touchingFinger = true;
                Graphic image = Layers[i].LayerTransform.GetComponent<Graphic>();
                if (image != null) {
                  image.color = new Color(image.color.r - 0.175f, image.color.g - 0.175f, image.color.b - 0.175f, image.color.a);
                }
                LayerCollapseStateChange.Invoke();
              }
            } else {
              Layers[i].CurrentFloatingDistance = Mathf.Lerp(Layers[i].CurrentFloatingDistance, Layers[i].MaxFloatDistance, curLerpSpeed);
              if (Layers[i].TriggerLayerEvent && Layers[i].touchingFinger) {
                Layers[i].touchingFinger = false;
                Graphic image = Layers[i].LayerTransform.GetComponent<Graphic>();
                if (image != null) {
                  image.color = new Color(image.color.r + 0.175f, image.color.g + 0.175f, image.color.b + 0.175f, image.color.a);
                }
                LayerCollapseStateChange.Invoke();
              }
            }
          }
          //else Just lay them flat so they're not bothering any cursors.
        } else {
          if (Layers[i].LayerTransform != null) {
            Layers[i].CurrentFloatingDistance = Mathf.Lerp(Layers[i].CurrentFloatingDistance, 0f, curLerpSpeed);
            if (Layers[i].TriggerLayerEvent && Layers[i].touchingFinger) {
              Layers[i].touchingFinger = false;
              Graphic image = Layers[i].LayerTransform.GetComponent<Graphic>();
              if (image != null) {
                image.color = new Color(image.color.r + 0.175f, image.color.g + 0.175f, image.color.b + 0.175f, image.color.a);
              }
            }
          }
        }

        //If we have a shadow, let's lerp its opacity based on this element's distance to the layer above.
        if (Layers[i].Shadow != null) {
          if (Layers[i].ShadowOnAboveLayer) {
            if (i == 0) {
              Layers[0].distanceToAboveLayer = Layers[0].CurrentFloatingDistance;
              Layers[0].maxDistanceToAboveLayer = Layers[0].MaxFloatDistance;
            } else {
              Layers[i].distanceToAboveLayer = Layers[i].CurrentFloatingDistance - Layers[i - 1].CurrentFloatingDistance;
              Layers[i].maxDistanceToAboveLayer = Layers[i].MaxFloatDistance - Layers[i - 1].MaxFloatDistance;
            }
            Layers[i].Shadow.color = new Color(Layers[i].Shadow.color.r, Layers[i].Shadow.color.g, Layers[i].Shadow.color.b, Layers[i].distanceToAboveLayer.Remap(0f, Layers[i].maxDistanceToAboveLayer, 0f, Layers[i].MaxShadowOpacity));
          } else {
            Layers[i].Shadow.color = new Color(Layers[i].Shadow.color.r, Layers[i].Shadow.color.g, Layers[i].Shadow.color.b, Layers[i].CurrentFloatingDistance.Remap(Layers[i].MinFloatDistance, Layers[i].MaxFloatDistance, 0f, Layers[i].MaxShadowOpacity));
          }
        }
        if (Layers[i].LayerTransform != null) {
          Vector3 LocalPosition = transform.InverseTransformPoint(Layers[i].LayerTransform.position);
          Layers[i].LayerTransform.position = transform.TransformPoint(new Vector3(LocalPosition.x, LocalPosition.y, -Layers[i].CurrentFloatingDistance / transform.lossyScale.z));
        }
      }
    }

    public void HoverDistance(float distance) {
      HoveringDistance = distance - PushPaddingDistance;
      TimeLastHovered = Time.time;
    }

    public void Expand() {
      currentlyFloating = true;
      curLerpSpeed = ExpandSpeed;
    }

    public void Retract() {
      //if (RetractWhenOutsideofTouchingDistance) {
        currentlyFloating = false;
        curLerpSpeed = ContractSpeed;
      //}
    }

    public void DivideLayerHeightsOnToggle(Toggle toggle) {
      if (toggle.isOn) {
        for (int i = 0; i < Layers.Length; i++) {
          Layers[i].MinFloatDistance /= 2f;
          Layers[i].MaxFloatDistance /= 2f;
        }
      } else {
        for (int i = 0; i < Layers.Length; i++) {
          Layers[i].MinFloatDistance *= 2f;
          Layers[i].MaxFloatDistance *= 2f;
        }
      }
    }
  }

  public static class ExtensionMethods {
    public static float Remap(this float value, float from1, float to1, float from2, float to2) {
      return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
    }
  }
}