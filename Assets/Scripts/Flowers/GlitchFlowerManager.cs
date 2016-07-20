using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GlitchFlowerManager : MonoBehaviour {

    public List<GameObject> flowers = new List<GameObject>();
    [System.NonSerialized]
    public GameObject activeFlower;

	void Start () {
        activeFlower = flowers[0];

    }
	
	void Update () {
	    
        // grow flower
        if(Input.GetKeyDown("space")) { GrowFlower(); }

        // switch active flower
        if (Input.GetKeyDown("1") || Input.GetKey(KeyCode.Keypad8)) { SwitchFlower(0); }
        if (Input.GetKeyDown("2") || Input.GetKey(KeyCode.Keypad5)) { SwitchFlower(1); }
        if (Input.GetKeyDown("3") || Input.GetKey(KeyCode.Keypad2)) { SwitchFlower(2); }

    }

    public void SwitchFlower( int index )
    {
        print("switching active flower to " + index);
        activeFlower = flowers[index];
    }

    public void GrowFlower( )
    {
        Instantiate(activeFlower, transform.position, transform.rotation);
    }

}
