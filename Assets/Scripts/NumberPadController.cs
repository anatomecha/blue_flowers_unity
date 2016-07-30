using UnityEngine;
using System.Collections;

public class NumberPadController : MonoBehaviour
{
    public GlitchFlowerManager flowerManager;
    public GameObject fadeToBlackPlane;

	void Update () {
        
        // switch active flower
        if (Input.GetKeyDown("1") || Input.GetKey(KeyCode.Keypad8)) {
            flowerManager.SwitchFlower(0);
            flowerManager.randomFlower = false;
        }
        if (Input.GetKeyDown("2") || Input.GetKey(KeyCode.Keypad5)) {
            flowerManager.SwitchFlower(1);
            flowerManager.randomFlower = false;
        }
        if (Input.GetKeyDown("3") || Input.GetKey(KeyCode.Keypad2)) {
            flowerManager.SwitchFlower(2);
            flowerManager.randomFlower = false;
        }
        if (Input.GetKeyDown("4") || Input.GetKey(KeyCode.Keypad4)) {
            flowerManager.SwitchFlower(3);
            flowerManager.randomFlower = false;
        }
        if (Input.GetKeyDown("5") || Input.GetKey(KeyCode.Keypad6)) {
            flowerManager.SwitchFlower(4);
            flowerManager.randomFlower = false;
        }

        // fade to black
        if (Input.GetKeyDown("0") || Input.GetKey(KeyCode.Keypad0)) { FadeToBlack(); }

        // set random flower type
        if (Input.GetKeyDown(KeyCode.KeypadDivide)) { flowerManager.randomFlower = true; }

        // reset scene
        if (Input.GetKeyDown(KeyCode.Backspace))
        {
            Application.LoadLevel(0);
        }

    }

    public void FadeToBlack()
    {
        StopCoroutine("FadeToBlackCoroutine");
        StartCoroutine("FadeToBlackCoroutine");
    }

    IEnumerator FadeToBlackCoroutine()
    {
        float startTime = Time.time;
        fadeToBlackPlane.SetActive(true);
        while (startTime + 2.0f > Time.time)
        {
            //print("ResetBackgroundCoroutine");
            yield return null;
        }
        fadeToBlackPlane.SetActive(false);
    }
}
