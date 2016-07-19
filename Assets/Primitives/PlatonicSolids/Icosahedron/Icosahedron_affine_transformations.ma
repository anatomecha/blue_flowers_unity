//Maya ASCII 2013 scene
//Name: icosahedron_children.ma
//Last modified: Fri, May 01, 2015 11:47:24 AM
//Codeset: 1252
requires maya "2013";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201209210409-845513";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.82862832627068816 0.96060583102020736 5.1558835836161307 ;
	setAttr ".r" -type "double3" -12.338352729496387 350.99999999994054 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 5.374400354955795;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 500.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 500.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 500.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "axiom_transform";
createNode transform -n "pSolid2" -p "axiom_transform";
	setAttr ".t" -type "double3" -0.36801176070000002 0.59545559290000005 1.3221770189999999e-016 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape2" -p "pSolid2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid3" -p "axiom_transform";
	setAttr ".t" -type "double3" 0.36801176068606223 0.59545559282413019 8.0330186946753201e-013 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape3" -p "pSolid3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid4" -p "axiom_transform";
	setAttr ".t" -type "double3" -3.7981340295090149e-011 0.36801176071214087 0.59545559286058969 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape4" -p "pSolid4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid5" -p "axiom_transform";
	setAttr ".t" -type "double3" -0.59545559289090477 1.2970291507485854e-011 0.36801176075769987 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape5" -p "pSolid5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid6" -p "axiom_transform";
	setAttr ".t" -type "double3" -0.36801176073542424 -0.59545559287440664 3.4381775204650467e-011 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape6" -p "pSolid6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid7" -p "axiom_transform";
	setAttr ".t" -type "double3" 0.36801176067366387 -0.59545559282965432 2.9093394360302227e-012 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape7" -p "pSolid7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid8" -p "axiom_transform";
	setAttr ".t" -type "double3" 0.59545559282868044 4.0709935422711396e-012 0.36801176071322955 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape8" -p "pSolid8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid9" -p "axiom_transform";
	setAttr ".t" -type "double3" 0.59545559287442473 2.4672729137531491e-012 -0.36801176068089247 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape9" -p "pSolid9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid10" -p "axiom_transform";
	setAttr ".t" -type "double3" -3.0992430843923557e-011 0.36801176075426972 -0.59545559282373495 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape10" -p "pSolid10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid11" -p "axiom_transform";
	setAttr ".t" -type "double3" -4.7873718878044258e-012 -0.36801176067594665 -0.59545559286871075 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape11" -p "pSolid11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid12" -p "axiom_transform";
	setAttr ".t" -type "double3" -0.59545559286619398 2.3913857005730677e-013 -0.3680117606893577 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape12" -p "pSolid12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode transform -n "pSolid13" -p "axiom_transform";
	setAttr ".t" -type "double3" -1.2040035635152435e-011 -0.3680117606631178 0.5954555929064137 ;
	setAttr ".s" -type "double3" 0.3 0.3 0.3 ;
createNode mesh -n "pSolidShape13" -p "pSolid13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997
		 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008
		 -2.1855694e-008 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008
		 1 5.1658017e-008 0 0 1 0 0.5 1 0.49999997 1 2.9802322e-008 -2.1855694e-008 1 5.1658017e-008
		 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.85065085 1.1673575e-016 -0.52573109 0.85065085 -1.1673575e-016 0.52573109
		 -0.85065085 -1.1673575e-016 0.52573109 -0.85065085 1.1673575e-016 -0.52573109 0 -0.52573109 0.85065085
		 0 0.52573109 0.85065085 0 0.52573109 -0.85065085 0 -0.52573109 -0.85065085 -0.52573109 -0.85065085 -1.8888243e-016
		 0.52573109 -0.85065085 -1.8888243e-016 0.52573109 0.85065085 1.8888243e-016 -0.52573109 0.85065085 1.8888243e-016;
	setAttr -s 30 ".ed[0:29]"  1 9 0 9 0 0 0 1 0 0 10 0 10 1 0 0 7 0 7 6 0
		 6 0 0 6 10 0 9 7 0 4 1 0 1 5 0 5 4 0 4 9 0 10 5 0 3 8 0 8 2 0 2 3 0 2 11 0 11 3 0
		 5 2 0 2 4 0 8 4 0 5 11 0 7 3 0 3 6 0 11 6 0 7 8 0 8 9 0 10 11 0;
	setAttr -s 20 -ch 60 ".fc[0:19]" -type "polyFaces" 
		f 3 0 1 2
		mu 0 3 0 1 2
		f 3 3 4 -3
		mu 0 3 3 4 5
		f 3 5 6 7
		mu 0 3 6 7 8
		f 3 -8 8 -4
		mu 0 3 9 10 11
		f 3 -2 9 -6
		mu 0 3 12 13 14
		f 3 10 11 12
		mu 0 3 15 16 17
		f 3 -1 -11 13
		mu 0 3 18 19 20
		f 3 -5 14 -12
		mu 0 3 21 22 23
		f 3 15 16 17
		mu 0 3 24 25 26
		f 3 18 19 -18
		mu 0 3 27 28 29
		f 3 -13 20 21
		mu 0 3 30 31 32
		f 3 -17 22 -22
		mu 0 3 33 34 35
		f 3 23 -19 -21
		mu 0 3 36 37 38
		f 3 -7 24 25
		mu 0 3 39 40 41
		f 3 -20 26 -26
		mu 0 3 42 43 44
		f 3 -25 27 -16
		mu 0 3 45 46 47
		f 3 -23 28 -14
		mu 0 3 48 49 50
		f 3 -15 29 -24
		mu 0 3 51 52 53
		f 3 -27 -30 -9
		mu 0 3 54 55 56
		f 3 -10 -29 -28
		mu 0 3 57 58 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".tgsp" 2;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 60 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pSolidShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of icosahedron_children.ma
