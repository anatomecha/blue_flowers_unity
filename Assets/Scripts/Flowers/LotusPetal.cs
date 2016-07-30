using UnityEngine;
using System.Collections;

public class LotusPetal : GlitchPetal
{
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(0, 30, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(-0.02f, -0.01f, -0.02f);
    [System.NonSerialized]
    private float duration = 0.2f;

    public override void AxiomStep( float normalizedElapsedTime )
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        //positionStep = new Vector3(0, Mathf.Log(normalizedElapsedTime), 0);
        positionStep.y = Mathf.Log(normalizedElapsedTime *20, 100);

        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
