PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R4 1
        7 SUB                              R2 R3 R4
        8 GETTABLEKS                       R3 R1 K2 ["Path2DToolMode"]
       10 JUMPIFNOTEQKS                    R3 K3 ["Move"] ; [+22]
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R6 R1 K4 ["SelectedObject"]
       16 CALL                             R5 1 1
       17 SUB                              R3 R4 R5
       18 GETUPVAL                         R4 3
       19 MOVE                             R5 R3
       20 GETTABLEKS                       R7 R1 K4 ["SelectedObject"]
       22 GETTABLEKS                       R6 R7 K5 ["Parent"]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R7 4
       26 GETUPVAL                         R8 5
       27 MOVE                             R9 R4
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R0 K6 ["dispatch"]
       31 CALL                             R5 -1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R1 K2 ["Path2DToolMode"]
       35 JUMPIFNOTEQKS                    R3 K7 ["AddTangent"] ; [+19]
       37 GETTABLEKS                       R4 R1 K8 ["SelectedTangentSide"]
       39 JUMPIFEQKNIL                     R4 ; [+4]
       41 GETTABLEKS                       R3 R1 K8 ["SelectedTangentSide"]
       43 JUMP                             ; [+1]
       44 LOADK                            R3 K9 ["Left"]
       45 GETUPVAL                         R6 6
       46 GETUPVAL                         R7 5
       47 MOVE                             R8 R3
       48 MOVE                             R9 R2
       49 LOADB                            R10 0
       50 LOADB                            R11 0
       51 CALL                             R6 5 -1
       52 NAMECALL                         R4 R0 K6 ["dispatch"]
       54 CALL                             R4 -1 0
       55 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Thunks"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["ModifyControlPoint"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["SetControlPointTangent"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K3 ["Src"]
       25 GETTABLEKS                       R4 R5 K9 ["Util"]
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R4 K10 ["getUDim2ScaleFromVector2"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R4 K11 ["getAbsolutePosition"]
       36 CALL                             R6 1 1
       37 DUPCLOSURE                       R7 K12 [PROTO_1]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R7 1
