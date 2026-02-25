PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["CalculateEditableMeshTotalSurfaceArea"]
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
       13 GETIMPORT                        R7 K5 [string.format]
       15 LOADK                            R8 K6 ["Failed to execute max total surface area check for '%s'. Make sure mesh exists and try again."]
       16 GETTABLEKS                       R9 R0 K7 ["fullName"]
       18 CALL                             R7 2 1
       19 JUMPIFEQKNIL                     R4 ; [+6]
       21 JUMPIFNOT                        R4 ; [+4]
       22 GETIMPORT                        R8 K9 [error]
       24 MOVE                             R9 R7
       25 CALL                             R8 1 0
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R8 R9 K10 ["reportFailure"]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K11 ["ErrorType"]
       32 GETTABLEKS                       R9 R10 K12 ["validateTotalSurfaceArea_FailedToExecute"]
       34 LOADNIL                          R10
       35 MOVE                             R11 R2
       36 CALL                             R8 3 0
       37 LOADB                            R8 0
       38 NEWTABLE                         R9 0 1
       40 MOVE                             R10 R7
       41 SETLIST                          R9 R10 1 [1]
       43 RETURN                           R8 2
       44 GETUPVAL                         R7 3
       45 CALL                             R7 0 1
       46 JUMPIFNOTLT                      R7 R6 ; [+27]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K10 ["reportFailure"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R9 R10 K11 ["ErrorType"]
       54 GETTABLEKS                       R8 R9 K13 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
       56 LOADNIL                          R9
       57 MOVE                             R10 R2
       58 CALL                             R7 3 0
       59 LOADB                            R7 0
       60 NEWTABLE                         R8 0 1
       62 GETIMPORT                        R9 K5 [string.format]
       64 LOADK                            R10 K14 ["The total surface area of model mesh '%s' is %.2f, it cannot be greater than %d. You must reduce the number and/or size of all triangles."]
       65 GETTABLEKS                       R11 R0 K7 ["fullName"]
       67 MOVE                             R12 R6
       68 GETUPVAL                         R13 3
       69 CALL                             R13 0 -1
       70 CALL                             R9 -1 -1
       71 SETLIST                          R8 R9 -1 [1]
       73 RETURN                           R7 2
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R7 R8 K15 ["recordScriptTime"]
       77 GETIMPORT                        R9 K17 [script]
       79 GETTABLEKS                       R8 R9 K18 ["Name"]
       81 MOVE                             R9 R3
       82 MOVE                             R10 R2
       83 CALL                             R7 3 0
       84 LOADB                            R7 1
       85 RETURN                           R7 1

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
       15 GETTABLEKS                       R4 R1 K9 ["flags"]
       17 GETTABLEKS                       R3 R4 K10 ["getFIntMaxTotalSurfaceArea"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K11 ["util"]
       24 GETTABLEKS                       R4 R5 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R6 R1 K11 ["util"]
       31 GETTABLEKS                       R5 R6 K13 ["pcallDeferred"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Analytics"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 RETURN                           R6 1
