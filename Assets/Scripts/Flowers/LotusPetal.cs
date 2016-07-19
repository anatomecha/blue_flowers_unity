using UnityEngine;
using System.Collections;

public class LotusPetal : GlitchPetal
{
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 5, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(0, 30, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(-0.02f, -0.01f, -0.02f);

    public override void AxiomStep()
    {
        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
