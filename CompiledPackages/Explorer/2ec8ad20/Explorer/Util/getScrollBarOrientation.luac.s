PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scrollingFrameRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K2 ["AbsolutePosition"]
        9 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R1 K4 ["ScrollBarThickness"]
       13 GETTABLEKS                       R6 R1 K5 ["AbsoluteCanvasSize"]
       15 GETTABLEKS                       R6 R6 K6 ["Y"]
       17 GETTABLEKS                       R7 R3 K6 ["Y"]
       19 JUMPIFNOTEQ                      R6 R7 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETTABLEKS                       R7 R0 K7 ["shouldIgnoreUnclickableArea"]
       25 JUMPIFNOT                        R7 ; [+6]
       26 GETTABLEKS                       R7 R2 K8 ["X"]
       28 GETTABLEKS                       R8 R3 K8 ["X"]
       30 ADD                              R6 R7 R8
       31 JUMP                             ; [+10]
       32 GETTABLEKS                       R9 R2 K8 ["X"]
       34 GETTABLEKS                       R10 R3 K8 ["X"]
       36 ADD                              R8 R9 R10
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K10 ["sessionViewScrollBarPadding"]
       40 ADD                              R7 R8 R9
       41 ADDK                             R6 R7 K9 [1]
       42 JUMPIFNOT                        R5 ; [+20]
       43 GETTABLEKS                       R7 R0 K11 ["position"]
       45 GETTABLEKS                       R7 R7 K8 ["X"]
       47 GETTABLEKS                       R10 R2 K8 ["X"]
       49 GETTABLEKS                       R11 R3 K8 ["X"]
       51 ADD                              R9 R10 R11
       52 SUB                              R8 R9 R4
       53 JUMPIFNOTLE                      R8 R7 ; [+9]
       55 GETTABLEKS                       R7 R0 K11 ["position"]
       57 GETTABLEKS                       R7 R7 K8 ["X"]
       59 JUMPIFNOTLT                      R7 R6 ; [+3]
       61 LOADK                            R7 K12 ["Vertical"]
       62 RETURN                           R7 1
       63 GETTABLEKS                       R8 R0 K7 ["shouldIgnoreUnclickableArea"]
       65 JUMPIFNOT                        R8 ; [+6]
       66 GETTABLEKS                       R8 R2 K6 ["Y"]
       68 GETTABLEKS                       R9 R3 K6 ["Y"]
       70 ADD                              R7 R8 R9
       71 JUMP                             ; [+10]
       72 GETTABLEKS                       R10 R2 K6 ["Y"]
       74 GETTABLEKS                       R11 R3 K6 ["Y"]
       76 ADD                              R9 R10 R11
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K10 ["sessionViewScrollBarPadding"]
       80 ADD                              R8 R9 R10
       81 ADDK                             R7 R8 K9 [1]
       82 GETTABLEKS                       R10 R1 K5 ["AbsoluteCanvasSize"]
       84 GETTABLEKS                       R10 R10 K8 ["X"]
       86 ADD                              R9 R10 R4
       87 GETTABLEKS                       R10 R3 K8 ["X"]
       89 JUMPIFLT                         R10 R9 ; [+2]
       91 LOADB                            R8 0 +1
       92 LOADB                            R8 1
       93 JUMPIFNOT                        R8 ; [+20]
       94 GETTABLEKS                       R9 R0 K11 ["position"]
       96 GETTABLEKS                       R9 R9 K6 ["Y"]
       98 GETTABLEKS                       R12 R2 K6 ["Y"]
      100 GETTABLEKS                       R13 R3 K6 ["Y"]
      102 ADD                              R11 R12 R13
      103 SUB                              R10 R11 R4
      104 JUMPIFNOTLE                      R10 R9 ; [+9]
      106 GETTABLEKS                       R9 R0 K11 ["position"]
      108 GETTABLEKS                       R9 R9 K6 ["Y"]
      110 JUMPIFNOTLT                      R9 R7 ; [+3]
      112 LOADK                            R9 K13 ["Horizontal"]
      113 RETURN                           R9 1
      114 LOADNIL                          R9
      115 RETURN                           R9 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
