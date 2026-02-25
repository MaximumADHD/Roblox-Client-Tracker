PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R4 1
       13 LOADK                            R5 K3 ["Setting Path Position"]
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R0 K4 ["dispatch"]
       17 CALL                             R2 -1 0
       18 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
       20 NAMECALL                         R2 R2 K5 ["GetControlPoints"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K2 ["SelectedObject"]
       25 NAMECALL                         R3 R3 K6 ["GetBoundingRect"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K7 ["Min"]
       30 GETUPVAL                         R6 2
       31 SUB                              R5 R6 R4
       32 MOVE                             R6 R2
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 GETTABLEKS                       R12 R10 K8 ["Position"]
       38 GETUPVAL                         R13 3
       39 GETUPVAL                         R15 4
       40 ADD                              R14 R15 R5
       41 GETTABLEKS                       R16 R1 K2 ["SelectedObject"]
       43 GETTABLEKS                       R15 R16 K9 ["Parent"]
       45 CALL                             R13 2 1
       46 ADD                              R11 R12 R13
       47 SETTABLEKS                       R11 R10 K8 ["Position"]
       49 FORGLOOP                         R6 2 ; [-14]
       51 GETTABLEKS                       R6 R1 K2 ["SelectedObject"]
       53 MOVE                             R8 R2
       54 NAMECALL                         R6 R6 K10 ["SetControlPoints"]
       56 CALL                             R6 2 0
       57 GETUPVAL                         R6 0
       58 JUMPIFNOT                        R6 ; [+5]
       59 GETUPVAL                         R8 1
       60 CALL                             R8 0 -1
       61 NAMECALL                         R6 R0 K4 ["dispatch"]
       63 CALL                             R6 -1 0
       64 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R3 K7 ["RecordChangeHistory"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R2 R3 K8 ["Util"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R2 K9 ["getRelativePosFromAbsPos"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
