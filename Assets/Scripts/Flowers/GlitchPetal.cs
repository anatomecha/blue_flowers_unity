using UnityEngine;
using System.Collections;

public class GlitchPetal : MonoBehaviour {

    private Color restColor = new Color(0, 0, 1);
    private Color activeColor = new Color(1, 0, 1);

    private Vector3 positionStep = new Vector3(0, 10, 0);
    private Vector3 rotationStep = new Vector3(5, 10, 5);
    private Vector3 scaleStep = new Vector3(0, 0.01f, 0);

    //[System.NonSerialized]

    // Use this for initialization
    void OnEnable () {
        StartCoroutine("GrowPetal", 0.5f);
    }
	

    IEnumerator GrowPetal(float fadeTime)
    {
        float startTime = Time.time;
        float normalizedEelapsedTime = 0.0f;

        //print("start time = " + startTime);

        while (normalizedEelapsedTime <= 1.0)
        {
            float elapsedTime = (Time.time - startTime);
            normalizedEelapsedTime = elapsedTime / fadeTime;

            AxiomStep();

            Color lerpedColor = Color.Lerp(activeColor, restColor, normalizedEelapsedTime);
            SetPetalColor(lerpedColor);

            //print("growing petal... " + normalizedEelapsedTime);
            yield return null;
        }

        // do something here when finished
        Destroy(gameObject);
    }

    //override this shit!!
    public virtual void AxiomStep()
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
