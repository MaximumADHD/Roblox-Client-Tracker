PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R2 R0 K1 ["AbsoluteContentSize"]
       13 GETTABLEKS                       R2 R2 K2 ["Y"]
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 GETUPVAL                         R1 2
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["checkForEdge"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["checkForEdge"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 JUMPIFNOT                        R0 ; [+4]
       15 JUMPIFNOT                        R1 ; [+3]
       16 MOVE                             R2 R1
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 JUMPIFNOT                        R2 ; [+48]
        9 GETTABLEKS                       R3 R0 K1 ["AbsoluteContentSize"]
       11 GETTABLEKS                       R3 R3 K2 ["Y"]
       13 SUB                              R4 R3 R2
       14 LOADN                            R5 0
       15 JUMPIFNOTLT                      R5 R4 ; [+11]
       17 GETTABLEKS                       R5 R1 K3 ["CanvasPosition"]
       19 GETIMPORT                        R6 K6 [Vector2.new]
       21 LOADN                            R7 0
       22 MOVE                             R8 R4
       23 CALL                             R6 2 1
       24 ADD                              R5 R5 R6
       25 SETTABLEKS                       R5 R1 K3 ["CanvasPosition"]
       27 GETUPVAL                         R5 1
       28 SETTABLEKS                       R3 R5 K0 ["current"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K0 ["current"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K7 ["PersistenceLoadStates"]
       36 GETTABLEKS                       R6 R6 K8 ["Loading"]
       38 JUMPIFEQ                         R5 R6 ; [+18]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K0 ["current"]
       43 JUMPIF                           R5 ; [+13]
       44 GETUPVAL                         R5 4
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K0 ["current"]
       48 GETIMPORT                        R5 K11 [task.delay]
       50 LOADK                            R6 K12 [0.1]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U5
       56 CALL                             R5 2 0
       57 GETUPVAL                         R3 6
       58 GETTABLEKS                       R3 R3 K13 ["checkForEdge"]
       60 MOVE                             R4 R1
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["scrollingFrameRef"]
        2 GETTABLEKS                       R2 R0 K1 ["loadState"]
        4 GETTABLEKS                       R3 R0 K2 ["pageState"]
        6 GETTABLEKS                       R4 R0 K3 ["onLoadMore"]
        8 GETTABLEKS                       R5 R0 K4 ["triggerDistance"]
       10 GETTABLEKS                       R6 R0 K5 ["resetKey"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["useRef"]
       15 LOADNIL                          R8
       16 CALL                             R7 1 1
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K6 ["useRef"]
       20 LOADNIL                          R9
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K6 ["useRef"]
       25 LOADB                            R10 0
       26 CALL                             R9 1 1
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R10 R10 K6 ["useRef"]
       30 MOVE                             R11 R2
       31 CALL                             R10 1 1
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K6 ["useRef"]
       35 MOVE                             R12 R6
       36 CALL                             R11 1 1
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K6 ["useRef"]
       40 LOADNIL                          R13
       41 CALL                             R12 1 1
       42 SETTABLEKS                       R2 R10 K7 ["current"]
       44 GETTABLEKS                       R13 R11 K7 ["current"]
       46 JUMPIFEQ                         R13 R6 ; [+9]
       48 SETTABLEKS                       R6 R11 K7 ["current"]
       50 LOADNIL                          R13
       51 SETTABLEKS                       R13 R8 K7 ["current"]
       53 LOADB                            R13 0
       54 SETTABLEKS                       R13 R9 K7 ["current"]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       59 NEWCLOSURE                       R14 P0
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R15 0 1
       65 MOVE                             R16 R4
       66 SETLIST                          R15 R16 1 [1]
       68 CALL                             R13 2 1
       69 LOADB                            R14 0
       70 GETUPVAL                         R15 1
       71 GETTABLEKS                       R15 R15 K9 ["PersistenceLoadStates"]
       73 GETTABLEKS                       R15 R15 K10 ["Loading"]
       75 JUMPIFEQ                         R2 R15 ; [+10]
       77 LOADB                            R14 0
       78 JUMPIFEQKNIL                     R3 ; [+7]
       80 GETTABLEKS                       R15 R3 K11 ["nextCursor"]
       82 JUMPIFNOTEQKNIL                  R15 ; [+2]
       84 LOADB                            R14 0 +1
       85 LOADB                            R14 1
       86 GETUPVAL                         R15 2
       87 DUPTABLE                         R16 K13 [{"triggerDistance", "onScrolledToTop", "resetKey"}]
       88 SETTABLEKS                       R5 R16 K4 ["triggerDistance"]
       90 JUMPIFNOT                        R14 ; [+2]
       91 MOVE                             R17 R13
       92 JUMP                             ; [+1]
       93 LOADNIL                          R17
       94 SETTABLEKS                       R17 R16 K12 ["onScrolledToTop"]
       96 SETTABLEKS                       R6 R16 K5 ["resetKey"]
       98 CALL                             R15 1 1
       99 GETTABLEKS                       R16 R15 K14 ["checkForEdge"]
      101 SETTABLEKS                       R16 R12 K7 ["current"]
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      106 NEWCLOSURE                       R17 P1
      107 CAPTURE                          VAL R15
      108 NEWTABLE                         R18 0 1
      110 GETTABLEKS                       R19 R15 K14 ["checkForEdge"]
      112 SETLIST                          R18 R19 1 [1]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K8 ["useCallback"]
      118 NEWCLOSURE                       R18 P2
      119 CAPTURE                          VAL R15
      120 NEWTABLE                         R19 0 1
      122 GETTABLEKS                       R20 R15 K14 ["checkForEdge"]
      124 SETLIST                          R19 R20 1 [1]
      126 CALL                             R17 2 1
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R18 R18 K8 ["useCallback"]
      130 NEWCLOSURE                       R19 P3
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R15
      138 NEWTABLE                         R20 0 1
      140 GETTABLEKS                       R21 R15 K14 ["checkForEdge"]
      142 SETLIST                          R20 R21 1 [1]
      144 CALL                             R18 2 1
      145 DUPTABLE                         R19 K19 [{"layoutRef", "onCanvasPositionChanged", "onAbsoluteWindowSizeChanged", "onAbsoluteContentSizeChanged"}]
      146 SETTABLEKS                       R7 R19 K15 ["layoutRef"]
      148 SETTABLEKS                       R16 R19 K16 ["onCanvasPositionChanged"]
      150 SETTABLEKS                       R17 R19 K17 ["onAbsoluteWindowSizeChanged"]
      152 SETTABLEKS                       R18 R19 K18 ["onAbsoluteContentSizeChanged"]
      154 RETURN                           R19 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K10 ["useScrollEdge"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_5]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
