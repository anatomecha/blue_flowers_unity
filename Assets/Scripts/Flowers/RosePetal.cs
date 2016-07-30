using UnityEngine;
using System.Collections;

public class RosePetal : GlitchPetal
{
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(10, 203, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(0.02f, -0.03f, 0.02f);
    [System.NonSerialized]
    private float duration = 0.2f;

    public override void AxiomStep(float normalizedElapsedTime)
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        scaleStep.y = Mathf.Log10(0.99f);
        scaleStep.x = Mathf.Log10(1.1f);
        scaleStep.z = Mathf.Log10(1.1f);

        //transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
