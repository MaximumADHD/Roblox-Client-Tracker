PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K1 ["CageOrigin"]
       10 NAMECALL                         R4 R4 K2 ["Inverse"]
       12 CALL                             R4 1 1
       13 LOADK                            R5 K3 [{1, 1, 1}]
       14 NAMECALL                         R0 R0 K4 ["CalculateEditableMeshInsideMeshPercentage"]
       16 CALL                             R0 5 -1
       17 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R4 K1 [tick]
        2 CALL                             R4 0 1
        3 GETUPVAL                         R5 0
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R0
        9 MOVE                             R7 R3
       10 CALL                             R5 2 2
       11 JUMPIF                           R5 ; [+33]
       12 GETIMPORT                        R7 K4 [string.format]
       14 LOADK                            R8 K5 ["Failed to execute render mesh inside outer mesh check for '%s' and '%s'. Make sure the meshes exists and try again."]
       15 GETTABLEKS                       R9 R1 K6 ["fullName"]
       17 GETTABLEKS                       R10 R2 K6 ["fullName"]
       19 CALL                             R7 3 1
       20 GETTABLEKS                       R8 R3 K7 ["isServer"]
       22 JUMPIFNOT                        R8 ; [+4]
       23 GETIMPORT                        R8 K9 [error]
       25 MOVE                             R9 R7
       26 CALL                             R8 1 0
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K10 ["reportFailure"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K11 ["ErrorType"]
       33 GETTABLEKS                       R9 R9 K12 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
       35 LOADNIL                          R10
       36 MOVE                             R11 R3
       37 CALL                             R8 3 0
       38 LOADB                            R8 0
       39 NEWTABLE                         R9 0 1
       41 MOVE                             R10 R7
       42 SETLIST                          R9 R10 1 [1]
       44 RETURN                           R8 2
       45 MULK                             R6 R6 K13 [100]
       46 GETUPVAL                         R7 3
       47 CALL                             R7 0 1
       48 JUMPIFNOTLT                      R6 R7 ; [+32]
       50 GETUPVAL                         R7 2
       51 GETTABLEKS                       R7 R7 K10 ["reportFailure"]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K11 ["ErrorType"]
       56 GETTABLEKS                       R8 R8 K14 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
       58 LOADNIL                          R9
       59 MOVE                             R10 R3
       60 CALL                             R7 3 0
       61 GETIMPORT                        R7 K4 [string.format]
       63 LOADK                            R8 K15 ["Validation detected %d%% of the accessory is outside its outer cage. Make adjustments to have more of the accessory placed between the cages"]
       64 FASTCALL1                        MATH_FLOOR R6 ; [+3]
       65 MOVE                             R11 R6
       66 GETIMPORT                        R10 K18 [math.floor]
       68 CALL                             R10 1 1
       69 SUBRK                            R9 R13 K10 ["reportFailure"]
       70 CALL                             R7 2 1
       71 MOVE                             R8 R7
       72 LOADK                            R9 K19 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageInsideMesh)"]
       73 CONCAT                           R7 R8 R9
       74 LOADB                            R8 0
       75 NEWTABLE                         R9 0 1
       77 MOVE                             R10 R7
       78 SETLIST                          R9 R10 1 [1]
       80 RETURN                           R8 2
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K20 ["recordScriptTime"]
       84 GETIMPORT                        R8 K22 [script]
       86 GETTABLEKS                       R8 R8 K23 ["Name"]
       88 MOVE                             R9 R4
       89 MOVE                             R10 R3
       90 CALL                             R7 3 0
       91 LOADB                            R7 1
       92 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["flags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K12 ["util"]
       29 GETTABLEKS                       R5 R5 K13 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K12 ["util"]
       36 GETTABLEKS                       R6 R6 K14 ["pcallDeferred"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
