using UnityEngine;
using System.Collections;

public class TestComponent : MonoBehaviour {
    private float speed = 1.0f;
    public float lifespan = 1.0f;

    void Start()
    {
        StartCoroutine("WaitThenDestroy", lifespan);
    }

    // Update is called once per frame
    void Update () {
        transform.Rotate(new Vector3(0, speed, 0));
	}

    IEnumerator WaitThenDestroy(float lifespan)
    {
        float startTime = Time.time;

        while (Time.time <= startTime + lifespan)
        {
            yield return null;
        }
        Destroy(gameObject);
    }
}
