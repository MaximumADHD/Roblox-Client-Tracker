PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+38]
        2 LOADK                            R4 K0 ["GuiBase2d"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+32]
        7 GETIMPORT                        R2 K4 [UDim2.fromOffset]
        9 GETTABLEKS                       R4 R0 K5 ["X"]
       11 GETTABLEKS                       R4 R4 K6 ["Offset"]
       13 GETTABLEKS                       R6 R0 K5 ["X"]
       15 GETTABLEKS                       R6 R6 K7 ["Scale"]
       17 GETTABLEKS                       R7 R1 K8 ["AbsoluteSize"]
       19 GETTABLEKS                       R7 R7 K5 ["X"]
       21 MUL                              R5 R6 R7
       22 ADD                              R3 R4 R5
       23 GETTABLEKS                       R5 R0 K9 ["Y"]
       25 GETTABLEKS                       R5 R5 K6 ["Offset"]
       27 GETTABLEKS                       R7 R0 K9 ["Y"]
       29 GETTABLEKS                       R7 R7 K7 ["Scale"]
       31 GETTABLEKS                       R8 R1 K8 ["AbsoluteSize"]
       33 GETTABLEKS                       R8 R8 K9 ["Y"]
       35 MUL                              R6 R7 R8
       36 ADD                              R4 R5 R6
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 GETIMPORT                        R2 K11 [UDim2.new]
       41 CALL                             R2 0 -1
       42 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
