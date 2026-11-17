PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["FacsPropertiesToFaceControlInfoMap"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["defaultValue"]
       10 SETTABLE                         R6 R0 R4
       11 FORGLOOP                         R1 2 ; [-4]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["splitDragboxMaps"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["splitBidirectionalSliders"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["FaceControlEditor"]
       13 GETTABLEKS                       R2 R2 K8 ["FaceControlEditorConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Utils"]
       20 GETTABLEKS                       R3 R3 K10 ["FaceControlEditorUtils"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R3 K12 ["getDefaultPropertiesValues"]
       30 RETURN                           R3 1
