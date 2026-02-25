PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["editableMesh"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K0 ["editableMesh"]
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R6 5
       12 NAMECALL                         R0 R0 K1 ["CalculateAverageEditableCageMeshDistance"]
       14 CALL                             R0 6 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R4
        8 MOVE                             R8 R5
        9 CALL                             R6 2 2
       10 JUMPIF                           R6 ; [+23]
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R8 R9 K0 ["reportFailure"]
       14 GETUPVAL                         R11 2
       15 GETTABLEKS                       R10 R11 K1 ["ErrorType"]
       17 GETTABLEKS                       R9 R10 K2 ["validateCageMeshDistance_FailedToExecute"]
       19 LOADNIL                          R10
       20 MOVE                             R11 R5
       21 CALL                             R8 3 0
       22 LOADB                            R8 0
       23 NEWTABLE                         R9 0 1
       25 GETIMPORT                        R10 K5 [string.format]
       27 LOADK                            R11 K6 ["Failed to execute cage mesh distance validation for '%s'. Make sure the cage mesh exists and try again."]
       28 GETTABLEKS                       R12 R2 K7 ["fullName"]
       30 CALL                             R10 2 -1
       31 SETLIST                          R9 R10 -1 [1]
       33 RETURN                           R8 2
       34 NEWTABLE                         R8 0 0
       36 LOADB                            R9 1
       37 MULK                             R10 R7 K8 [100]
       38 GETUPVAL                         R11 3
       39 CALL                             R11 0 1
       40 JUMPIFLT                         R11 R10 ; [+4]
       42 LOADN                            R10 0
       43 JUMPIFNOTLT                      R7 R10 ; [+49]
       45 LOADB                            R9 0
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K0 ["reportFailure"]
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R12 R13 K1 ["ErrorType"]
       52 GETTABLEKS                       R11 R12 K9 ["validateCageMeshDistance_OuterCageToMeshDistance"]
       54 LOADNIL                          R12
       55 MOVE                             R13 R5
       56 CALL                             R10 3 0
       57 LOADN                            R10 0
       58 JUMPIFNOTLT                      R7 R10 ; [+16]
       60 LOADK                            R10 K10 ["Average distance between outer cage to mesh is too high. Mesh seems to be outside of the outer cage."]
       61 GETUPVAL                         R11 4
       62 CALL                             R11 0 1
       63 JUMPIFNOT                        R11 ; [+3]
       64 MOVE                             R11 R10
       65 LOADK                            R12 K11 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"]
       66 CONCAT                           R10 R11 R12
       67 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       69 MOVE                             R12 R8
       70 MOVE                             R13 R10
       71 GETIMPORT                        R11 K14 [table.insert]
       73 CALL                             R11 2 0
       74 JUMP                             ; [+18]
       75 GETIMPORT                        R10 K5 [string.format]
       77 LOADK                            R11 K15 ["Average distance between outer cage to mesh is too high (%.2f). Make adjustment to cage to fit the mesh better."]
       78 MOVE                             R12 R7
       79 CALL                             R10 2 1
       80 GETUPVAL                         R11 4
       81 CALL                             R11 0 1
       82 JUMPIFNOT                        R11 ; [+3]
       83 MOVE                             R11 R10
       84 LOADK                            R12 K11 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"]
       85 CONCAT                           R10 R11 R12
       86 FASTCALL2                        TABLE_INSERT R8 R10 ; [+5]
       88 MOVE                             R12 R8
       89 MOVE                             R13 R10
       90 GETIMPORT                        R11 K14 [table.insert]
       92 CALL                             R11 2 0
       93 MOVE                             R10 R9
       94 MOVE                             R11 R8
       95 RETURN                           R10 2

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
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R5 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R5 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R6 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R6 K12 ["pcallDeferred"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R7 R1 K13 ["flags"]
       36 GETTABLEKS                       R6 R7 K14 ["getFIntUGCValidateCageMeshDistanceThreshold"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R8 R1 K13 ["flags"]
       43 GETTABLEKS                       R7 R8 K15 ["getFFlagUGCValidationHyperlinksInCageQuality"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 RETURN                           R7 1
