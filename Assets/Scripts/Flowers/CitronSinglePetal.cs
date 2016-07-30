using UnityEngine;
using System.Collections;

public class CitronSinglePetal : GlitchPetal
{
    [System.NonSerialized]
    private Vector3 positionStep = new Vector3(0, 0, 0);
    [System.NonSerialized]
    private Vector3 rotationStep = new Vector3(4, 12, 0);
    [System.NonSerialized]
    private Vector3 scaleStep = new Vector3(0.1f, 0.1f, 0.1f);


    void Awake()
    {
        petalDuration = 0.5f;
    }

    public override void AxiomStep(float normalizedElapsedTime)
    {
        //print(duration + " " + normalizedElapsedTime);
        normalizedElapsedTime = Mathf.Clamp(normalizedElapsedTime, 0.0001f, 1);

        //positionStep = new Vector3(0, Mathf.Log(normalizedElapsedTime), 0);
        positionStep.y = Mathf.Log(normalizedElapsedTime * 20, 100);

        transform.Translate(positionStep * Time.deltaTime);
        transform.Rotate(rotationStep);
        //transform.localScale = transform.localScale + scaleStep;
        float pulse = 0.9f + Mathf.Sin(normalizedElapsedTime*4)/2;
        Vector3 pulseVector = new Vector3(pulse, pulse, pulse);
        //transform.localScale = Vector3.Scale(transform.localScale,  new Vector3(pulse, pulse, pulse));
        transform.localScale = transform.localScale + pulseVector/500;

        //transform.localScale = transform.localScale * (Mathf.Sin( normalizedElapsedTime * Mathf.PI) *1.75f) ;// + scaleStep;
    }
}
