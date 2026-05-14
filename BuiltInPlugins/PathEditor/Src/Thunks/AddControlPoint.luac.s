PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 LOADK                            R5 K3 ["Add Control Point"]
       12 CALL                             R4 1 -1
       13 NAMECALL                         R2 R0 K4 ["dispatch"]
       15 CALL                             R2 -1 0
       16 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
       18 NAMECALL                         R2 R2 K5 ["GetControlPoints"]
       20 CALL                             R2 1 1
       21 LENGTH                           R3 R2
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K6 ["MaxControlPoints"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+10]
       27 GETIMPORT                        R3 K8 [warn]
       29 LOADK                            R4 K9 ["Path2D: Cannot set more than "]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K6 ["MaxControlPoints"]
       33 LOADK                            R6 K10 ["control points"]
       34 CALL                             R3 3 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R4 2
       37 JUMPIFNOT                        R4 ; [+11]
       38 GETUPVAL                         R4 2
       39 LENGTH                           R6 R2
       40 ADDK                             R5 R6 K11 [1]
       41 JUMPIFNOTLE                      R4 R5 ; [+7]
       43 GETUPVAL                         R4 2
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+3]
       47 GETUPVAL                         R3 2
       48 JUMP                             ; [+2]
       49 LENGTH                           R4 R2
       50 ADDK                             R3 R4 K11 [1]
       51 GETUPVAL                         R4 3
       52 CALL                             R4 0 1
       53 GETUPVAL                         R5 4
       54 GETUPVAL                         R6 5
       55 GETTABLEKS                       R7 R1 K2 ["SelectedObject"]
       57 GETTABLEKS                       R7 R7 K12 ["Parent"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K13 ["Position"]
       62 GETTABLEKS                       R5 R1 K2 ["SelectedObject"]
       64 MOVE                             R7 R3
       65 MOVE                             R8 R4
       66 NAMECALL                         R5 R5 K14 ["InsertControlPoint"]
       68 CALL                             R5 3 0
       69 GETTABLEKS                       R5 R1 K2 ["SelectedObject"]
       71 SETTABLEKS                       R3 R5 K15 ["SelectedControlPoint"]
       73 GETUPVAL                         R7 6
       74 MOVE                             R8 R3
       75 CALL                             R7 1 -1
       76 NAMECALL                         R5 R0 K4 ["dispatch"]
       78 CALL                             R5 -1 0
       79 GETUPVAL                         R7 0
       80 CALL                             R7 0 -1
       81 NAMECALL                         R5 R0 K4 ["dispatch"]
       83 CALL                             R5 -1 0
       84 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SelectControlPoint"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["RecordChangeHistory"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Resources"]
       33 GETTABLEKS                       R4 R4 K11 ["Constants"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R0 K5 ["Src"]
       38 GETTABLEKS                       R4 R4 K12 ["Util"]
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R4 K13 ["makeNewPath2DControlPoint"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R4 K14 ["getUDim2ScaleFromOffset"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K15 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 RETURN                           R7 1
