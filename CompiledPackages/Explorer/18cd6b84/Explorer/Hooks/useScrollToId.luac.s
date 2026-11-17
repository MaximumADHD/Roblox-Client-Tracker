PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+3]
        5 GETUPVAL                         R2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["getIndexOfInstanceId"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+3]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K2 ["getExplorerNodeById"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+6]
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIF                           R4 ; [+2]
       28 LOADB                            R4 0
       29 RETURN                           R4 1
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K3 ["explorerRowHeight"]
       33 MUL                              R4 R5 R2
       34 GETTABLEKS                       R5 R1 K4 ["CanvasPosition"]
       36 GETTABLEKS                       R5 R5 K5 ["Y"]
       38 JUMPIFNOTLE                      R5 R4 ; [+18]
       40 GETTABLEKS                       R7 R1 K4 ["CanvasPosition"]
       42 GETTABLEKS                       R7 R7 K5 ["Y"]
       44 GETTABLEKS                       R8 R1 K6 ["AbsoluteWindowSize"]
       46 GETTABLEKS                       R8 R8 K5 ["Y"]
       48 ADD                              R6 R7 R8
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K3 ["explorerRowHeight"]
       52 ADD                              R5 R6 R7
       53 JUMPIFNOTLT                      R4 R5 ; [+3]
       55 LOADB                            R5 1
       56 RETURN                           R5 1
       57 GETTABLEKS                       R6 R1 K6 ["AbsoluteWindowSize"]
       59 GETTABLEKS                       R6 R6 K5 ["Y"]
       61 MULK                             R5 R6 K7 [0.25]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K3 ["explorerRowHeight"]
       65 JUMPIFNOTLE                      R5 R6 ; [+2]
       67 LOADN                            R5 0
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K3 ["explorerRowHeight"]
       71 SUBK                             R9 R2 K8 [1]
       72 MUL                              R7 R8 R9
       73 SUB                              R6 R7 R5
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K9 ["flushRootChanges"]
       77 CALL                             R7 0 0
       78 GETIMPORT                        R7 K12 [Vector2.new]
       80 GETTABLEKS                       R8 R1 K4 ["CanvasPosition"]
       82 GETTABLEKS                       R8 R8 K13 ["X"]
       84 MOVE                             R9 R6
       85 CALL                             R7 2 1
       86 SETTABLEKS                       R7 R1 K4 ["CanvasPosition"]
       88 LOADB                            R7 1
       89 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useCallback"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R5 0 3
       11 GETTABLEKS                       R6 R0 K1 ["getIndexOfInstanceId"]
       13 GETTABLEKS                       R7 R0 K2 ["getExplorerNodeById"]
       15 MOVE                             R8 R2
       16 SETLIST                          R5 R6 3 [1]
       18 CALL                             R3 2 1
       19 DUPTABLE                         R4 K4 [{"tryScrollingToId"}]
       20 SETTABLEKS                       R3 R4 K3 ["tryScrollingToId"]
       22 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["isNodeVisible"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K12 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 RETURN                           R5 1
