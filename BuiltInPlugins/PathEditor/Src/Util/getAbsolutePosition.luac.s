PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["AbsolutePosition"]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R4
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K2 [pcall]
        7 CALL                             R2 1 2
        8 MOVE                             R1 R2
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K0 ["AbsolutePosition"]
       12 RETURN                           R1 1
       13 LOADK                            R4 K3 ["Position"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R2 K2 [pcall]
       20 CALL                             R2 1 2
       21 MOVE                             R1 R2
       22 JUMPIFNOT                        R1 ; [+61]
       23 GETTABLEKS                       R2 R0 K4 ["Parent"]
       25 LOADK                            R5 K5 ["AbsoluteSize"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R5
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R3 K2 [pcall]
       32 CALL                             R3 1 2
       33 MOVE                             R1 R3
       34 JUMPIFNOT                        R1 ; [+49]
       35 GETIMPORT                        R2 K8 [Vector2.new]
       37 GETTABLEKS                       R4 R0 K3 ["Position"]
       39 GETTABLEKS                       R4 R4 K9 ["X"]
       41 GETTABLEKS                       R4 R4 K10 ["Offset"]
       43 GETTABLEKS                       R6 R0 K3 ["Position"]
       45 GETTABLEKS                       R6 R6 K9 ["X"]
       47 GETTABLEKS                       R6 R6 K11 ["Scale"]
       49 GETTABLEKS                       R7 R0 K4 ["Parent"]
       51 GETTABLEKS                       R7 R7 K5 ["AbsoluteSize"]
       53 GETTABLEKS                       R7 R7 K12 ["x"]
       55 MUL                              R5 R6 R7
       56 ADD                              R3 R4 R5
       57 GETTABLEKS                       R5 R0 K3 ["Position"]
       59 GETTABLEKS                       R5 R5 K13 ["Y"]
       61 GETTABLEKS                       R5 R5 K10 ["Offset"]
       63 GETTABLEKS                       R7 R0 K3 ["Position"]
       65 GETTABLEKS                       R7 R7 K13 ["Y"]
       67 GETTABLEKS                       R7 R7 K11 ["Scale"]
       69 GETTABLEKS                       R8 R0 K4 ["Parent"]
       71 GETTABLEKS                       R8 R8 K5 ["AbsoluteSize"]
       73 GETTABLEKS                       R8 R8 K14 ["y"]
       75 MUL                              R6 R7 R8
       76 ADD                              R4 R5 R6
       77 CALL                             R2 2 1
       78 GETUPVAL                         R3 0
       79 GETTABLEKS                       R4 R0 K4 ["Parent"]
       81 CALL                             R3 1 1
       82 ADD                              R1 R2 R3
       83 RETURN                           R1 1
       84 GETUPVAL                         R1 0
       85 GETTABLEKS                       R2 R0 K4 ["Parent"]
       87 CALL                             R1 1 -1
       88 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R1
        4 RETURN                           R1 1
