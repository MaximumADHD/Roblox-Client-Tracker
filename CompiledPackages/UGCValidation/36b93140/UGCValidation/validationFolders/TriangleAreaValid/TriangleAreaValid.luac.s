PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["ValidateEditableMeshTriangleArea"]
        4 CALL                             R3 2 1
        5 JUMPIF                           R3 ; [+11]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["Keys"]
        9 GETTABLEKS                       R6 R6 K2 ["MeshGeometry_ZeroAreaTriangle"]
       11 DUPTABLE                         R7 K4 [{"meshName"}]
       12 SETTABLEKS                       R2 R7 K3 ["meshName"]
       14 NAMECALL                         R4 R0 K5 ["fail"]
       16 CALL                             R4 3 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["renderMeshesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["editable"]
        7 GETUPVAL                         R8 0
        8 MOVE                             R10 R7
        9 NAMECALL                         R8 R8 K2 ["ValidateEditableMeshTriangleArea"]
       11 CALL                             R8 2 1
       12 JUMPIF                           R8 ; [+11]
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R11 R11 K3 ["Keys"]
       16 GETTABLEKS                       R11 R11 K4 ["MeshGeometry_ZeroAreaTriangle"]
       18 DUPTABLE                         R12 K6 [{"meshName"}]
       19 SETTABLEKS                       R5 R12 K5 ["meshName"]
       21 NAMECALL                         R9 R0 K7 ["fail"]
       23 CALL                             R9 3 0
       24 FORGLOOP                         R2 2 ; [-20]
       26 GETTABLEKS                       R2 R1 K8 ["outerCagesData"]
       28 JUMPIFNOT                        R2 ; [+29]
       29 GETTABLEKS                       R2 R1 K8 ["outerCagesData"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETTABLEKS                       R7 R6 K1 ["editable"]
       36 MOVE                             R9 R5
       37 LOADK                            R10 K9 ["OuterCage"]
       38 CONCAT                           R8 R9 R10
       39 GETUPVAL                         R9 0
       40 MOVE                             R11 R7
       41 NAMECALL                         R9 R9 K2 ["ValidateEditableMeshTriangleArea"]
       43 CALL                             R9 2 1
       44 JUMPIF                           R9 ; [+11]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K3 ["Keys"]
       48 GETTABLEKS                       R12 R12 K4 ["MeshGeometry_ZeroAreaTriangle"]
       50 DUPTABLE                         R13 K6 [{"meshName"}]
       51 SETTABLEKS                       R8 R13 K5 ["meshName"]
       53 NAMECALL                         R10 R0 K7 ["fail"]
       55 CALL                             R10 3 0
       56 FORGLOOP                         R2 2 ; [-23]
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K14 ["flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateMeshGeometry"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 8 0
       45 SETTABLEKS                       R5 R6 K16 ["fflag"]
       47 NEWTABLE                         R7 0 2
       49 GETTABLEKS                       R8 R3 K17 ["UploadCategory"]
       51 GETTABLEKS                       R8 R8 K18 ["TORSO_AND_LIMBS"]
       53 GETTABLEKS                       R9 R3 K17 ["UploadCategory"]
       55 GETTABLEKS                       R9 R9 K19 ["DYNAMIC_HEAD"]
       57 SETLIST                          R7 R8 2 [1]
       59 SETTABLEKS                       R7 R6 K20 ["categories"]
       61 NEWTABLE                         R7 0 1
       63 GETTABLEKS                       R8 R3 K21 ["SharedDataMember"]
       65 GETTABLEKS                       R8 R8 K22 ["renderMeshesData"]
       67 SETLIST                          R7 R8 1 [1]
       69 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       71 NEWTABLE                         R7 0 1
       73 GETTABLEKS                       R8 R3 K21 ["SharedDataMember"]
       75 GETTABLEKS                       R8 R8 K24 ["outerCagesData"]
       77 SETLIST                          R7 R8 1 [1]
       79 SETTABLEKS                       R7 R6 K25 ["conditionalData"]
       81 NEWTABLE                         R7 0 0
       83 SETTABLEKS                       R7 R6 K26 ["expectedFailures"]
       85 DUPCLOSURE                       R7 K27 [PROTO_0]
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R4
       88 DUPCLOSURE                       R8 K28 [PROTO_1]
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R8 R6 K29 ["run"]
       93 RETURN                           R6 1
