PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshTriangleArea"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K2 ["isServer"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 0
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 MOVE                             R6 R1
       13 CALL                             R4 2 2
       14 JUMPIF                           R4 ; [+33]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K3 ["reportFailure"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K4 ["ErrorType"]
       21 GETTABLEKS                       R7 R8 K5 ["validateMeshTriangleArea_FailedToLoadMesh"]
       23 LOADNIL                          R8
       24 MOVE                             R9 R1
       25 CALL                             R6 3 0
       26 JUMPIFNOT                        R3 ; [+9]
       27 GETIMPORT                        R6 K7 [error]
       29 GETIMPORT                        R7 K10 [string.format]
       31 LOADK                            R8 K11 ["Failed to load model mesh %s. Make sure mesh exists and try again."]
       32 GETTABLEKS                       R9 R0 K12 ["fullName"]
       34 CALL                             R7 2 -1
       35 CALL                             R6 -1 0
       36 LOADB                            R6 0
       37 NEWTABLE                         R7 0 1
       39 GETIMPORT                        R8 K10 [string.format]
       41 LOADK                            R9 K11 ["Failed to load model mesh %s. Make sure mesh exists and try again."]
       42 GETTABLEKS                       R10 R0 K12 ["fullName"]
       44 CALL                             R8 2 -1
       45 SETLIST                          R7 R8 -1 [1]
       47 RETURN                           R6 2
       48 JUMPIF                           R5 ; [+23]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K3 ["reportFailure"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K4 ["ErrorType"]
       55 GETTABLEKS                       R7 R8 K13 ["validateMeshTriangleArea_NoArea"]
       57 LOADNIL                          R8
       58 MOVE                             R9 R1
       59 CALL                             R6 3 0
       60 LOADB                            R6 0
       61 NEWTABLE                         R7 0 1
       63 GETIMPORT                        R8 K10 [string.format]
       65 LOADK                            R9 K14 ["Detected zero-area triangle in model mesh %s. You need to edit the mesh to remove zero-area triangles."]
       66 GETTABLEKS                       R10 R0 K12 ["fullName"]
       68 CALL                             R8 2 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 RETURN                           R6 2
       72 GETUPVAL                         R7 2
       73 GETTABLEKS                       R6 R7 K15 ["recordScriptTime"]
       75 GETIMPORT                        R8 K17 [script]
       77 GETTABLEKS                       R7 R8 K18 ["Name"]
       79 MOVE                             R8 R2
       80 MOVE                             R9 R1
       81 CALL                             R6 3 0
       82 LOADB                            R6 1
       83 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["pcallDeferred"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Analytics"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [game]
       28 LOADK                            R6 K11 ["UGCValidationService"]
       29 NAMECALL                         R4 R4 K12 ["GetService"]
       31 CALL                             R4 2 1
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
