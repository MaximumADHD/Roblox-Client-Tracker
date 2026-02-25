PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshVertColors"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["isServer"]
        5 GETUPVAL                         R5 0
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 MOVE                             R7 R2
       11 CALL                             R5 2 2
       12 JUMPIF                           R5 ; [+31]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K3 ["reportFailure"]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K4 ["ErrorType"]
       19 GETTABLEKS                       R8 R9 K5 ["validateMeshVertexColors_FailedToLoadMesh"]
       21 LOADNIL                          R9
       22 MOVE                             R10 R2
       23 CALL                             R7 3 0
       24 GETIMPORT                        R7 K8 [string.format]
       26 LOADK                            R8 K9 ["Failed to load vertex color map for model mesh %s. Make sure it exists and try again."]
       27 GETTABLEKS                       R9 R0 K10 ["fullName"]
       29 CALL                             R7 2 1
       30 JUMPIFEQKNIL                     R4 ; [+6]
       32 JUMPIFNOT                        R4 ; [+4]
       33 GETIMPORT                        R8 K12 [error]
       35 MOVE                             R9 R7
       36 CALL                             R8 1 0
       37 LOADB                            R8 0
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R7
       41 SETLIST                          R9 R10 1 [1]
       43 RETURN                           R8 2
       44 JUMPIF                           R6 ; [+27]
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R7 R8 K3 ["reportFailure"]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R9 R10 K4 ["ErrorType"]
       51 GETTABLEKS                       R8 R9 K13 ["validateMeshVertexColors_NonNeutralVertexColors"]
       53 LOADNIL                          R9
       54 MOVE                             R10 R2
       55 CALL                             R7 3 0
       56 LOADB                            R7 0
       57 NEWTABLE                         R8 0 1
       59 GETIMPORT                        R9 K8 [string.format]
       61 LOADK                            R10 K14 ["Invalid vertex color found in mesh model '%s'. You need to edit the color map to be all white %s and try again."]
       62 GETTABLEKS                       R11 R0 K10 ["fullName"]
       64 JUMPIFNOT                        R1 ; [+2]
       65 LOADK                            R12 K15 ["with no transarency"]
       66 JUMP                             ; [+1]
       67 LOADK                            R12 K16 [""]
       68 CALL                             R9 3 -1
       69 SETLIST                          R8 R9 -1 [1]
       71 RETURN                           R7 2
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R7 R8 K17 ["recordScriptTime"]
       75 GETIMPORT                        R9 K19 [script]
       77 GETTABLEKS                       R8 R9 K20 ["Name"]
       79 MOVE                             R9 R3
       80 MOVE                             R10 R2
       81 CALL                             R7 3 0
       82 LOADB                            R7 1
       83 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R5 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Analytics"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 RETURN                           R5 1
