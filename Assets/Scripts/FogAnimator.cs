using UnityEngine;
using System.Collections;
using System;
using System.Collections.Generic;

/*
todo
input arbitrary length list of colors
option for cycling between colors randomly or in sequence
switching between more than two colors
- do this by listening to wave direction (need to add that to WaveGenerator)
osc tempo sync option
foreground and background color picker
nanokontrol color slider picker
3 axis joystick color picker

*/


public class FogAnimator : MonoBehaviour {
	Color fogColor = new Color( 1, 0, 0 );
	WaveGenerator waveGenerator = new WaveGenerator();
	public float waveValue = 0;
	Color backgroundColor = new Color( 0, 0, 0 );

	public List<Color> colorList = new List<Color>(3);
	//Color colorA = new Color( 0.0f, 0.0f, 0.0f ); // black
	//Color colorB = new Color( 1.0f, 1.0f, 1.0f ); // white

	//Color colorA = new Color( 1.0f, 0.5f, 0.0f ); // red-orange
	//Color colorA = new Color( 1.0f, 1.0f, 0.0f ); // yellow
	//Color colorA = new Color( 0.5f, 0.6f, 0.1f ); // yellow ochre
	//Color colorA = new Color( 0.0f, 0.99f, 0.8f ); // pale green
	//public Color colorA = new Color( 0.1f, 0.99f, 0.4f ); // green
	//Color colorA = new Color( 0.9999f, 0.3f, 0.97f ); // hot pink
	//Color colorA = new Color( 0.9999f, 0.3f, 0.98f ); // hotttt pink
	//Color colorA = new Color( 0.7f, 0.99f, 0.7f ); // light green
	//Color colorB = new Color( 0.2f, 0.9f, 0.0f ); // olive
	//Color colorA = new Color( 0.0f, 10.8f, 0.1f ); // forest green
	//Color colorB = new Color( 1.0f, 0.0f, 0.0f ); // red
	//Color colorA = new Color( 1.0f, 1.0f, 0.5f ); // light yellow
	//Color colorA = new Color( 0.65f, 0.10f, 0.75f ); // purple
	Color colorA = new Color( 0.2f, 0.8f, 1.0f ); // light blue
	Color colorB = new Color( 0.0f, 0.0f, 1.0f ); // bluuuuue
	//Color colorB = new Color( 0.1f, 0.0f, 0.4f ); // dark blue
	//Color colorB = new Color( 0.4f, 0.1f, 0.9f ); // lavender
	//Color colorA = new Color( 0.8f, 0.0f, 0.2f ); // burgundy
	//Color colorB = new Color( 1.0f, 0.6f, 0.0f ); // yellow/orange
	Color colorC = new Color( 0.7f, 0.8f, 1.0f ); // grey blue

	


	Camera camera = new Camera();

	void Start () {
		waveGenerator = gameObject.AddComponent<WaveGenerator>() as WaveGenerator;
		waveGenerator.frequency = 0.5f;

		colorList.Add (colorA);
		colorList.Add (colorB);
		colorList.Add (colorC);

		// init fog render settings
		RenderSettings.fog = true;
		RenderSettings.fogMode = FogMode.Linear;	
		RenderSettings.fogStartDistance = 0;
		RenderSettings.fogEndDistance = 0;
		RenderSettings.fogColor = fogColor;

		// set up camera
		camera = GetComponent<Camera> ();
		//camera.clearFlags = CameraClearFlags.SolidColor;
		//camera.backgroundColor = Color.black;
		//camera.clearFlags = CameraClearFlags.Depth;

	}
	
	// Update is called once per frame
	void Update () {
		waveValue = waveGenerator.GetCurrentValue();
		//fogColor = new Color( (0.5f * waveValue ), 0.0f, (1.0f * waveValue) );
		RenderSettings.fogColor = Color.Lerp( colorA, colorB, waveValue );

		// set background solid color on button press
		if (Input.GetKeyDown("space")) {
			//camera.clearFlags = CameraClearFlags.SolidColor;
			//camera.backgroundColor = backgroundColor;
		} else {
			//camera.clearFlags = CameraClearFlags.Depth;
		}

	}

	void OSCMetronome (float tempo) {

	}
	
}
