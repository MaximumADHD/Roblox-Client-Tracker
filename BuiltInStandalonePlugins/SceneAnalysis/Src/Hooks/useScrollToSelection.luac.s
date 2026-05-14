PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["rowHeight"]
        9 MUL                              R2 R3 R0
       10 GETTABLEKS                       R4 R1 K2 ["CanvasPosition"]
       12 GETTABLEKS                       R4 R4 K3 ["Y"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["rowHeight"]
       17 DIVK                             R5 R6 K4 [2]
       18 ADD                              R3 R4 R5
       19 JUMPIFNOTLT                      R3 R2 ; [+18]
       21 GETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       23 GETTABLEKS                       R5 R5 K3 ["Y"]
       25 GETTABLEKS                       R6 R1 K5 ["AbsoluteWindowSize"]
       27 GETTABLEKS                       R6 R6 K3 ["Y"]
       29 ADD                              R4 R5 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K1 ["rowHeight"]
       33 DIVK                             R5 R6 K4 [2]
       34 ADD                              R3 R4 R5
       35 JUMPIFNOTLT                      R2 R3 ; [+2]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R1 K5 ["AbsoluteWindowSize"]
       40 GETTABLEKS                       R4 R4 K3 ["Y"]
       42 MULK                             R3 R4 K6 [0.5]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K1 ["rowHeight"]
       46 JUMPIFNOTLE                      R3 R4 ; [+2]
       48 LOADN                            R3 0
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K1 ["rowHeight"]
       52 SUBK                             R7 R0 K7 [1]
       53 MUL                              R5 R6 R7
       54 SUB                              R4 R5 R3
       55 GETIMPORT                        R5 K10 [Vector2.new]
       57 GETTABLEKS                       R6 R1 K2 ["CanvasPosition"]
       59 GETTABLEKS                       R6 R6 K11 ["X"]
       61 MOVE                             R7 R4
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 DUPTABLE                         R2 K2 [{"tryScrollingToVisibleIndex"}]
       10 SETTABLEKS                       R1 R2 K1 ["tryScrollingToVisibleIndex"]
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
