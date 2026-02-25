PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["Path2DToolMode"]
        7 JUMPIFNOTEQKS                    R2 K3 ["AddTangent"] ; [+7]
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 1
       11 CALL                             R4 1 -1
       12 NAMECALL                         R2 R0 K4 ["dispatch"]
       14 CALL                             R2 -1 0
       15 GETTABLEKS                       R2 R1 K5 ["SelectedObject"]
       17 GETUPVAL                         R3 1
       18 SETTABLEKS                       R3 R2 K6 ["SelectedControlPoint"]
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 1
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R0 K4 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Thunks"]
       22 GETTABLEKS                       R3 R4 K8 ["AddControlPointTangent"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Actions"]
       31 GETTABLEKS                       R4 R5 K10 ["SelectControlPoint"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
