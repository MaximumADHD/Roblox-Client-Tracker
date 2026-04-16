PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["GetEditableMeshMaxNearbyVerticesCollisions"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R1 K2 ["isServer"]
        5 GETUPVAL                         R5 0
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 MOVE                             R7 R1
       11 CALL                             R5 2 2
       12 JUMPIF                           R5 ; [+35]
       13 JUMPIFEQKNIL                     R4 ; [+11]
       15 JUMPIFNOT                        R4 ; [+9]
       16 GETIMPORT                        R7 K4 [error]
       18 GETIMPORT                        R8 K7 [string.format]
       20 LOADK                            R9 K8 ["Failed to execute vertex density check for '%s'. Make sure mesh exists and try again."]
       21 GETTABLEKS                       R10 R0 K9 ["fullName"]
       23 CALL                             R8 2 -1
       24 CALL                             R7 -1 0
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K10 ["reportFailure"]
       28 GETUPVAL                         R10 2
       29 GETTABLEKS                       R9 R10 K11 ["ErrorType"]
       31 GETTABLEKS                       R8 R9 K12 ["validateVertexDensity_FailedToExecute"]
       33 LOADNIL                          R9
       34 MOVE                             R10 R1
       35 CALL                             R7 3 0
       36 LOADB                            R7 0
       37 NEWTABLE                         R8 0 1
       39 GETIMPORT                        R9 K7 [string.format]
       41 LOADK                            R10 K8 ["Failed to execute vertex density check for '%s'. Make sure mesh exists and try again."]
       42 GETTABLEKS                       R11 R0 K9 ["fullName"]
       44 CALL                             R9 2 -1
       45 SETLIST                          R8 R9 -1 [1]
       47 RETURN                           R7 2
       48 GETUPVAL                         R7 3
       49 CALL                             R7 0 1
       50 JUMPIFNOTLT                      R7 R6 ; [+19]
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R7 R8 K10 ["reportFailure"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R9 R10 K11 ["ErrorType"]
       58 GETTABLEKS                       R8 R9 K13 ["validateVertexDensity_MaxDensityExceeded"]
       60 LOADNIL                          R9
       61 MOVE                             R10 R1
       62 CALL                             R7 3 0
       63 LOADB                            R7 0
       64 NEWTABLE                         R8 0 1
       66 LOADK                            R9 K14 ["The maximum vertex density has been exceeded. Reduce the number of vertices that are very close to each other."]
       67 SETLIST                          R8 R9 1 [1]
       69 RETURN                           R7 2
       70 GETUPVAL                         R8 2
       71 GETTABLEKS                       R7 R8 K15 ["recordScriptTime"]
       73 GETIMPORT                        R9 K17 [script]
       75 GETTABLEKS                       R8 R9 K18 ["Name"]
       77 MOVE                             R9 R3
       78 MOVE                             R10 R1
       79 CALL                             R7 3 0
       80 LOADB                            R7 1
       81 RETURN                           R7 1

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
       29 GETTABLEKS                       R6 R1 K12 ["flags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFIntUGCValidationVertexDensityThreshold"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Analytics"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
