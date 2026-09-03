PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NODE_VIEW_CHILD_WIDTH"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NODE_VIEW_CHILD_HEIGHT"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 DIVRK                            R1 K0 [1] R0
        4 RETURN                           R1 1
        5 LOADN                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_5]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 MUL                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MUL                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["IsExpressionNode"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["editName"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["enable"]
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K3 ["current"]
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 4
       22 GETTABLEKS                       R0 R0 K3 ["current"]
       24 GETTABLEKS                       R0 R0 K4 ["focus"]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["enabled"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 JUMPIFEQKNIL                     R2 ; [+84]
       14 GETTABLEKS                       R2 R1 K2 ["X"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K0 ["current"]
       19 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       21 GETTABLEKS                       R3 R3 K2 ["X"]
       23 JUMPIFNOTLE                      R3 R2 ; [+73]
       25 GETTABLEKS                       R2 R1 K2 ["X"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K0 ["current"]
       30 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       32 GETTABLEKS                       R4 R4 K2 ["X"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K0 ["current"]
       37 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       39 GETTABLEKS                       R5 R5 K2 ["X"]
       41 ADD                              R3 R4 R5
       42 JUMPIFNOTLE                      R2 R3 ; [+54]
       44 GETTABLEKS                       R2 R1 K5 ["Y"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K0 ["current"]
       49 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       51 GETTABLEKS                       R3 R3 K5 ["Y"]
       53 JUMPIFNOTLE                      R3 R2 ; [+43]
       55 GETTABLEKS                       R2 R1 K5 ["Y"]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K0 ["current"]
       60 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       62 GETTABLEKS                       R4 R4 K5 ["Y"]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R5 R5 K0 ["current"]
       67 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       69 GETTABLEKS                       R5 R5 K5 ["Y"]
       71 ADD                              R3 R4 R5
       72 JUMPIFNOTLE                      R2 R3 ; [+24]
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R2 R2 K0 ["current"]
       77 GETUPVAL                         R3 3
       78 GETIMPORT                        R4 K8 [os.clock]
       80 CALL                             R4 0 1
       81 SETTABLEKS                       R4 R3 K0 ["current"]
       83 GETIMPORT                        R4 K8 [os.clock]
       85 CALL                             R4 0 1
       86 SUB                              R3 R4 R2
       87 LOADK                            R4 K9 [0.5]
       88 JUMPIFNOTLE                      R3 R4 ; [+8]
       90 GETUPVAL                         R3 0
       91 LOADNIL                          R4
       92 SETTABLEKS                       R4 R3 K0 ["current"]
       94 GETUPVAL                         R3 4
       95 CALL                             R3 0 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R2 0
       98 DUPTABLE                         R3 K13 [{"startTime", "dragOffset", "initialPosition"}]
       99 GETIMPORT                        R4 K8 [os.clock]
      101 CALL                             R4 0 1
      102 SETTABLEKS                       R4 R3 K10 ["startTime"]
      104 GETIMPORT                        R4 K16 [Vector2.zero]
      106 SETTABLEKS                       R4 R3 K11 ["dragOffset"]
      108 SETTABLEKS                       R1 R3 K12 ["initialPosition"]
      110 SETTABLEKS                       R3 R2 K0 ["current"]
      112 GETUPVAL                         R2 5
      113 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      115 JUMPIFNOT                        R2 ; [+13]
      116 GETUPVAL                         R2 5
      117 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R3 R3 K18 ["viewToPlot"]
      122 GETUPVAL                         R4 6
      123 GETTABLEKS                       R4 R4 K19 ["absToView"]
      125 MOVE                             R5 R1
      126 CALL                             R4 1 -1
      127 CALL                             R3 -1 -1
      128 CALL                             R2 -1 0
      129 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["OnDragMoved"]
        7 JUMPIFNOT                        R3 ; [+13]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["OnDragMoved"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["viewToPlot"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["absToView"]
       17 MOVE                             R6 R1
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 -1
       20 CALL                             R3 -1 0
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K4 ["disable"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETTABLEKS                       R4 R2 K1 ["initialPosition"]
        6 SUB                              R3 R4 R1
        7 GETTABLEKS                       R3 R3 K2 ["Magnitude"]
        9 GETUPVAL                         R4 0
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K0 ["current"]
       13 LOADN                            R4 5
       14 JUMPIFNOTLT                      R4 R3 ; [+5]
       16 GETUPVAL                         R4 1
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K0 ["current"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["OnDragEnded"]
       23 JUMPIFNOT                        R4 ; [+13]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K3 ["OnDragEnded"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K4 ["viewToPlot"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K5 ["absToView"]
       33 MOVE                             R7 R1
       34 CALL                             R6 1 -1
       35 CALL                             R5 -1 -1
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETTABLEKS                       R2 R1 K1 ["X"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+6]
       11 GETTABLEKS                       R2 R1 K2 ["Y"]
       13 LOADN                            R3 0
       14 JUMPIFLT                         R3 R2 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R1 K1 ["X"]
       19 GETTABLEKS                       R4 R1 K2 ["Y"]
       21 DIV                              R2 R3 R4
       22 JUMPIFNOTEQ                      R2 R2 ; [+3]
       24 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 1
       28 JUMPIFNOT                        R3 ; [+30]
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R0
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [Vector2.new]
       34 MOVE                             R5 R3
       35 DIV                              R7 R3 R2
       36 FASTCALL1                        MATH_ROUND R7 ; [+2]
       37 GETIMPORT                        R6 K9 [math.round]
       39 CALL                             R6 1 1
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 3
       42 JUMPIFEQKNIL                     R5 ; [+8]
       44 GETUPVAL                         R6 3
       45 SUB                              R5 R6 R4
       46 GETTABLEKS                       R5 R5 K10 ["Magnitude"]
       48 LOADN                            R6 2
       49 JUMPIFNOTLT                      R6 R5 ; [+25]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K11 ["setNodeSize"]
       54 GETUPVAL                         R6 5
       55 MOVE                             R7 R4
       56 CALL                             R5 2 0
       57 SETUPVAL                         R4 3
       58 RETURN                           R0 0
       59 GETIMPORT                        R3 K6 [Vector2.new]
       61 GETUPVAL                         R4 6
       62 GETUPVAL                         R7 6
       63 DIV                              R6 R7 R2
       64 FASTCALL1                        MATH_ROUND R6 ; [+2]
       65 GETIMPORT                        R5 K9 [math.round]
       67 CALL                             R5 1 1
       68 CALL                             R3 2 1
       69 GETUPVAL                         R4 4
       70 GETTABLEKS                       R4 R4 K11 ["setNodeSize"]
       72 GETUPVAL                         R5 5
       73 MOVE                             R6 R3
       74 CALL                             R4 2 0
       75 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 LOADNIL                          R0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["createEffect"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          REF R0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U6
       17 CALL                             R1 1 -1
       18 CLOSEUPVALS                      R0
       19 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+23]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R1 ; [+18]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R1 R3
       10 JUMPIFNOTEQKNIL                  R2 ; [+14]
       12 GETUPVAL                         R3 2
       13 JUMPIFNOT                        R3 ; [+9]
       14 GETIMPORT                        R2 K2 [math.map]
       16 LOADK                            R3 K3 [0.5]
       17 LOADN                            R4 0
       18 LOADN                            R5 1
       19 LOADK                            R6 K3 [0.5]
       20 LOADN                            R7 1
       21 CALL                             R2 5 1
       22 RETURN                           R2 1
       23 LOADK                            R2 K3 [0.5]
       24 RETURN                           R2 1
       25 GETUPVAL                         R1 3
       26 JUMPIFEQKNIL                     R1 ; [+18]
       28 GETUPVAL                         R2 2
       29 JUMPIFNOT                        R2 ; [+11]
       30 GETIMPORT                        R1 K2 [math.map]
       32 GETUPVAL                         R2 3
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 LOADN                            R3 0
       36 LOADN                            R4 1
       37 LOADK                            R5 K3 [0.5]
       38 LOADN                            R6 1
       39 CALL                             R1 5 1
       40 RETURN                           R1 1
       41 GETUPVAL                         R1 3
       42 MOVE                             R2 R0
       43 CALL                             R1 1 1
       44 RETURN                           R1 1
       45 LOADN                            R1 1
       46 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSpotlightedSubtree"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["observeFadeByNodeId"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["observeFadeByNodeId"]
       12 GETUPVAL                         R2 2
       13 CALL                             R1 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["setCollapsed"]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Collapsed"]
       11 NOT                              R2 R3
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["Collapsed"]
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 0
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setCollapsed"]
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["Collapsed"]
        9 NOT                              R2 R3
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMP                             ; [+6]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K0 ["getValue"]
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 1
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["disable"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 4
       18 JUMPIFNOT                        R1 ; [+2]
       19 JUMPIFNOTEQKNIL                  R0 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+45]
       24 GETUPVAL                         R1 6
       25 GETTABLEKS                       R1 R1 K2 ["onRename"]
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 6
       29 GETTABLEKS                       R1 R1 K2 ["onRename"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 6
       35 GETTABLEKS                       R1 R1 K3 ["NodeType"]
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R2 R2 K3 ["NodeType"]
       40 GETTABLEKS                       R2 R2 K4 ["Parameter"]
       42 JUMPIFNOTEQ                      R1 R2 ; [+19]
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       47 GETTABLEKS                       R1 R1 K6 ["name"]
       49 JUMPIFNOT                        R1 ; [+12]
       50 GETUPVAL                         R1 8
       51 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       53 GETUPVAL                         R2 6
       54 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       56 GETTABLEKS                       R2 R2 K6 ["name"]
       58 MOVE                             R3 R0
       59 GETUPVAL                         R4 4
       60 CALL                             R1 3 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R1 8
       63 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       65 GETUPVAL                         R2 4
       66 MOVE                             R3 R0
       67 CALL                             R1 2 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R1 6
       70 GETTABLEKS                       R1 R1 K9 ["IsParameterNode"]
       72 JUMPIFNOT                        R1 ; [+18]
       73 GETUPVAL                         R1 6
       74 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       76 GETTABLEKS                       R1 R1 K6 ["name"]
       78 JUMPIFNOT                        R1 ; [+12]
       79 GETUPVAL                         R1 8
       80 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       85 GETTABLEKS                       R2 R2 K6 ["name"]
       87 MOVE                             R3 R0
       88 GETUPVAL                         R4 4
       89 CALL                             R1 3 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R1 8
       92 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       94 GETUPVAL                         R2 4
       95 MOVE                             R3 R0
       96 CALL                             R1 2 0
       97 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+16]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 LOADK                            R4 K2 ["Selected"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["Selected"]
       13 JUMPIFEQKB                       R6 TRUE ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 NAMECALL                         R2 R1 K1 ["SetAttribute"]
       19 CALL                             R2 3 0
       20 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_27:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["col auto-y bg-surface-200"]
        7 GETUPVAL                         R1 0
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K1 ["col bg-surface-200"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+2]
       14 GETUPVAL                         R2 1
       15 NOT                              R1 R2
       16 SETTABLEKS                       R1 R0 K2 ["auto-y"]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K3 ["gap-none"]
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K4 ["stroke-standard"]
       24 GETUPVAL                         R2 0
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+3]
       27 GETUPVAL                         R2 2
       28 NOT                              R1 R2
       29 JUMP                             ; [+2]
       30 GETUPVAL                         R2 3
       31 NOT                              R1 R2
       32 SETTABLEKS                       R1 R0 K5 ["radius-small"]
       34 GETUPVAL                         R2 0
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+2]
       37 GETUPVAL                         R1 2
       38 JUMP                             ; [+1]
       39 GETUPVAL                         R1 3
       40 SETTABLEKS                       R1 R0 K6 ["radius-large"]
       42 GETUPVAL                         R2 4
       43 CALL                             R2 0 1
       44 JUMPIFNOT                        R2 ; [+2]
       45 LOADNIL                          R1
       46 JUMP                             ; [+3]
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K7 ["Selected"]
       50 SETTABLEKS                       R1 R0 K8 ["stroke-system-neutral"]
       52 GETUPVAL                         R2 4
       53 CALL                             R2 0 1
       54 JUMPIFNOT                        R2 ; [+2]
       55 LOADB                            R1 1
       56 JUMP                             ; [+4]
       57 GETUPVAL                         R2 5
       58 GETTABLEKS                       R2 R2 K7 ["Selected"]
       60 NOT                              R1 R2
       61 SETTABLEKS                       R1 R0 K9 ["stroke-default"]
       63 RETURN                           R0 1

PROTO_28:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["UIStroke"]
        4 DUPTABLE                         R2 K4 [{"Thickness", "Color"}]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K2 ["Thickness"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["Color"]
       11 GETTABLEKS                       R3 R3 K5 ["System"]
       13 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       15 GETTABLEKS                       R3 R3 K7 ["Color3"]
       17 SETTABLEKS                       R3 R2 K3 ["Color"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+52]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["selectNodes"]
        9 NEWTABLE                         R3 1 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       14 GETTABLEKS                       R4 R4 K6 ["id"]
       16 LOADB                            R5 1
       17 SETTABLE                         R5 R3 R4
       18 LOADB                            R4 0
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+8]
       22 GETUPVAL                         R2 3
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       27 GETTABLEKS                       R4 R4 K6 ["id"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 4
       31 JUMPIFNOT                        R2 ; [+25]
       32 GETIMPORT                        R2 K9 [Vector2.new]
       34 GETTABLEKS                       R3 R1 K10 ["Position"]
       36 GETTABLEKS                       R3 R3 K11 ["X"]
       38 GETTABLEKS                       R4 R1 K10 ["Position"]
       40 GETTABLEKS                       R4 R4 K12 ["Y"]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 5
       44 GETTABLEKS                       R3 R3 K13 ["showMenu"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       49 GETTABLEKS                       R4 R4 K6 ["id"]
       51 GETUPVAL                         R5 6
       52 GETTABLEKS                       R5 R5 K14 ["absToPlot"]
       54 MOVE                             R6 R2
       55 CALL                             R5 1 -1
       56 CALL                             R3 -1 0
       57 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K3 ["CanvasContext"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["useContext"]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K0 ["useContext"]
       28 GETUPVAL                         R6 5
       29 GETTABLEKS                       R6 R6 K1 ["Context"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K0 ["useContext"]
       35 GETUPVAL                         R7 6
       36 GETTABLEKS                       R7 R7 K1 ["Context"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       41 JUMPIFNOT                        R8 ; [+5]
       42 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       44 GETTABLEKS                       R7 R7 K5 ["id"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 GETUPVAL                         R10 7
       51 JUMPIFNOT                        R10 ; [+40]
       52 LOADB                            R10 1
       53 GETTABLEKS                       R11 R0 K6 ["NodeType"]
       55 GETUPVAL                         R12 8
       56 GETTABLEKS                       R12 R12 K6 ["NodeType"]
       58 GETTABLEKS                       R12 R12 K7 ["Parameter"]
       60 JUMPIFEQ                         R11 R12 ; [+15]
       62 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       64 JUMPIFNOT                        R10 ; [+11]
       65 GETTABLEKS                       R11 R0 K4 ["GraphPayload"]
       67 GETTABLEKS                       R11 R11 K8 ["className"]
       69 GETUPVAL                         R12 8
       70 GETTABLEKS                       R12 R12 K9 ["PARAMETER_NODE_CLASSNAME"]
       72 JUMPIFEQ                         R11 R12 ; [+2]
       74 LOADB                            R10 0 +1
       75 LOADB                            R10 1
       76 MOVE                             R8 R10
       77 MOVE                             R10 R8
       78 JUMPIF                           R10 ; [+11]
       79 GETTABLEKS                       R11 R0 K6 ["NodeType"]
       81 GETUPVAL                         R12 8
       82 GETTABLEKS                       R12 R12 K6 ["NodeType"]
       84 GETTABLEKS                       R12 R12 K10 ["StateMachine"]
       86 JUMPIFEQ                         R11 R12 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 MOVE                             R9 R10
       91 JUMP                             ; [+19]
       92 GETTABLEKS                       R10 R0 K11 ["IsParameterNode"]
       94 JUMPIF                           R10 ; [+14]
       95 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       97 JUMPIFNOT                        R10 ; [+11]
       98 GETTABLEKS                       R11 R0 K4 ["GraphPayload"]
      100 GETTABLEKS                       R11 R11 K8 ["className"]
      102 GETUPVAL                         R12 8
      103 GETTABLEKS                       R12 R12 K9 ["PARAMETER_NODE_CLASSNAME"]
      105 JUMPIFEQ                         R11 R12 ; [+2]
      107 LOADB                            R10 0 +1
      108 LOADB                            R10 1
      109 MOVE                             R8 R10
      110 MOVE                             R9 R8
      111 NOT                              R10 R8
      112 JUMPIF                           R10 ; [+9]
      113 GETUPVAL                         R11 9
      114 CALL                             R11 0 1
      115 JUMPIFNOT                        R11 ; [+2]
      116 GETTABLEKS                       R11 R0 K12 ["ResizableHorizontal"]
      118 JUMPIFEQKB                       R11 TRUE ; [+2]
      120 LOADB                            R10 0 +1
      121 LOADB                            R10 1
      122 GETUPVAL                         R11 9
      123 CALL                             R11 0 1
      124 JUMPIFNOT                        R11 ; [+6]
      125 GETTABLEKS                       R12 R0 K13 ["ResizableVertical"]
      127 JUMPIFEQKB                       R12 TRUE ; [+2]
      129 LOADB                            R11 0 +1
      130 LOADB                            R11 1
      131 MOVE                             R12 R11
      132 JUMPIFNOT                        R12 ; [+3]
      133 GETTABLEKS                       R13 R0 K14 ["Collapsed"]
      135 NOT                              R12 R13
      136 MOVE                             R13 R8
      137 JUMPIFNOT                        R13 ; [+7]
      138 GETTABLEKS                       R14 R0 K15 ["IsExpressionNode"]
      140 JUMPIFNOT                        R14 ; [+3]
      141 GETTABLEKS                       R15 R0 K14 ["Collapsed"]
      143 NOT                              R14 R15
      144 NOT                              R13 R14
      145 GETTABLEKS                       R14 R0 K4 ["GraphPayload"]
      147 JUMPIFNOT                        R14 ; [+11]
      148 GETTABLEKS                       R15 R0 K4 ["GraphPayload"]
      150 GETTABLEKS                       R15 R15 K8 ["className"]
      152 GETUPVAL                         R16 8
      153 GETTABLEKS                       R16 R16 K16 ["OUTPUT_NODE_CLASSNAME"]
      155 JUMPIFEQ                         R15 R16 ; [+2]
      157 LOADB                            R14 0 +1
      158 LOADB                            R14 1
      159 LOADB                            R15 1
      160 GETTABLEKS                       R16 R6 K17 ["spotlightedNodeId"]
      162 JUMPIFEQ                         R16 R7 ; [+9]
      164 MOVE                             R15 R14
      165 JUMPIFNOT                        R15 ; [+6]
      166 GETTABLEKS                       R16 R6 K17 ["spotlightedNodeId"]
      168 JUMPIFEQKNIL                     R16 ; [+2]
      170 LOADB                            R15 0 +1
      171 LOADB                            R15 1
      172 GETUPVAL                         R16 10
      173 CALL                             R16 0 1
      174 GETUPVAL                         R17 11
      175 GETTABLEKS                       R17 R17 K18 ["Hooks"]
      177 GETTABLEKS                       R17 R17 K19 ["useTokens"]
      179 CALL                             R17 0 1
      180 GETUPVAL                         R19 11
      181 GETTABLEKS                       R19 R19 K20 ["Enums"]
      183 GETTABLEKS                       R19 R19 K21 ["Theme"]
      185 GETTABLEKS                       R19 R19 K22 ["Dark"]
      187 JUMPIFNOTEQ                      R16 R19 ; [+10]
      189 GETTABLEKS                       R18 R17 K23 ["Color"]
      191 GETTABLEKS                       R18 R18 K24 ["Extended"]
      193 GETTABLEKS                       R18 R18 K25 ["Green"]
      195 GETTABLEKS                       R18 R18 K26 ["Green_1300"]
      197 JUMP                             ; [+8]
      198 GETTABLEKS                       R18 R17 K23 ["Color"]
      200 GETTABLEKS                       R18 R18 K24 ["Extended"]
      202 GETTABLEKS                       R18 R18 K25 ["Green"]
      204 GETTABLEKS                       R18 R18 K27 ["Green_100"]
      206 GETUPVAL                         R19 11
      207 GETTABLEKS                       R19 R19 K18 ["Hooks"]
      209 GETTABLEKS                       R19 R19 K28 ["useCumulativeBackground"]
      211 MOVE                             R20 R18
      212 GETTABLEKS                       R21 R17 K23 ["Color"]
      214 GETTABLEKS                       R21 R21 K29 ["Shift"]
      216 GETTABLEKS                       R21 R21 K30 ["Shift_100"]
      218 CALL                             R19 2 1
      219 GETUPVAL                         R20 0
      220 GETTABLEKS                       R20 R20 K31 ["useMemo"]
      222 DUPCLOSURE                       R21 K32 [PROTO_0]
      223 CAPTURE                          UPVAL U12
      224 CAPTURE                          UPVAL U8
      225 NEWTABLE                         R22 0 0
      227 CALL                             R20 2 2
      228 GETUPVAL                         R22 13
      229 GETTABLEKS                       R22 R22 K33 ["useSignalBinding"]
      231 MOVE                             R23 R20
      232 CALL                             R22 1 1
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R23 R23 K31 ["useMemo"]
      236 DUPCLOSURE                       R24 K34 [PROTO_1]
      237 CAPTURE                          UPVAL U12
      238 CAPTURE                          UPVAL U8
      239 NEWTABLE                         R25 0 0
      241 CALL                             R23 2 2
      242 GETUPVAL                         R25 13
      243 GETTABLEKS                       R25 R25 K33 ["useSignalBinding"]
      245 MOVE                             R26 R23
      246 CALL                             R25 1 1
      247 GETUPVAL                         R26 0
      248 GETTABLEKS                       R26 R26 K31 ["useMemo"]
      250 NEWCLOSURE                       R27 P2
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R23
      253 NEWTABLE                         R28 0 2
      255 MOVE                             R29 R12
      256 MOVE                             R30 R23
      257 SETLIST                          R28 R29 2 [1]
      259 CALL                             R26 2 1
      260 GETUPVAL                         R27 0
      261 GETTABLEKS                       R27 R27 K35 ["useState"]
      263 GETUPVAL                         R28 8
      264 GETTABLEKS                       R28 R28 K36 ["NODE_VIEW_CHILD_WIDTH"]
      266 CALL                             R27 1 2
      267 GETUPVAL                         R29 14
      268 CALL                             R29 0 1
      269 GETUPVAL                         R30 3
      270 GETTABLEKS                       R30 R30 K37 ["useViewportBinding"]
      272 NEWCLOSURE                       R31 P3
      273 CAPTURE                          VAL R0
      274 NEWTABLE                         R32 0 1
      276 GETTABLEKS                       R33 R0 K38 ["Position"]
      278 SETLIST                          R32 R33 1 [1]
      280 CALL                             R30 2 1
      281 GETUPVAL                         R31 13
      282 GETTABLEKS                       R31 R31 K33 ["useSignalBinding"]
      284 GETTABLEKS                       R32 R1 K39 ["observeZoomRatio"]
      286 CALL                             R31 1 1
      287 GETUPVAL                         R32 0
      288 GETTABLEKS                       R32 R32 K31 ["useMemo"]
      290 NEWCLOSURE                       R33 P4
      291 CAPTURE                          VAL R31
      292 CAPTURE                          UPVAL U15
      293 NEWTABLE                         R34 0 1
      295 MOVE                             R35 R31
      296 SETLIST                          R34 R35 1 [1]
      298 CALL                             R32 2 1
      299 GETUPVAL                         R34 16
      300 JUMPIFNOT                        R34 ; [+15]
      301 GETUPVAL                         R33 0
      302 GETTABLEKS                       R33 R33 K40 ["joinBindings"]
      304 NEWTABLE                         R34 0 2
      306 MOVE                             R35 R22
      307 MOVE                             R36 R31
      308 SETLIST                          R34 R35 2 [1]
      310 CALL                             R33 1 1
      311 DUPCLOSURE                       R35 K41 [PROTO_7]
      312 NAMECALL                         R33 R33 K42 ["map"]
      314 CALL                             R33 2 1
      315 JUMP                             ; [+5]
      316 NEWCLOSURE                       R35 P6
      317 CAPTURE                          VAL R27
      318 NAMECALL                         R33 R31 K42 ["map"]
      320 CALL                             R33 2 1
      321 GETUPVAL                         R34 0
      322 GETTABLEKS                       R34 R34 K43 ["useBinding"]
      324 GETTABLEKS                       R35 R0 K44 ["editName"]
      326 CALL                             R34 1 2
      327 GETUPVAL                         R36 2
      328 GETTABLEKS                       R36 R36 K45 ["useToggleState"]
      330 LOADB                            R37 0
      331 CALL                             R36 1 1
      332 GETUPVAL                         R37 0
      333 GETTABLEKS                       R37 R37 K46 ["useRef"]
      335 LOADNIL                          R38
      336 CALL                             R37 1 1
      337 GETUPVAL                         R38 2
      338 GETTABLEKS                       R38 R38 K47 ["useEventCallback"]
      340 NEWCLOSURE                       R39 P7
      341 CAPTURE                          UPVAL U9
      342 CAPTURE                          VAL R0
      343 CAPTURE                          VAL R35
      344 CAPTURE                          VAL R36
      345 CAPTURE                          VAL R37
      346 CALL                             R38 1 1
      347 GETUPVAL                         R39 0
      348 GETTABLEKS                       R39 R39 K46 ["useRef"]
      350 LOADNIL                          R40
      351 CALL                             R39 1 1
      352 GETUPVAL                         R40 0
      353 GETTABLEKS                       R40 R40 K46 ["useRef"]
      355 LOADN                            R41 0
      356 CALL                             R40 1 1
      357 GETUPVAL                         R41 0
      358 GETTABLEKS                       R41 R41 K46 ["useRef"]
      360 LOADNIL                          R42
      361 CALL                             R41 1 1
      362 GETUPVAL                         R42 0
      363 GETTABLEKS                       R42 R42 K48 ["useCallback"]
      365 NEWCLOSURE                       R43 P8
      366 CAPTURE                          VAL R39
      367 CAPTURE                          VAL R36
      368 CAPTURE                          VAL R41
      369 CAPTURE                          VAL R40
      370 CAPTURE                          VAL R38
      371 CAPTURE                          VAL R0
      372 CAPTURE                          VAL R3
      373 NEWTABLE                         R44 0 4
      375 MOVE                             R45 R3
      376 GETTABLEKS                       R46 R36 K49 ["enabled"]
      378 GETTABLEKS                       R47 R0 K50 ["OnDragStart"]
      380 MOVE                             R48 R38
      381 SETLIST                          R44 R45 4 [1]
      383 CALL                             R42 2 1
      384 GETUPVAL                         R43 0
      385 GETTABLEKS                       R43 R43 K48 ["useCallback"]
      387 NEWCLOSURE                       R44 P9
      388 CAPTURE                          VAL R39
      389 CAPTURE                          VAL R0
      390 CAPTURE                          VAL R3
      391 CAPTURE                          VAL R36
      392 NEWTABLE                         R45 0 5
      394 MOVE                             R46 R3
      395 MOVE                             R47 R39
      396 GETTABLEKS                       R48 R0 K51 ["OnDragMoved"]
      398 MOVE                             R49 R7
      399 GETTABLEKS                       R50 R36 K52 ["disable"]
      401 SETLIST                          R45 R46 5 [1]
      403 CALL                             R43 2 1
      404 GETUPVAL                         R44 0
      405 GETTABLEKS                       R44 R44 K48 ["useCallback"]
      407 NEWCLOSURE                       R45 P10
      408 CAPTURE                          VAL R39
      409 CAPTURE                          VAL R40
      410 CAPTURE                          VAL R0
      411 CAPTURE                          VAL R3
      412 NEWTABLE                         R46 0 4
      414 MOVE                             R47 R3
      415 MOVE                             R48 R39
      416 GETTABLEKS                       R49 R0 K53 ["OnDragEnded"]
      418 MOVE                             R50 R7
      419 SETLIST                          R46 R47 4 [1]
      421 CALL                             R44 2 1
      422 GETUPVAL                         R45 0
      423 GETTABLEKS                       R45 R45 K48 ["useCallback"]
      425 NEWCLOSURE                       R46 P11
      426 CAPTURE                          VAL R28
      427 NEWTABLE                         R47 0 1
      429 MOVE                             R48 R28
      430 SETLIST                          R47 R48 1 [1]
      432 CALL                             R45 2 1
      433 GETUPVAL                         R46 0
      434 GETTABLEKS                       R46 R46 K48 ["useCallback"]
      436 NEWCLOSURE                       R47 P12
      437 CAPTURE                          UPVAL U16
      438 CAPTURE                          VAL R21
      439 CAPTURE                          VAL R28
      440 NEWTABLE                         R48 0 2
      442 MOVE                             R49 R21
      443 MOVE                             R50 R28
      444 SETLIST                          R48 R49 2 [1]
      446 CALL                             R46 2 1
      447 GETUPVAL                         R47 0
      448 GETTABLEKS                       R47 R47 K48 ["useCallback"]
      450 NEWCLOSURE                       R48 P13
      451 CAPTURE                          VAL R24
      452 NEWTABLE                         R49 0 1
      454 MOVE                             R50 R24
      455 SETLIST                          R49 R50 1 [1]
      457 CALL                             R47 2 1
      458 GETUPVAL                         R48 0
      459 GETTABLEKS                       R48 R48 K54 ["useEffect"]
      461 NEWCLOSURE                       R49 P14
      462 CAPTURE                          VAL R7
      463 CAPTURE                          UPVAL U12
      464 CAPTURE                          VAL R29
      465 CAPTURE                          UPVAL U16
      466 CAPTURE                          VAL R20
      467 CAPTURE                          VAL R4
      468 CAPTURE                          VAL R27
      469 NEWTABLE                         R50 0 4
      471 GETTABLEKS                       R51 R4 K55 ["setNodeSize"]
      473 GETTABLEKS                       R52 R29 K56 ["observeAbsoluteSize"]
      475 MOVE                             R53 R7
      476 GETUPVAL                         R55 16
      477 JUMPIFNOT                        R55 ; [+2]
      478 MOVE                             R54 R20
      479 JUMP                             ; [+1]
      480 MOVE                             R54 R27
      481 SETLIST                          R50 R51 4 [1]
      483 CALL                             R48 2 0
      484 GETUPVAL                         R48 0
      485 GETTABLEKS                       R48 R48 K31 ["useMemo"]
      487 NEWCLOSURE                       R49 P15
      488 CAPTURE                          VAL R6
      489 CAPTURE                          VAL R4
      490 CAPTURE                          VAL R7
      491 CAPTURE                          UPVAL U12
      492 CAPTURE                          UPVAL U17
      493 NEWTABLE                         R50 0 3
      495 GETTABLEKS                       R51 R6 K57 ["observeSpotlightedSubtree"]
      497 GETTABLEKS                       R52 R4 K58 ["observeFadeByNodeId"]
      499 MOVE                             R53 R7
      500 SETLIST                          R50 R51 3 [1]
      502 CALL                             R48 2 1
      503 GETUPVAL                         R49 0
      504 GETTABLEKS                       R49 R49 K31 ["useMemo"]
      506 NEWCLOSURE                       R50 P16
      507 CAPTURE                          VAL R0
      508 NEWTABLE                         R51 0 1
      510 GETTABLEKS                       R52 R0 K14 ["Collapsed"]
      512 SETLIST                          R51 R52 1 [1]
      514 CALL                             R49 2 1
      515 GETUPVAL                         R51 18
      516 JUMPIFNOT                        R51 ; [+10]
      517 GETUPVAL                         R50 2
      518 GETTABLEKS                       R50 R50 K47 ["useEventCallback"]
      520 NEWCLOSURE                       R51 P17
      521 CAPTURE                          VAL R7
      522 CAPTURE                          VAL R4
      523 CAPTURE                          VAL R0
      524 CAPTURE                          UPVAL U19
      525 CALL                             R50 1 1
      526 JUMP                             ; [+17]
      527 GETUPVAL                         R50 0
      528 GETTABLEKS                       R50 R50 K48 ["useCallback"]
      530 NEWCLOSURE                       R51 P18
      531 CAPTURE                          VAL R7
      532 CAPTURE                          VAL R4
      533 CAPTURE                          VAL R0
      534 NEWTABLE                         R52 0 3
      536 GETTABLEKS                       R53 R4 K59 ["setCollapsed"]
      538 MOVE                             R54 R7
      539 GETTABLEKS                       R55 R0 K14 ["Collapsed"]
      541 SETLIST                          R52 R53 3 [1]
      543 CALL                             R50 2 1
      544 GETTABLEKS                       R51 R0 K60 ["text"]
      546 JUMPIF                           R51 ; [+6]
      547 GETTABLEKS                       R51 R0 K4 ["GraphPayload"]
      549 GETTABLEKS                       R51 R51 K61 ["name"]
      551 JUMPIF                           R51 ; [+1]
      552 LOADK                            R51 K62 [""]
      553 GETUPVAL                         R52 0
      554 GETTABLEKS                       R52 R52 K48 ["useCallback"]
      556 NEWCLOSURE                       R53 P19
      557 CAPTURE                          UPVAL U20
      558 CAPTURE                          VAL R34
      559 CAPTURE                          UPVAL U21
      560 CAPTURE                          VAL R36
      561 CAPTURE                          VAL R7
      562 CAPTURE                          UPVAL U7
      563 CAPTURE                          VAL R0
      564 CAPTURE                          UPVAL U8
      565 CAPTURE                          VAL R4
      566 NEWTABLE                         R54 0 8
      568 MOVE                             R55 R7
      569 GETTABLEKS                       R56 R36 K52 ["disable"]
      571 GETTABLEKS                       R57 R0 K11 ["IsParameterNode"]
      573 GETTABLEKS                       R58 R0 K6 ["NodeType"]
      575 GETTABLEKS                       R59 R0 K63 ["onRename"]
      577 GETTABLEKS                       R60 R0 K4 ["GraphPayload"]
      579 GETTABLEKS                       R60 R60 K61 ["name"]
      581 GETTABLEKS                       R61 R4 K64 ["renameParameter"]
      583 GETTABLEKS                       R62 R4 K65 ["renameNode"]
      585 SETLIST                          R54 R55 8 [1]
      587 CALL                             R52 2 1
      588 MOVE                             R53 R2
      589 CALL                             R53 0 1
      590 GETUPVAL                         R54 0
      591 GETTABLEKS                       R54 R54 K31 ["useMemo"]
      593 DUPCLOSURE                       R55 K66 [PROTO_24]
      594 CAPTURE                          UPVAL U12
      595 NEWTABLE                         R56 0 0
      597 CALL                             R54 2 2
      598 GETUPVAL                         R56 22
      599 JUMPIFNOT                        R56 ; [+17]
      600 GETUPVAL                         R56 0
      601 GETTABLEKS                       R56 R56 K54 ["useEffect"]
      603 NEWCLOSURE                       R57 P21
      604 CAPTURE                          UPVAL U12
      605 CAPTURE                          VAL R54
      606 CAPTURE                          VAL R51
      607 CAPTURE                          VAL R0
      608 NEWTABLE                         R58 0 3
      610 MOVE                             R59 R54
      611 MOVE                             R60 R51
      612 GETTABLEKS                       R61 R0 K67 ["Selected"]
      614 SETLIST                          R58 R59 3 [1]
      616 CALL                             R56 2 0
      617 GETUPVAL                         R56 13
      618 GETTABLEKS                       R56 R56 K33 ["useSignalBinding"]
      620 MOVE                             R57 R48
      621 CALL                             R56 1 1
      622 GETUPVAL                         R57 0
      623 GETTABLEKS                       R57 R57 K31 ["useMemo"]
      625 NEWCLOSURE                       R58 P22
      626 CAPTURE                          UPVAL U9
      627 CAPTURE                          VAL R12
      628 CAPTURE                          VAL R13
      629 CAPTURE                          REF R8
      630 CAPTURE                          UPVAL U15
      631 CAPTURE                          VAL R0
      632 NEWTABLE                         R59 0 5
      634 GETTABLEKS                       R60 R0 K14 ["Collapsed"]
      636 MOVE                             R61 R8
      637 GETTABLEKS                       R62 R0 K67 ["Selected"]
      639 MOVE                             R63 R11
      640 MOVE                             R64 R13
      641 SETLIST                          R59 R60 5 [1]
      643 CALL                             R57 2 1
      644 GETUPVAL                         R58 0
      645 GETTABLEKS                       R58 R58 K31 ["useMemo"]
      647 NEWCLOSURE                       R59 P23
      648 CAPTURE                          VAL R57
      649 NEWTABLE                         R60 0 1
      651 MOVE                             R61 R57
      652 SETLIST                          R60 R61 1 [1]
      654 CALL                             R58 2 1
      655 GETUPVAL                         R59 0
      656 GETTABLEKS                       R59 R59 K31 ["useMemo"]
      658 NEWCLOSURE                       R60 P24
      659 CAPTURE                          UPVAL U0
      660 CAPTURE                          VAL R32
      661 CAPTURE                          VAL R17
      662 NEWTABLE                         R61 0 2
      664 MOVE                             R62 R32
      665 GETTABLEKS                       R63 R17 K23 ["Color"]
      667 GETTABLEKS                       R63 R63 K68 ["System"]
      669 GETTABLEKS                       R63 R63 K69 ["Neutral"]
      671 GETTABLEKS                       R63 R63 K70 ["Color3"]
      673 SETLIST                          R61 R62 2 [1]
      675 CALL                             R59 2 1
      676 GETUPVAL                         R61 23
      677 JUMPIFNOT                        R61 ; [+13]
      678 GETUPVAL                         R60 2
      679 GETTABLEKS                       R60 R60 K47 ["useEventCallback"]
      681 NEWCLOSURE                       R61 P25
      682 CAPTURE                          VAL R4
      683 CAPTURE                          VAL R0
      684 CAPTURE                          UPVAL U18
      685 CAPTURE                          UPVAL U19
      686 CAPTURE                          UPVAL U24
      687 CAPTURE                          VAL R5
      688 CAPTURE                          VAL R3
      689 CALL                             R60 1 1
      690 JUMP                             ; [+1]
      691 LOADNIL                          R60
      692 JUMPIFNOT                        R12 ; [+15]
      693 GETUPVAL                         R61 0
      694 GETTABLEKS                       R61 R61 K40 ["joinBindings"]
      696 NEWTABLE                         R62 0 2
      698 MOVE                             R63 R22
      699 MOVE                             R64 R25
      700 SETLIST                          R62 R63 2 [1]
      702 CALL                             R61 1 1
      703 DUPCLOSURE                       R63 K71 [PROTO_31]
      704 NAMECALL                         R61 R61 K42 ["map"]
      706 CALL                             R61 2 1
      707 JUMP                             ; [+12]
      708 GETUPVAL                         R62 16
      709 JUMPIFNOT                        R62 ; [+5]
      710 DUPCLOSURE                       R63 K72 [PROTO_32]
      711 NAMECALL                         R61 R22 K42 ["map"]
      713 CALL                             R61 2 1
      714 JUMP                             ; [+5]
      715 GETIMPORT                        R61 K75 [UDim2.fromOffset]
      717 MOVE                             R62 R27
      718 LOADN                            R63 0
      719 CALL                             R61 2 1
      720 GETUPVAL                         R62 0
      721 GETTABLEKS                       R62 R62 K76 ["createElement"]
      723 GETUPVAL                         R63 11
      724 GETTABLEKS                       R63 R63 K77 ["View"]
      726 DUPTABLE                         R64 K87 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      727 GETUPVAL                         R66 16
      728 JUMPIFNOT                        R66 ; [+5]
      729 DUPCLOSURE                       R67 K88 [PROTO_33]
      730 NAMECALL                         R65 R22 K42 ["map"]
      732 CALL                             R65 2 1
      733 JUMP                             ; [+5]
      734 GETIMPORT                        R65 K75 [UDim2.fromOffset]
      736 MOVE                             R66 R27
      737 LOADN                            R67 0
      738 CALL                             R65 2 1
      739 SETTABLEKS                       R65 R64 K80 ["Size"]
      741 GETTABLEKS                       R65 R0 K81 ["LayoutOrder"]
      743 SETTABLEKS                       R65 R64 K81 ["LayoutOrder"]
      745 GETTABLEKS                       R65 R0 K82 ["ZIndex"]
      747 SETTABLEKS                       R65 R64 K82 ["ZIndex"]
      749 SETTABLEKS                       R30 R64 K38 ["Position"]
      751 DUPTABLE                         R65 K91 [{"UIScale", "ComponentContext"}]
      752 GETUPVAL                         R66 0
      753 GETTABLEKS                       R66 R66 K76 ["createElement"]
      755 LOADK                            R67 K89 ["UIScale"]
      756 DUPTABLE                         R68 K93 [{"Scale"}]
      757 SETTABLEKS                       R31 R68 K92 ["Scale"]
      759 CALL                             R66 2 1
      760 SETTABLEKS                       R66 R65 K89 ["UIScale"]
      762 GETUPVAL                         R66 0
      763 GETTABLEKS                       R66 R66 K76 ["createElement"]
      765 GETUPVAL                         R67 25
      766 GETTABLEKS                       R67 R67 K94 ["Provider"]
      768 DUPTABLE                         R68 K97 [{"absoluteSizeHook", "observeControlledHeight"}]
      769 SETTABLEKS                       R29 R68 K95 ["absoluteSizeHook"]
      771 SETTABLEKS                       R26 R68 K96 ["observeControlledHeight"]
      773 DUPTABLE                         R69 K102 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      774 GETUPVAL                         R70 0
      775 GETTABLEKS                       R70 R70 K76 ["createElement"]
      777 GETUPVAL                         R71 11
      778 GETTABLEKS                       R71 R71 K77 ["View"]
      780 DUPTABLE                         R72 K104 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      781 SETTABLEKS                       R58 R72 K78 ["tag"]
      783 GETUPVAL                         R74 9
      784 CALL                             R74 0 1
      785 JUMPIFNOT                        R74 ; [+2]
      786 MOVE                             R73 R61
      787 JUMP                             ; [+12]
      788 GETUPVAL                         R74 16
      789 JUMPIFNOT                        R74 ; [+5]
      790 DUPCLOSURE                       R75 K105 [PROTO_34]
      791 NAMECALL                         R73 R22 K42 ["map"]
      793 CALL                             R73 2 1
      794 JUMP                             ; [+5]
      795 GETIMPORT                        R73 K75 [UDim2.fromOffset]
      797 MOVE                             R74 R27
      798 LOADN                            R75 0
      799 CALL                             R73 2 1
      800 SETTABLEKS                       R73 R72 K80 ["Size"]
      802 GETTABLEKS                       R73 R29 K106 ["setFrame"]
      804 SETTABLEKS                       R73 R72 K103 ["ref"]
      806 DUPTABLE                         R73 K113 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      807 GETUPVAL                         R74 0
      808 GETTABLEKS                       R74 R74 K76 ["createElement"]
      810 LOADK                            R75 K114 ["Folder"]
      811 NEWTABLE                         R76 0 0
      813 DUPTABLE                         R77 K116 [{"Cover"}]
      814 GETUPVAL                         R78 0
      815 GETTABLEKS                       R78 R78 K76 ["createElement"]
      817 GETUPVAL                         R79 11
      818 GETTABLEKS                       R79 R79 K77 ["View"]
      820 DUPTABLE                         R80 K120 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      821 SETTABLEKS                       R57 R80 K78 ["tag"]
      823 GETIMPORT                        R81 K122 [UDim2.fromScale]
      825 LOADN                            R82 1
      826 LOADN                            R83 1
      827 CALL                             R81 2 1
      828 SETTABLEKS                       R81 R80 K80 ["Size"]
      830 SETTABLEKS                       R56 R80 K117 ["GroupTransparency"]
      832 GETUPVAL                         R82 26
      833 CALL                             R82 0 1
      834 JUMPIFNOT                        R82 ; [+2]
      835 LOADN                            R81 2
      836 JUMP                             ; [+1]
      837 LOADN                            R81 1
      838 SETTABLEKS                       R81 R80 K82 ["ZIndex"]
      840 CALL                             R78 2 1
      841 SETTABLEKS                       R78 R77 K115 ["Cover"]
      843 CALL                             R74 3 1
      844 SETTABLEKS                       R74 R73 K107 ["CoverContainer"]
      846 GETUPVAL                         R74 0
      847 GETTABLEKS                       R74 R74 K76 ["createElement"]
      849 GETUPVAL                         R75 11
      850 GETTABLEKS                       R75 R75 K77 ["View"]
      852 DUPTABLE                         R76 K124 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      853 NEWTABLE                         R77 4 0
      855 LOADB                            R78 1
      856 SETTABLEKS                       R78 R77 K125 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      858 GETUPVAL                         R79 27
      859 NOT                              R78 R79
      860 JUMPIFNOT                        R78 ; [+1]
      861 NOT                              R78 R9
      862 SETTABLEKS                       R78 R77 K126 ["radius-small bg-shift-200"]
      864 JUMPIFNOT                        R8 ; [+4]
      865 GETTABLEKS                       R79 R0 K14 ["Collapsed"]
      867 NOT                              R78 R79
      868 JUMPIF                           R78 ; [+3]
      869 MOVE                             R78 R9
      870 JUMPIFNOT                        R78 ; [+1]
      871 NOT                              R78 R8
      872 SETTABLEKS                       R78 R77 K127 ["radius-small"]
      874 MOVE                             R78 R8
      875 JUMPIFNOT                        R78 ; [+2]
      876 GETTABLEKS                       R78 R0 K14 ["Collapsed"]
      878 SETTABLEKS                       R78 R77 K128 ["radius-large"]
      880 SETTABLEKS                       R77 R76 K78 ["tag"]
      882 JUMPIFNOT                        R9 ; [+2]
      883 MOVE                             R77 R19
      884 JUMP                             ; [+1]
      885 LOADNIL                          R77
      886 SETTABLEKS                       R77 R76 K123 ["backgroundStyle"]
      888 SETTABLEKS                       R53 R76 K81 ["LayoutOrder"]
      890 SETTABLEKS                       R41 R76 K103 ["ref"]
      892 DUPTABLE                         R77 K134 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      893 GETTABLEKS                       R79 R0 K135 ["Collapsible"]
      895 JUMPIFEQKB                       R79 FALSE ; [+47]
      897 GETUPVAL                         R79 27
      898 JUMPIF                           R79 ; [+44]
      899 GETUPVAL                         R78 0
      900 GETTABLEKS                       R78 R78 K76 ["createElement"]
      902 GETUPVAL                         R79 11
      903 GETTABLEKS                       R79 R79 K136 ["Button"]
      905 DUPTABLE                         R80 K142 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      906 SETTABLEKS                       R49 R80 K137 ["icon"]
      908 GETUPVAL                         R81 11
      909 GETTABLEKS                       R81 R81 K20 ["Enums"]
      911 GETTABLEKS                       R81 R81 K143 ["ButtonVariant"]
      913 GETTABLEKS                       R81 R81 K144 ["Text"]
      915 SETTABLEKS                       R81 R80 K138 ["variant"]
      917 SETTABLEKS                       R50 R80 K139 ["onActivated"]
      919 GETUPVAL                         R81 11
      920 GETTABLEKS                       R81 R81 K20 ["Enums"]
      922 GETTABLEKS                       R81 R81 K145 ["InputSize"]
      924 GETTABLEKS                       R81 R81 K146 ["XSmall"]
      926 SETTABLEKS                       R81 R80 K140 ["size"]
      928 MOVE                             R81 R2
      929 CALL                             R81 0 1
      930 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
      932 GETUPVAL                         R81 11
      933 GETTABLEKS                       R81 R81 K20 ["Enums"]
      935 GETTABLEKS                       R81 R81 K147 ["FillBehavior"]
      937 GETTABLEKS                       R81 R81 K148 ["Fit"]
      939 SETTABLEKS                       R81 R80 K141 ["fillBehavior"]
      941 CALL                             R78 2 1
      942 JUMP                             ; [+1]
      943 LOADNIL                          R78
      944 SETTABLEKS                       R78 R77 K129 ["DEPRECATED_ToggleButton"]
      946 GETUPVAL                         R78 0
      947 GETTABLEKS                       R78 R78 K76 ["createElement"]
      949 GETUPVAL                         R79 11
      950 GETTABLEKS                       R79 R79 K144 ["Text"]
      952 DUPTABLE                         R80 K153 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      953 NEWTABLE                         R81 2 0
      955 LOADB                            R82 1
      956 SETTABLEKS                       R82 R81 K154 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      958 GETUPVAL                         R82 27
      959 JUMPIF                           R82 ; [+6]
      960 GETTABLEKS                       R83 R0 K135 ["Collapsible"]
      962 JUMPIFEQKB                       R83 FALSE ; [+2]
      964 LOADB                            R82 0 +1
      965 LOADB                            R82 1
      966 SETTABLEKS                       R82 R81 K155 ["padding-left-small"]
      968 SETTABLEKS                       R81 R80 K78 ["tag"]
      970 SETTABLEKS                       R51 R80 K144 ["Text"]
      972 MOVE                             R81 R2
      973 CALL                             R81 0 1
      974 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
      976 GETTABLEKS                       R82 R36 K49 ["enabled"]
      978 NOT                              R81 R82
      979 SETTABLEKS                       R81 R80 K151 ["Visible"]
      981 CALL                             R78 2 1
      982 SETTABLEKS                       R78 R77 K130 ["Title"]
      984 GETUPVAL                         R78 0
      985 GETTABLEKS                       R78 R78 K76 ["createElement"]
      987 GETUPVAL                         R79 11
      988 GETTABLEKS                       R79 R79 K156 ["TextInput"]
      990 DUPTABLE                         R80 K163 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      991 NEWTABLE                         R81 1 0
      993 LOADB                            R82 1
      994 SETTABLEKS                       R82 R81 K154 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      996 SETTABLEKS                       R81 R80 K78 ["tag"]
      998 SETTABLEKS                       R34 R80 K60 ["text"]
     1000 MOVE                             R81 R2
     1001 CALL                             R81 0 1
     1002 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
     1004 SETTABLEKS                       R35 R80 K157 ["onChanged"]
     1006 GETUPVAL                         R81 11
     1007 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1009 GETTABLEKS                       R81 R81 K145 ["InputSize"]
     1011 GETTABLEKS                       R81 R81 K146 ["XSmall"]
     1013 SETTABLEKS                       R81 R80 K140 ["size"]
     1015 GETUPVAL                         R81 11
     1016 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1018 GETTABLEKS                       R81 R81 K164 ["InputFocusBehavior"]
     1020 GETTABLEKS                       R81 R81 K165 ["Highlight"]
     1022 SETTABLEKS                       R81 R80 K159 ["focusBehavior"]
     1024 SETTABLEKS                       R37 R80 K160 ["textBoxRef"]
     1026 SETTABLEKS                       R52 R80 K161 ["onFocusLost"]
     1028 SETTABLEKS                       R37 R80 K103 ["ref"]
     1030 GETIMPORT                        R81 K168 [UDim.new]
     1032 LOADN                            R82 0
     1033 LOADN                            R83 100
     1034 CALL                             R81 2 1
     1035 SETTABLEKS                       R81 R80 K162 ["width"]
     1037 GETTABLEKS                       R81 R36 K49 ["enabled"]
     1039 SETTABLEKS                       R81 R80 K151 ["Visible"]
     1041 CALL                             R78 2 1
     1042 SETTABLEKS                       R78 R77 K131 ["TitleInput"]
     1044 GETTABLEKS                       R79 R0 K135 ["Collapsible"]
     1046 JUMPIFEQKB                       R79 FALSE ; [+47]
     1048 GETUPVAL                         R79 27
     1049 JUMPIFNOT                        R79 ; [+44]
     1050 GETUPVAL                         R78 0
     1051 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1053 GETUPVAL                         R79 11
     1054 GETTABLEKS                       R79 R79 K136 ["Button"]
     1056 DUPTABLE                         R80 K142 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
     1057 SETTABLEKS                       R49 R80 K137 ["icon"]
     1059 GETUPVAL                         R81 11
     1060 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1062 GETTABLEKS                       R81 R81 K143 ["ButtonVariant"]
     1064 GETTABLEKS                       R81 R81 K144 ["Text"]
     1066 SETTABLEKS                       R81 R80 K138 ["variant"]
     1068 SETTABLEKS                       R50 R80 K139 ["onActivated"]
     1070 GETUPVAL                         R81 11
     1071 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1073 GETTABLEKS                       R81 R81 K145 ["InputSize"]
     1075 GETTABLEKS                       R81 R81 K146 ["XSmall"]
     1077 SETTABLEKS                       R81 R80 K140 ["size"]
     1079 MOVE                             R81 R2
     1080 CALL                             R81 0 1
     1081 SETTABLEKS                       R81 R80 K81 ["LayoutOrder"]
     1083 GETUPVAL                         R81 11
     1084 GETTABLEKS                       R81 R81 K20 ["Enums"]
     1086 GETTABLEKS                       R81 R81 K147 ["FillBehavior"]
     1088 GETTABLEKS                       R81 R81 K148 ["Fit"]
     1090 SETTABLEKS                       R81 R80 K141 ["fillBehavior"]
     1092 CALL                             R78 2 1
     1093 JUMP                             ; [+1]
     1094 LOADNIL                          R78
     1095 SETTABLEKS                       R78 R77 K132 ["ToggleButton"]
     1097 GETUPVAL                         R78 0
     1098 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1100 LOADK                            R79 K114 ["Folder"]
     1101 NEWTABLE                         R80 0 0
     1103 GETTABLEKS                       R81 R0 K169 ["HeaderChildren"]
     1105 CALL                             R78 3 1
     1106 SETTABLEKS                       R78 R77 K133 ["Children"]
     1108 CALL                             R74 3 1
     1109 SETTABLEKS                       R74 R73 K108 ["CompositorNodeHeader"]
     1111 GETUPVAL                         R74 27
     1112 JUMPIFNOT                        R74 ; [+16]
     1113 GETTABLEKS                       R75 R0 K14 ["Collapsed"]
     1115 NOT                              R74 R75
     1116 JUMPIFNOT                        R74 ; [+12]
     1117 GETUPVAL                         R74 0
     1118 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1120 GETUPVAL                         R75 11
     1121 GETTABLEKS                       R75 R75 K170 ["Divider"]
     1123 DUPTABLE                         R76 K171 [{"LayoutOrder"}]
     1124 MOVE                             R77 R2
     1125 CALL                             R77 0 1
     1126 SETTABLEKS                       R77 R76 K81 ["LayoutOrder"]
     1128 CALL                             R74 2 1
     1129 SETTABLEKS                       R74 R73 K109 ["TitleDivider"]
     1131 GETUPVAL                         R75 0
     1132 GETTABLEKS                       R75 R75 K133 ["Children"]
     1134 GETTABLEKS                       R75 R75 K172 ["count"]
     1136 GETTABLEKS                       R76 R0 K173 ["children"]
     1138 CALL                             R75 1 1
     1139 LOADN                            R76 0
     1140 JUMPIFNOTLT                      R76 R75 ; [+139]
     1142 GETUPVAL                         R74 0
     1143 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1145 GETUPVAL                         R75 11
     1146 GETTABLEKS                       R75 R75 K77 ["View"]
     1148 DUPTABLE                         R76 K174 [{"tag", "LayoutOrder"}]
     1149 JUMPIFNOT                        R11 ; [+2]
     1150 LOADK                            R77 K175 ["size-full-0 grow"]
     1151 JUMP                             ; [+1]
     1152 LOADK                            R77 K176 ["size-full-700 auto-y"]
     1153 SETTABLEKS                       R77 R76 K78 ["tag"]
     1155 MOVE                             R77 R2
     1156 CALL                             R77 0 1
     1157 SETTABLEKS                       R77 R76 K81 ["LayoutOrder"]
     1159 DUPTABLE                         R77 K179 [{"Contents", "ResizeBars"}]
     1160 GETUPVAL                         R78 0
     1161 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1163 GETUPVAL                         R79 11
     1164 GETTABLEKS                       R79 R79 K77 ["View"]
     1166 DUPTABLE                         R80 K182 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"], ["testId"] = "CompositorNodeContents"}]
     1167 GETUPVAL                         R82 26
     1168 CALL                             R82 0 1
     1169 JUMPIFNOT                        R82 ; [+2]
     1170 LOADN                            R81 1
     1171 JUMP                             ; [+1]
     1172 LOADN                            R81 2
     1173 SETTABLEKS                       R81 R80 K82 ["ZIndex"]
     1175 DUPTABLE                         R81 K184 [{"NodeProperties"}]
     1176 GETUPVAL                         R82 0
     1177 GETTABLEKS                       R82 R82 K76 ["createElement"]
     1179 GETUPVAL                         R83 0
     1180 GETTABLEKS                       R83 R83 K185 ["Fragment"]
     1182 NEWTABLE                         R84 0 0
     1184 GETTABLEKS                       R85 R0 K173 ["children"]
     1186 CALL                             R82 3 1
     1187 SETTABLEKS                       R82 R81 K183 ["NodeProperties"]
     1189 CALL                             R78 3 1
     1190 SETTABLEKS                       R78 R77 K177 ["Contents"]
     1192 GETUPVAL                         R79 9
     1193 CALL                             R79 0 1
     1194 JUMPIFNOT                        R79 ; [+43]
     1195 JUMPIF                           R10 ; [+1]
     1196 JUMPIFNOT                        R11 ; [+39]
     1197 GETUPVAL                         R78 0
     1198 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1200 GETUPVAL                         R79 28
     1201 DUPTABLE                         R80 K195 [{["tag"] = "radius-small", ["showHorizontal"], ["showVertical"], ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["nodeHeightBinding"], ["OnResizedVertical"], ["Style"], ["ZIndex"] = 4}]
     1202 SETTABLEKS                       R10 R80 K186 ["showHorizontal"]
     1204 SETTABLEKS                       R11 R80 K187 ["showVertical"]
     1206 SETTABLEKS                       R27 R80 K188 ["DEPRECATED_nodeWidth"]
     1208 SETTABLEKS                       R22 R80 K189 ["nodeWidthBinding"]
     1210 SETTABLEKS                       R46 R80 K190 ["OnResized"]
     1212 SETTABLEKS                       R25 R80 K191 ["nodeHeightBinding"]
     1214 SETTABLEKS                       R47 R80 K192 ["OnResizedVertical"]
     1216 GETTABLEKS                       R82 R0 K67 ["Selected"]
     1218 JUMPIFNOT                        R82 ; [+7]
     1219 GETTABLEKS                       R81 R17 K23 ["Color"]
     1221 GETTABLEKS                       R81 R81 K68 ["System"]
     1223 GETTABLEKS                       R81 R81 K69 ["Neutral"]
     1225 JUMP                             ; [+6]
     1226 GETTABLEKS                       R81 R17 K23 ["Color"]
     1228 GETTABLEKS                       R81 R81 K196 ["Stroke"]
     1230 GETTABLEKS                       R81 R81 K197 ["Default"]
     1232 SETTABLEKS                       R81 R80 K193 ["Style"]
     1234 CALL                             R78 2 1
     1235 JUMP                             ; [+40]
     1236 LOADNIL                          R78
     1237 JUMP                             ; [+38]
     1238 JUMPIF                           R8 ; [+36]
     1239 GETUPVAL                         R78 0
     1240 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1242 GETUPVAL                         R79 28
     1243 DUPTABLE                         R80 K198 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 4}]
     1244 SETTABLEKS                       R27 R80 K188 ["DEPRECATED_nodeWidth"]
     1246 SETTABLEKS                       R22 R80 K189 ["nodeWidthBinding"]
     1248 GETUPVAL                         R82 16
     1249 JUMPIFNOT                        R82 ; [+2]
     1250 MOVE                             R81 R21
     1251 JUMP                             ; [+1]
     1252 MOVE                             R81 R45
     1253 SETTABLEKS                       R81 R80 K190 ["OnResized"]
     1255 GETTABLEKS                       R82 R0 K67 ["Selected"]
     1257 JUMPIFNOT                        R82 ; [+7]
     1258 GETTABLEKS                       R81 R17 K23 ["Color"]
     1260 GETTABLEKS                       R81 R81 K68 ["System"]
     1262 GETTABLEKS                       R81 R81 K69 ["Neutral"]
     1264 JUMP                             ; [+6]
     1265 GETTABLEKS                       R81 R17 K23 ["Color"]
     1267 GETTABLEKS                       R81 R81 K196 ["Stroke"]
     1269 GETTABLEKS                       R81 R81 K197 ["Default"]
     1271 SETTABLEKS                       R81 R80 K193 ["Style"]
     1273 CALL                             R78 2 1
     1274 JUMP                             ; [+1]
     1275 LOADNIL                          R78
     1276 SETTABLEKS                       R78 R77 K178 ["ResizeBars"]
     1278 CALL                             R74 3 1
     1279 JUMP                             ; [+1]
     1280 LOADNIL                          R74
     1281 SETTABLEKS                       R74 R73 K110 ["CompositorNodeContent"]
     1283 GETTABLEKS                       R74 R0 K111 ["ContextToolbar"]
     1285 JUMPIFNOT                        R74 ; [+21]
     1286 GETTABLEKS                       R75 R0 K67 ["Selected"]
     1288 JUMPIF                           R75 ; [+2]
     1289 MOVE                             R74 R15
     1290 JUMPIFNOT                        R74 ; [+16]
     1291 GETUPVAL                         R74 0
     1292 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1294 GETUPVAL                         R75 29
     1295 DUPTABLE                         R76 K202 [{"Buttons", "positionBinding", "widthBinding"}]
     1296 GETTABLEKS                       R77 R0 K111 ["ContextToolbar"]
     1298 GETTABLEKS                       R77 R77 K199 ["Buttons"]
     1300 SETTABLEKS                       R77 R76 K199 ["Buttons"]
     1302 SETTABLEKS                       R30 R76 K200 ["positionBinding"]
     1304 SETTABLEKS                       R33 R76 K201 ["widthBinding"]
     1306 CALL                             R74 2 1
     1307 SETTABLEKS                       R74 R73 K111 ["ContextToolbar"]
     1309 GETUPVAL                         R74 15
     1310 CALL                             R74 0 1
     1311 JUMPIFNOT                        R74 ; [+124]
     1312 GETUPVAL                         R74 0
     1313 GETTABLEKS                       R74 R74 K76 ["createElement"]
     1315 LOADK                            R75 K114 ["Folder"]
     1316 NEWTABLE                         R76 0 0
     1318 DUPTABLE                         R77 K204 [{"SelectionHighlight"}]
     1319 GETTABLEKS                       R79 R0 K67 ["Selected"]
     1321 JUMPIFNOT                        R79 ; [+110]
     1322 GETUPVAL                         R79 27
     1323 JUMPIFNOT                        R79 ; [+58]
     1324 GETUPVAL                         R78 0
     1325 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1327 GETUPVAL                         R79 11
     1328 GETTABLEKS                       R79 R79 K77 ["View"]
     1330 DUPTABLE                         R80 K206 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1331 GETUPVAL                         R81 0
     1332 GETTABLEKS                       R81 R81 K76 ["createElement"]
     1334 GETUPVAL                         R82 11
     1335 GETTABLEKS                       R82 R82 K77 ["View"]
     1337 DUPTABLE                         R83 K208 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1338 NEWTABLE                         R84 4 0
     1340 LOADB                            R85 1
     1341 SETTABLEKS                       R85 R84 K209 ["position-center-center anchor-center-center"]
     1343 GETUPVAL                         R86 9
     1344 CALL                             R86 0 1
     1345 JUMPIFNOT                        R86 ; [+2]
     1346 NOT                              R85 R13
     1347 JUMP                             ; [+1]
     1348 NOT                              R85 R8
     1349 SETTABLEKS                       R85 R84 K127 ["radius-small"]
     1351 GETUPVAL                         R86 9
     1352 CALL                             R86 0 1
     1353 JUMPIFNOT                        R86 ; [+2]
     1354 MOVE                             R85 R13
     1355 JUMP                             ; [+1]
     1356 MOVE                             R85 R8
     1357 SETTABLEKS                       R85 R84 K128 ["radius-large"]
     1359 SETTABLEKS                       R84 R83 K78 ["tag"]
     1361 GETIMPORT                        R84 K210 [UDim2.new]
     1363 LOADN                            R85 1
     1364 GETTABLEKS                       R86 R17 K211 ["Padding"]
     1366 GETTABLEKS                       R86 R86 K212 ["Small"]
     1368 LOADN                            R87 1
     1369 GETTABLEKS                       R88 R17 K211 ["Padding"]
     1371 GETTABLEKS                       R88 R88 K212 ["Small"]
     1373 CALL                             R84 4 1
     1374 SETTABLEKS                       R84 R83 K80 ["Size"]
     1376 DUPTABLE                         R84 K214 [{"UIStroke"}]
     1377 SETTABLEKS                       R59 R84 K213 ["UIStroke"]
     1379 CALL                             R81 3 -1
     1380 CALL                             R78 -1 1
     1381 JUMP                             ; [+51]
     1382 GETUPVAL                         R78 0
     1383 GETTABLEKS                       R78 R78 K76 ["createElement"]
     1385 GETUPVAL                         R79 11
     1386 GETTABLEKS                       R79 R79 K77 ["View"]
     1388 DUPTABLE                         R80 K208 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1389 NEWTABLE                         R81 4 0
     1391 LOADB                            R82 1
     1392 SETTABLEKS                       R82 R81 K209 ["position-center-center anchor-center-center"]
     1394 GETUPVAL                         R83 9
     1395 CALL                             R83 0 1
     1396 JUMPIFNOT                        R83 ; [+2]
     1397 NOT                              R82 R13
     1398 JUMP                             ; [+1]
     1399 NOT                              R82 R8
     1400 SETTABLEKS                       R82 R81 K127 ["radius-small"]
     1402 GETUPVAL                         R83 9
     1403 CALL                             R83 0 1
     1404 JUMPIFNOT                        R83 ; [+2]
     1405 MOVE                             R82 R13
     1406 JUMP                             ; [+1]
     1407 MOVE                             R82 R8
     1408 SETTABLEKS                       R82 R81 K128 ["radius-large"]
     1410 SETTABLEKS                       R81 R80 K78 ["tag"]
     1412 GETIMPORT                        R81 K210 [UDim2.new]
     1414 LOADN                            R82 1
     1415 GETTABLEKS                       R83 R17 K211 ["Padding"]
     1417 GETTABLEKS                       R83 R83 K212 ["Small"]
     1419 LOADN                            R84 1
     1420 GETTABLEKS                       R85 R17 K211 ["Padding"]
     1422 GETTABLEKS                       R85 R85 K212 ["Small"]
     1424 CALL                             R81 4 1
     1425 SETTABLEKS                       R81 R80 K80 ["Size"]
     1427 DUPTABLE                         R81 K214 [{"UIStroke"}]
     1428 SETTABLEKS                       R59 R81 K213 ["UIStroke"]
     1430 CALL                             R78 3 1
     1431 JUMP                             ; [+1]
     1432 LOADNIL                          R78
     1433 SETTABLEKS                       R78 R77 K203 ["SelectionHighlight"]
     1435 CALL                             R74 3 1
     1436 SETTABLEKS                       R74 R73 K112 ["SelectionHighlightContainer"]
     1438 CALL                             R70 3 1
     1439 SETTABLEKS                       R70 R69 K98 ["Node"]
     1441 GETUPVAL                         R71 22
     1442 JUMPIFNOT                        R71 ; [+15]
     1443 GETUPVAL                         R70 0
     1444 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1446 GETUPVAL                         R71 11
     1447 GETTABLEKS                       R71 R71 K77 ["View"]
     1449 DUPTABLE                         R72 K217 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1450 MOVE                             R73 R2
     1451 CALL                             R73 0 1
     1452 SETTABLEKS                       R73 R72 K81 ["LayoutOrder"]
     1454 SETTABLEKS                       R55 R72 K103 ["ref"]
     1456 CALL                             R70 2 1
     1457 JUMP                             ; [+1]
     1458 LOADNIL                          R70
     1459 SETTABLEKS                       R70 R69 K99 ["DebugMarker"]
     1461 GETUPVAL                         R71 30
     1462 CALL                             R71 0 1
     1463 JUMPIFNOT                        R71 ; [+5]
     1464 LOADB                            R70 0
     1465 GETTABLEKS                       R71 R0 K218 ["CanDrag"]
     1467 JUMPIFEQKB                       R71 FALSE ; [+39]
     1469 GETUPVAL                         R70 0
     1470 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1472 LOADK                            R71 K219 ["UIDragDetector"]
     1473 NEWTABLE                         R72 8 0
     1475 GETIMPORT                        R73 K223 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1477 SETTABLEKS                       R73 R72 K224 ["DragStyle"]
     1479 GETIMPORT                        R73 K227 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1481 SETTABLEKS                       R73 R72 K228 ["ResponseStyle"]
     1483 GETTABLEKS                       R73 R3 K229 ["getViewport"]
     1485 CALL                             R73 0 1
     1486 SETTABLEKS                       R73 R72 K230 ["ReferenceUIInstance"]
     1488 GETUPVAL                         R73 0
     1489 GETTABLEKS                       R73 R73 K231 ["Event"]
     1491 GETTABLEKS                       R73 R73 K232 ["DragStart"]
     1493 SETTABLE                         R42 R72 R73
     1494 GETUPVAL                         R73 0
     1495 GETTABLEKS                       R73 R73 K231 ["Event"]
     1497 GETTABLEKS                       R73 R73 K233 ["DragContinue"]
     1499 SETTABLE                         R43 R72 R73
     1500 GETUPVAL                         R73 0
     1501 GETTABLEKS                       R73 R73 K231 ["Event"]
     1503 GETTABLEKS                       R73 R73 K234 ["DragEnd"]
     1505 SETTABLE                         R44 R72 R73
     1506 CALL                             R70 2 1
     1507 SETTABLEKS                       R70 R69 K100 ["DragDetector"]
     1509 GETUPVAL                         R70 23
     1510 JUMPIFNOT                        R70 ; [+26]
     1511 GETUPVAL                         R70 0
     1512 GETTABLEKS                       R70 R70 K76 ["createElement"]
     1514 LOADK                            R71 K235 ["Frame"]
     1515 NEWTABLE                         R72 4 0
     1517 LOADN                            R73 1
     1518 SETTABLEKS                       R73 R72 K83 ["BackgroundTransparency"]
     1520 GETIMPORT                        R73 K122 [UDim2.fromScale]
     1522 LOADN                            R74 1
     1523 LOADN                            R75 1
     1524 CALL                             R73 2 1
     1525 SETTABLEKS                       R73 R72 K80 ["Size"]
     1527 LOADN                            R73 -10
     1528 SETTABLEKS                       R73 R72 K82 ["ZIndex"]
     1530 GETUPVAL                         R73 0
     1531 GETTABLEKS                       R73 R73 K231 ["Event"]
     1533 GETTABLEKS                       R73 R73 K236 ["InputBegan"]
     1535 SETTABLE                         R60 R72 R73
     1536 CALL                             R70 2 1
     1537 SETTABLEKS                       R70 R69 K101 ["RightClickCapture"]
     1539 CALL                             R66 3 1
     1540 SETTABLEKS                       R66 R65 K90 ["ComponentContext"]
     1542 CALL                             R62 3 -1
     1543 CLOSEUPVALS                      R8
     1544 RETURN                           R62 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["CompositorNodeComponentContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["CompositorNodeTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K9 ["ContextToolbar"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K10 ["Util"]
       37 GETTABLEKS                       R6 R6 K11 ["DEPRECATED_sanitizeParameterNames"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Flags"]
       44 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUIShowInExplorer"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Flags"]
       51 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_DynamicZIndex"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Flags"]
       58 GETTABLEKS                       R9 R9 K15 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Flags"]
       65 GETTABLEKS                       R10 R10 K16 ["FFlagAnimGraphUI_NoodleColorLerping"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Flags"]
       72 GETTABLEKS                       R11 R11 K17 ["FFlagAnimGraphUI_PerfFixes_7123"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Flags"]
       79 GETTABLEKS                       R12 R12 K18 ["FFlagAnimGraphUI_RightClickSelects"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Flags"]
       86 GETTABLEKS                       R13 R13 K19 ["FFlagAnimGraphUI_StateMachineNodeType"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K12 ["Flags"]
       93 GETTABLEKS                       R14 R14 K20 ["FFlagAnimGraphUI_StyleTouches"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K21 ["Parent"]
      100 GETTABLEKS                       R15 R15 K22 ["Foundation"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Components"]
      107 GETTABLEKS                       R16 R16 K24 ["GraphContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K21 ["Parent"]
      114 GETTABLEKS                       R17 R17 K25 ["Graphing"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K23 ["Components"]
      121 GETTABLEKS                       R18 R18 K26 ["NodeRightClickMenuContext"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K21 ["Parent"]
      128 GETTABLEKS                       R19 R19 K27 ["React"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K21 ["Parent"]
      135 GETTABLEKS                       R20 R20 K28 ["ReactUtils"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETIMPORT                        R21 K1 [script]
      142 GETTABLEKS                       R21 R21 K29 ["ResizeBars"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K21 ["Parent"]
      149 GETTABLEKS                       R22 R22 K30 ["Signals"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K21 ["Parent"]
      156 GETTABLEKS                       R23 R23 K31 ["SignalsReact"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K23 ["Components"]
      163 GETTABLEKS                       R24 R24 K32 ["SpotlightedNodeContext"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K21 ["Parent"]
      170 GETTABLEKS                       R25 R25 K33 ["TestLoader"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K23 ["Components"]
      177 GETTABLEKS                       R26 R26 K34 ["ViewportRectContext"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K10 ["Util"]
      184 GETTABLEKS                       R27 R27 K35 ["bumpNodeZIndex"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K12 ["Flags"]
      198 GETTABLEKS                       R29 R29 K37 ["getFFlagAnimGraphUIPinOffset"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K12 ["Flags"]
      205 GETTABLEKS                       R30 R30 K38 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K12 ["Flags"]
      212 GETTABLEKS                       R31 R31 K39 ["getFFlagAnimGraphUI_RunTimeDebug"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K40 ["Hooks"]
      219 GETTABLEKS                       R32 R32 K41 ["useAbsoluteSize"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K40 ["Hooks"]
      226 GETTABLEKS                       R33 R33 K42 ["useFoundationStudioTheme"]
      228 CALL                             R32 1 1
      229 GETTABLEKS                       R33 R24 K43 ["isCli"]
      231 CALL                             R33 0 1
      232 JUMPIF                           R33 ; [+3]
      233 GETTABLEKS                       R33 R24 K44 ["isFTF"]
      235 CALL                             R33 0 1
      236 DUPCLOSURE                       R34 K45 [PROTO_35]
      237 CAPTURE                          VAL R18
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R17
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R3
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R29
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R11
      261 CAPTURE                          VAL R6
      262 CAPTURE                          VAL R1
      263 CAPTURE                          VAL R28
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R20
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R30
      268 RETURN                           R34 1
