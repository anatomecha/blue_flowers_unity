using UnityEngine;
using System.Collections;

/*
todo:
input range min and max for amplitude
options for wave type
- sin
- square
- saw
(other script) MultiWaveGenerator
- combine multiple wave layers

*/

public class WaveGenerator : MonoBehaviour {

	public float frequency = 1.0f;
	public float currentValue = 0.0f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		currentValue = Mathf.Sin ( Time.time / frequency );//nfmod( Time.time, frequency ) );
	}

	public float GetCurrentValue() {
		return currentValue;
	}

	// modulo function
	float nfmod(float a,float b) {
		return a - b * Mathf.Floor(a / b);
	}
}
