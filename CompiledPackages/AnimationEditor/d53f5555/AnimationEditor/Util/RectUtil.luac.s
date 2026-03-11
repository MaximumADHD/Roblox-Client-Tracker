PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["Min"]
        2 GETTABLEKS                       R3 R4 K1 ["X"]
        4 GETTABLEKS                       R5 R1 K0 ["Min"]
        6 GETTABLEKS                       R4 R5 K1 ["X"]
        8 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       10 GETIMPORT                        R2 K4 [math.min]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R5 R0 K0 ["Min"]
       15 GETTABLEKS                       R4 R5 K5 ["Y"]
       17 GETTABLEKS                       R6 R1 K0 ["Min"]
       19 GETTABLEKS                       R5 R6 K5 ["Y"]
       21 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       23 GETIMPORT                        R3 K4 [math.min]
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R6 R0 K6 ["Max"]
       28 GETTABLEKS                       R5 R6 K1 ["X"]
       30 GETTABLEKS                       R7 R1 K6 ["Max"]
       32 GETTABLEKS                       R6 R7 K1 ["X"]
       34 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       36 GETIMPORT                        R4 K8 [math.max]
       38 CALL                             R4 2 1
       39 GETTABLEKS                       R7 R0 K6 ["Max"]
       41 GETTABLEKS                       R6 R7 K5 ["Y"]
       43 GETTABLEKS                       R8 R1 K6 ["Max"]
       45 GETTABLEKS                       R7 R8 K5 ["Y"]
       47 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       49 GETIMPORT                        R5 K8 [math.max]
       51 CALL                             R5 2 1
       52 GETIMPORT                        R6 K11 [Rect.new]
       54 MOVE                             R7 R2
       55 MOVE                             R8 R3
       56 MOVE                             R9 R4
       57 MOVE                             R10 R5
       58 CALL                             R6 4 -1
       59 RETURN                           R6 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Rect.new]
        2 GETTABLEKS                       R5 R0 K3 ["Min"]
        4 GETTABLEKS                       R4 R5 K4 ["X"]
        6 SUB                              R3 R4 R1
        7 GETTABLEKS                       R6 R0 K3 ["Min"]
        9 GETTABLEKS                       R5 R6 K5 ["Y"]
       11 SUB                              R4 R5 R1
       12 GETTABLEKS                       R7 R0 K6 ["Max"]
       14 GETTABLEKS                       R6 R7 K4 ["X"]
       16 ADD                              R5 R6 R1
       17 GETTABLEKS                       R8 R0 K6 ["Max"]
       19 GETTABLEKS                       R7 R8 K5 ["Y"]
       21 ADD                              R6 R7 R1
       22 CALL                             R2 4 -1
       23 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R5 R0 K1 ["Min"]
        2 GETTABLEKS                       R4 R5 K2 ["X"]
        4 GETTABLEKS                       R6 R0 K3 ["Max"]
        6 GETTABLEKS                       R5 R6 K2 ["X"]
        8 ADD                              R3 R4 R5
        9 DIVK                             R2 R3 K0 [2]
       10 GETTABLEKS                       R6 R0 K1 ["Min"]
       12 GETTABLEKS                       R5 R6 K4 ["Y"]
       14 GETTABLEKS                       R7 R0 K3 ["Max"]
       16 GETTABLEKS                       R6 R7 K4 ["Y"]
       18 ADD                              R4 R5 R6
       19 DIVK                             R3 R4 K0 [2]
       20 GETTABLEKS                       R6 R0 K5 ["Width"]
       22 DIVK                             R5 R6 K0 [2]
       23 DIV                              R4 R5 R1
       24 GETTABLEKS                       R7 R0 K6 ["Height"]
       26 DIVK                             R6 R7 K0 [2]
       27 DIV                              R5 R6 R1
       28 GETIMPORT                        R6 K9 [Rect.new]
       30 SUB                              R7 R2 R4
       31 SUB                              R8 R3 R5
       32 ADD                              R9 R2 R4
       33 ADD                              R10 R3 R5
       34 CALL                             R6 4 -1
       35 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["union"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["addPadding"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["computeZoomedRect"]
       12 RETURN                           R0 1
