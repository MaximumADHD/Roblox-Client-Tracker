PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableMeshTriCount"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 GETUPVAL                         R4 0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 MOVE                             R6 R2
        7 CALL                             R4 2 2
        8 JUMPIFEQKNIL                     R1 ; [+2]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R1 R6 K1 ["MAX_HAT_TRIANGLES"]
       14 JUMPIF                           R4 ; [+35]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K2 ["reportFailure"]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K3 ["ErrorType"]
       21 GETTABLEKS                       R7 R7 K4 ["validateMeshTriangles_FailedToLoadMesh"]
       23 LOADNIL                          R8
       24 MOVE                             R9 R2
       25 CALL                             R6 3 0
       26 JUMPIFEQKNIL                     R3 ; [+11]
       28 JUMPIFNOT                        R3 ; [+9]
       29 GETIMPORT                        R6 K6 [error]
       31 GETIMPORT                        R7 K9 [string.format]
       33 LOADK                            R8 K10 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
       34 GETTABLEKS                       R9 R0 K11 ["fullName"]
       36 CALL                             R7 2 -1
       37 CALL                             R6 -1 0
       38 LOADB                            R6 0
       39 NEWTABLE                         R7 0 1
       41 GETIMPORT                        R8 K9 [string.format]
       43 LOADK                            R9 K10 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
       44 GETTABLEKS                       R10 R0 K11 ["fullName"]
       46 CALL                             R8 2 -1
       47 SETLIST                          R7 R8 -1 [1]
       49 RETURN                           R6 2
       50 JUMPIFNOTLT                      R1 R5 ; [+26]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K2 ["reportFailure"]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K3 ["ErrorType"]
       58 GETTABLEKS                       R7 R7 K12 ["validateMeshTriangles_TooManyTriangles"]
       60 LOADNIL                          R8
       61 MOVE                             R9 R2
       62 CALL                             R6 3 0
       63 LOADB                            R6 0
       64 NEWTABLE                         R7 0 1
       66 GETIMPORT                        R8 K9 [string.format]
       68 LOADK                            R9 K13 ["Model mesh %s resolution of %d is higher than max support value of %d. You need to retopologize your model and try again."]
       69 GETTABLEKS                       R10 R0 K11 ["fullName"]
       71 MOVE                             R11 R5
       72 MOVE                             R12 R1
       73 CALL                             R8 4 -1
       74 SETLIST                          R7 R8 -1 [1]
       76 RETURN                           R6 2
       77 LOADB                            R6 1
       78 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Analytics"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K13 ["Constants"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K14 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
