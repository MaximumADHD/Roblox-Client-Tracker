PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["Path2DToolMode"]
        7 JUMPIFNOTEQKS                    R2 K3 ["Move"] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R1 K2 ["Path2DToolMode"]
       12 JUMPIFNOTEQKS                    R2 K4 ["AddTangent"] ; [+34]
       14 GETUPVAL                         R4 0
       15 LOADK                            R5 K5 ["Removed Tangents"]
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R0 K6 ["dispatch"]
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R4 1
       21 GETUPVAL                         R5 2
       22 LOADK                            R6 K7 ["Left"]
       23 GETIMPORT                        R7 K10 [Vector2.zero]
       25 LOADB                            R8 0
       26 LOADB                            R9 0
       27 CALL                             R4 5 -1
       28 NAMECALL                         R2 R0 K6 ["dispatch"]
       30 CALL                             R2 -1 0
       31 GETUPVAL                         R4 1
       32 GETUPVAL                         R5 2
       33 LOADK                            R6 K11 ["Right"]
       34 GETIMPORT                        R7 K10 [Vector2.zero]
       36 LOADB                            R8 0
       37 LOADB                            R9 0
       38 CALL                             R4 5 -1
       39 NAMECALL                         R2 R0 K6 ["dispatch"]
       41 CALL                             R2 -1 0
       42 GETUPVAL                         R4 0
       43 CALL                             R4 0 -1
       44 NAMECALL                         R2 R0 K6 ["dispatch"]
       46 CALL                             R2 -1 0
       47 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Thunks"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["SetControlPointTangent"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["RecordChangeHistory"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
