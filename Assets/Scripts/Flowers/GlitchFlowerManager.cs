using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GlitchFlowerManager : MonoBehaviour {

    public Transform targetTransform;
    public List<GameObject> flowers = new List<GameObject>();
    [System.NonSerialized]
    public GameObject activeFlower;
    public bool randomFlower = false;

	void Start () {
        activeFlower = flowers[0];

    }
	
	void Update () {
	    
        // grow flower
        if(Input.GetKeyDown("space")) { GrowFlower(); }

    }

    public void SwitchFlower( int index )
    {
        if (randomFlower)
        {
            int randomIndex = Random.Range( 0, flowers.Count );
            print("switching active flower to " + randomIndex);
            activeFlower = flowers[randomIndex];
        }
        else
        {
            print("switching active flower to " + index);
            activeFlower = flowers[index];
        }
        
    }

    public void GrowFlower( )
    {
        Instantiate(activeFlower, targetTransform.position, targetTransform.rotation);

        if (randomFlower)
        {
            int randomIndex = Random.Range(0, flowers.Count);
            print("switching active flower to " + randomIndex);
            activeFlower = flowers[randomIndex];
        }
    }

}
