using UnityEngine;
using System.Collections;

public class PaintbrushPetal : GlitchPetal {
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(10, 120, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(-0.01f, -0.01f, -0.05f);
    [System.NonSerialized]
    private float duration = 0.2f;

    public override void AxiomStep(float normalizedElapsedTime)
    {
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        
        //transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep)  ;
        transform.localScale = transform.localScale + scaleStep;
    }
}
