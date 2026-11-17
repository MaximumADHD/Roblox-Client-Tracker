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
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetPositionOnCurve"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["X"]
        6 GETTABLEKS                       R3 R3 K2 ["Scale"]
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+8]
       10 GETTABLEKS                       R3 R2 K4 ["Y"]
       12 GETTABLEKS                       R3 R3 K2 ["Scale"]
       14 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R3 R0 K5 ["Parent"]
       19 JUMPIFEQKNIL                     R3 ; [+39]
       21 GETTABLEKS                       R4 R0 K5 ["Parent"]
       23 LOADK                            R7 K6 ["AbsoluteSize"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R7
       27 FASTPCALL                        pcall 1 ; [+2]
       28 GETIMPORT                        R5 K8 [pcall]
       30 CALL                             R5 1 2
       31 MOVE                             R3 R5
       32 JUMPIFNOT                        R3 ; [+26]
       33 GETIMPORT                        R3 K11 [UDim2.fromOffset]
       35 GETTABLEKS                       R5 R2 K1 ["X"]
       37 GETTABLEKS                       R5 R5 K2 ["Scale"]
       39 GETTABLEKS                       R6 R0 K5 ["Parent"]
       41 GETTABLEKS                       R6 R6 K6 ["AbsoluteSize"]
       43 GETTABLEKS                       R6 R6 K12 ["x"]
       45 MUL                              R4 R5 R6
       46 GETTABLEKS                       R6 R2 K4 ["Y"]
       48 GETTABLEKS                       R6 R6 K2 ["Scale"]
       50 GETTABLEKS                       R7 R0 K5 ["Parent"]
       52 GETTABLEKS                       R7 R7 K6 ["AbsoluteSize"]
       54 GETTABLEKS                       R7 R7 K13 ["y"]
       56 MUL                              R5 R6 R7
       57 CALL                             R3 2 -1
       58 RETURN                           R3 -1
       59 GETIMPORT                        R3 K15 [UDim2.new]
       61 CALL                             R3 0 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
