PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 LOADK                            R4 K2 ["AbsolutePosition"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R4
        6 CALL                             R2 1 2
        7 MOVE                             R1 R2
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R1 R0 K2 ["AbsolutePosition"]
       11 RETURN                           R1 1
       12 GETIMPORT                        R2 K1 [pcall]
       14 LOADK                            R4 K3 ["Position"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R4
       18 CALL                             R2 1 2
       19 MOVE                             R1 R2
       20 JUMPIFNOT                        R1 ; [+60]
       21 GETTABLEKS                       R2 R0 K4 ["Parent"]
       23 GETIMPORT                        R3 K1 [pcall]
       25 LOADK                            R5 K5 ["AbsoluteSize"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R5
       29 CALL                             R3 1 2
       30 MOVE                             R1 R3
       31 JUMPIFNOT                        R1 ; [+49]
       32 GETIMPORT                        R2 K8 [Vector2.new]
       34 GETTABLEKS                       R6 R0 K3 ["Position"]
       36 GETTABLEKS                       R5 R6 K9 ["X"]
       38 GETTABLEKS                       R4 R5 K10 ["Offset"]
       40 GETTABLEKS                       R8 R0 K3 ["Position"]
       42 GETTABLEKS                       R7 R8 K9 ["X"]
       44 GETTABLEKS                       R6 R7 K11 ["Scale"]
       46 GETTABLEKS                       R9 R0 K4 ["Parent"]
       48 GETTABLEKS                       R8 R9 K5 ["AbsoluteSize"]
       50 GETTABLEKS                       R7 R8 K12 ["x"]
       52 MUL                              R5 R6 R7
       53 ADD                              R3 R4 R5
       54 GETTABLEKS                       R7 R0 K3 ["Position"]
       56 GETTABLEKS                       R6 R7 K13 ["Y"]
       58 GETTABLEKS                       R5 R6 K10 ["Offset"]
       60 GETTABLEKS                       R9 R0 K3 ["Position"]
       62 GETTABLEKS                       R8 R9 K13 ["Y"]
       64 GETTABLEKS                       R7 R8 K11 ["Scale"]
       66 GETTABLEKS                       R10 R0 K4 ["Parent"]
       68 GETTABLEKS                       R9 R10 K5 ["AbsoluteSize"]
       70 GETTABLEKS                       R8 R9 K14 ["y"]
       72 MUL                              R6 R7 R8
       73 ADD                              R4 R5 R6
       74 CALL                             R2 2 1
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R4 R0 K4 ["Parent"]
       78 CALL                             R3 1 1
       79 ADD                              R1 R2 R3
       80 RETURN                           R1 1
       81 GETUPVAL                         R1 0
       82 GETTABLEKS                       R2 R0 K4 ["Parent"]
       84 CALL                             R1 1 -1
       85 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R1
        4 RETURN                           R1 1
