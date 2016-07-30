using UnityEngine;
using System.Collections;

public class PaintbrushFractalPetal : GlitchPetal {
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(0, 122, 3);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(0.01f, 0.01f, -0.02f);
    [System.NonSerialized]
    private float duration = 0.1f;

    public override void AxiomStep(float normalizedElapsedTime)
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        //positionStep = new Vector3(0, Mathf.Log(normalizedElapsedTime), 0);
        //rotationStep.y = Random.Range(117, 123);
        //rotationStep.z = Random.Range(-3, 3);

        //transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
