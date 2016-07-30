using UnityEngine;
using System.Collections;

public class GlitchPetal : MonoBehaviour {

    private Color restColor = new Color(0, 0, 1);
    private Color activeColor = new Color(1, 0, 1);

    private Vector3 positionStep = new Vector3(0, 10, 0);
    private Vector3 rotationStep = new Vector3(5, 10, 5);
    private Vector3 scaleStep = new Vector3(0, 0.01f, 0);
    [System.NonSerialized]
    public float petalDuration = 0.5f;
    
    // offset values are assigned by GlitchFlower so that they can be set individually per petal in the Unity inspector
    [System.NonSerialized]
    public Vector3 translateOffset = new Vector3(0, 0, 0);
    [System.NonSerialized]
    public Vector3 rotateOffset = new Vector3(0, 0, 0);
    [System.NonSerialized]
    public Vector3 scaleOffset = new Vector3(1, 1, 1);

    //[System.NonSerialized]


    void Start () {
        print("spawning petal " + gameObject.name);
        transform.localPosition = transform.localPosition + translateOffset;
        transform.localEulerAngles = transform.localEulerAngles + rotateOffset;
        transform.localScale = Vector3.Scale(transform.localScale, scaleOffset);
        //print("rx=" + transform.localEulerAngles.x + " ry=" + transform.localEulerAngles.y + " rz=" + transform.localEulerAngles.z );
        StartCoroutine("GrowPetal", petalDuration);
    }
	

    IEnumerator GrowPetal(float durationInput)
    {
        float startTime = Time.time;
        float normalizedEelapsedTime = 0.0f;

        print("duration = " + durationInput);

        while (normalizedEelapsedTime <= 1.0)
        {
            float elapsedTime = (Time.time - startTime);
            normalizedEelapsedTime = elapsedTime / durationInput;

            AxiomStep( normalizedEelapsedTime );

            Color lerpedColor = Color.Lerp(activeColor, restColor, normalizedEelapsedTime);
            SetPetalColor(lerpedColor);

            //print("growing petal... " + normalizedEelapsedTime);
            yield return null;
        }

        // do something here when finished
        Destroy(gameObject);
    }

    //override this shit!!
    public virtual void AxiomStep( float normalizedElapsedTime )
    {
        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep * Time.deltaTime * 10);
        transform.localScale = transform.localScale + scaleStep ;
    }

    void SetPetalColor( Color color)
    {
        //placeholder
    }


}
