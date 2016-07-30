using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class GlitchPetalInstance 
{ 
    public GameObject glitchPetal;
    public Vector3 translateOffset = new Vector3(0, 0, 0);
    public Vector3 rotateOffset = new Vector3(0, 0, 0);
    public Vector3 scaleOffset = new Vector3(1, 1, 1);
}

public class GlitchFlower : MonoBehaviour {

    //public List<GlitchPetalInstance> petals = new List<GlitchPetalInstance>();
    public GlitchPetalInstance[] petals = new GlitchPetalInstance[1];
    public float duration = 1.0f;

    void Start () {
        print("spawning glitch flower " + gameObject.name );
        transform.Rotate(0, 0, -90); //set flower orientation relative to leap hands and camera

        foreach (GlitchPetalInstance petal in petals )
        {
            var petalPosition = transform.localPosition + petal.translateOffset;
            var petalRotation = transform.localEulerAngles + petal.rotateOffset;
            //var newPetal = Instantiate(petal.glitchPetal, petalPosition, Quaternion.Euler(petalRotation)) as GameObject;
            var newPetal = Instantiate(petal.glitchPetal, transform.position, transform.rotation) as GameObject;
            var newPetalComponent = newPetal.GetComponent<GlitchPetal>();
            //print("assigning offsets");
            newPetalComponent.translateOffset = petal.translateOffset;
            newPetalComponent.rotateOffset = petal.rotateOffset;
            newPetalComponent.scaleOffset = petal.scaleOffset;
        }

        StartCoroutine("WaitThenDestroy", duration);
    }

    IEnumerator WaitThenDestroy(float lifespanInput)
    {
        float startTime = Time.time;
        float normalizedEelapsedTime = 0.0f;
        
        while (normalizedEelapsedTime <= 1.0)
        {
            float elapsedTime = (Time.time - startTime);
            normalizedEelapsedTime = elapsedTime / lifespanInput;
            yield return null;
        }
        Destroy(gameObject);
    }
}
