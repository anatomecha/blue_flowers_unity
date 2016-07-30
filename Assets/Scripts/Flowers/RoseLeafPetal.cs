using UnityEngine;
using System.Collections;

public class RoseLeafPetal : GlitchPetal
{
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, -0.2f, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(-5, 66, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(-0.01f, 0.01f, -0.01f);

    void Awake()
    {
        petalDuration = 0.1f;
    }

    public override void AxiomStep(float normalizedElapsedTime)
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        scaleStep.y = Mathf.Log10(1.1f);
        scaleStep.x = Mathf.Log10(0.95f);
        scaleStep.z = Mathf.Log10(0.95f);

        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
