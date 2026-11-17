PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+4]
        8 GETTABLEKS                       R2 R1 K2 ["SelectedControlPointIndex"]
       10 SETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R1 K3 ["SelectedObject"]
       13 NAMECALL                         R2 R2 K4 ["GetControlPoints"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 LOADN                            R4 0
       18 JUMPIFLE                         R3 R4 ; [+5]
       20 GETUPVAL                         R3 0
       21 LENGTH                           R4 R2
       22 JUMPIFNOTLT                      R4 R3 ; [+2]
       24 RETURN                           R1 1
       25 GETUPVAL                         R5 1
       26 LOADK                            R6 K5 ["Remove Control Point"]
       27 CALL                             R5 1 -1
       28 NAMECALL                         R3 R0 K6 ["dispatch"]
       30 CALL                             R3 -1 0
       31 GETUPVAL                         R3 0
       32 GETUPVAL                         R6 2
       33 MOVE                             R7 R3
       34 CALL                             R6 1 -1
       35 NAMECALL                         R4 R0 K6 ["dispatch"]
       37 CALL                             R4 -1 0
       38 GETTABLEKS                       R4 R1 K3 ["SelectedObject"]
       40 MOVE                             R6 R3
       41 NAMECALL                         R4 R4 K7 ["RemoveControlPoint"]
       43 CALL                             R4 2 0
       44 GETTABLEKS                       R6 R1 K3 ["SelectedObject"]
       46 NAMECALL                         R6 R6 K4 ["GetControlPoints"]
       48 CALL                             R6 1 1
       49 LENGTH                           R5 R6
       50 JUMPIFNOTLT                      R5 R3 ; [+3]
       52 SUBK                             R4 R3 K8 [1]
       53 JUMP                             ; [+1]
       54 MOVE                             R4 R3
       55 GETUPVAL                         R7 3
       56 MOVE                             R8 R4
       57 CALL                             R7 1 -1
       58 NAMECALL                         R5 R0 K6 ["dispatch"]
       60 CALL                             R5 -1 0
       61 GETUPVAL                         R7 1
       62 CALL                             R7 0 -1
       63 NAMECALL                         R5 R0 K6 ["dispatch"]
       65 CALL                             R5 -1 0
       66 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          REF R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CLOSEUPVALS                      R0
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["RecordChangeHistory"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SelectControlPoint"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K8 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["RemoveControlPointState"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 RETURN                           R4 1
