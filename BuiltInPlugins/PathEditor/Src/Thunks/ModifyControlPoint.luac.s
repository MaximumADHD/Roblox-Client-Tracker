PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETUPVAL                         R2 0
        6 LOADN                            R3 0
        7 JUMPIFLE                         R2 R3 ; [+7]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R4 R1 K2 ["ControlPoints"]
       12 LENGTH                           R3 R4
       13 JUMPIFNOTLT                      R3 R2 ; [+2]
       15 RETURN                           R1 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R1 K3 ["ParentAbsRotation"]
       19 JUMPIFEQKN                       R3 K4 [0] ; [+20]
       21 GETUPVAL                         R3 2
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R5 4
       24 MOVE                             R6 R2
       25 GETTABLEKS                       R7 R1 K5 ["SelectedObject"]
       27 GETTABLEKS                       R7 R7 K6 ["Parent"]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R7 R1 K8 ["ParentAbsSize"]
       32 MULK                             R6 R7 K7 [0.5]
       33 LOADN                            R8 255
       34 GETTABLEKS                       R9 R1 K3 ["ParentAbsRotation"]
       36 MUL                              R7 R8 R9
       37 CALL                             R4 3 -1
       38 CALL                             R3 -1 1
       39 MOVE                             R2 R3
       40 GETTABLEKS                       R3 R1 K2 ["ControlPoints"]
       42 GETTABLEKS                       R4 R1 K9 ["ScalePositionMode"]
       44 JUMPIFNOT                        R4 ; [+8]
       45 GETUPVAL                         R4 5
       46 MOVE                             R5 R2
       47 GETTABLEKS                       R6 R1 K5 ["SelectedObject"]
       49 GETTABLEKS                       R6 R6 K6 ["Parent"]
       51 CALL                             R4 2 1
       52 MOVE                             R2 R4
       53 GETUPVAL                         R5 0
       54 GETTABLE                         R4 R3 R5
       55 SETTABLEKS                       R2 R4 K10 ["Position"]
       57 GETTABLEKS                       R4 R1 K5 ["SelectedObject"]
       59 GETUPVAL                         R6 0
       60 GETUPVAL                         R8 0
       61 GETTABLE                         R7 R3 R8
       62 NAMECALL                         R4 R4 K11 ["UpdateControlPoint"]
       64 CALL                             R4 3 0
       65 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["getUDim2ScaleFromOffset"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["getVector2FromUDim2Scale"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K9 ["getUDim2FromVector2"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K10 ["rotatePoint"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K11 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 RETURN                           R5 1
