PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["ValidateEditableMeshCageUVTriangleArea"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["isServer"]
        5 GETUPVAL                         R4 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 MOVE                             R6 R1
       10 CALL                             R4 2 2
       11 JUMPIF                           R4 ; [+33]
       12 JUMPIFNOT                        R3 ; [+9]
       13 GETIMPORT                        R6 K4 [error]
       15 GETIMPORT                        R7 K7 [string.format]
       17 LOADK                            R8 K8 ["Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again."]
       18 GETTABLEKS                       R9 R0 K9 ["fullName"]
       20 CALL                             R7 2 -1
       21 CALL                             R6 -1 0
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K10 ["reportFailure"]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K11 ["ErrorType"]
       28 GETTABLEKS                       R7 R7 K12 ["validateCageUVTriangleArea_FailedToLoadMesh"]
       30 LOADNIL                          R8
       31 MOVE                             R9 R1
       32 CALL                             R6 3 0
       33 LOADB                            R6 0
       34 NEWTABLE                         R7 0 1
       36 GETIMPORT                        R8 K7 [string.format]
       38 LOADK                            R9 K8 ["Failed to load UVs for '%s'. Make sure the model has a valid UV map and try again."]
       39 GETTABLEKS                       R10 R0 K9 ["fullName"]
       41 CALL                             R8 2 -1
       42 SETLIST                          R7 R8 -1 [1]
       44 RETURN                           R6 2
       45 JUMPIF                           R5 ; [+23]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K10 ["reportFailure"]
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K11 ["ErrorType"]
       52 GETTABLEKS                       R7 R7 K13 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
       54 LOADNIL                          R8
       55 MOVE                             R9 R1
       56 CALL                             R6 3 0
       57 LOADB                            R6 0
       58 NEWTABLE                         R7 0 1
       60 GETIMPORT                        R8 K7 [string.format]
       62 LOADK                            R9 K14 ["Detected zero-area triangle in UV map of '%s'. You need to edit the UV map to fix this issue."]
       63 GETTABLEKS                       R10 R0 K9 ["fullName"]
       65 CALL                             R8 2 -1
       66 SETLIST                          R7 R8 -1 [1]
       68 RETURN                           R6 2
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K15 ["recordScriptTime"]
       72 GETIMPORT                        R7 K17 [script]
       74 GETTABLEKS                       R7 R7 K18 ["Name"]
       76 MOVE                             R8 R2
       77 MOVE                             R9 R1
       78 CALL                             R6 3 0
       79 LOADB                            R6 1
       80 RETURN                           R6 1

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
       32 DUPCLOSURE                       R5 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R4
       36 RETURN                           R5 1
