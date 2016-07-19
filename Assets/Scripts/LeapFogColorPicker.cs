using UnityEngine;
using System.Collections;
using Leap;

namespace Leap.Unity
{
    public class LeapFogColorPicker : MonoBehaviour
    {
        public Camera camera;
        Color activeColor = new Color(0, 0, 0);

        public HandModel HandModel = null;

        private void Awake()
        {
            if (HandModel == null)
            {
                HandModel = gameObject.GetComponentInParent<HandModel>();
            }
        }

        void Start()
        {
            print("color picker start.");
            camera.clearFlags = CameraClearFlags.SolidColor;
            camera.backgroundColor = activeColor;
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
