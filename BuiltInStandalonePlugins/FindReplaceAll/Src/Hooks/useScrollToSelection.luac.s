PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["resultRowHeight"]
        9 MUL                              R2 R3 R0
       10 GETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       12 GETTABLEKS                       R4 R5 K3 ["Y"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K1 ["resultRowHeight"]
       17 DIVK                             R5 R6 K4 [2]
       18 ADD                              R3 R4 R5
       19 JUMPIFNOTLT                      R3 R2 ; [+18]
       21 GETTABLEKS                       R6 R1 K2 ["CanvasPosition"]
       23 GETTABLEKS                       R5 R6 K3 ["Y"]
       25 GETTABLEKS                       R7 R1 K5 ["AbsoluteWindowSize"]
       27 GETTABLEKS                       R6 R7 K3 ["Y"]
       29 ADD                              R4 R5 R6
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R6 R7 K1 ["resultRowHeight"]
       33 DIVK                             R5 R6 K4 [2]
       34 ADD                              R3 R4 R5
       35 JUMPIFNOTLT                      R2 R3 ; [+2]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R5 R1 K5 ["AbsoluteWindowSize"]
       40 GETTABLEKS                       R4 R5 K3 ["Y"]
       42 MULK                             R3 R4 K6 [0.5]
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K1 ["resultRowHeight"]
       46 JUMPIFNOTLE                      R3 R4 ; [+2]
       48 LOADN                            R3 0
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R6 R7 K1 ["resultRowHeight"]
       52 SUBK                             R7 R0 K7 [1]
       53 MUL                              R5 R6 R7
       54 SUB                              R4 R5 R3
       55 GETIMPORT                        R5 K10 [Vector2.new]
       57 GETTABLEKS                       R7 R1 K2 ["CanvasPosition"]
       59 GETTABLEKS                       R6 R7 K11 ["X"]
       61 MOVE                             R7 R4
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       65 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R1 R1 K0 ["Connect"]
        7 CALL                             R1 2 -1
        8 SETLIST                          R0 R1 -1 [1]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R4 0 0
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K1 ["useEffect"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 DUPTABLE                         R3 K3 [{"tryScrollingToVisibleIndex"}]
       19 SETTABLEKS                       R2 R3 K2 ["tryScrollingToVisibleIndex"]
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Resources"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["Signal"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R6 K13 ["Types"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_4]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R5 1
