using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GlitchFlower : MonoBehaviour {

    public List<GameObject> petals = new List<GameObject>();


    void Start () {
	    
        foreach ( GameObject petal in petals )
        {
            Instantiate(petal, transform.position, transform.rotation);
        }

        StartCoroutine("WaitThenDestroy", 1.0f);
    }

    IEnumerator WaitThenDestroy(float lifespan)
    {
        float startTime = Time.time;
        float normalizedEelapsedTime = 0.0f;
        
        while (normalizedEelapsedTime <= 1.0)
        {
            float elapsedTime = (Time.time - startTime);
            normalizedEelapsedTime = elapsedTime / lifespan;
            yield return null;
        }

        // do something here when finished
        DestroyImmediate(gameObject, true);
    }
}
