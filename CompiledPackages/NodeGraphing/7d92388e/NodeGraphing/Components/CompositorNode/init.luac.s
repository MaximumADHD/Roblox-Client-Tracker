PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NODE_VIEW_CHILD_WIDTH"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 DIVRK                            R1 K0 [1] R0
        4 RETURN                           R1 1
        5 LOADN                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 MUL                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MUL                              R1 R2 R0
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["editName"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["enable"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["current"]
       16 GETTABLEKS                       R0 R0 K3 ["focus"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_22:
        0 NEWTABLE                         R0 8 0
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["col auto-y bg-surface-200"]
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["gap-none"]
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K2 ["stroke-standard"]
       11 GETUPVAL                         R2 0
       12 NOT                              R1 R2
       13 SETTABLEKS                       R1 R0 K3 ["radius-small"]
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R1 R0 K4 ["radius-large"]
       18 GETUPVAL                         R2 1
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+2]
       21 LOADNIL                          R1
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K5 ["Selected"]
       26 SETTABLEKS                       R1 R0 K6 ["stroke-system-neutral"]
       28 GETUPVAL                         R2 1
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+2]
       31 LOADB                            R1 1
       32 JUMP                             ; [+4]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K5 ["Selected"]
       36 NOT                              R1 R2
       37 SETTABLEKS                       R1 R0 K7 ["stroke-default"]
       39 RETURN                           R0 1

PROTO_23:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_28:
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
       65 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       67 JUMPIFNOT                        R9 ; [+11]
       68 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       70 GETTABLEKS                       R10 R10 K7 ["className"]
       72 GETUPVAL                         R11 7
       73 GETTABLEKS                       R11 R11 K9 ["OUTPUT_NODE_CLASSNAME"]
       75 JUMPIFEQ                         R10 R11 ; [+2]
       77 LOADB                            R9 0 +1
       78 LOADB                            R9 1
       79 LOADB                            R10 1
       80 GETTABLEKS                       R11 R6 K10 ["spotlightedNodeId"]
       82 JUMPIFEQ                         R11 R7 ; [+9]
       84 MOVE                             R10 R9
       85 JUMPIFNOT                        R10 ; [+6]
       86 GETTABLEKS                       R11 R6 K10 ["spotlightedNodeId"]
       88 JUMPIFEQKNIL                     R11 ; [+2]
       90 LOADB                            R10 0 +1
       91 LOADB                            R10 1
       92 GETUPVAL                         R11 8
       93 CALL                             R11 0 1
       94 GETUPVAL                         R12 9
       95 GETTABLEKS                       R12 R12 K11 ["Hooks"]
       97 GETTABLEKS                       R12 R12 K12 ["useTokens"]
       99 CALL                             R12 0 1
      100 GETUPVAL                         R14 9
      101 GETTABLEKS                       R14 R14 K13 ["Enums"]
      103 GETTABLEKS                       R14 R14 K14 ["Theme"]
      105 GETTABLEKS                       R14 R14 K15 ["Dark"]
      107 JUMPIFNOTEQ                      R11 R14 ; [+10]
      109 GETTABLEKS                       R13 R12 K16 ["Color"]
      111 GETTABLEKS                       R13 R13 K17 ["Extended"]
      113 GETTABLEKS                       R13 R13 K18 ["Green"]
      115 GETTABLEKS                       R13 R13 K19 ["Green_1300"]
      117 JUMP                             ; [+8]
      118 GETTABLEKS                       R13 R12 K16 ["Color"]
      120 GETTABLEKS                       R13 R13 K17 ["Extended"]
      122 GETTABLEKS                       R13 R13 K18 ["Green"]
      124 GETTABLEKS                       R13 R13 K20 ["Green_100"]
      126 GETUPVAL                         R14 9
      127 GETTABLEKS                       R14 R14 K11 ["Hooks"]
      129 GETTABLEKS                       R14 R14 K21 ["useCumulativeBackground"]
      131 MOVE                             R15 R13
      132 GETTABLEKS                       R16 R12 K16 ["Color"]
      134 GETTABLEKS                       R16 R16 K22 ["Shift"]
      136 GETTABLEKS                       R16 R16 K23 ["Shift_100"]
      138 CALL                             R14 2 1
      139 GETUPVAL                         R15 0
      140 GETTABLEKS                       R15 R15 K24 ["useMemo"]
      142 DUPCLOSURE                       R16 K25 [PROTO_0]
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          UPVAL U7
      145 NEWTABLE                         R17 0 0
      147 CALL                             R15 2 2
      148 GETUPVAL                         R17 11
      149 GETTABLEKS                       R17 R17 K26 ["useSignalBinding"]
      151 MOVE                             R18 R15
      152 CALL                             R17 1 1
      153 GETUPVAL                         R18 0
      154 GETTABLEKS                       R18 R18 K27 ["useState"]
      156 GETUPVAL                         R19 7
      157 GETTABLEKS                       R19 R19 K28 ["NODE_VIEW_CHILD_WIDTH"]
      159 CALL                             R18 1 2
      160 GETUPVAL                         R20 12
      161 CALL                             R20 0 1
      162 GETUPVAL                         R21 3
      163 GETTABLEKS                       R21 R21 K29 ["useViewportBinding"]
      165 NEWCLOSURE                       R22 P1
      166 CAPTURE                          VAL R0
      167 NEWTABLE                         R23 0 1
      169 GETTABLEKS                       R24 R0 K30 ["Position"]
      171 SETLIST                          R23 R24 1 [1]
      173 CALL                             R21 2 1
      174 GETUPVAL                         R22 11
      175 GETTABLEKS                       R22 R22 K26 ["useSignalBinding"]
      177 GETTABLEKS                       R23 R1 K31 ["observeZoomRatio"]
      179 CALL                             R22 1 1
      180 GETUPVAL                         R23 0
      181 GETTABLEKS                       R23 R23 K24 ["useMemo"]
      183 NEWCLOSURE                       R24 P2
      184 CAPTURE                          VAL R22
      185 CAPTURE                          UPVAL U13
      186 NEWTABLE                         R25 0 1
      188 MOVE                             R26 R22
      189 SETLIST                          R25 R26 1 [1]
      191 CALL                             R23 2 1
      192 GETUPVAL                         R25 14
      193 JUMPIFNOT                        R25 ; [+15]
      194 GETUPVAL                         R24 0
      195 GETTABLEKS                       R24 R24 K32 ["joinBindings"]
      197 NEWTABLE                         R25 0 2
      199 MOVE                             R26 R17
      200 MOVE                             R27 R22
      201 SETLIST                          R25 R26 2 [1]
      203 CALL                             R24 1 1
      204 DUPCLOSURE                       R26 K33 [PROTO_4]
      205 NAMECALL                         R24 R24 K34 ["map"]
      207 CALL                             R24 2 1
      208 JUMP                             ; [+5]
      209 NEWCLOSURE                       R26 P4
      210 CAPTURE                          VAL R18
      211 NAMECALL                         R24 R22 K34 ["map"]
      213 CALL                             R24 2 1
      214 GETUPVAL                         R25 0
      215 GETTABLEKS                       R25 R25 K35 ["useBinding"]
      217 GETTABLEKS                       R26 R0 K36 ["editName"]
      219 CALL                             R25 1 2
      220 GETUPVAL                         R27 2
      221 GETTABLEKS                       R27 R27 K37 ["useToggleState"]
      223 LOADB                            R28 0
      224 CALL                             R27 1 1
      225 GETUPVAL                         R28 0
      226 GETTABLEKS                       R28 R28 K38 ["useRef"]
      228 LOADNIL                          R29
      229 CALL                             R28 1 1
      230 GETUPVAL                         R29 2
      231 GETTABLEKS                       R29 R29 K39 ["useEventCallback"]
      233 NEWCLOSURE                       R30 P5
      234 CAPTURE                          VAL R26
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R28
      238 CALL                             R29 1 1
      239 GETUPVAL                         R30 0
      240 GETTABLEKS                       R30 R30 K38 ["useRef"]
      242 LOADNIL                          R31
      243 CALL                             R30 1 1
      244 GETUPVAL                         R31 0
      245 GETTABLEKS                       R31 R31 K38 ["useRef"]
      247 LOADN                            R32 0
      248 CALL                             R31 1 1
      249 GETUPVAL                         R32 0
      250 GETTABLEKS                       R32 R32 K38 ["useRef"]
      252 LOADNIL                          R33
      253 CALL                             R32 1 1
      254 GETUPVAL                         R33 0
      255 GETTABLEKS                       R33 R33 K40 ["useCallback"]
      257 NEWCLOSURE                       R34 P6
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R32
      261 CAPTURE                          VAL R31
      262 CAPTURE                          VAL R29
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R3
      265 NEWTABLE                         R35 0 4
      267 MOVE                             R36 R3
      268 GETTABLEKS                       R37 R27 K41 ["enabled"]
      270 GETTABLEKS                       R38 R0 K42 ["OnDragStart"]
      272 MOVE                             R39 R29
      273 SETLIST                          R35 R36 4 [1]
      275 CALL                             R33 2 1
      276 GETUPVAL                         R34 0
      277 GETTABLEKS                       R34 R34 K40 ["useCallback"]
      279 NEWCLOSURE                       R35 P7
      280 CAPTURE                          VAL R30
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R27
      284 NEWTABLE                         R36 0 5
      286 MOVE                             R37 R3
      287 MOVE                             R38 R30
      288 GETTABLEKS                       R39 R0 K43 ["OnDragMoved"]
      290 MOVE                             R40 R7
      291 GETTABLEKS                       R41 R27 K44 ["disable"]
      293 SETLIST                          R36 R37 5 [1]
      295 CALL                             R34 2 1
      296 GETUPVAL                         R35 0
      297 GETTABLEKS                       R35 R35 K40 ["useCallback"]
      299 NEWCLOSURE                       R36 P8
      300 CAPTURE                          VAL R30
      301 CAPTURE                          VAL R31
      302 CAPTURE                          VAL R0
      303 CAPTURE                          VAL R3
      304 NEWTABLE                         R37 0 4
      306 MOVE                             R38 R3
      307 MOVE                             R39 R30
      308 GETTABLEKS                       R40 R0 K45 ["OnDragEnded"]
      310 MOVE                             R41 R7
      311 SETLIST                          R37 R38 4 [1]
      313 CALL                             R35 2 1
      314 GETUPVAL                         R36 0
      315 GETTABLEKS                       R36 R36 K40 ["useCallback"]
      317 NEWCLOSURE                       R37 P9
      318 CAPTURE                          VAL R19
      319 NEWTABLE                         R38 0 1
      321 MOVE                             R39 R19
      322 SETLIST                          R38 R39 1 [1]
      324 CALL                             R36 2 1
      325 GETUPVAL                         R37 0
      326 GETTABLEKS                       R37 R37 K46 ["useEffect"]
      328 NEWCLOSURE                       R38 P10
      329 CAPTURE                          VAL R7
      330 CAPTURE                          UPVAL U10
      331 CAPTURE                          VAL R20
      332 CAPTURE                          UPVAL U14
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R18
      336 NEWTABLE                         R39 0 4
      338 GETTABLEKS                       R40 R4 K47 ["setNodeSize"]
      340 GETTABLEKS                       R41 R20 K48 ["observeAbsoluteSize"]
      342 MOVE                             R42 R7
      343 GETUPVAL                         R44 14
      344 JUMPIFNOT                        R44 ; [+2]
      345 MOVE                             R43 R15
      346 JUMP                             ; [+1]
      347 MOVE                             R43 R18
      348 SETLIST                          R39 R40 4 [1]
      350 CALL                             R37 2 0
      351 GETUPVAL                         R37 0
      352 GETTABLEKS                       R37 R37 K24 ["useMemo"]
      354 NEWCLOSURE                       R38 P11
      355 CAPTURE                          VAL R6
      356 CAPTURE                          VAL R4
      357 CAPTURE                          VAL R7
      358 CAPTURE                          UPVAL U10
      359 CAPTURE                          UPVAL U15
      360 NEWTABLE                         R39 0 3
      362 GETTABLEKS                       R40 R6 K49 ["observeSpotlightedSubtree"]
      364 GETTABLEKS                       R41 R4 K50 ["observeFadeByNodeId"]
      366 MOVE                             R42 R7
      367 SETLIST                          R39 R40 3 [1]
      369 CALL                             R37 2 1
      370 GETUPVAL                         R38 0
      371 GETTABLEKS                       R38 R38 K24 ["useMemo"]
      373 NEWCLOSURE                       R39 P12
      374 CAPTURE                          VAL R0
      375 NEWTABLE                         R40 0 1
      377 GETTABLEKS                       R41 R0 K51 ["Collapsed"]
      379 SETLIST                          R40 R41 1 [1]
      381 CALL                             R38 2 1
      382 GETUPVAL                         R40 16
      383 JUMPIFNOT                        R40 ; [+10]
      384 GETUPVAL                         R39 2
      385 GETTABLEKS                       R39 R39 K39 ["useEventCallback"]
      387 NEWCLOSURE                       R40 P13
      388 CAPTURE                          VAL R7
      389 CAPTURE                          VAL R4
      390 CAPTURE                          VAL R0
      391 CAPTURE                          UPVAL U17
      392 CALL                             R39 1 1
      393 JUMP                             ; [+17]
      394 GETUPVAL                         R39 0
      395 GETTABLEKS                       R39 R39 K40 ["useCallback"]
      397 NEWCLOSURE                       R40 P14
      398 CAPTURE                          VAL R7
      399 CAPTURE                          VAL R4
      400 CAPTURE                          VAL R0
      401 NEWTABLE                         R41 0 3
      403 GETTABLEKS                       R42 R4 K52 ["setCollapsed"]
      405 MOVE                             R43 R7
      406 GETTABLEKS                       R44 R0 K51 ["Collapsed"]
      408 SETLIST                          R41 R42 3 [1]
      410 CALL                             R39 2 1
      411 GETTABLEKS                       R40 R0 K53 ["text"]
      413 JUMPIF                           R40 ; [+6]
      414 GETTABLEKS                       R40 R0 K4 ["GraphPayload"]
      416 GETTABLEKS                       R40 R40 K54 ["name"]
      418 JUMPIF                           R40 ; [+1]
      419 LOADK                            R40 K55 [""]
      420 GETUPVAL                         R41 0
      421 GETTABLEKS                       R41 R41 K40 ["useCallback"]
      423 NEWCLOSURE                       R42 P15
      424 CAPTURE                          UPVAL U18
      425 CAPTURE                          VAL R25
      426 CAPTURE                          UPVAL U19
      427 CAPTURE                          VAL R27
      428 CAPTURE                          VAL R7
      429 CAPTURE                          VAL R0
      430 CAPTURE                          VAL R4
      431 NEWTABLE                         R43 0 6
      433 MOVE                             R44 R7
      434 GETTABLEKS                       R45 R27 K44 ["disable"]
      436 GETTABLEKS                       R46 R0 K6 ["IsParameterNode"]
      438 GETTABLEKS                       R47 R0 K4 ["GraphPayload"]
      440 GETTABLEKS                       R47 R47 K54 ["name"]
      442 GETTABLEKS                       R48 R4 K56 ["renameParameter"]
      444 GETTABLEKS                       R49 R4 K57 ["renameNode"]
      446 SETLIST                          R43 R44 6 [1]
      448 CALL                             R41 2 1
      449 MOVE                             R42 R2
      450 CALL                             R42 0 1
      451 GETUPVAL                         R43 0
      452 GETTABLEKS                       R43 R43 K24 ["useMemo"]
      454 DUPCLOSURE                       R44 K58 [PROTO_19]
      455 CAPTURE                          UPVAL U10
      456 NEWTABLE                         R45 0 0
      458 CALL                             R43 2 2
      459 GETUPVAL                         R45 20
      460 JUMPIFNOT                        R45 ; [+17]
      461 GETUPVAL                         R45 0
      462 GETTABLEKS                       R45 R45 K46 ["useEffect"]
      464 NEWCLOSURE                       R46 P17
      465 CAPTURE                          UPVAL U10
      466 CAPTURE                          VAL R43
      467 CAPTURE                          VAL R40
      468 CAPTURE                          VAL R0
      469 NEWTABLE                         R47 0 3
      471 MOVE                             R48 R43
      472 MOVE                             R49 R40
      473 GETTABLEKS                       R50 R0 K59 ["Selected"]
      475 SETLIST                          R47 R48 3 [1]
      477 CALL                             R45 2 0
      478 GETUPVAL                         R45 11
      479 GETTABLEKS                       R45 R45 K26 ["useSignalBinding"]
      481 MOVE                             R46 R37
      482 CALL                             R45 1 1
      483 GETUPVAL                         R46 0
      484 GETTABLEKS                       R46 R46 K24 ["useMemo"]
      486 NEWCLOSURE                       R47 P18
      487 CAPTURE                          VAL R8
      488 CAPTURE                          UPVAL U13
      489 CAPTURE                          VAL R0
      490 NEWTABLE                         R48 0 3
      492 GETTABLEKS                       R49 R0 K51 ["Collapsed"]
      494 MOVE                             R50 R8
      495 GETTABLEKS                       R51 R0 K59 ["Selected"]
      497 SETLIST                          R48 R49 3 [1]
      499 CALL                             R46 2 1
      500 GETUPVAL                         R47 0
      501 GETTABLEKS                       R47 R47 K24 ["useMemo"]
      503 NEWCLOSURE                       R48 P19
      504 CAPTURE                          VAL R46
      505 NEWTABLE                         R49 0 1
      507 MOVE                             R50 R46
      508 SETLIST                          R49 R50 1 [1]
      510 CALL                             R47 2 1
      511 GETUPVAL                         R48 0
      512 GETTABLEKS                       R48 R48 K24 ["useMemo"]
      514 NEWCLOSURE                       R49 P20
      515 CAPTURE                          UPVAL U0
      516 CAPTURE                          VAL R23
      517 CAPTURE                          VAL R12
      518 NEWTABLE                         R50 0 2
      520 MOVE                             R51 R23
      521 GETTABLEKS                       R52 R12 K16 ["Color"]
      523 GETTABLEKS                       R52 R52 K60 ["System"]
      525 GETTABLEKS                       R52 R52 K61 ["Neutral"]
      527 GETTABLEKS                       R52 R52 K62 ["Color3"]
      529 SETLIST                          R50 R51 2 [1]
      531 CALL                             R48 2 1
      532 GETUPVAL                         R50 21
      533 JUMPIFNOT                        R50 ; [+13]
      534 GETUPVAL                         R49 2
      535 GETTABLEKS                       R49 R49 K39 ["useEventCallback"]
      537 NEWCLOSURE                       R50 P21
      538 CAPTURE                          VAL R4
      539 CAPTURE                          VAL R0
      540 CAPTURE                          UPVAL U16
      541 CAPTURE                          UPVAL U17
      542 CAPTURE                          UPVAL U22
      543 CAPTURE                          VAL R5
      544 CAPTURE                          VAL R3
      545 CALL                             R49 1 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R49
      548 GETUPVAL                         R50 0
      549 GETTABLEKS                       R50 R50 K63 ["createElement"]
      551 GETUPVAL                         R51 9
      552 GETTABLEKS                       R51 R51 K64 ["View"]
      554 DUPTABLE                         R52 K74 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      555 GETUPVAL                         R54 14
      556 JUMPIFNOT                        R54 ; [+5]
      557 DUPCLOSURE                       R55 K75 [PROTO_26]
      558 NAMECALL                         R53 R17 K34 ["map"]
      560 CALL                             R53 2 1
      561 JUMP                             ; [+5]
      562 GETIMPORT                        R53 K78 [UDim2.fromOffset]
      564 MOVE                             R54 R18
      565 LOADN                            R55 0
      566 CALL                             R53 2 1
      567 SETTABLEKS                       R53 R52 K67 ["Size"]
      569 GETTABLEKS                       R53 R0 K68 ["LayoutOrder"]
      571 SETTABLEKS                       R53 R52 K68 ["LayoutOrder"]
      573 GETTABLEKS                       R53 R0 K69 ["ZIndex"]
      575 SETTABLEKS                       R53 R52 K69 ["ZIndex"]
      577 SETTABLEKS                       R21 R52 K30 ["Position"]
      579 DUPTABLE                         R53 K81 [{"UIScale", "ComponentContext"}]
      580 GETUPVAL                         R54 0
      581 GETTABLEKS                       R54 R54 K63 ["createElement"]
      583 LOADK                            R55 K79 ["UIScale"]
      584 DUPTABLE                         R56 K83 [{"Scale"}]
      585 SETTABLEKS                       R22 R56 K82 ["Scale"]
      587 CALL                             R54 2 1
      588 SETTABLEKS                       R54 R53 K79 ["UIScale"]
      590 GETUPVAL                         R54 0
      591 GETTABLEKS                       R54 R54 K63 ["createElement"]
      593 GETUPVAL                         R55 23
      594 GETTABLEKS                       R55 R55 K84 ["Provider"]
      596 DUPTABLE                         R56 K86 [{"absoluteSizeHook"}]
      597 SETTABLEKS                       R20 R56 K85 ["absoluteSizeHook"]
      599 DUPTABLE                         R57 K91 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      600 GETUPVAL                         R58 0
      601 GETTABLEKS                       R58 R58 K63 ["createElement"]
      603 GETUPVAL                         R59 9
      604 GETTABLEKS                       R59 R59 K64 ["View"]
      606 DUPTABLE                         R60 K93 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      607 SETTABLEKS                       R47 R60 K65 ["tag"]
      609 GETUPVAL                         R62 14
      610 JUMPIFNOT                        R62 ; [+5]
      611 DUPCLOSURE                       R63 K94 [PROTO_27]
      612 NAMECALL                         R61 R17 K34 ["map"]
      614 CALL                             R61 2 1
      615 JUMP                             ; [+5]
      616 GETIMPORT                        R61 K78 [UDim2.fromOffset]
      618 MOVE                             R62 R18
      619 LOADN                            R63 0
      620 CALL                             R61 2 1
      621 SETTABLEKS                       R61 R60 K67 ["Size"]
      623 GETTABLEKS                       R61 R20 K95 ["setFrame"]
      625 SETTABLEKS                       R61 R60 K92 ["ref"]
      627 DUPTABLE                         R61 K102 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      628 GETUPVAL                         R62 0
      629 GETTABLEKS                       R62 R62 K63 ["createElement"]
      631 LOADK                            R63 K103 ["Folder"]
      632 NEWTABLE                         R64 0 0
      634 DUPTABLE                         R65 K105 [{"Cover"}]
      635 GETUPVAL                         R66 0
      636 GETTABLEKS                       R66 R66 K63 ["createElement"]
      638 GETUPVAL                         R67 9
      639 GETTABLEKS                       R67 R67 K64 ["View"]
      641 DUPTABLE                         R68 K109 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      642 SETTABLEKS                       R46 R68 K65 ["tag"]
      644 GETIMPORT                        R69 K111 [UDim2.fromScale]
      646 LOADN                            R70 1
      647 LOADN                            R71 1
      648 CALL                             R69 2 1
      649 SETTABLEKS                       R69 R68 K67 ["Size"]
      651 SETTABLEKS                       R45 R68 K106 ["GroupTransparency"]
      653 GETUPVAL                         R70 24
      654 CALL                             R70 0 1
      655 JUMPIFNOT                        R70 ; [+5]
      656 GETUPVAL                         R70 25
      657 CALL                             R70 0 1
      658 JUMPIFNOT                        R70 ; [+2]
      659 LOADN                            R69 2
      660 JUMP                             ; [+1]
      661 LOADN                            R69 1
      662 SETTABLEKS                       R69 R68 K69 ["ZIndex"]
      664 CALL                             R66 2 1
      665 SETTABLEKS                       R66 R65 K104 ["Cover"]
      667 CALL                             R62 3 1
      668 SETTABLEKS                       R62 R61 K96 ["CoverContainer"]
      670 GETUPVAL                         R62 0
      671 GETTABLEKS                       R62 R62 K63 ["createElement"]
      673 GETUPVAL                         R63 9
      674 GETTABLEKS                       R63 R63 K64 ["View"]
      676 DUPTABLE                         R64 K113 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      677 NEWTABLE                         R65 4 0
      679 LOADB                            R66 1
      680 SETTABLEKS                       R66 R65 K114 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      682 GETUPVAL                         R67 26
      683 NOT                              R66 R67
      684 JUMPIFNOT                        R66 ; [+1]
      685 NOT                              R66 R8
      686 SETTABLEKS                       R66 R65 K115 ["radius-small bg-shift-200"]
      688 MOVE                             R66 R8
      689 JUMPIFNOT                        R66 ; [+3]
      690 GETTABLEKS                       R67 R0 K51 ["Collapsed"]
      692 NOT                              R66 R67
      693 SETTABLEKS                       R66 R65 K116 ["radius-small"]
      695 MOVE                             R66 R8
      696 JUMPIFNOT                        R66 ; [+2]
      697 GETTABLEKS                       R66 R0 K51 ["Collapsed"]
      699 SETTABLEKS                       R66 R65 K117 ["radius-large"]
      701 SETTABLEKS                       R65 R64 K65 ["tag"]
      703 JUMPIFNOT                        R8 ; [+2]
      704 MOVE                             R65 R14
      705 JUMP                             ; [+1]
      706 LOADNIL                          R65
      707 SETTABLEKS                       R65 R64 K112 ["backgroundStyle"]
      709 SETTABLEKS                       R42 R64 K68 ["LayoutOrder"]
      711 SETTABLEKS                       R32 R64 K92 ["ref"]
      713 DUPTABLE                         R65 K123 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      714 GETTABLEKS                       R67 R0 K124 ["Collapsible"]
      716 JUMPIFEQKB                       R67 FALSE ; [+47]
      718 GETUPVAL                         R67 26
      719 JUMPIF                           R67 ; [+44]
      720 GETUPVAL                         R66 0
      721 GETTABLEKS                       R66 R66 K63 ["createElement"]
      723 GETUPVAL                         R67 9
      724 GETTABLEKS                       R67 R67 K125 ["Button"]
      726 DUPTABLE                         R68 K131 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      727 SETTABLEKS                       R38 R68 K126 ["icon"]
      729 GETUPVAL                         R69 9
      730 GETTABLEKS                       R69 R69 K13 ["Enums"]
      732 GETTABLEKS                       R69 R69 K132 ["ButtonVariant"]
      734 GETTABLEKS                       R69 R69 K133 ["Text"]
      736 SETTABLEKS                       R69 R68 K127 ["variant"]
      738 SETTABLEKS                       R39 R68 K128 ["onActivated"]
      740 GETUPVAL                         R69 9
      741 GETTABLEKS                       R69 R69 K13 ["Enums"]
      743 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      745 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      747 SETTABLEKS                       R69 R68 K129 ["size"]
      749 MOVE                             R69 R2
      750 CALL                             R69 0 1
      751 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      753 GETUPVAL                         R69 9
      754 GETTABLEKS                       R69 R69 K13 ["Enums"]
      756 GETTABLEKS                       R69 R69 K136 ["FillBehavior"]
      758 GETTABLEKS                       R69 R69 K137 ["Fit"]
      760 SETTABLEKS                       R69 R68 K130 ["fillBehavior"]
      762 CALL                             R66 2 1
      763 JUMP                             ; [+1]
      764 LOADNIL                          R66
      765 SETTABLEKS                       R66 R65 K118 ["DEPRECATED_ToggleButton"]
      767 GETUPVAL                         R66 0
      768 GETTABLEKS                       R66 R66 K63 ["createElement"]
      770 GETUPVAL                         R67 9
      771 GETTABLEKS                       R67 R67 K133 ["Text"]
      773 DUPTABLE                         R68 K142 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      774 NEWTABLE                         R69 2 0
      776 LOADB                            R70 1
      777 SETTABLEKS                       R70 R69 K143 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      779 GETUPVAL                         R70 26
      780 JUMPIF                           R70 ; [+6]
      781 GETTABLEKS                       R71 R0 K124 ["Collapsible"]
      783 JUMPIFEQKB                       R71 FALSE ; [+2]
      785 LOADB                            R70 0 +1
      786 LOADB                            R70 1
      787 SETTABLEKS                       R70 R69 K144 ["padding-left-small"]
      789 SETTABLEKS                       R69 R68 K65 ["tag"]
      791 SETTABLEKS                       R40 R68 K133 ["Text"]
      793 MOVE                             R69 R2
      794 CALL                             R69 0 1
      795 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      797 GETTABLEKS                       R70 R27 K41 ["enabled"]
      799 NOT                              R69 R70
      800 SETTABLEKS                       R69 R68 K140 ["Visible"]
      802 CALL                             R66 2 1
      803 SETTABLEKS                       R66 R65 K119 ["Title"]
      805 GETUPVAL                         R66 0
      806 GETTABLEKS                       R66 R66 K63 ["createElement"]
      808 GETUPVAL                         R67 9
      809 GETTABLEKS                       R67 R67 K145 ["TextInput"]
      811 DUPTABLE                         R68 K152 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      812 NEWTABLE                         R69 1 0
      814 LOADB                            R70 1
      815 SETTABLEKS                       R70 R69 K143 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      817 SETTABLEKS                       R69 R68 K65 ["tag"]
      819 SETTABLEKS                       R25 R68 K53 ["text"]
      821 MOVE                             R69 R2
      822 CALL                             R69 0 1
      823 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      825 SETTABLEKS                       R26 R68 K146 ["onChanged"]
      827 GETUPVAL                         R69 9
      828 GETTABLEKS                       R69 R69 K13 ["Enums"]
      830 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      832 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      834 SETTABLEKS                       R69 R68 K129 ["size"]
      836 GETUPVAL                         R69 9
      837 GETTABLEKS                       R69 R69 K13 ["Enums"]
      839 GETTABLEKS                       R69 R69 K153 ["InputFocusBehavior"]
      841 GETTABLEKS                       R69 R69 K154 ["Highlight"]
      843 SETTABLEKS                       R69 R68 K148 ["focusBehavior"]
      845 SETTABLEKS                       R28 R68 K149 ["textBoxRef"]
      847 SETTABLEKS                       R41 R68 K150 ["onFocusLost"]
      849 SETTABLEKS                       R28 R68 K92 ["ref"]
      851 GETIMPORT                        R69 K157 [UDim.new]
      853 LOADN                            R70 0
      854 LOADN                            R71 100
      855 CALL                             R69 2 1
      856 SETTABLEKS                       R69 R68 K151 ["width"]
      858 GETTABLEKS                       R69 R27 K41 ["enabled"]
      860 SETTABLEKS                       R69 R68 K140 ["Visible"]
      862 CALL                             R66 2 1
      863 SETTABLEKS                       R66 R65 K120 ["TitleInput"]
      865 GETTABLEKS                       R67 R0 K124 ["Collapsible"]
      867 JUMPIFEQKB                       R67 FALSE ; [+47]
      869 GETUPVAL                         R67 26
      870 JUMPIFNOT                        R67 ; [+44]
      871 GETUPVAL                         R66 0
      872 GETTABLEKS                       R66 R66 K63 ["createElement"]
      874 GETUPVAL                         R67 9
      875 GETTABLEKS                       R67 R67 K125 ["Button"]
      877 DUPTABLE                         R68 K131 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      878 SETTABLEKS                       R38 R68 K126 ["icon"]
      880 GETUPVAL                         R69 9
      881 GETTABLEKS                       R69 R69 K13 ["Enums"]
      883 GETTABLEKS                       R69 R69 K132 ["ButtonVariant"]
      885 GETTABLEKS                       R69 R69 K133 ["Text"]
      887 SETTABLEKS                       R69 R68 K127 ["variant"]
      889 SETTABLEKS                       R39 R68 K128 ["onActivated"]
      891 GETUPVAL                         R69 9
      892 GETTABLEKS                       R69 R69 K13 ["Enums"]
      894 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      896 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      898 SETTABLEKS                       R69 R68 K129 ["size"]
      900 MOVE                             R69 R2
      901 CALL                             R69 0 1
      902 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      904 GETUPVAL                         R69 9
      905 GETTABLEKS                       R69 R69 K13 ["Enums"]
      907 GETTABLEKS                       R69 R69 K136 ["FillBehavior"]
      909 GETTABLEKS                       R69 R69 K137 ["Fit"]
      911 SETTABLEKS                       R69 R68 K130 ["fillBehavior"]
      913 CALL                             R66 2 1
      914 JUMP                             ; [+1]
      915 LOADNIL                          R66
      916 SETTABLEKS                       R66 R65 K121 ["ToggleButton"]
      918 GETUPVAL                         R66 0
      919 GETTABLEKS                       R66 R66 K63 ["createElement"]
      921 LOADK                            R67 K103 ["Folder"]
      922 NEWTABLE                         R68 0 0
      924 GETTABLEKS                       R69 R0 K158 ["HeaderChildren"]
      926 CALL                             R66 3 1
      927 SETTABLEKS                       R66 R65 K122 ["Children"]
      929 CALL                             R62 3 1
      930 SETTABLEKS                       R62 R61 K97 ["CompositorNodeHeader"]
      932 GETUPVAL                         R62 26
      933 JUMPIFNOT                        R62 ; [+16]
      934 GETTABLEKS                       R63 R0 K51 ["Collapsed"]
      936 NOT                              R62 R63
      937 JUMPIFNOT                        R62 ; [+12]
      938 GETUPVAL                         R62 0
      939 GETTABLEKS                       R62 R62 K63 ["createElement"]
      941 GETUPVAL                         R63 9
      942 GETTABLEKS                       R63 R63 K159 ["Divider"]
      944 DUPTABLE                         R64 K160 [{"LayoutOrder"}]
      945 MOVE                             R65 R2
      946 CALL                             R65 0 1
      947 SETTABLEKS                       R65 R64 K68 ["LayoutOrder"]
      949 CALL                             R62 2 1
      950 SETTABLEKS                       R62 R61 K98 ["TitleDivider"]
      952 GETUPVAL                         R63 0
      953 GETTABLEKS                       R63 R63 K122 ["Children"]
      955 GETTABLEKS                       R63 R63 K161 ["count"]
      957 GETTABLEKS                       R64 R0 K162 ["children"]
      959 CALL                             R63 1 1
      960 LOADN                            R64 0
      961 JUMPIFNOTLT                      R64 R63 ; [+90]
      963 GETUPVAL                         R62 0
      964 GETTABLEKS                       R62 R62 K63 ["createElement"]
      966 GETUPVAL                         R63 9
      967 GETTABLEKS                       R63 R63 K64 ["View"]
      969 DUPTABLE                         R64 K164 [{["tag"] = "size-full-700 auto-y", ["LayoutOrder"]}]
      970 MOVE                             R65 R2
      971 CALL                             R65 0 1
      972 SETTABLEKS                       R65 R64 K68 ["LayoutOrder"]
      974 DUPTABLE                         R65 K167 [{"Contents", "ResizeBars"}]
      975 GETUPVAL                         R66 0
      976 GETTABLEKS                       R66 R66 K63 ["createElement"]
      978 GETUPVAL                         R67 9
      979 GETTABLEKS                       R67 R67 K64 ["View"]
      981 DUPTABLE                         R68 K170 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"], ["testId"] = "CompositorNodeContents"}]
      982 GETUPVAL                         R70 24
      983 CALL                             R70 0 1
      984 JUMPIFNOT                        R70 ; [+5]
      985 GETUPVAL                         R70 25
      986 CALL                             R70 0 1
      987 JUMPIFNOT                        R70 ; [+2]
      988 LOADN                            R69 1
      989 JUMP                             ; [+1]
      990 LOADN                            R69 2
      991 SETTABLEKS                       R69 R68 K69 ["ZIndex"]
      993 DUPTABLE                         R69 K172 [{"NodeProperties"}]
      994 GETUPVAL                         R70 0
      995 GETTABLEKS                       R70 R70 K63 ["createElement"]
      997 GETUPVAL                         R71 0
      998 GETTABLEKS                       R71 R71 K173 ["Fragment"]
     1000 NEWTABLE                         R72 0 0
     1002 GETTABLEKS                       R73 R0 K162 ["children"]
     1004 CALL                             R70 3 1
     1005 SETTABLEKS                       R70 R69 K171 ["NodeProperties"]
     1007 CALL                             R66 3 1
     1008 SETTABLEKS                       R66 R65 K165 ["Contents"]
     1010 JUMPIF                           R8 ; [+36]
     1011 GETUPVAL                         R66 0
     1012 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1014 GETUPVAL                         R67 27
     1015 DUPTABLE                         R68 K179 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 4}]
     1016 SETTABLEKS                       R18 R68 K174 ["DEPRECATED_nodeWidth"]
     1018 SETTABLEKS                       R17 R68 K175 ["nodeWidthBinding"]
     1020 GETUPVAL                         R70 14
     1021 JUMPIFNOT                        R70 ; [+2]
     1022 MOVE                             R69 R16
     1023 JUMP                             ; [+1]
     1024 MOVE                             R69 R36
     1025 SETTABLEKS                       R69 R68 K176 ["OnResized"]
     1027 GETTABLEKS                       R70 R0 K59 ["Selected"]
     1029 JUMPIFNOT                        R70 ; [+7]
     1030 GETTABLEKS                       R69 R12 K16 ["Color"]
     1032 GETTABLEKS                       R69 R69 K60 ["System"]
     1034 GETTABLEKS                       R69 R69 K61 ["Neutral"]
     1036 JUMP                             ; [+6]
     1037 GETTABLEKS                       R69 R12 K16 ["Color"]
     1039 GETTABLEKS                       R69 R69 K180 ["Stroke"]
     1041 GETTABLEKS                       R69 R69 K181 ["Default"]
     1043 SETTABLEKS                       R69 R68 K177 ["Style"]
     1045 CALL                             R66 2 1
     1046 JUMP                             ; [+1]
     1047 LOADNIL                          R66
     1048 SETTABLEKS                       R66 R65 K166 ["ResizeBars"]
     1050 CALL                             R62 3 1
     1051 JUMP                             ; [+1]
     1052 LOADNIL                          R62
     1053 SETTABLEKS                       R62 R61 K99 ["CompositorNodeContent"]
     1055 GETTABLEKS                       R62 R0 K100 ["ContextToolbar"]
     1057 JUMPIFNOT                        R62 ; [+21]
     1058 GETTABLEKS                       R63 R0 K59 ["Selected"]
     1060 JUMPIF                           R63 ; [+2]
     1061 MOVE                             R62 R10
     1062 JUMPIFNOT                        R62 ; [+16]
     1063 GETUPVAL                         R62 0
     1064 GETTABLEKS                       R62 R62 K63 ["createElement"]
     1066 GETUPVAL                         R63 28
     1067 DUPTABLE                         R64 K185 [{"Buttons", "positionBinding", "widthBinding"}]
     1068 GETTABLEKS                       R65 R0 K100 ["ContextToolbar"]
     1070 GETTABLEKS                       R65 R65 K182 ["Buttons"]
     1072 SETTABLEKS                       R65 R64 K182 ["Buttons"]
     1074 SETTABLEKS                       R21 R64 K183 ["positionBinding"]
     1076 SETTABLEKS                       R24 R64 K184 ["widthBinding"]
     1078 CALL                             R62 2 1
     1079 SETTABLEKS                       R62 R61 K100 ["ContextToolbar"]
     1081 GETUPVAL                         R62 13
     1082 CALL                             R62 0 1
     1083 JUMPIFNOT                        R62 ; [+102]
     1084 GETUPVAL                         R62 0
     1085 GETTABLEKS                       R62 R62 K63 ["createElement"]
     1087 LOADK                            R63 K103 ["Folder"]
     1088 NEWTABLE                         R64 0 0
     1090 DUPTABLE                         R65 K187 [{"SelectionHighlight"}]
     1091 GETTABLEKS                       R67 R0 K59 ["Selected"]
     1093 JUMPIFNOT                        R67 ; [+88]
     1094 GETUPVAL                         R67 26
     1095 JUMPIFNOT                        R67 ; [+47]
     1096 GETUPVAL                         R66 0
     1097 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1099 GETUPVAL                         R67 9
     1100 GETTABLEKS                       R67 R67 K64 ["View"]
     1102 DUPTABLE                         R68 K189 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1103 GETUPVAL                         R69 0
     1104 GETTABLEKS                       R69 R69 K63 ["createElement"]
     1106 GETUPVAL                         R70 9
     1107 GETTABLEKS                       R70 R70 K64 ["View"]
     1109 DUPTABLE                         R71 K191 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1110 NEWTABLE                         R72 4 0
     1112 LOADB                            R73 1
     1113 SETTABLEKS                       R73 R72 K192 ["position-center-center anchor-center-center"]
     1115 NOT                              R73 R8
     1116 SETTABLEKS                       R73 R72 K116 ["radius-small"]
     1118 SETTABLEKS                       R8 R72 K117 ["radius-large"]
     1120 SETTABLEKS                       R72 R71 K65 ["tag"]
     1122 GETIMPORT                        R72 K193 [UDim2.new]
     1124 LOADN                            R73 1
     1125 GETTABLEKS                       R74 R12 K194 ["Padding"]
     1127 GETTABLEKS                       R74 R74 K195 ["Small"]
     1129 LOADN                            R75 1
     1130 GETTABLEKS                       R76 R12 K194 ["Padding"]
     1132 GETTABLEKS                       R76 R76 K195 ["Small"]
     1134 CALL                             R72 4 1
     1135 SETTABLEKS                       R72 R71 K67 ["Size"]
     1137 DUPTABLE                         R72 K197 [{"UIStroke"}]
     1138 SETTABLEKS                       R48 R72 K196 ["UIStroke"]
     1140 CALL                             R69 3 -1
     1141 CALL                             R66 -1 1
     1142 JUMP                             ; [+40]
     1143 GETUPVAL                         R66 0
     1144 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1146 GETUPVAL                         R67 9
     1147 GETTABLEKS                       R67 R67 K64 ["View"]
     1149 DUPTABLE                         R68 K191 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1150 NEWTABLE                         R69 4 0
     1152 LOADB                            R70 1
     1153 SETTABLEKS                       R70 R69 K192 ["position-center-center anchor-center-center"]
     1155 NOT                              R70 R8
     1156 SETTABLEKS                       R70 R69 K116 ["radius-small"]
     1158 SETTABLEKS                       R8 R69 K117 ["radius-large"]
     1160 SETTABLEKS                       R69 R68 K65 ["tag"]
     1162 GETIMPORT                        R69 K193 [UDim2.new]
     1164 LOADN                            R70 1
     1165 GETTABLEKS                       R71 R12 K194 ["Padding"]
     1167 GETTABLEKS                       R71 R71 K195 ["Small"]
     1169 LOADN                            R72 1
     1170 GETTABLEKS                       R73 R12 K194 ["Padding"]
     1172 GETTABLEKS                       R73 R73 K195 ["Small"]
     1174 CALL                             R69 4 1
     1175 SETTABLEKS                       R69 R68 K67 ["Size"]
     1177 DUPTABLE                         R69 K197 [{"UIStroke"}]
     1178 SETTABLEKS                       R48 R69 K196 ["UIStroke"]
     1180 CALL                             R66 3 1
     1181 JUMP                             ; [+1]
     1182 LOADNIL                          R66
     1183 SETTABLEKS                       R66 R65 K186 ["SelectionHighlight"]
     1185 CALL                             R62 3 1
     1186 SETTABLEKS                       R62 R61 K101 ["SelectionHighlightContainer"]
     1188 CALL                             R58 3 1
     1189 SETTABLEKS                       R58 R57 K87 ["Node"]
     1191 GETUPVAL                         R59 20
     1192 JUMPIFNOT                        R59 ; [+15]
     1193 GETUPVAL                         R58 0
     1194 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1196 GETUPVAL                         R59 9
     1197 GETTABLEKS                       R59 R59 K64 ["View"]
     1199 DUPTABLE                         R60 K200 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1200 MOVE                             R61 R2
     1201 CALL                             R61 0 1
     1202 SETTABLEKS                       R61 R60 K68 ["LayoutOrder"]
     1204 SETTABLEKS                       R44 R60 K92 ["ref"]
     1206 CALL                             R58 2 1
     1207 JUMP                             ; [+1]
     1208 LOADNIL                          R58
     1209 SETTABLEKS                       R58 R57 K88 ["DebugMarker"]
     1211 GETUPVAL                         R59 29
     1212 CALL                             R59 0 1
     1213 JUMPIFNOT                        R59 ; [+5]
     1214 LOADB                            R58 0
     1215 GETTABLEKS                       R59 R0 K201 ["CanDrag"]
     1217 JUMPIFEQKB                       R59 FALSE ; [+39]
     1219 GETUPVAL                         R58 0
     1220 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1222 LOADK                            R59 K202 ["UIDragDetector"]
     1223 NEWTABLE                         R60 8 0
     1225 GETIMPORT                        R61 K206 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1227 SETTABLEKS                       R61 R60 K207 ["DragStyle"]
     1229 GETIMPORT                        R61 K210 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1231 SETTABLEKS                       R61 R60 K211 ["ResponseStyle"]
     1233 GETTABLEKS                       R61 R3 K212 ["getViewport"]
     1235 CALL                             R61 0 1
     1236 SETTABLEKS                       R61 R60 K213 ["ReferenceUIInstance"]
     1238 GETUPVAL                         R61 0
     1239 GETTABLEKS                       R61 R61 K214 ["Event"]
     1241 GETTABLEKS                       R61 R61 K215 ["DragStart"]
     1243 SETTABLE                         R33 R60 R61
     1244 GETUPVAL                         R61 0
     1245 GETTABLEKS                       R61 R61 K214 ["Event"]
     1247 GETTABLEKS                       R61 R61 K216 ["DragContinue"]
     1249 SETTABLE                         R34 R60 R61
     1250 GETUPVAL                         R61 0
     1251 GETTABLEKS                       R61 R61 K214 ["Event"]
     1253 GETTABLEKS                       R61 R61 K217 ["DragEnd"]
     1255 SETTABLE                         R35 R60 R61
     1256 CALL                             R58 2 1
     1257 SETTABLEKS                       R58 R57 K89 ["DragDetector"]
     1259 GETUPVAL                         R58 21
     1260 JUMPIFNOT                        R58 ; [+26]
     1261 GETUPVAL                         R58 0
     1262 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1264 LOADK                            R59 K218 ["Frame"]
     1265 NEWTABLE                         R60 4 0
     1267 LOADN                            R61 1
     1268 SETTABLEKS                       R61 R60 K70 ["BackgroundTransparency"]
     1270 GETIMPORT                        R61 K111 [UDim2.fromScale]
     1272 LOADN                            R62 1
     1273 LOADN                            R63 1
     1274 CALL                             R61 2 1
     1275 SETTABLEKS                       R61 R60 K67 ["Size"]
     1277 LOADN                            R61 -10
     1278 SETTABLEKS                       R61 R60 K69 ["ZIndex"]
     1280 GETUPVAL                         R61 0
     1281 GETTABLEKS                       R61 R61 K214 ["Event"]
     1283 GETTABLEKS                       R61 R61 K219 ["InputBegan"]
     1285 SETTABLE                         R49 R60 R61
     1286 CALL                             R58 2 1
     1287 SETTABLEKS                       R58 R57 K90 ["RightClickCapture"]
     1289 CALL                             R54 3 1
     1290 SETTABLEKS                       R54 R53 K80 ["ComponentContext"]
     1292 CALL                             R50 3 -1
     1293 RETURN                           R50 -1

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
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagAnimGraphFixNodeDimming"]
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
      229 DUPCLOSURE                       R33 K44 [PROTO_28]
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R30
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R9
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R8
      249 CAPTURE                          VAL R5
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R27
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R29
      260 RETURN                           R33 1
