using UnityEngine;
using System.Collections;

public class GlitchFlowerManager : MonoBehaviour {

    public GameObject glitchFlower;

	void Start () {
	
	}
	
	void Update () {
	    
        if(Input.GetKeyDown("space"))
        {
            GrowFlower();
        }

	}

    public void GrowFlower( )
    {
        Instantiate(glitchFlower, transform.position, transform.rotation);
    }

}
