using UnityEngine;
using System.Collections;

public class TestPinchFinished : MonoBehaviour
{
    public GameObject objectToSpawn;

    public void SpawnObject()
    {
        Instantiate(objectToSpawn, transform.position, transform.rotation);
    }

}
