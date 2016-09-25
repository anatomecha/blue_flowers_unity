using UnityEngine;
using System.Collections;

public class TestComponentFinished : MonoBehaviour {
    public float speed = 100.0f;
    public float lifespan = 2.0f;

    void Start()
    {
        StartCoroutine("WaitThenDestroy", lifespan);
    }

    // Update is called once per frame
    void Update() {
        transform.Rotate( new Vector3(0, 100 *Time.deltaTime, 0));
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
