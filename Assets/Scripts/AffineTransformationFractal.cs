using UnityEngine;
using System.Collections;
using System.Collections.Generic;

//custom modifications for the Blue Flowers project

public class AffineTransformationFractal : MonoBehaviour {
	public GameObject axiom;
	public GameObject generator;
	public int iterations = 3;
	private bool keepAllGenerations = true;
	private List<GameObject> members = new List<GameObject>();
	private int instanceCount = 0;
	private int totalInstanceCount = 0;

	void Start () {
		Generate ();
	}

	// affine transformation fractal generation
	public void Generate() {
		members.Add(axiom);
		List<GameObject> newMembers = new List<GameObject>();
		List<GameObject> children = new List<GameObject>(); 

		for(int i=0; i<iterations; i++){ //print( "i=" + i );
			
			for(int m=0; m<members.Count; m++) { //print( i + "m=" + m );

				children = Reproduce( members[m], i, m );

				// add children to the list of new members
				for( int c=0; c<children.Count; c++){
					newMembers.Add( children[c] );
				}
			}

			// refresh the list of members
			members.Clear();
			for( int nm=0; nm<newMembers.Count; nm++ ){
				members.Add( newMembers[nm] );
			}

			if( keepAllGenerations ) {
				GameObject generationGroup = new GameObject( "generation_" + i );
				generationGroup.transform.parent = gameObject.transform;
                generationGroup.transform.localPosition = Vector3.zero;
                generationGroup.transform.localRotation = Quaternion.identity;

                foreach ( GameObject m in newMembers ){
					m.transform.parent = generationGroup.transform;
				}
			}

			newMembers.Clear();

			instanceCount = members.Count;
			totalInstanceCount += members.Count;
		}
        
        //Destroy(generator);

		print ("iterations = " + iterations);
		print ("instance count = " + instanceCount);
		print ("total instance count = " + totalInstanceCount);
	}

	List<GameObject> Reproduce( GameObject axiom, int i, int m ) {
		List<GameObject> children = new List<GameObject> ();

		// create the generator object
		GameObject newGenerator = Instantiate (generator);
            
		// parent it to the axiom's parent
		//newGenerator.transform.SetParent ( axiom.transform.parent );
        newGenerator.transform.SetParent(gameObject.transform);
        newGenerator.transform.localPosition = Vector3.zero;
        newGenerator.transform.localRotation = Quaternion.identity;

        // copy over transforms from axiom to children
        newGenerator.transform.localScale = axiom.transform.localScale;
		newGenerator.transform.localPosition = axiom.transform.localPosition;
		newGenerator.transform.eulerAngles = axiom.transform.eulerAngles;

		// add children to the list of children
		for( int c = 0; c < newGenerator.transform.childCount; c++ ){
			Transform child = newGenerator.transform.GetChild(c);
			children.Add( child.gameObject );
		}

		if( keepAllGenerations == false ) {
			Destroy ( axiom );
		}
        //newGenerator.transform.SetParent(gameObject.transform);
		return children;
	}
}








