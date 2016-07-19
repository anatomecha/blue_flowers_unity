using UnityEngine;
using System.Collections;

public class ScreenshotManager : MonoBehaviour {
	public Color backgroundColor = new Color( 0, 0, 0 );
	string directory = "../Screenshots";
	string loadedLevelName;
	Camera camera;

	// Use this for initialization
	void Start () {
		loadedLevelName = Application.loadedLevelName;
		camera = gameObject.GetComponent<Camera>();
	}
	
	// Update is called once per frame
	void Update () {

		// grab screenshot
		if (Input.GetKeyDown("return") || Input.GetKey(KeyCode.KeypadEnter)) {

			// format file name
			string filename = loadedLevelName + "_" + System.DateTime.Now.ToString() + ".png";
			filename = filename.Replace( "/", "-");
			filename = filename.Replace( " ", "_");
			filename = filename.Replace( ":", "-");

			Application.CaptureScreenshot( directory + "/" + filename );
			print ( "Screenshot saved: " + filename );
		}

		// set background solid color on button press
		if (Input.GetKeyDown("space") || Input.GetKey(KeyCode.Keypad0)) {
			//Paint ();
		} 

        // reset the level
		if (Input.GetKeyDown(KeyCode.Backspace)) {
			//Application.LoadLevel(0);
		}

	}

	public void Paint(){
		camera.clearFlags = CameraClearFlags.SolidColor;
		camera.backgroundColor = backgroundColor;
		
		// coroutine is necessary here so that the color can be set first 
		// and then clear flags set back to depth on the next update
		StartCoroutine("SetClearFlagsDepth");
	}

	// coroutine to set camera to depth in next update
	IEnumerator SetClearFlagsDepth(){
		for (int i = 0; i < 2; i++) {
			camera.clearFlags = CameraClearFlags.Depth;
			//print ("set depth" + Time.time);
			yield return null;
		}
	}
}
