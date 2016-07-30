using UnityEngine;
using System.Collections;

public class HyacinthPetal : GlitchPetal {
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(0, 30, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(-0.02f, -0.02f, -0.02f);
    [System.NonSerialized]
    private float duration = 0.5f;

    public override void AxiomStep(float normalizedElapsedTime)
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        //positionStep = new Vector3(0, Mathf.Log(normalizedElapsedTime), 0);
        positionStep.y = Mathf.Exp(normalizedElapsedTime * 1.5f);

        transform.Translate(positionStep * Time.deltaTime, Space.World);
        transform.Rotate(rotationStep, Space.World);
        transform.localScale = transform.localScale + scaleStep;
    }
}
