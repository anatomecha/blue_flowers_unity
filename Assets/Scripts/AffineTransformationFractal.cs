using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/*
todo:
add option to keep previous generations
hide/show controls for itereation groups
DONE*other geometric types, platonic solids
DONE*- derive transformations from children in axiom file (data driven)
*- link to specific geometry file in project structure for default axiom
- optional axiom override input
animation of subhierarchies, translate/rotate/scale

 */

public class AffineTransformationFractal : MonoBehaviour {
	public GameObject axiom;
	public GameObject generator;
	public int iterations = 3;
	private bool keepAllGenerations = true;
	private List<GameObject> members = new List<GameObject>();
	private int instanceCount = 0;
	private int totalInstanceCount = 0;

	private bool combine_option = false;

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

				foreach( GameObject m in newMembers ){
					m.transform.parent = generationGroup.transform;
				}
			}

			newMembers.Clear();

			instanceCount = members.Count;
			totalInstanceCount += members.Count;
		}

		Destroy ( generator );

		if( combine_option ){
			CombineMeshes();
		}

		print ("iterations = " + iterations);
		print ("instance count = " + instanceCount);
		print ("total instance count = " + totalInstanceCount);
	}

	List<GameObject> Reproduce( GameObject axiom, int i, int m ) {
		List<GameObject> children = new List<GameObject> ();

		// create the generator object
		GameObject newGenerator = Instantiate (generator);

		// parent it to the axiom's parent
		newGenerator.transform.SetParent ( axiom.transform.parent );

		// copy over transforms from axiom to children
		newGenerator.transform.localScale = axiom.transform.localScale;
		newGenerator.transform.position = axiom.transform.position;
		newGenerator.transform.eulerAngles = axiom.transform.eulerAngles;

		// add children to the list of children
		for( int c = 0; c < newGenerator.transform.childCount; c++ ){
			Transform child = newGenerator.transform.GetChild(c);
			children.Add( child.gameObject );
		}

		if( keepAllGenerations == false ) {
			Destroy ( axiom );
		}
		return children;
	}

	void CombineMeshes() {
		MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
		CombineInstance[] combine = new CombineInstance[meshFilters.Length];
		int i = 0;
		while (i < meshFilters.Length) {
			combine[i].mesh = meshFilters[i].sharedMesh;
			combine[i].transform = meshFilters[i].transform.localToWorldMatrix;
			meshFilters[i].gameObject.active = false;
			i++;
		}
		transform.GetComponent<MeshFilter>().mesh = new Mesh();
		transform.GetComponent<MeshFilter>().mesh.CombineMeshes(combine);
		transform.gameObject.active = true;
	}
}

public class AffineTransformation : MonoBehaviour {

	public Vector3 translationVector = new Vector3 ( 0, 0, 0 );
	public Vector3 rotationVector = new Vector3 ( 0, 0, 0 );
	public Vector3 scaleVector = new Vector3 ( 0, 0, 0 );
	//public GameObject axiom = 
	
	public void Init( Vector3 translationVectorInput, Vector3 rotationVectorInput, Vector3 scaleVectorInput ) {
		translationVector = translationVectorInput;
		rotationVector = rotationVectorInput;
		scaleVector = scaleVectorInput;
	}

	public void ApplyTransformations( Transform t ){
		t.localPosition = translationVector;
		t.localEulerAngles = rotationVector;
		t.localScale = scaleVector;
	}
}


/* Deprecated
// test transformations
// first version proof of concept
void GetTransformations() {
	
	transformations.Add( new Vector3( 0.0f, 0.0f, 0.5f ) );
	transformations.Add( new Vector3( 0.0f, 0.0f, 0.5f ) );
	transformations.Add( new Vector3( -0.5f, 0.5f, 0.0f ) );
	transformations.Add( new Vector3( 0.5f, -0.5f, 0.0f ) );
	transformations.Add( new Vector3( 0.5f, 0.5f, 0.25f ) );
	transformations.Add( new Vector3( 0.0f, 0.5f, 0.5f ) );
}

// This was the second version that I used for the first set of explorations of Sierpinski Triangle
// Deprecated when the generator file was introduced
// Sierpinski triangle is still available using axiom tetrahedron
public List<AffineTransformation> transformations = new List<AffineTransformation>(3);
void GetTransformations () {
	// sierpinski triangle
	
	// move up
	Vector3 t1 = new Vector3 ( 0, 0.707106769085f, 0 );
	Vector3 r1 = new Vector3 ( 0, 0, 0 );
	Vector3 s1 = new Vector3 ( 0.5f, 0.5f, 0.5f );
	AffineTransformation at1 = new AffineTransformation ();
	at1.Init ( t1, r1, s1 );
	transformations.Add ( at1 );
	
	// move forward
	Vector3 t2 = new Vector3 ( -0.5f, 0, 0 );
	Vector3 r2 = new Vector3 ( 0, 0, 0 );
	Vector3 s2 = new Vector3 ( 0.5f, 0.5f, 0.5f );
	AffineTransformation at2 = new AffineTransformation ();
	at2.Init ( t2, r2, s2 );
	transformations.Add ( at2 );
	
	// move right
	Vector3 t3 = new Vector3 ( 0.25f, 0, 0.43301269412f );
	Vector3 r3 = new Vector3 ( 0, 0, 0 );
	Vector3 s3 = new Vector3 ( 0.5f, 0.5f, 0.5f );
	AffineTransformation at3 = new AffineTransformation ();
	at3.Init ( t3, r3, s3 );
	transformations.Add ( at3 );
	
	// move left
	Vector3 t4 = new Vector3 ( 0.25f, 0, -0.43301269412f );
	Vector3 r4 = new Vector3 ( 0, 0, 0 );
	Vector3 s4 = new Vector3 ( 0.5f, 0.5f, 0.5f );
	AffineTransformation at4 = new AffineTransformation ();
	at4.Init ( t4, r4, s4 );
	transformations.Add ( at4 );
}
void ZeroTransforms( Transform t ) {
	t.localPosition = new Vector3 ( 0, 0, 0 );
	t.localEulerAngles = new Vector3 ( 0, 0, 0 );
	//node.transform.localScale = new Vector3 ( 1, 1, 1 );
}
*/




