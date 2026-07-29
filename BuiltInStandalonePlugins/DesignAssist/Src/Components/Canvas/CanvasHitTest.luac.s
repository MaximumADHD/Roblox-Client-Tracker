PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        4 LOADB                            R4 0
        5 GETTABLEKS                       R5 R1 K2 ["X"]
        7 GETTABLEKS                       R6 R2 K2 ["X"]
        9 JUMPIFNOTLE                      R6 R5 ; [+29]
       11 LOADB                            R4 0
       12 GETTABLEKS                       R5 R1 K2 ["X"]
       14 GETTABLEKS                       R7 R2 K2 ["X"]
       16 GETTABLEKS                       R8 R3 K2 ["X"]
       18 ADD                              R6 R7 R8
       19 JUMPIFNOTLE                      R5 R6 ; [+19]
       21 LOADB                            R4 0
       22 GETTABLEKS                       R5 R1 K3 ["Y"]
       24 GETTABLEKS                       R6 R2 K3 ["Y"]
       26 JUMPIFNOTLE                      R6 R5 ; [+12]
       28 GETTABLEKS                       R5 R1 K3 ["Y"]
       30 GETTABLEKS                       R7 R2 K3 ["Y"]
       32 GETTABLEKS                       R8 R3 K3 ["Y"]
       34 ADD                              R6 R7 R8
       35 JUMPIFLE                         R5 R6 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Visible"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["pointInsideGui"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       14 CALL                             R2 1 3
       15 FORGPREP                         R2
       16 LOADK                            R9 K3 ["GuiObject"]
       17 NAMECALL                         R7 R6 K4 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+12]
       21 GETTABLEKS                       R7 R6 K0 ["Visible"]
       23 JUMPIFNOT                        R7 ; [+9]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K1 ["pointInsideGui"]
       27 MOVE                             R8 R6
       28 MOVE                             R9 R1
       29 CALL                             R7 2 1
       30 JUMPIFNOT                        R7 ; [+2]
       31 LOADB                            R7 1
       32 RETURN                           R7 1
       33 FORGLOOP                         R2 2 ; [-18]
       35 LOADB                            R2 0
       36 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["AbsolutePosition"]
        2 SUB                              R5 R1 R4
        3 LOADN                            R6 0
        4 JUMPIFNOTLT                      R6 R3 ; [+14]
        6 GETTABLEKS                       R6 R5 K1 ["Y"]
        8 SUBK                             R7 R2 K2 [4]
        9 JUMPIFNOTLE                      R7 R6 ; [+9]
       11 GETTABLEKS                       R6 R5 K1 ["Y"]
       13 ADD                              R8 R2 R3
       14 ADDK                             R7 R8 K2 [4]
       15 JUMPIFNOTLE                      R6 R7 ; [+3]
       17 LOADB                            R6 1
       18 RETURN                           R6 1
       19 LOADB                            R6 0
       20 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["pointInsideGui"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["pointInsideVisibleGuiTree"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 SETTABLEKS                       R1 R0 K5 ["pointInsideCanvasChrome"]
       13 RETURN                           R0 1
