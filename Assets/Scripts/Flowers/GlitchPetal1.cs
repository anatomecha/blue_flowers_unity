using UnityEngine;
using System.Collections;

public class GlitchPetal1 : GlitchPetal {

    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 5, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(0, 0, 1);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(0.01f, -0.01f, 0.01f);

    public override void AxiomStep()
    {
        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        transform.localScale = transform.localScale + scaleStep;
    }
}
