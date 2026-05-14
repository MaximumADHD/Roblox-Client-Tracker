PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R3 2
        8 NAMECALL                         R3 R3 K2 ["getValue"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R4 R0 K0 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R4 K1 ["X"]
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R3 R3 K1 ["X"]
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R4 R4 K2 ["getValue"]
       14 CALL                             R4 1 1
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 LOADN                            R2 0
        1 JUMPIFLT                         R2 R0 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEN                        R3 R0 3
        3 ADD                              R5 R3 R1
        4 JUMPIFLT                         R5 R2 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 3
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 SETLIST                          R1 R2 3 [1]
        8 CALL                             R0 1 1
        9 DUPCLOSURE                       R2 K0 [PROTO_8]
       10 NAMECALL                         R0 R0 K1 ["map"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 2
        3 GETUPVAL                         R2 1
        4 LOADN                            R3 0
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 1
        7 LOADN                            R5 0
        8 CALL                             R4 1 2
        9 GETUPVAL                         R6 1
       10 LOADN                            R7 0
       11 CALL                             R6 1 2
       12 GETUPVAL                         R8 1
       13 LOADN                            R9 0
       14 CALL                             R8 1 2
       15 GETUPVAL                         R10 2
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R8
       20 NEWTABLE                         R12 0 3
       22 MOVE                             R13 R3
       23 MOVE                             R14 R1
       24 MOVE                             R15 R8
       25 SETLIST                          R12 R13 3 [1]
       27 CALL                             R10 2 1
       28 GETUPVAL                         R11 2
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R13 0 1
       33 MOVE                             R14 R5
       34 SETLIST                          R13 R14 1 [1]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 2
       38 NEWCLOSURE                       R13 P2
       39 CAPTURE                          VAL R7
       40 NEWTABLE                         R14 0 1
       42 MOVE                             R15 R7
       43 SETLIST                          R14 R15 1 [1]
       45 CALL                             R12 2 1
       46 GETUPVAL                         R13 2
       47 NEWCLOSURE                       R14 P3
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R15 0 3
       53 MOVE                             R16 R9
       54 MOVE                             R17 R1
       55 MOVE                             R18 R2
       56 SETLIST                          R15 R16 3 [1]
       58 CALL                             R13 2 1
       59 GETUPVAL                         R14 3
       60 NEWCLOSURE                       R15 P4
       61 CAPTURE                          VAL R8
       62 NEWTABLE                         R16 0 1
       64 MOVE                             R17 R8
       65 SETLIST                          R16 R17 1 [1]
       67 CALL                             R14 2 1
       68 GETUPVAL                         R15 3
       69 NEWCLOSURE                       R16 P5
       70 CAPTURE                          VAL R4
       71 NEWTABLE                         R17 0 1
       73 MOVE                             R18 R4
       74 SETLIST                          R17 R18 1 [1]
       76 CALL                             R15 2 1
       77 GETUPVAL                         R16 3
       78 NEWCLOSURE                       R17 P6
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R18 0 3
       85 MOVE                             R19 R6
       86 MOVE                             R20 R8
       87 MOVE                             R21 R4
       88 SETLIST                          R18 R19 3 [1]
       90 CALL                             R16 2 1
       91 GETIMPORT                        R17 K2 [table.freeze]
       93 DUPTABLE                         R18 K9 [{"Compact", "RibbonTabs", "Scroller", "Wrapper", "LeftGradient", "RightGradient"}]
       94 SETTABLEKS                       R0 R18 K3 ["Compact"]
       96 DUPTABLE                         R19 K12 [{"Size", "OnResized"}]
       97 SETTABLEKS                       R14 R19 K10 ["Size"]
       99 SETTABLEKS                       R10 R19 K11 ["OnResized"]
      101 SETTABLEKS                       R19 R18 K4 ["RibbonTabs"]
      103 DUPTABLE                         R19 K14 [{"OnCanvasMoved", "OnResized"}]
      104 SETTABLEKS                       R11 R19 K13 ["OnCanvasMoved"]
      106 SETTABLEKS                       R12 R19 K11 ["OnResized"]
      108 SETTABLEKS                       R19 R18 K5 ["Scroller"]
      110 DUPTABLE                         R19 K15 [{"OnResized"}]
      111 SETTABLEKS                       R13 R19 K11 ["OnResized"]
      113 SETTABLEKS                       R19 R18 K6 ["Wrapper"]
      115 DUPTABLE                         R19 K17 [{"Visible"}]
      116 SETTABLEKS                       R15 R19 K16 ["Visible"]
      118 SETTABLEKS                       R19 R18 K7 ["LeftGradient"]
      120 DUPTABLE                         R19 K17 [{"Visible"}]
      121 SETTABLEKS                       R16 R19 K16 ["Visible"]
      123 SETTABLEKS                       R19 R18 K8 ["RightGradient"]
      125 CALL                             R17 1 -1
      126 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["joinBindings"]
       16 GETTABLEKS                       R3 R1 K9 ["useBinding"]
       18 GETTABLEKS                       R4 R1 K10 ["useCallback"]
       20 GETTABLEKS                       R5 R1 K11 ["useMemo"]
       22 GETTABLEKS                       R6 R1 K12 ["useState"]
       24 DUPCLOSURE                       R7 K13 [PROTO_10]
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 RETURN                           R7 1
