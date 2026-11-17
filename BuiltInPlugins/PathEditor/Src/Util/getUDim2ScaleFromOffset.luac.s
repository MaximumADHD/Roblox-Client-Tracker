PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+50]
        2 LOADK                            R4 K0 ["GuiBase2d"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+44]
        7 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R2 K3 ["X"]
       11 JUMPIFEQKN                       R4 K4 [0] ; [+14]
       13 GETTABLEKS                       R4 R0 K3 ["X"]
       15 GETTABLEKS                       R4 R4 K5 ["Scale"]
       17 GETTABLEKS                       R6 R0 K3 ["X"]
       19 GETTABLEKS                       R6 R6 K6 ["Offset"]
       21 GETTABLEKS                       R7 R2 K3 ["X"]
       23 DIV                              R5 R6 R7
       24 ADD                              R3 R4 R5
       25 JUMP                             ; [+1]
       26 LOADN                            R3 0
       27 GETTABLEKS                       R5 R2 K7 ["Y"]
       29 JUMPIFEQKN                       R5 K4 [0] ; [+14]
       31 GETTABLEKS                       R5 R0 K7 ["Y"]
       33 GETTABLEKS                       R5 R5 K5 ["Scale"]
       35 GETTABLEKS                       R7 R0 K7 ["Y"]
       37 GETTABLEKS                       R7 R7 K6 ["Offset"]
       39 GETTABLEKS                       R8 R2 K7 ["Y"]
       41 DIV                              R6 R7 R8
       42 ADD                              R4 R5 R6
       43 JUMP                             ; [+1]
       44 LOADN                            R4 0
       45 GETIMPORT                        R5 K10 [UDim2.fromScale]
       47 MOVE                             R6 R3
       48 MOVE                             R7 R4
       49 CALL                             R5 2 -1
       50 RETURN                           R5 -1
       51 GETIMPORT                        R2 K12 [UDim2.new]
       53 CALL                             R2 0 -1
       54 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 RETURN                           R1 1
