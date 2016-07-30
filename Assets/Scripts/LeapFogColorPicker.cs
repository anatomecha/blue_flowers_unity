using UnityEngine;
using System.Collections;
using Leap;

namespace Leap.Unity
{
    public class LeapFogColorPicker : MonoBehaviour
    {
        public Camera camera;
        public GameObject fadePlane;
        Color activeColor = new Color(0, 0, 0);

        public HandModel HandModel = null;

        private void Awake()
        {
            if (HandModel == null)
            {
                HandModel = gameObject.GetComponentInParent<HandModel>();
            }

            print("color picker awake.");
            camera.clearFlags = CameraClearFlags.SolidColor;
            camera.backgroundColor = activeColor;
            
        }

        void Start()
        {
            print("color picker start.");
            camera.clearFlags = CameraClearFlags.Depth;
        }

        void OnEnable()
        {
            print("color picker enabled.");
            SetFogColor();
        }

        void OnDisable()
        {
            print("color picker disabled.");
        }

        void Update()
        {
            Hand hand;
            //print(handModel.PalmPosition.ToVector3());

            if (HandModel != null)
            {
                hand = HandModel.GetLeapHand();
                //print(hand);
                //print(hand.PalmPosition.ToVector3());
                //print(HandModel.GetPalmRotation().ToEulerAngles());
                //print(HandModel.palm.forward);
                var p = HandModel.GetPalmRotation().ToEulerAngles();
                activeColor = new Color(p.x, p.y, p.z);
            }
            //SetBackgroundColor();
        }

        public void ResetBackground()
        {
            StopCoroutine("SetBackgroundColorCoroutine");
            StopCoroutine("SetFogColorCoroutine");
            StopCoroutine("ResetBackgroundCoroutine");
            StartCoroutine("ResetBackgroundCoroutine");
        }

        IEnumerator ResetBackgroundCoroutine()
        {
            float startTime = Time.time;
            fadePlane.SetActive(true);
            while (startTime + 2.0f > Time.time)
            {
                //print("ResetBackgroundCoroutine");
                yield return null;
            }
            fadePlane.SetActive(false);
        }

        public void SetBackgroundColor()
        {
            camera.clearFlags = CameraClearFlags.SolidColor;
            StopCoroutine("SetBackgroundColorCoroutine");
            StopCoroutine("SetFogColorCoroutine");
            StartCoroutine("SetBackgroundColorCoroutine");
        }

        IEnumerator SetBackgroundColorCoroutine()
        {
            while (true)
            {
                camera.backgroundColor = new Color(0,0,0);
                yield return null;
            }
        }

        public void SetFogColor()
        {
            RenderSettings.fog = true;
            camera.clearFlags = CameraClearFlags.Depth;
            StopCoroutine("SetBackgroundColorCoroutine");
            StopCoroutine("SetFogColorCoroutine");
            StartCoroutine("SetFogColorCoroutine");
        }

        IEnumerator SetFogColorCoroutine()
        {
            while (true)
            {
                RenderSettings.fogColor = activeColor;
                yield return null;
            }
        }
    }
}
