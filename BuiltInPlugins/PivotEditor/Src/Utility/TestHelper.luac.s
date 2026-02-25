PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 LOADK                            R2 K2 ["TempInstancesFolder"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["CoreGui"]
        4 LOADK                            R2 K3 ["TempScreenGui"]
        5 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [workspace]
        2 LOADK                            R2 K2 ["TempInstancesFolder"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K4 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETIMPORT                        R2 K6 [game]
       12 GETTABLEKS                       R1 R2 K7 ["CoreGui"]
       14 LOADK                            R3 K8 ["TempScreenGui"]
       15 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+3]
       19 NAMECALL                         R2 R1 K4 ["Destroy"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [workspace]
        2 LOADK                            R2 K2 ["TempInstancesFolder"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K6 [Instance.new]
       10 LOADK                            R2 K7 ["Folder"]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 LOADK                            R1 K2 ["TempInstancesFolder"]
       14 SETTABLEKS                       R1 R0 K8 ["Name"]
       16 GETIMPORT                        R1 K1 [workspace]
       18 SETTABLEKS                       R1 R0 K9 ["Parent"]
       20 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["CoreGui"]
        4 LOADK                            R2 K3 ["TempScreenGui"]
        5 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 1
       10 GETIMPORT                        R1 K7 [Instance.new]
       12 LOADK                            R2 K8 ["ScreenGui"]
       13 GETIMPORT                        R4 K1 [game]
       15 GETTABLEKS                       R3 R4 K2 ["CoreGui"]
       17 CALL                             R1 2 1
       18 MOVE                             R0 R1
       19 LOADK                            R1 K3 ["TempScreenGui"]
       20 SETTABLEKS                       R1 R0 K9 ["Name"]
       22 GETIMPORT                        R1 K13 [Enum.ZIndexBehavior.Sibling]
       24 SETTABLEKS                       R1 R0 K11 ["ZIndexBehavior"]
       26 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTempInstancesFolder"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [Instance.new]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R1 R2 K4 ["Parent"]
       10 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getTempScreenGui"]
        5 CALL                             R1 0 1
        6 MOVE                             R0 R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["new"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["Selection"]
       14 GETTABLEKS                       R3 R4 K1 ["new"]
       16 CALL                             R3 0 1
       17 LOADB                            R4 1
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_7:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["thunkMiddleware"]
        5 SETLIST                          R0 R1 1 [1]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["Store"]
       10 GETTABLEKS                       R1 R2 K2 ["new"]
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 MOVE                             R4 R0
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R2 R3 K7 ["DraggerSchemaCore"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["DraggerSchema"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R7 R0 K9 ["Src"]
       29 GETTABLEKS                       R6 R7 K10 ["Reducers"]
       31 GETTABLEKS                       R5 R6 K11 ["MainReducer"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R8 R0 K9 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["Utility"]
       40 GETTABLEKS                       R6 R7 K13 ["MockDraggerContext_Pivot"]
       42 CALL                             R5 1 1
       43 DUPCLOSURE                       R6 K14 [PROTO_0]
       44 DUPCLOSURE                       R7 K15 [PROTO_1]
       45 NEWTABLE                         R8 8 0
       47 DUPCLOSURE                       R9 K16 [PROTO_2]
       48 SETTABLEKS                       R9 R8 K17 ["cleanTempInstances"]
       50 DUPCLOSURE                       R9 K18 [PROTO_3]
       51 SETTABLEKS                       R9 R8 K19 ["getTempInstancesFolder"]
       53 DUPCLOSURE                       R9 K20 [PROTO_4]
       54 SETTABLEKS                       R9 R8 K21 ["getTempScreenGui"]
       56 DUPCLOSURE                       R9 K22 [PROTO_5]
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R9 R8 K23 ["createInstance"]
       60 DUPCLOSURE                       R9 K24 [PROTO_6]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R9 R8 K25 ["createTestDraggerContext"]
       66 DUPCLOSURE                       R9 K26 [PROTO_7]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R9 R8 K27 ["createTestStore"]
       71 RETURN                           R8 1
