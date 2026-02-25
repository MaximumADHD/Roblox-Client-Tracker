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
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetPositionOnCurve"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R2 K1 ["X"]
        6 GETTABLEKS                       R3 R4 K2 ["Scale"]
        8 JUMPIFNOTEQKN                    R3 K3 [0] ; [+8]
       10 GETTABLEKS                       R4 R2 K4 ["Y"]
       12 GETTABLEKS                       R3 R4 K2 ["Scale"]
       14 JUMPIFNOTEQKN                    R3 K3 [0] ; [+2]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R3 R0 K5 ["Parent"]
       19 JUMPIFEQKNIL                     R3 ; [+38]
       21 GETTABLEKS                       R4 R0 K5 ["Parent"]
       23 GETIMPORT                        R5 K7 [pcall]
       25 LOADK                            R7 K8 ["AbsoluteSize"]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R7
       29 CALL                             R5 1 2
       30 MOVE                             R3 R5
       31 JUMPIFNOT                        R3 ; [+26]
       32 GETIMPORT                        R3 K11 [UDim2.fromOffset]
       34 GETTABLEKS                       R6 R2 K1 ["X"]
       36 GETTABLEKS                       R5 R6 K2 ["Scale"]
       38 GETTABLEKS                       R8 R0 K5 ["Parent"]
       40 GETTABLEKS                       R7 R8 K8 ["AbsoluteSize"]
       42 GETTABLEKS                       R6 R7 K12 ["x"]
       44 MUL                              R4 R5 R6
       45 GETTABLEKS                       R7 R2 K4 ["Y"]
       47 GETTABLEKS                       R6 R7 K2 ["Scale"]
       49 GETTABLEKS                       R9 R0 K5 ["Parent"]
       51 GETTABLEKS                       R8 R9 K8 ["AbsoluteSize"]
       53 GETTABLEKS                       R7 R8 K13 ["y"]
       55 MUL                              R5 R6 R7
       56 CALL                             R3 2 -1
       57 RETURN                           R3 -1
       58 GETIMPORT                        R3 K15 [UDim2.new]
       60 CALL                             R3 0 -1
       61 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 RETURN                           R1 1
