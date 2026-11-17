PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+36]
        2 LOADK                            R4 K0 ["GuiBase2d"]
        3 NAMECALL                         R2 R1 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+30]
        7 GETTABLEKS                       R2 R1 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R2 K3 ["X"]
       11 JUMPIFEQKN                       R4 K4 [0] ; [+7]
       13 GETTABLEKS                       R4 R0 K3 ["X"]
       15 GETTABLEKS                       R5 R2 K3 ["X"]
       17 DIV                              R3 R4 R5
       18 JUMP                             ; [+1]
       19 LOADN                            R3 0
       20 GETTABLEKS                       R5 R2 K5 ["Y"]
       22 JUMPIFEQKN                       R5 K4 [0] ; [+7]
       24 GETTABLEKS                       R5 R0 K5 ["Y"]
       26 GETTABLEKS                       R6 R2 K5 ["Y"]
       28 DIV                              R4 R5 R6
       29 JUMP                             ; [+1]
       30 LOADN                            R4 0
       31 GETIMPORT                        R5 K8 [UDim2.fromScale]
       33 MOVE                             R6 R3
       34 MOVE                             R7 R4
       35 CALL                             R5 2 -1
       36 RETURN                           R5 -1
       37 GETIMPORT                        R2 K10 [UDim2.new]
       39 CALL                             R2 0 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 RETURN                           R1 1
