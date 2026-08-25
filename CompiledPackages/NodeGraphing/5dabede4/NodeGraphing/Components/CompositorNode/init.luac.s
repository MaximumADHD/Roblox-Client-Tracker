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
       23 GETTABLEKS                       R1 R1 K2 ["IsParameterNode"]
       25 JUMPIFNOT                        R1 ; [+18]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K3 ["GraphPayload"]
       29 GETTABLEKS                       R1 R1 K4 ["name"]
       31 JUMPIFNOT                        R1 ; [+12]
       32 GETUPVAL                         R1 6
       33 GETTABLEKS                       R1 R1 K5 ["renameParameter"]
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R2 R2 K3 ["GraphPayload"]
       38 GETTABLEKS                       R2 R2 K4 ["name"]
       40 MOVE                             R3 R0
       41 GETUPVAL                         R4 4
       42 CALL                             R1 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K6 ["renameNode"]
       47 GETUPVAL                         R2 4
       48 MOVE                             R3 R0
       49 CALL                             R1 2 0
       50 RETURN                           R0 0

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
       48 GETTABLEKS                       R8 R0 K6 ["IsParameterNode"]
       50 JUMPIF                           R8 ; [+14]
       51 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       53 JUMPIFNOT                        R8 ; [+11]
       54 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       56 GETTABLEKS                       R9 R9 K7 ["className"]
       58 GETUPVAL                         R10 7
       59 GETTABLEKS                       R10 R10 K8 ["PARAMETER_NODE_CLASSNAME"]
       61 JUMPIFEQ                         R9 R10 ; [+2]
       63 LOADB                            R8 0 +1
       64 LOADB                            R8 1
       65 NOT                              R9 R8
       66 JUMPIF                           R9 ; [+9]
       67 GETUPVAL                         R10 8
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R10 ; [+2]
       70 GETTABLEKS                       R10 R0 K9 ["ResizableHorizontal"]
       72 JUMPIFEQKB                       R10 TRUE ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 8
       77 CALL                             R10 0 1
       78 JUMPIFNOT                        R10 ; [+6]
       79 GETTABLEKS                       R11 R0 K10 ["ResizableVertical"]
       81 JUMPIFEQKB                       R11 TRUE ; [+2]
       83 LOADB                            R10 0 +1
       84 LOADB                            R10 1
       85 MOVE                             R11 R10
       86 JUMPIFNOT                        R11 ; [+3]
       87 GETTABLEKS                       R12 R0 K11 ["Collapsed"]
       89 NOT                              R11 R12
       90 MOVE                             R12 R8
       91 JUMPIFNOT                        R12 ; [+7]
       92 GETTABLEKS                       R13 R0 K12 ["IsExpressionNode"]
       94 JUMPIFNOT                        R13 ; [+3]
       95 GETTABLEKS                       R14 R0 K11 ["Collapsed"]
       97 NOT                              R13 R14
       98 NOT                              R12 R13
       99 GETTABLEKS                       R13 R0 K4 ["GraphPayload"]
      101 JUMPIFNOT                        R13 ; [+11]
      102 GETTABLEKS                       R14 R0 K4 ["GraphPayload"]
      104 GETTABLEKS                       R14 R14 K7 ["className"]
      106 GETUPVAL                         R15 7
      107 GETTABLEKS                       R15 R15 K13 ["OUTPUT_NODE_CLASSNAME"]
      109 JUMPIFEQ                         R14 R15 ; [+2]
      111 LOADB                            R13 0 +1
      112 LOADB                            R13 1
      113 LOADB                            R14 1
      114 GETTABLEKS                       R15 R6 K14 ["spotlightedNodeId"]
      116 JUMPIFEQ                         R15 R7 ; [+9]
      118 MOVE                             R14 R13
      119 JUMPIFNOT                        R14 ; [+6]
      120 GETTABLEKS                       R15 R6 K14 ["spotlightedNodeId"]
      122 JUMPIFEQKNIL                     R15 ; [+2]
      124 LOADB                            R14 0 +1
      125 LOADB                            R14 1
      126 GETUPVAL                         R15 9
      127 CALL                             R15 0 1
      128 GETUPVAL                         R16 10
      129 GETTABLEKS                       R16 R16 K15 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K16 ["useTokens"]
      133 CALL                             R16 0 1
      134 GETUPVAL                         R18 10
      135 GETTABLEKS                       R18 R18 K17 ["Enums"]
      137 GETTABLEKS                       R18 R18 K18 ["Theme"]
      139 GETTABLEKS                       R18 R18 K19 ["Dark"]
      141 JUMPIFNOTEQ                      R15 R18 ; [+10]
      143 GETTABLEKS                       R17 R16 K20 ["Color"]
      145 GETTABLEKS                       R17 R17 K21 ["Extended"]
      147 GETTABLEKS                       R17 R17 K22 ["Green"]
      149 GETTABLEKS                       R17 R17 K23 ["Green_1300"]
      151 JUMP                             ; [+8]
      152 GETTABLEKS                       R17 R16 K20 ["Color"]
      154 GETTABLEKS                       R17 R17 K21 ["Extended"]
      156 GETTABLEKS                       R17 R17 K22 ["Green"]
      158 GETTABLEKS                       R17 R17 K24 ["Green_100"]
      160 GETUPVAL                         R18 10
      161 GETTABLEKS                       R18 R18 K15 ["Hooks"]
      163 GETTABLEKS                       R18 R18 K25 ["useCumulativeBackground"]
      165 MOVE                             R19 R17
      166 GETTABLEKS                       R20 R16 K20 ["Color"]
      168 GETTABLEKS                       R20 R20 K26 ["Shift"]
      170 GETTABLEKS                       R20 R20 K27 ["Shift_100"]
      172 CALL                             R18 2 1
      173 GETUPVAL                         R19 0
      174 GETTABLEKS                       R19 R19 K28 ["useMemo"]
      176 DUPCLOSURE                       R20 K29 [PROTO_0]
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          UPVAL U7
      179 NEWTABLE                         R21 0 0
      181 CALL                             R19 2 2
      182 GETUPVAL                         R21 12
      183 GETTABLEKS                       R21 R21 K30 ["useSignalBinding"]
      185 MOVE                             R22 R19
      186 CALL                             R21 1 1
      187 GETUPVAL                         R22 0
      188 GETTABLEKS                       R22 R22 K28 ["useMemo"]
      190 DUPCLOSURE                       R23 K31 [PROTO_1]
      191 CAPTURE                          UPVAL U11
      192 CAPTURE                          UPVAL U7
      193 NEWTABLE                         R24 0 0
      195 CALL                             R22 2 2
      196 GETUPVAL                         R24 12
      197 GETTABLEKS                       R24 R24 K30 ["useSignalBinding"]
      199 MOVE                             R25 R22
      200 CALL                             R24 1 1
      201 GETUPVAL                         R25 0
      202 GETTABLEKS                       R25 R25 K28 ["useMemo"]
      204 NEWCLOSURE                       R26 P2
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R22
      207 NEWTABLE                         R27 0 2
      209 MOVE                             R28 R11
      210 MOVE                             R29 R22
      211 SETLIST                          R27 R28 2 [1]
      213 CALL                             R25 2 1
      214 GETUPVAL                         R26 0
      215 GETTABLEKS                       R26 R26 K32 ["useState"]
      217 GETUPVAL                         R27 7
      218 GETTABLEKS                       R27 R27 K33 ["NODE_VIEW_CHILD_WIDTH"]
      220 CALL                             R26 1 2
      221 GETUPVAL                         R28 13
      222 CALL                             R28 0 1
      223 GETUPVAL                         R29 3
      224 GETTABLEKS                       R29 R29 K34 ["useViewportBinding"]
      226 NEWCLOSURE                       R30 P3
      227 CAPTURE                          VAL R0
      228 NEWTABLE                         R31 0 1
      230 GETTABLEKS                       R32 R0 K35 ["Position"]
      232 SETLIST                          R31 R32 1 [1]
      234 CALL                             R29 2 1
      235 GETUPVAL                         R30 12
      236 GETTABLEKS                       R30 R30 K30 ["useSignalBinding"]
      238 GETTABLEKS                       R31 R1 K36 ["observeZoomRatio"]
      240 CALL                             R30 1 1
      241 GETUPVAL                         R31 0
      242 GETTABLEKS                       R31 R31 K28 ["useMemo"]
      244 NEWCLOSURE                       R32 P4
      245 CAPTURE                          VAL R30
      246 CAPTURE                          UPVAL U14
      247 NEWTABLE                         R33 0 1
      249 MOVE                             R34 R30
      250 SETLIST                          R33 R34 1 [1]
      252 CALL                             R31 2 1
      253 GETUPVAL                         R33 15
      254 JUMPIFNOT                        R33 ; [+15]
      255 GETUPVAL                         R32 0
      256 GETTABLEKS                       R32 R32 K37 ["joinBindings"]
      258 NEWTABLE                         R33 0 2
      260 MOVE                             R34 R21
      261 MOVE                             R35 R30
      262 SETLIST                          R33 R34 2 [1]
      264 CALL                             R32 1 1
      265 DUPCLOSURE                       R34 K38 [PROTO_7]
      266 NAMECALL                         R32 R32 K39 ["map"]
      268 CALL                             R32 2 1
      269 JUMP                             ; [+5]
      270 NEWCLOSURE                       R34 P6
      271 CAPTURE                          VAL R26
      272 NAMECALL                         R32 R30 K39 ["map"]
      274 CALL                             R32 2 1
      275 GETUPVAL                         R33 0
      276 GETTABLEKS                       R33 R33 K40 ["useBinding"]
      278 GETTABLEKS                       R34 R0 K41 ["editName"]
      280 CALL                             R33 1 2
      281 GETUPVAL                         R35 2
      282 GETTABLEKS                       R35 R35 K42 ["useToggleState"]
      284 LOADB                            R36 0
      285 CALL                             R35 1 1
      286 GETUPVAL                         R36 0
      287 GETTABLEKS                       R36 R36 K43 ["useRef"]
      289 LOADNIL                          R37
      290 CALL                             R36 1 1
      291 GETUPVAL                         R37 2
      292 GETTABLEKS                       R37 R37 K44 ["useEventCallback"]
      294 NEWCLOSURE                       R38 P7
      295 CAPTURE                          UPVAL U8
      296 CAPTURE                          VAL R0
      297 CAPTURE                          VAL R34
      298 CAPTURE                          VAL R35
      299 CAPTURE                          VAL R36
      300 CALL                             R37 1 1
      301 GETUPVAL                         R38 0
      302 GETTABLEKS                       R38 R38 K43 ["useRef"]
      304 LOADNIL                          R39
      305 CALL                             R38 1 1
      306 GETUPVAL                         R39 0
      307 GETTABLEKS                       R39 R39 K43 ["useRef"]
      309 LOADN                            R40 0
      310 CALL                             R39 1 1
      311 GETUPVAL                         R40 0
      312 GETTABLEKS                       R40 R40 K43 ["useRef"]
      314 LOADNIL                          R41
      315 CALL                             R40 1 1
      316 GETUPVAL                         R41 0
      317 GETTABLEKS                       R41 R41 K45 ["useCallback"]
      319 NEWCLOSURE                       R42 P8
      320 CAPTURE                          VAL R38
      321 CAPTURE                          VAL R35
      322 CAPTURE                          VAL R40
      323 CAPTURE                          VAL R39
      324 CAPTURE                          VAL R37
      325 CAPTURE                          VAL R0
      326 CAPTURE                          VAL R3
      327 NEWTABLE                         R43 0 4
      329 MOVE                             R44 R3
      330 GETTABLEKS                       R45 R35 K46 ["enabled"]
      332 GETTABLEKS                       R46 R0 K47 ["OnDragStart"]
      334 MOVE                             R47 R37
      335 SETLIST                          R43 R44 4 [1]
      337 CALL                             R41 2 1
      338 GETUPVAL                         R42 0
      339 GETTABLEKS                       R42 R42 K45 ["useCallback"]
      341 NEWCLOSURE                       R43 P9
      342 CAPTURE                          VAL R38
      343 CAPTURE                          VAL R0
      344 CAPTURE                          VAL R3
      345 CAPTURE                          VAL R35
      346 NEWTABLE                         R44 0 5
      348 MOVE                             R45 R3
      349 MOVE                             R46 R38
      350 GETTABLEKS                       R47 R0 K48 ["OnDragMoved"]
      352 MOVE                             R48 R7
      353 GETTABLEKS                       R49 R35 K49 ["disable"]
      355 SETLIST                          R44 R45 5 [1]
      357 CALL                             R42 2 1
      358 GETUPVAL                         R43 0
      359 GETTABLEKS                       R43 R43 K45 ["useCallback"]
      361 NEWCLOSURE                       R44 P10
      362 CAPTURE                          VAL R38
      363 CAPTURE                          VAL R39
      364 CAPTURE                          VAL R0
      365 CAPTURE                          VAL R3
      366 NEWTABLE                         R45 0 4
      368 MOVE                             R46 R3
      369 MOVE                             R47 R38
      370 GETTABLEKS                       R48 R0 K50 ["OnDragEnded"]
      372 MOVE                             R49 R7
      373 SETLIST                          R45 R46 4 [1]
      375 CALL                             R43 2 1
      376 GETUPVAL                         R44 0
      377 GETTABLEKS                       R44 R44 K45 ["useCallback"]
      379 NEWCLOSURE                       R45 P11
      380 CAPTURE                          VAL R27
      381 NEWTABLE                         R46 0 1
      383 MOVE                             R47 R27
      384 SETLIST                          R46 R47 1 [1]
      386 CALL                             R44 2 1
      387 GETUPVAL                         R45 0
      388 GETTABLEKS                       R45 R45 K45 ["useCallback"]
      390 NEWCLOSURE                       R46 P12
      391 CAPTURE                          UPVAL U15
      392 CAPTURE                          VAL R20
      393 CAPTURE                          VAL R27
      394 NEWTABLE                         R47 0 2
      396 MOVE                             R48 R20
      397 MOVE                             R49 R27
      398 SETLIST                          R47 R48 2 [1]
      400 CALL                             R45 2 1
      401 GETUPVAL                         R46 0
      402 GETTABLEKS                       R46 R46 K45 ["useCallback"]
      404 NEWCLOSURE                       R47 P13
      405 CAPTURE                          VAL R23
      406 NEWTABLE                         R48 0 1
      408 MOVE                             R49 R23
      409 SETLIST                          R48 R49 1 [1]
      411 CALL                             R46 2 1
      412 GETUPVAL                         R47 0
      413 GETTABLEKS                       R47 R47 K51 ["useEffect"]
      415 NEWCLOSURE                       R48 P14
      416 CAPTURE                          VAL R7
      417 CAPTURE                          UPVAL U11
      418 CAPTURE                          VAL R28
      419 CAPTURE                          UPVAL U15
      420 CAPTURE                          VAL R19
      421 CAPTURE                          VAL R4
      422 CAPTURE                          VAL R26
      423 NEWTABLE                         R49 0 4
      425 GETTABLEKS                       R50 R4 K52 ["setNodeSize"]
      427 GETTABLEKS                       R51 R28 K53 ["observeAbsoluteSize"]
      429 MOVE                             R52 R7
      430 GETUPVAL                         R54 15
      431 JUMPIFNOT                        R54 ; [+2]
      432 MOVE                             R53 R19
      433 JUMP                             ; [+1]
      434 MOVE                             R53 R26
      435 SETLIST                          R49 R50 4 [1]
      437 CALL                             R47 2 0
      438 GETUPVAL                         R47 0
      439 GETTABLEKS                       R47 R47 K28 ["useMemo"]
      441 NEWCLOSURE                       R48 P15
      442 CAPTURE                          VAL R6
      443 CAPTURE                          VAL R4
      444 CAPTURE                          VAL R7
      445 CAPTURE                          UPVAL U11
      446 CAPTURE                          UPVAL U16
      447 NEWTABLE                         R49 0 3
      449 GETTABLEKS                       R50 R6 K54 ["observeSpotlightedSubtree"]
      451 GETTABLEKS                       R51 R4 K55 ["observeFadeByNodeId"]
      453 MOVE                             R52 R7
      454 SETLIST                          R49 R50 3 [1]
      456 CALL                             R47 2 1
      457 GETUPVAL                         R48 0
      458 GETTABLEKS                       R48 R48 K28 ["useMemo"]
      460 NEWCLOSURE                       R49 P16
      461 CAPTURE                          VAL R0
      462 NEWTABLE                         R50 0 1
      464 GETTABLEKS                       R51 R0 K11 ["Collapsed"]
      466 SETLIST                          R50 R51 1 [1]
      468 CALL                             R48 2 1
      469 GETUPVAL                         R50 17
      470 JUMPIFNOT                        R50 ; [+10]
      471 GETUPVAL                         R49 2
      472 GETTABLEKS                       R49 R49 K44 ["useEventCallback"]
      474 NEWCLOSURE                       R50 P17
      475 CAPTURE                          VAL R7
      476 CAPTURE                          VAL R4
      477 CAPTURE                          VAL R0
      478 CAPTURE                          UPVAL U18
      479 CALL                             R49 1 1
      480 JUMP                             ; [+17]
      481 GETUPVAL                         R49 0
      482 GETTABLEKS                       R49 R49 K45 ["useCallback"]
      484 NEWCLOSURE                       R50 P18
      485 CAPTURE                          VAL R7
      486 CAPTURE                          VAL R4
      487 CAPTURE                          VAL R0
      488 NEWTABLE                         R51 0 3
      490 GETTABLEKS                       R52 R4 K56 ["setCollapsed"]
      492 MOVE                             R53 R7
      493 GETTABLEKS                       R54 R0 K11 ["Collapsed"]
      495 SETLIST                          R51 R52 3 [1]
      497 CALL                             R49 2 1
      498 GETTABLEKS                       R50 R0 K57 ["text"]
      500 JUMPIF                           R50 ; [+6]
      501 GETTABLEKS                       R50 R0 K4 ["GraphPayload"]
      503 GETTABLEKS                       R50 R50 K58 ["name"]
      505 JUMPIF                           R50 ; [+1]
      506 LOADK                            R50 K59 [""]
      507 GETUPVAL                         R51 0
      508 GETTABLEKS                       R51 R51 K45 ["useCallback"]
      510 NEWCLOSURE                       R52 P19
      511 CAPTURE                          UPVAL U19
      512 CAPTURE                          VAL R33
      513 CAPTURE                          UPVAL U20
      514 CAPTURE                          VAL R35
      515 CAPTURE                          VAL R7
      516 CAPTURE                          VAL R0
      517 CAPTURE                          VAL R4
      518 NEWTABLE                         R53 0 6
      520 MOVE                             R54 R7
      521 GETTABLEKS                       R55 R35 K49 ["disable"]
      523 GETTABLEKS                       R56 R0 K6 ["IsParameterNode"]
      525 GETTABLEKS                       R57 R0 K4 ["GraphPayload"]
      527 GETTABLEKS                       R57 R57 K58 ["name"]
      529 GETTABLEKS                       R58 R4 K60 ["renameParameter"]
      531 GETTABLEKS                       R59 R4 K61 ["renameNode"]
      533 SETLIST                          R53 R54 6 [1]
      535 CALL                             R51 2 1
      536 MOVE                             R52 R2
      537 CALL                             R52 0 1
      538 GETUPVAL                         R53 0
      539 GETTABLEKS                       R53 R53 K28 ["useMemo"]
      541 DUPCLOSURE                       R54 K62 [PROTO_24]
      542 CAPTURE                          UPVAL U11
      543 NEWTABLE                         R55 0 0
      545 CALL                             R53 2 2
      546 GETUPVAL                         R55 21
      547 JUMPIFNOT                        R55 ; [+17]
      548 GETUPVAL                         R55 0
      549 GETTABLEKS                       R55 R55 K51 ["useEffect"]
      551 NEWCLOSURE                       R56 P21
      552 CAPTURE                          UPVAL U11
      553 CAPTURE                          VAL R53
      554 CAPTURE                          VAL R50
      555 CAPTURE                          VAL R0
      556 NEWTABLE                         R57 0 3
      558 MOVE                             R58 R53
      559 MOVE                             R59 R50
      560 GETTABLEKS                       R60 R0 K63 ["Selected"]
      562 SETLIST                          R57 R58 3 [1]
      564 CALL                             R55 2 0
      565 GETUPVAL                         R55 12
      566 GETTABLEKS                       R55 R55 K30 ["useSignalBinding"]
      568 MOVE                             R56 R47
      569 CALL                             R55 1 1
      570 GETUPVAL                         R56 0
      571 GETTABLEKS                       R56 R56 K28 ["useMemo"]
      573 NEWCLOSURE                       R57 P22
      574 CAPTURE                          UPVAL U8
      575 CAPTURE                          VAL R11
      576 CAPTURE                          VAL R12
      577 CAPTURE                          VAL R8
      578 CAPTURE                          UPVAL U14
      579 CAPTURE                          VAL R0
      580 NEWTABLE                         R58 0 5
      582 GETTABLEKS                       R59 R0 K11 ["Collapsed"]
      584 MOVE                             R60 R8
      585 GETTABLEKS                       R61 R0 K63 ["Selected"]
      587 MOVE                             R62 R10
      588 MOVE                             R63 R12
      589 SETLIST                          R58 R59 5 [1]
      591 CALL                             R56 2 1
      592 GETUPVAL                         R57 0
      593 GETTABLEKS                       R57 R57 K28 ["useMemo"]
      595 NEWCLOSURE                       R58 P23
      596 CAPTURE                          VAL R56
      597 NEWTABLE                         R59 0 1
      599 MOVE                             R60 R56
      600 SETLIST                          R59 R60 1 [1]
      602 CALL                             R57 2 1
      603 GETUPVAL                         R58 0
      604 GETTABLEKS                       R58 R58 K28 ["useMemo"]
      606 NEWCLOSURE                       R59 P24
      607 CAPTURE                          UPVAL U0
      608 CAPTURE                          VAL R31
      609 CAPTURE                          VAL R16
      610 NEWTABLE                         R60 0 2
      612 MOVE                             R61 R31
      613 GETTABLEKS                       R62 R16 K20 ["Color"]
      615 GETTABLEKS                       R62 R62 K64 ["System"]
      617 GETTABLEKS                       R62 R62 K65 ["Neutral"]
      619 GETTABLEKS                       R62 R62 K66 ["Color3"]
      621 SETLIST                          R60 R61 2 [1]
      623 CALL                             R58 2 1
      624 GETUPVAL                         R60 22
      625 JUMPIFNOT                        R60 ; [+13]
      626 GETUPVAL                         R59 2
      627 GETTABLEKS                       R59 R59 K44 ["useEventCallback"]
      629 NEWCLOSURE                       R60 P25
      630 CAPTURE                          VAL R4
      631 CAPTURE                          VAL R0
      632 CAPTURE                          UPVAL U17
      633 CAPTURE                          UPVAL U18
      634 CAPTURE                          UPVAL U23
      635 CAPTURE                          VAL R5
      636 CAPTURE                          VAL R3
      637 CALL                             R59 1 1
      638 JUMP                             ; [+1]
      639 LOADNIL                          R59
      640 JUMPIFNOT                        R11 ; [+15]
      641 GETUPVAL                         R60 0
      642 GETTABLEKS                       R60 R60 K37 ["joinBindings"]
      644 NEWTABLE                         R61 0 2
      646 MOVE                             R62 R21
      647 MOVE                             R63 R24
      648 SETLIST                          R61 R62 2 [1]
      650 CALL                             R60 1 1
      651 DUPCLOSURE                       R62 K67 [PROTO_31]
      652 NAMECALL                         R60 R60 K39 ["map"]
      654 CALL                             R60 2 1
      655 JUMP                             ; [+12]
      656 GETUPVAL                         R61 15
      657 JUMPIFNOT                        R61 ; [+5]
      658 DUPCLOSURE                       R62 K68 [PROTO_32]
      659 NAMECALL                         R60 R21 K39 ["map"]
      661 CALL                             R60 2 1
      662 JUMP                             ; [+5]
      663 GETIMPORT                        R60 K71 [UDim2.fromOffset]
      665 MOVE                             R61 R26
      666 LOADN                            R62 0
      667 CALL                             R60 2 1
      668 GETUPVAL                         R61 0
      669 GETTABLEKS                       R61 R61 K72 ["createElement"]
      671 GETUPVAL                         R62 10
      672 GETTABLEKS                       R62 R62 K73 ["View"]
      674 DUPTABLE                         R63 K83 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      675 GETUPVAL                         R65 15
      676 JUMPIFNOT                        R65 ; [+5]
      677 DUPCLOSURE                       R66 K84 [PROTO_33]
      678 NAMECALL                         R64 R21 K39 ["map"]
      680 CALL                             R64 2 1
      681 JUMP                             ; [+5]
      682 GETIMPORT                        R64 K71 [UDim2.fromOffset]
      684 MOVE                             R65 R26
      685 LOADN                            R66 0
      686 CALL                             R64 2 1
      687 SETTABLEKS                       R64 R63 K76 ["Size"]
      689 GETTABLEKS                       R64 R0 K77 ["LayoutOrder"]
      691 SETTABLEKS                       R64 R63 K77 ["LayoutOrder"]
      693 GETTABLEKS                       R64 R0 K78 ["ZIndex"]
      695 SETTABLEKS                       R64 R63 K78 ["ZIndex"]
      697 SETTABLEKS                       R29 R63 K35 ["Position"]
      699 DUPTABLE                         R64 K87 [{"UIScale", "ComponentContext"}]
      700 GETUPVAL                         R65 0
      701 GETTABLEKS                       R65 R65 K72 ["createElement"]
      703 LOADK                            R66 K85 ["UIScale"]
      704 DUPTABLE                         R67 K89 [{"Scale"}]
      705 SETTABLEKS                       R30 R67 K88 ["Scale"]
      707 CALL                             R65 2 1
      708 SETTABLEKS                       R65 R64 K85 ["UIScale"]
      710 GETUPVAL                         R65 0
      711 GETTABLEKS                       R65 R65 K72 ["createElement"]
      713 GETUPVAL                         R66 24
      714 GETTABLEKS                       R66 R66 K90 ["Provider"]
      716 DUPTABLE                         R67 K93 [{"absoluteSizeHook", "observeControlledHeight"}]
      717 SETTABLEKS                       R28 R67 K91 ["absoluteSizeHook"]
      719 SETTABLEKS                       R25 R67 K92 ["observeControlledHeight"]
      721 DUPTABLE                         R68 K98 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      722 GETUPVAL                         R69 0
      723 GETTABLEKS                       R69 R69 K72 ["createElement"]
      725 GETUPVAL                         R70 10
      726 GETTABLEKS                       R70 R70 K73 ["View"]
      728 DUPTABLE                         R71 K100 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      729 SETTABLEKS                       R57 R71 K74 ["tag"]
      731 GETUPVAL                         R73 8
      732 CALL                             R73 0 1
      733 JUMPIFNOT                        R73 ; [+2]
      734 MOVE                             R72 R60
      735 JUMP                             ; [+12]
      736 GETUPVAL                         R73 15
      737 JUMPIFNOT                        R73 ; [+5]
      738 DUPCLOSURE                       R74 K101 [PROTO_34]
      739 NAMECALL                         R72 R21 K39 ["map"]
      741 CALL                             R72 2 1
      742 JUMP                             ; [+5]
      743 GETIMPORT                        R72 K71 [UDim2.fromOffset]
      745 MOVE                             R73 R26
      746 LOADN                            R74 0
      747 CALL                             R72 2 1
      748 SETTABLEKS                       R72 R71 K76 ["Size"]
      750 GETTABLEKS                       R72 R28 K102 ["setFrame"]
      752 SETTABLEKS                       R72 R71 K99 ["ref"]
      754 DUPTABLE                         R72 K109 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      755 GETUPVAL                         R73 0
      756 GETTABLEKS                       R73 R73 K72 ["createElement"]
      758 LOADK                            R74 K110 ["Folder"]
      759 NEWTABLE                         R75 0 0
      761 DUPTABLE                         R76 K112 [{"Cover"}]
      762 GETUPVAL                         R77 0
      763 GETTABLEKS                       R77 R77 K72 ["createElement"]
      765 GETUPVAL                         R78 10
      766 GETTABLEKS                       R78 R78 K73 ["View"]
      768 DUPTABLE                         R79 K116 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      769 SETTABLEKS                       R56 R79 K74 ["tag"]
      771 GETIMPORT                        R80 K118 [UDim2.fromScale]
      773 LOADN                            R81 1
      774 LOADN                            R82 1
      775 CALL                             R80 2 1
      776 SETTABLEKS                       R80 R79 K76 ["Size"]
      778 SETTABLEKS                       R55 R79 K113 ["GroupTransparency"]
      780 GETUPVAL                         R81 25
      781 CALL                             R81 0 1
      782 JUMPIFNOT                        R81 ; [+2]
      783 LOADN                            R80 2
      784 JUMP                             ; [+1]
      785 LOADN                            R80 1
      786 SETTABLEKS                       R80 R79 K78 ["ZIndex"]
      788 CALL                             R77 2 1
      789 SETTABLEKS                       R77 R76 K111 ["Cover"]
      791 CALL                             R73 3 1
      792 SETTABLEKS                       R73 R72 K103 ["CoverContainer"]
      794 GETUPVAL                         R73 0
      795 GETTABLEKS                       R73 R73 K72 ["createElement"]
      797 GETUPVAL                         R74 10
      798 GETTABLEKS                       R74 R74 K73 ["View"]
      800 DUPTABLE                         R75 K120 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      801 NEWTABLE                         R76 4 0
      803 LOADB                            R77 1
      804 SETTABLEKS                       R77 R76 K121 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      806 GETUPVAL                         R78 26
      807 NOT                              R77 R78
      808 JUMPIFNOT                        R77 ; [+1]
      809 NOT                              R77 R8
      810 SETTABLEKS                       R77 R76 K122 ["radius-small bg-shift-200"]
      812 MOVE                             R77 R8
      813 JUMPIFNOT                        R77 ; [+3]
      814 GETTABLEKS                       R78 R0 K11 ["Collapsed"]
      816 NOT                              R77 R78
      817 SETTABLEKS                       R77 R76 K123 ["radius-small"]
      819 MOVE                             R77 R8
      820 JUMPIFNOT                        R77 ; [+2]
      821 GETTABLEKS                       R77 R0 K11 ["Collapsed"]
      823 SETTABLEKS                       R77 R76 K124 ["radius-large"]
      825 SETTABLEKS                       R76 R75 K74 ["tag"]
      827 JUMPIFNOT                        R8 ; [+2]
      828 MOVE                             R76 R18
      829 JUMP                             ; [+1]
      830 LOADNIL                          R76
      831 SETTABLEKS                       R76 R75 K119 ["backgroundStyle"]
      833 SETTABLEKS                       R52 R75 K77 ["LayoutOrder"]
      835 SETTABLEKS                       R40 R75 K99 ["ref"]
      837 DUPTABLE                         R76 K130 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      838 GETTABLEKS                       R78 R0 K131 ["Collapsible"]
      840 JUMPIFEQKB                       R78 FALSE ; [+47]
      842 GETUPVAL                         R78 26
      843 JUMPIF                           R78 ; [+44]
      844 GETUPVAL                         R77 0
      845 GETTABLEKS                       R77 R77 K72 ["createElement"]
      847 GETUPVAL                         R78 10
      848 GETTABLEKS                       R78 R78 K132 ["Button"]
      850 DUPTABLE                         R79 K138 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      851 SETTABLEKS                       R48 R79 K133 ["icon"]
      853 GETUPVAL                         R80 10
      854 GETTABLEKS                       R80 R80 K17 ["Enums"]
      856 GETTABLEKS                       R80 R80 K139 ["ButtonVariant"]
      858 GETTABLEKS                       R80 R80 K140 ["Text"]
      860 SETTABLEKS                       R80 R79 K134 ["variant"]
      862 SETTABLEKS                       R49 R79 K135 ["onActivated"]
      864 GETUPVAL                         R80 10
      865 GETTABLEKS                       R80 R80 K17 ["Enums"]
      867 GETTABLEKS                       R80 R80 K141 ["InputSize"]
      869 GETTABLEKS                       R80 R80 K142 ["XSmall"]
      871 SETTABLEKS                       R80 R79 K136 ["size"]
      873 MOVE                             R80 R2
      874 CALL                             R80 0 1
      875 SETTABLEKS                       R80 R79 K77 ["LayoutOrder"]
      877 GETUPVAL                         R80 10
      878 GETTABLEKS                       R80 R80 K17 ["Enums"]
      880 GETTABLEKS                       R80 R80 K143 ["FillBehavior"]
      882 GETTABLEKS                       R80 R80 K144 ["Fit"]
      884 SETTABLEKS                       R80 R79 K137 ["fillBehavior"]
      886 CALL                             R77 2 1
      887 JUMP                             ; [+1]
      888 LOADNIL                          R77
      889 SETTABLEKS                       R77 R76 K125 ["DEPRECATED_ToggleButton"]
      891 GETUPVAL                         R77 0
      892 GETTABLEKS                       R77 R77 K72 ["createElement"]
      894 GETUPVAL                         R78 10
      895 GETTABLEKS                       R78 R78 K140 ["Text"]
      897 DUPTABLE                         R79 K149 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      898 NEWTABLE                         R80 2 0
      900 LOADB                            R81 1
      901 SETTABLEKS                       R81 R80 K150 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      903 GETUPVAL                         R81 26
      904 JUMPIF                           R81 ; [+6]
      905 GETTABLEKS                       R82 R0 K131 ["Collapsible"]
      907 JUMPIFEQKB                       R82 FALSE ; [+2]
      909 LOADB                            R81 0 +1
      910 LOADB                            R81 1
      911 SETTABLEKS                       R81 R80 K151 ["padding-left-small"]
      913 SETTABLEKS                       R80 R79 K74 ["tag"]
      915 SETTABLEKS                       R50 R79 K140 ["Text"]
      917 MOVE                             R80 R2
      918 CALL                             R80 0 1
      919 SETTABLEKS                       R80 R79 K77 ["LayoutOrder"]
      921 GETTABLEKS                       R81 R35 K46 ["enabled"]
      923 NOT                              R80 R81
      924 SETTABLEKS                       R80 R79 K147 ["Visible"]
      926 CALL                             R77 2 1
      927 SETTABLEKS                       R77 R76 K126 ["Title"]
      929 GETUPVAL                         R77 0
      930 GETTABLEKS                       R77 R77 K72 ["createElement"]
      932 GETUPVAL                         R78 10
      933 GETTABLEKS                       R78 R78 K152 ["TextInput"]
      935 DUPTABLE                         R79 K159 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      936 NEWTABLE                         R80 1 0
      938 LOADB                            R81 1
      939 SETTABLEKS                       R81 R80 K150 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      941 SETTABLEKS                       R80 R79 K74 ["tag"]
      943 SETTABLEKS                       R33 R79 K57 ["text"]
      945 MOVE                             R80 R2
      946 CALL                             R80 0 1
      947 SETTABLEKS                       R80 R79 K77 ["LayoutOrder"]
      949 SETTABLEKS                       R34 R79 K153 ["onChanged"]
      951 GETUPVAL                         R80 10
      952 GETTABLEKS                       R80 R80 K17 ["Enums"]
      954 GETTABLEKS                       R80 R80 K141 ["InputSize"]
      956 GETTABLEKS                       R80 R80 K142 ["XSmall"]
      958 SETTABLEKS                       R80 R79 K136 ["size"]
      960 GETUPVAL                         R80 10
      961 GETTABLEKS                       R80 R80 K17 ["Enums"]
      963 GETTABLEKS                       R80 R80 K160 ["InputFocusBehavior"]
      965 GETTABLEKS                       R80 R80 K161 ["Highlight"]
      967 SETTABLEKS                       R80 R79 K155 ["focusBehavior"]
      969 SETTABLEKS                       R36 R79 K156 ["textBoxRef"]
      971 SETTABLEKS                       R51 R79 K157 ["onFocusLost"]
      973 SETTABLEKS                       R36 R79 K99 ["ref"]
      975 GETIMPORT                        R80 K164 [UDim.new]
      977 LOADN                            R81 0
      978 LOADN                            R82 100
      979 CALL                             R80 2 1
      980 SETTABLEKS                       R80 R79 K158 ["width"]
      982 GETTABLEKS                       R80 R35 K46 ["enabled"]
      984 SETTABLEKS                       R80 R79 K147 ["Visible"]
      986 CALL                             R77 2 1
      987 SETTABLEKS                       R77 R76 K127 ["TitleInput"]
      989 GETTABLEKS                       R78 R0 K131 ["Collapsible"]
      991 JUMPIFEQKB                       R78 FALSE ; [+47]
      993 GETUPVAL                         R78 26
      994 JUMPIFNOT                        R78 ; [+44]
      995 GETUPVAL                         R77 0
      996 GETTABLEKS                       R77 R77 K72 ["createElement"]
      998 GETUPVAL                         R78 10
      999 GETTABLEKS                       R78 R78 K132 ["Button"]
     1001 DUPTABLE                         R79 K138 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
     1002 SETTABLEKS                       R48 R79 K133 ["icon"]
     1004 GETUPVAL                         R80 10
     1005 GETTABLEKS                       R80 R80 K17 ["Enums"]
     1007 GETTABLEKS                       R80 R80 K139 ["ButtonVariant"]
     1009 GETTABLEKS                       R80 R80 K140 ["Text"]
     1011 SETTABLEKS                       R80 R79 K134 ["variant"]
     1013 SETTABLEKS                       R49 R79 K135 ["onActivated"]
     1015 GETUPVAL                         R80 10
     1016 GETTABLEKS                       R80 R80 K17 ["Enums"]
     1018 GETTABLEKS                       R80 R80 K141 ["InputSize"]
     1020 GETTABLEKS                       R80 R80 K142 ["XSmall"]
     1022 SETTABLEKS                       R80 R79 K136 ["size"]
     1024 MOVE                             R80 R2
     1025 CALL                             R80 0 1
     1026 SETTABLEKS                       R80 R79 K77 ["LayoutOrder"]
     1028 GETUPVAL                         R80 10
     1029 GETTABLEKS                       R80 R80 K17 ["Enums"]
     1031 GETTABLEKS                       R80 R80 K143 ["FillBehavior"]
     1033 GETTABLEKS                       R80 R80 K144 ["Fit"]
     1035 SETTABLEKS                       R80 R79 K137 ["fillBehavior"]
     1037 CALL                             R77 2 1
     1038 JUMP                             ; [+1]
     1039 LOADNIL                          R77
     1040 SETTABLEKS                       R77 R76 K128 ["ToggleButton"]
     1042 GETUPVAL                         R77 0
     1043 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1045 LOADK                            R78 K110 ["Folder"]
     1046 NEWTABLE                         R79 0 0
     1048 GETTABLEKS                       R80 R0 K165 ["HeaderChildren"]
     1050 CALL                             R77 3 1
     1051 SETTABLEKS                       R77 R76 K129 ["Children"]
     1053 CALL                             R73 3 1
     1054 SETTABLEKS                       R73 R72 K104 ["CompositorNodeHeader"]
     1056 GETUPVAL                         R73 26
     1057 JUMPIFNOT                        R73 ; [+16]
     1058 GETTABLEKS                       R74 R0 K11 ["Collapsed"]
     1060 NOT                              R73 R74
     1061 JUMPIFNOT                        R73 ; [+12]
     1062 GETUPVAL                         R73 0
     1063 GETTABLEKS                       R73 R73 K72 ["createElement"]
     1065 GETUPVAL                         R74 10
     1066 GETTABLEKS                       R74 R74 K166 ["Divider"]
     1068 DUPTABLE                         R75 K167 [{"LayoutOrder"}]
     1069 MOVE                             R76 R2
     1070 CALL                             R76 0 1
     1071 SETTABLEKS                       R76 R75 K77 ["LayoutOrder"]
     1073 CALL                             R73 2 1
     1074 SETTABLEKS                       R73 R72 K105 ["TitleDivider"]
     1076 GETUPVAL                         R74 0
     1077 GETTABLEKS                       R74 R74 K129 ["Children"]
     1079 GETTABLEKS                       R74 R74 K168 ["count"]
     1081 GETTABLEKS                       R75 R0 K169 ["children"]
     1083 CALL                             R74 1 1
     1084 LOADN                            R75 0
     1085 JUMPIFNOTLT                      R75 R74 ; [+139]
     1087 GETUPVAL                         R73 0
     1088 GETTABLEKS                       R73 R73 K72 ["createElement"]
     1090 GETUPVAL                         R74 10
     1091 GETTABLEKS                       R74 R74 K73 ["View"]
     1093 DUPTABLE                         R75 K170 [{"tag", "LayoutOrder"}]
     1094 JUMPIFNOT                        R10 ; [+2]
     1095 LOADK                            R76 K171 ["size-full-0 grow"]
     1096 JUMP                             ; [+1]
     1097 LOADK                            R76 K172 ["size-full-700 auto-y"]
     1098 SETTABLEKS                       R76 R75 K74 ["tag"]
     1100 MOVE                             R76 R2
     1101 CALL                             R76 0 1
     1102 SETTABLEKS                       R76 R75 K77 ["LayoutOrder"]
     1104 DUPTABLE                         R76 K175 [{"Contents", "ResizeBars"}]
     1105 GETUPVAL                         R77 0
     1106 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1108 GETUPVAL                         R78 10
     1109 GETTABLEKS                       R78 R78 K73 ["View"]
     1111 DUPTABLE                         R79 K178 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"], ["testId"] = "CompositorNodeContents"}]
     1112 GETUPVAL                         R81 25
     1113 CALL                             R81 0 1
     1114 JUMPIFNOT                        R81 ; [+2]
     1115 LOADN                            R80 1
     1116 JUMP                             ; [+1]
     1117 LOADN                            R80 2
     1118 SETTABLEKS                       R80 R79 K78 ["ZIndex"]
     1120 DUPTABLE                         R80 K180 [{"NodeProperties"}]
     1121 GETUPVAL                         R81 0
     1122 GETTABLEKS                       R81 R81 K72 ["createElement"]
     1124 GETUPVAL                         R82 0
     1125 GETTABLEKS                       R82 R82 K181 ["Fragment"]
     1127 NEWTABLE                         R83 0 0
     1129 GETTABLEKS                       R84 R0 K169 ["children"]
     1131 CALL                             R81 3 1
     1132 SETTABLEKS                       R81 R80 K179 ["NodeProperties"]
     1134 CALL                             R77 3 1
     1135 SETTABLEKS                       R77 R76 K173 ["Contents"]
     1137 GETUPVAL                         R78 8
     1138 CALL                             R78 0 1
     1139 JUMPIFNOT                        R78 ; [+43]
     1140 JUMPIF                           R9 ; [+1]
     1141 JUMPIFNOT                        R10 ; [+39]
     1142 GETUPVAL                         R77 0
     1143 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1145 GETUPVAL                         R78 27
     1146 DUPTABLE                         R79 K191 [{["tag"] = "radius-small", ["showHorizontal"], ["showVertical"], ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["nodeHeightBinding"], ["OnResizedVertical"], ["Style"], ["ZIndex"] = 4}]
     1147 SETTABLEKS                       R9 R79 K182 ["showHorizontal"]
     1149 SETTABLEKS                       R10 R79 K183 ["showVertical"]
     1151 SETTABLEKS                       R26 R79 K184 ["DEPRECATED_nodeWidth"]
     1153 SETTABLEKS                       R21 R79 K185 ["nodeWidthBinding"]
     1155 SETTABLEKS                       R45 R79 K186 ["OnResized"]
     1157 SETTABLEKS                       R24 R79 K187 ["nodeHeightBinding"]
     1159 SETTABLEKS                       R46 R79 K188 ["OnResizedVertical"]
     1161 GETTABLEKS                       R81 R0 K63 ["Selected"]
     1163 JUMPIFNOT                        R81 ; [+7]
     1164 GETTABLEKS                       R80 R16 K20 ["Color"]
     1166 GETTABLEKS                       R80 R80 K64 ["System"]
     1168 GETTABLEKS                       R80 R80 K65 ["Neutral"]
     1170 JUMP                             ; [+6]
     1171 GETTABLEKS                       R80 R16 K20 ["Color"]
     1173 GETTABLEKS                       R80 R80 K192 ["Stroke"]
     1175 GETTABLEKS                       R80 R80 K193 ["Default"]
     1177 SETTABLEKS                       R80 R79 K189 ["Style"]
     1179 CALL                             R77 2 1
     1180 JUMP                             ; [+40]
     1181 LOADNIL                          R77
     1182 JUMP                             ; [+38]
     1183 JUMPIF                           R8 ; [+36]
     1184 GETUPVAL                         R77 0
     1185 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1187 GETUPVAL                         R78 27
     1188 DUPTABLE                         R79 K194 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 4}]
     1189 SETTABLEKS                       R26 R79 K184 ["DEPRECATED_nodeWidth"]
     1191 SETTABLEKS                       R21 R79 K185 ["nodeWidthBinding"]
     1193 GETUPVAL                         R81 15
     1194 JUMPIFNOT                        R81 ; [+2]
     1195 MOVE                             R80 R20
     1196 JUMP                             ; [+1]
     1197 MOVE                             R80 R44
     1198 SETTABLEKS                       R80 R79 K186 ["OnResized"]
     1200 GETTABLEKS                       R81 R0 K63 ["Selected"]
     1202 JUMPIFNOT                        R81 ; [+7]
     1203 GETTABLEKS                       R80 R16 K20 ["Color"]
     1205 GETTABLEKS                       R80 R80 K64 ["System"]
     1207 GETTABLEKS                       R80 R80 K65 ["Neutral"]
     1209 JUMP                             ; [+6]
     1210 GETTABLEKS                       R80 R16 K20 ["Color"]
     1212 GETTABLEKS                       R80 R80 K192 ["Stroke"]
     1214 GETTABLEKS                       R80 R80 K193 ["Default"]
     1216 SETTABLEKS                       R80 R79 K189 ["Style"]
     1218 CALL                             R77 2 1
     1219 JUMP                             ; [+1]
     1220 LOADNIL                          R77
     1221 SETTABLEKS                       R77 R76 K174 ["ResizeBars"]
     1223 CALL                             R73 3 1
     1224 JUMP                             ; [+1]
     1225 LOADNIL                          R73
     1226 SETTABLEKS                       R73 R72 K106 ["CompositorNodeContent"]
     1228 GETTABLEKS                       R73 R0 K107 ["ContextToolbar"]
     1230 JUMPIFNOT                        R73 ; [+21]
     1231 GETTABLEKS                       R74 R0 K63 ["Selected"]
     1233 JUMPIF                           R74 ; [+2]
     1234 MOVE                             R73 R14
     1235 JUMPIFNOT                        R73 ; [+16]
     1236 GETUPVAL                         R73 0
     1237 GETTABLEKS                       R73 R73 K72 ["createElement"]
     1239 GETUPVAL                         R74 28
     1240 DUPTABLE                         R75 K198 [{"Buttons", "positionBinding", "widthBinding"}]
     1241 GETTABLEKS                       R76 R0 K107 ["ContextToolbar"]
     1243 GETTABLEKS                       R76 R76 K195 ["Buttons"]
     1245 SETTABLEKS                       R76 R75 K195 ["Buttons"]
     1247 SETTABLEKS                       R29 R75 K196 ["positionBinding"]
     1249 SETTABLEKS                       R32 R75 K197 ["widthBinding"]
     1251 CALL                             R73 2 1
     1252 SETTABLEKS                       R73 R72 K107 ["ContextToolbar"]
     1254 GETUPVAL                         R73 14
     1255 CALL                             R73 0 1
     1256 JUMPIFNOT                        R73 ; [+124]
     1257 GETUPVAL                         R73 0
     1258 GETTABLEKS                       R73 R73 K72 ["createElement"]
     1260 LOADK                            R74 K110 ["Folder"]
     1261 NEWTABLE                         R75 0 0
     1263 DUPTABLE                         R76 K200 [{"SelectionHighlight"}]
     1264 GETTABLEKS                       R78 R0 K63 ["Selected"]
     1266 JUMPIFNOT                        R78 ; [+110]
     1267 GETUPVAL                         R78 26
     1268 JUMPIFNOT                        R78 ; [+58]
     1269 GETUPVAL                         R77 0
     1270 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1272 GETUPVAL                         R78 10
     1273 GETTABLEKS                       R78 R78 K73 ["View"]
     1275 DUPTABLE                         R79 K202 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1276 GETUPVAL                         R80 0
     1277 GETTABLEKS                       R80 R80 K72 ["createElement"]
     1279 GETUPVAL                         R81 10
     1280 GETTABLEKS                       R81 R81 K73 ["View"]
     1282 DUPTABLE                         R82 K204 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1283 NEWTABLE                         R83 4 0
     1285 LOADB                            R84 1
     1286 SETTABLEKS                       R84 R83 K205 ["position-center-center anchor-center-center"]
     1288 GETUPVAL                         R85 8
     1289 CALL                             R85 0 1
     1290 JUMPIFNOT                        R85 ; [+2]
     1291 NOT                              R84 R12
     1292 JUMP                             ; [+1]
     1293 NOT                              R84 R8
     1294 SETTABLEKS                       R84 R83 K123 ["radius-small"]
     1296 GETUPVAL                         R85 8
     1297 CALL                             R85 0 1
     1298 JUMPIFNOT                        R85 ; [+2]
     1299 MOVE                             R84 R12
     1300 JUMP                             ; [+1]
     1301 MOVE                             R84 R8
     1302 SETTABLEKS                       R84 R83 K124 ["radius-large"]
     1304 SETTABLEKS                       R83 R82 K74 ["tag"]
     1306 GETIMPORT                        R83 K206 [UDim2.new]
     1308 LOADN                            R84 1
     1309 GETTABLEKS                       R85 R16 K207 ["Padding"]
     1311 GETTABLEKS                       R85 R85 K208 ["Small"]
     1313 LOADN                            R86 1
     1314 GETTABLEKS                       R87 R16 K207 ["Padding"]
     1316 GETTABLEKS                       R87 R87 K208 ["Small"]
     1318 CALL                             R83 4 1
     1319 SETTABLEKS                       R83 R82 K76 ["Size"]
     1321 DUPTABLE                         R83 K210 [{"UIStroke"}]
     1322 SETTABLEKS                       R58 R83 K209 ["UIStroke"]
     1324 CALL                             R80 3 -1
     1325 CALL                             R77 -1 1
     1326 JUMP                             ; [+51]
     1327 GETUPVAL                         R77 0
     1328 GETTABLEKS                       R77 R77 K72 ["createElement"]
     1330 GETUPVAL                         R78 10
     1331 GETTABLEKS                       R78 R78 K73 ["View"]
     1333 DUPTABLE                         R79 K204 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1334 NEWTABLE                         R80 4 0
     1336 LOADB                            R81 1
     1337 SETTABLEKS                       R81 R80 K205 ["position-center-center anchor-center-center"]
     1339 GETUPVAL                         R82 8
     1340 CALL                             R82 0 1
     1341 JUMPIFNOT                        R82 ; [+2]
     1342 NOT                              R81 R12
     1343 JUMP                             ; [+1]
     1344 NOT                              R81 R8
     1345 SETTABLEKS                       R81 R80 K123 ["radius-small"]
     1347 GETUPVAL                         R82 8
     1348 CALL                             R82 0 1
     1349 JUMPIFNOT                        R82 ; [+2]
     1350 MOVE                             R81 R12
     1351 JUMP                             ; [+1]
     1352 MOVE                             R81 R8
     1353 SETTABLEKS                       R81 R80 K124 ["radius-large"]
     1355 SETTABLEKS                       R80 R79 K74 ["tag"]
     1357 GETIMPORT                        R80 K206 [UDim2.new]
     1359 LOADN                            R81 1
     1360 GETTABLEKS                       R82 R16 K207 ["Padding"]
     1362 GETTABLEKS                       R82 R82 K208 ["Small"]
     1364 LOADN                            R83 1
     1365 GETTABLEKS                       R84 R16 K207 ["Padding"]
     1367 GETTABLEKS                       R84 R84 K208 ["Small"]
     1369 CALL                             R80 4 1
     1370 SETTABLEKS                       R80 R79 K76 ["Size"]
     1372 DUPTABLE                         R80 K210 [{"UIStroke"}]
     1373 SETTABLEKS                       R58 R80 K209 ["UIStroke"]
     1375 CALL                             R77 3 1
     1376 JUMP                             ; [+1]
     1377 LOADNIL                          R77
     1378 SETTABLEKS                       R77 R76 K199 ["SelectionHighlight"]
     1380 CALL                             R73 3 1
     1381 SETTABLEKS                       R73 R72 K108 ["SelectionHighlightContainer"]
     1383 CALL                             R69 3 1
     1384 SETTABLEKS                       R69 R68 K94 ["Node"]
     1386 GETUPVAL                         R70 21
     1387 JUMPIFNOT                        R70 ; [+15]
     1388 GETUPVAL                         R69 0
     1389 GETTABLEKS                       R69 R69 K72 ["createElement"]
     1391 GETUPVAL                         R70 10
     1392 GETTABLEKS                       R70 R70 K73 ["View"]
     1394 DUPTABLE                         R71 K213 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1395 MOVE                             R72 R2
     1396 CALL                             R72 0 1
     1397 SETTABLEKS                       R72 R71 K77 ["LayoutOrder"]
     1399 SETTABLEKS                       R54 R71 K99 ["ref"]
     1401 CALL                             R69 2 1
     1402 JUMP                             ; [+1]
     1403 LOADNIL                          R69
     1404 SETTABLEKS                       R69 R68 K95 ["DebugMarker"]
     1406 GETUPVAL                         R70 29
     1407 CALL                             R70 0 1
     1408 JUMPIFNOT                        R70 ; [+5]
     1409 LOADB                            R69 0
     1410 GETTABLEKS                       R70 R0 K214 ["CanDrag"]
     1412 JUMPIFEQKB                       R70 FALSE ; [+39]
     1414 GETUPVAL                         R69 0
     1415 GETTABLEKS                       R69 R69 K72 ["createElement"]
     1417 LOADK                            R70 K215 ["UIDragDetector"]
     1418 NEWTABLE                         R71 8 0
     1420 GETIMPORT                        R72 K219 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1422 SETTABLEKS                       R72 R71 K220 ["DragStyle"]
     1424 GETIMPORT                        R72 K223 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1426 SETTABLEKS                       R72 R71 K224 ["ResponseStyle"]
     1428 GETTABLEKS                       R72 R3 K225 ["getViewport"]
     1430 CALL                             R72 0 1
     1431 SETTABLEKS                       R72 R71 K226 ["ReferenceUIInstance"]
     1433 GETUPVAL                         R72 0
     1434 GETTABLEKS                       R72 R72 K227 ["Event"]
     1436 GETTABLEKS                       R72 R72 K228 ["DragStart"]
     1438 SETTABLE                         R41 R71 R72
     1439 GETUPVAL                         R72 0
     1440 GETTABLEKS                       R72 R72 K227 ["Event"]
     1442 GETTABLEKS                       R72 R72 K229 ["DragContinue"]
     1444 SETTABLE                         R42 R71 R72
     1445 GETUPVAL                         R72 0
     1446 GETTABLEKS                       R72 R72 K227 ["Event"]
     1448 GETTABLEKS                       R72 R72 K230 ["DragEnd"]
     1450 SETTABLE                         R43 R71 R72
     1451 CALL                             R69 2 1
     1452 SETTABLEKS                       R69 R68 K96 ["DragDetector"]
     1454 GETUPVAL                         R69 22
     1455 JUMPIFNOT                        R69 ; [+26]
     1456 GETUPVAL                         R69 0
     1457 GETTABLEKS                       R69 R69 K72 ["createElement"]
     1459 LOADK                            R70 K231 ["Frame"]
     1460 NEWTABLE                         R71 4 0
     1462 LOADN                            R72 1
     1463 SETTABLEKS                       R72 R71 K79 ["BackgroundTransparency"]
     1465 GETIMPORT                        R72 K118 [UDim2.fromScale]
     1467 LOADN                            R73 1
     1468 LOADN                            R74 1
     1469 CALL                             R72 2 1
     1470 SETTABLEKS                       R72 R71 K76 ["Size"]
     1472 LOADN                            R72 -10
     1473 SETTABLEKS                       R72 R71 K78 ["ZIndex"]
     1475 GETUPVAL                         R72 0
     1476 GETTABLEKS                       R72 R72 K227 ["Event"]
     1478 GETTABLEKS                       R72 R72 K232 ["InputBegan"]
     1480 SETTABLE                         R59 R71 R72
     1481 CALL                             R69 2 1
     1482 SETTABLEKS                       R69 R68 K97 ["RightClickCapture"]
     1484 CALL                             R65 3 1
     1485 SETTABLEKS                       R65 R64 K86 ["ComponentContext"]
     1487 CALL                             R61 3 -1
     1488 RETURN                           R61 -1

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
       86 GETTABLEKS                       R13 R13 K19 ["FFlagAnimGraphUI_StyleTouches"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K20 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["Foundation"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K22 ["Components"]
      100 GETTABLEKS                       R15 R15 K23 ["GraphContext"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K20 ["Parent"]
      107 GETTABLEKS                       R16 R16 K24 ["Graphing"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K22 ["Components"]
      114 GETTABLEKS                       R17 R17 K25 ["NodeRightClickMenuContext"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K20 ["Parent"]
      121 GETTABLEKS                       R18 R18 K26 ["React"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K20 ["Parent"]
      128 GETTABLEKS                       R19 R19 K27 ["ReactUtils"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETIMPORT                        R20 K1 [script]
      135 GETTABLEKS                       R20 R20 K28 ["ResizeBars"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K20 ["Parent"]
      142 GETTABLEKS                       R21 R21 K29 ["Signals"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K20 ["Parent"]
      149 GETTABLEKS                       R22 R22 K30 ["SignalsReact"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K22 ["Components"]
      156 GETTABLEKS                       R23 R23 K31 ["SpotlightedNodeContext"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K20 ["Parent"]
      163 GETTABLEKS                       R24 R24 K32 ["TestLoader"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K22 ["Components"]
      170 GETTABLEKS                       R25 R25 K33 ["ViewportRectContext"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K10 ["Util"]
      177 GETTABLEKS                       R26 R26 K34 ["bumpNodeZIndex"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K12 ["Flags"]
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUIPinOffset"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K12 ["Flags"]
      198 GETTABLEKS                       R29 R29 K37 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K12 ["Flags"]
      205 GETTABLEKS                       R30 R30 K38 ["getFFlagAnimGraphUI_RunTimeDebug"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K39 ["Hooks"]
      212 GETTABLEKS                       R31 R31 K40 ["useAbsoluteSize"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K39 ["Hooks"]
      219 GETTABLEKS                       R32 R32 K41 ["useFoundationStudioTheme"]
      221 CALL                             R31 1 1
      222 GETTABLEKS                       R32 R23 K42 ["isCli"]
      224 CALL                             R32 0 1
      225 JUMPIF                           R32 ; [+3]
      226 GETTABLEKS                       R32 R23 K43 ["isFTF"]
      228 CALL                             R32 0 1
      229 DUPCLOSURE                       R33 K44 [PROTO_35]
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R31
      240 CAPTURE                          VAL R13
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R30
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R7
      248 CAPTURE                          VAL R25
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R1
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R29
      260 RETURN                           R33 1
