using UnityEngine;
using System.Collections;

public class StamenPetal : GlitchPetal 
{
	[System.NonSerialized]
	private Vector3 positionStep = new Vector3(0, 2, 0);
	[System.NonSerialized]
	private Vector3 rotationStep = new Vector3(0, 0, 1);
	[System.NonSerialized]
	private Vector3 scaleStep = new Vector3(0.001f, -0.01f, 0.001f);
    [System.NonSerialized]
    private float duration = 0.2f;

    public override void AxiomStep( float normalizedElapsedTime )
	{
        rotationStep.z += normalizedElapsedTime/2.0f;

		transform.Translate(positionStep * Time.deltaTime, Space.Self);
		transform.Rotate(rotationStep);
		transform.localScale = transform.localScale + scaleStep;	
	}
}
