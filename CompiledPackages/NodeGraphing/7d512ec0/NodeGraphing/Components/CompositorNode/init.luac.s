PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Size"]
        7 JUMPIFNOT                        R1 ; [+20]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["Size"]
       11 GETTABLEKS                       R1 R1 K1 ["X"]
       13 LOADN                            R2 0
       14 JUMPIFNOTLT                      R2 R1 ; [+13]
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K0 ["Size"]
       20 GETTABLEKS                       R3 R3 K1 ["X"]
       22 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       24 GETIMPORT                        R1 K4 [math.max]
       26 CALL                             R1 2 1
       27 MOVE                             R0 R1
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K5 ["createSignal"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["NODE_VIEW_CHILD_HEIGHT"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["Size"]
        9 JUMPIFNOT                        R1 ; [+22]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["Size"]
       13 GETTABLEKS                       R1 R1 K2 ["Y"]
       15 LOADN                            R2 0
       16 JUMPIFNOTLT                      R2 R1 ; [+15]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["NODE_VIEW_CHILD_HEIGHT"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K1 ["Size"]
       24 GETTABLEKS                       R3 R3 K2 ["Y"]
       26 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       28 GETIMPORT                        R1 K5 [math.max]
       30 CALL                             R1 2 1
       31 MOVE                             R0 R1
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K6 ["createSignal"]
       35 MOVE                             R2 R0
       36 CALL                             R1 1 -1
       37 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["Size"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETTABLEKS                       R1 R0 K1 ["X"]
       10 LOADN                            R2 0
       11 JUMPIFLT                         R2 R1 ; [+7]
       13 GETTABLEKS                       R1 R0 K2 ["Y"]
       15 LOADN                            R2 0
       16 JUMPIFLT                         R2 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 GETTABLEKS                       R1 R1 K3 ["current"]
       22 JUMPIFNOT                        R1 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R1 R0 K1 ["X"]
       26 LOADN                            R2 0
       27 JUMPIFNOTLT                      R2 R1 ; [+23]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R3 R0 K1 ["X"]
       32 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       34 GETIMPORT                        R1 K6 [math.max]
       36 CALL                             R1 2 1
       37 GETUPVAL                         R2 4
       38 LOADB                            R3 0
       39 CALL                             R2 1 1
       40 SUB                              R4 R1 R2
       41 FASTCALL1                        MATH_ABS R4 ; [+2]
       42 GETIMPORT                        R3 K8 [math.abs]
       44 CALL                             R3 1 1
       45 LOADK                            R4 K9 [0.5]
       46 JUMPIFNOTLT                      R4 R3 ; [+4]
       48 GETUPVAL                         R3 5
       49 MOVE                             R4 R1
       50 CALL                             R3 1 0
       51 GETTABLEKS                       R1 R0 K2 ["Y"]
       53 LOADN                            R2 0
       54 JUMPIFNOTLT                      R2 R1 ; [+25]
       56 GETUPVAL                         R2 6
       57 GETTABLEKS                       R2 R2 K10 ["NODE_VIEW_CHILD_HEIGHT"]
       59 GETTABLEKS                       R3 R0 K2 ["Y"]
       61 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       63 GETIMPORT                        R1 K6 [math.max]
       65 CALL                             R1 2 1
       66 GETUPVAL                         R4 7
       67 LOADB                            R5 0
       68 CALL                             R4 1 1
       69 SUB                              R3 R1 R4
       70 FASTCALL1                        MATH_ABS R3 ; [+2]
       71 GETIMPORT                        R2 K8 [math.abs]
       73 CALL                             R2 1 1
       74 LOADK                            R3 K9 [0.5]
       75 JUMPIFNOTLT                      R3 R2 ; [+4]
       77 GETUPVAL                         R2 8
       78 MOVE                             R3 R1
       79 CALL                             R2 1 0
       80 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 DIVRK                            R1 K0 [1] R0
        4 RETURN                           R1 1
        5 LOADN                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_7]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K1 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 MUL                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       28 CALL                             R3 0 1
       29 JUMPIFNOT                        R3 ; [+14]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K4 ["current"]
       33 JUMPIFNOT                        R3 ; [+10]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K4 ["current"]
       37 GETTABLEKS                       R4 R4 K2 ["Y"]
       39 LOADN                            R5 0
       40 JUMPIFLT                         R5 R4 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 GETUPVAL                         R4 4
       45 MOVE                             R5 R0
       46 CALL                             R4 1 1
       47 JUMPIFNOT                        R3 ; [+6]
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R5 R5 K4 ["current"]
       51 GETTABLEKS                       R5 R5 K2 ["Y"]
       53 JUMP                             ; [+5]
       54 DIV                              R6 R4 R2
       55 FASTCALL1                        MATH_ROUND R6 ; [+2]
       56 GETIMPORT                        R5 K7 [math.round]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K10 [Vector2.new]
       61 MOVE                             R7 R4
       62 MOVE                             R8 R5
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 5
       65 JUMPIFEQKNIL                     R7 ; [+8]
       67 GETUPVAL                         R8 5
       68 SUB                              R7 R8 R6
       69 GETTABLEKS                       R7 R7 K11 ["Magnitude"]
       71 LOADN                            R8 2
       72 JUMPIFNOTLT                      R8 R7 ; [+8]
       74 GETUPVAL                         R7 6
       75 GETTABLEKS                       R7 R7 K12 ["setNodeSize"]
       77 GETUPVAL                         R8 7
       78 MOVE                             R9 R6
       79 CALL                             R7 2 0
       80 SETUPVAL                         R6 5
       81 RETURN                           R0 0

PROTO_15:
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
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          REF R0
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U0
       18 CALL                             R1 1 -1
       19 CLOSEUPVALS                      R0
       20 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+19]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFEQKNIL                     R1 ; [+14]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R1 R3
       10 JUMPIFNOTEQKNIL                  R2 ; [+10]
       12 GETIMPORT                        R2 K2 [math.map]
       14 LOADK                            R3 K3 [0.5]
       15 LOADN                            R4 0
       16 LOADN                            R5 1
       17 LOADK                            R6 K3 [0.5]
       18 LOADN                            R7 1
       19 CALL                             R2 5 -1
       20 RETURN                           R2 -1
       21 GETUPVAL                         R1 2
       22 JUMPIFEQKNIL                     R1 ; [+12]
       24 GETIMPORT                        R1 K2 [math.map]
       26 GETUPVAL                         R2 2
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 LOADN                            R3 0
       30 LOADN                            R4 1
       31 LOADK                            R5 K3 [0.5]
       32 LOADN                            R6 1
       33 CALL                             R1 5 -1
       34 RETURN                           R1 -1
       35 LOADN                            R1 1
       36 RETURN                           R1 1

PROTO_17:
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
       22 CAPTURE                          VAL R1
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_24:
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
       24 GETUPVAL                         R2 2
       25 JUMPIFNOT                        R2 ; [+2]
       26 LOADB                            R1 1
       27 JUMP                             ; [+8]
       28 GETUPVAL                         R2 0
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+3]
       31 GETUPVAL                         R2 3
       32 NOT                              R1 R2
       33 JUMP                             ; [+2]
       34 GETUPVAL                         R2 4
       35 NOT                              R1 R2
       36 SETTABLEKS                       R1 R0 K5 ["radius-small"]
       38 GETUPVAL                         R2 2
       39 JUMPIFNOT                        R2 ; [+2]
       40 LOADB                            R1 0
       41 JUMP                             ; [+6]
       42 GETUPVAL                         R2 0
       43 CALL                             R2 0 1
       44 JUMPIFNOT                        R2 ; [+2]
       45 GETUPVAL                         R1 3
       46 JUMP                             ; [+1]
       47 GETUPVAL                         R1 4
       48 SETTABLEKS                       R1 R0 K6 ["radius-large"]
       50 GETUPVAL                         R2 5
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+2]
       53 LOADNIL                          R1
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R1 6
       56 GETTABLEKS                       R1 R1 K7 ["Selected"]
       58 SETTABLEKS                       R1 R0 K8 ["stroke-system-neutral"]
       60 GETUPVAL                         R2 5
       61 CALL                             R2 0 1
       62 JUMPIFNOT                        R2 ; [+2]
       63 LOADB                            R1 1
       64 JUMP                             ; [+4]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R2 R2 K7 ["Selected"]
       68 NOT                              R1 R2
       69 SETTABLEKS                       R1 R0 K9 ["stroke-default"]
       71 RETURN                           R0 1

PROTO_25:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+50]
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
       21 GETUPVAL                         R3 0
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       25 GETTABLEKS                       R4 R4 K6 ["id"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 3
       29 JUMPIFNOT                        R2 ; [+25]
       30 GETIMPORT                        R2 K9 [Vector2.new]
       32 GETTABLEKS                       R3 R1 K10 ["Position"]
       34 GETTABLEKS                       R3 R3 K11 ["X"]
       36 GETTABLEKS                       R4 R1 K10 ["Position"]
       38 GETTABLEKS                       R4 R4 K12 ["Y"]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K13 ["showMenu"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       47 GETTABLEKS                       R4 R4 K6 ["id"]
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K14 ["absToPlot"]
       52 MOVE                             R6 R2
       53 CALL                             R5 1 -1
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_30:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
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
      136 MOVE                             R13 R11
      137 JUMPIFNOT                        R13 ; [+2]
      138 GETUPVAL                         R13 10
      139 CALL                             R13 0 1
      140 MOVE                             R14 R8
      141 JUMPIFNOT                        R14 ; [+7]
      142 GETTABLEKS                       R15 R0 K15 ["IsExpressionNode"]
      144 JUMPIFNOT                        R15 ; [+3]
      145 GETTABLEKS                       R16 R0 K14 ["Collapsed"]
      147 NOT                              R15 R16
      148 NOT                              R14 R15
      149 GETTABLEKS                       R15 R0 K4 ["GraphPayload"]
      151 JUMPIFNOT                        R15 ; [+11]
      152 GETTABLEKS                       R16 R0 K4 ["GraphPayload"]
      154 GETTABLEKS                       R16 R16 K8 ["className"]
      156 GETUPVAL                         R17 8
      157 GETTABLEKS                       R17 R17 K16 ["OUTPUT_NODE_CLASSNAME"]
      159 JUMPIFEQ                         R16 R17 ; [+2]
      161 LOADB                            R15 0 +1
      162 LOADB                            R15 1
      163 LOADB                            R16 1
      164 GETTABLEKS                       R17 R6 K17 ["spotlightedNodeId"]
      166 JUMPIFEQ                         R17 R7 ; [+9]
      168 MOVE                             R16 R15
      169 JUMPIFNOT                        R16 ; [+6]
      170 GETTABLEKS                       R17 R6 K17 ["spotlightedNodeId"]
      172 JUMPIFEQKNIL                     R17 ; [+2]
      174 LOADB                            R16 0 +1
      175 LOADB                            R16 1
      176 GETUPVAL                         R17 11
      177 CALL                             R17 0 1
      178 GETUPVAL                         R18 12
      179 GETTABLEKS                       R18 R18 K18 ["Hooks"]
      181 GETTABLEKS                       R18 R18 K19 ["useTokens"]
      183 CALL                             R18 0 1
      184 GETUPVAL                         R20 12
      185 GETTABLEKS                       R20 R20 K20 ["Enums"]
      187 GETTABLEKS                       R20 R20 K21 ["Theme"]
      189 GETTABLEKS                       R20 R20 K22 ["Dark"]
      191 JUMPIFNOTEQ                      R17 R20 ; [+10]
      193 GETTABLEKS                       R19 R18 K23 ["Color"]
      195 GETTABLEKS                       R19 R19 K24 ["Extended"]
      197 GETTABLEKS                       R19 R19 K25 ["Green"]
      199 GETTABLEKS                       R19 R19 K26 ["Green_1300"]
      201 JUMP                             ; [+8]
      202 GETTABLEKS                       R19 R18 K23 ["Color"]
      204 GETTABLEKS                       R19 R19 K24 ["Extended"]
      206 GETTABLEKS                       R19 R19 K25 ["Green"]
      208 GETTABLEKS                       R19 R19 K27 ["Green_100"]
      210 GETUPVAL                         R20 12
      211 GETTABLEKS                       R20 R20 K18 ["Hooks"]
      213 GETTABLEKS                       R20 R20 K28 ["useCumulativeBackground"]
      215 MOVE                             R21 R19
      216 GETTABLEKS                       R22 R18 K23 ["Color"]
      218 GETTABLEKS                       R22 R22 K29 ["Shift"]
      220 GETTABLEKS                       R22 R22 K30 ["Shift_100"]
      222 CALL                             R20 2 1
      223 GETTABLEKS                       R21 R0 K31 ["MinimumWidth"]
      225 JUMPIF                           R21 ; [+3]
      226 GETUPVAL                         R21 8
      227 GETTABLEKS                       R21 R21 K32 ["NODE_VIEW_CHILD_WIDTH"]
      229 GETUPVAL                         R22 0
      230 GETTABLEKS                       R22 R22 K33 ["useMemo"]
      232 NEWCLOSURE                       R23 P0
      233 CAPTURE                          VAL R21
      234 CAPTURE                          UPVAL U13
      235 CAPTURE                          VAL R0
      236 CAPTURE                          UPVAL U14
      237 NEWTABLE                         R24 0 0
      239 CALL                             R22 2 2
      240 GETUPVAL                         R24 15
      241 GETTABLEKS                       R24 R24 K34 ["useSignalBinding"]
      243 MOVE                             R25 R22
      244 CALL                             R24 1 1
      245 GETUPVAL                         R25 0
      246 GETTABLEKS                       R25 R25 K33 ["useMemo"]
      248 NEWCLOSURE                       R26 P1
      249 CAPTURE                          UPVAL U8
      250 CAPTURE                          UPVAL U13
      251 CAPTURE                          VAL R0
      252 CAPTURE                          UPVAL U14
      253 NEWTABLE                         R27 0 0
      255 CALL                             R25 2 2
      256 GETUPVAL                         R27 15
      257 GETTABLEKS                       R27 R27 K34 ["useSignalBinding"]
      259 MOVE                             R28 R25
      260 CALL                             R27 1 1
      261 GETUPVAL                         R28 0
      262 GETTABLEKS                       R28 R28 K33 ["useMemo"]
      264 NEWCLOSURE                       R29 P2
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R25
      267 NEWTABLE                         R30 0 2
      269 MOVE                             R31 R12
      270 MOVE                             R32 R25
      271 SETLIST                          R30 R31 2 [1]
      273 CALL                             R28 2 1
      274 GETUPVAL                         R29 0
      275 GETTABLEKS                       R29 R29 K35 ["useRef"]
      277 LOADB                            R30 0
      278 CALL                             R29 1 1
      279 GETUPVAL                         R30 0
      280 GETTABLEKS                       R30 R30 K35 ["useRef"]
      282 GETTABLEKS                       R31 R0 K36 ["Size"]
      284 CALL                             R30 1 1
      285 GETTABLEKS                       R31 R0 K36 ["Size"]
      287 SETTABLEKS                       R31 R30 K37 ["current"]
      289 GETUPVAL                         R31 0
      290 GETTABLEKS                       R31 R31 K35 ["useRef"]
      292 GETTABLEKS                       R32 R0 K14 ["Collapsed"]
      294 CALL                             R31 1 1
      295 GETTABLEKS                       R32 R0 K14 ["Collapsed"]
      297 SETTABLEKS                       R32 R31 K37 ["current"]
      299 GETUPVAL                         R32 0
      300 GETTABLEKS                       R32 R32 K38 ["useCallback"]
      302 NEWCLOSURE                       R33 P3
      303 CAPTURE                          VAL R29
      304 NEWTABLE                         R34 0 0
      306 CALL                             R32 2 1
      307 GETUPVAL                         R33 0
      308 GETTABLEKS                       R33 R33 K39 ["useEffect"]
      310 NEWCLOSURE                       R34 P4
      311 CAPTURE                          UPVAL U13
      312 CAPTURE                          VAL R0
      313 CAPTURE                          VAL R29
      314 CAPTURE                          VAL R21
      315 CAPTURE                          VAL R22
      316 CAPTURE                          VAL R23
      317 CAPTURE                          UPVAL U8
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R26
      320 NEWTABLE                         R35 0 5
      322 GETTABLEKS                       R36 R0 K36 ["Size"]
      324 MOVE                             R37 R22
      325 MOVE                             R38 R23
      326 MOVE                             R39 R25
      327 MOVE                             R40 R26
      328 SETLIST                          R35 R36 5 [1]
      330 CALL                             R33 2 0
      331 GETUPVAL                         R33 16
      332 CALL                             R33 0 1
      333 GETUPVAL                         R34 3
      334 GETTABLEKS                       R34 R34 K40 ["useViewportBinding"]
      336 NEWCLOSURE                       R35 P5
      337 CAPTURE                          VAL R0
      338 NEWTABLE                         R36 0 1
      340 GETTABLEKS                       R37 R0 K41 ["Position"]
      342 SETLIST                          R36 R37 1 [1]
      344 CALL                             R34 2 1
      345 GETUPVAL                         R35 15
      346 GETTABLEKS                       R35 R35 K34 ["useSignalBinding"]
      348 GETTABLEKS                       R36 R1 K42 ["observeZoomRatio"]
      350 CALL                             R35 1 1
      351 GETUPVAL                         R36 0
      352 GETTABLEKS                       R36 R36 K33 ["useMemo"]
      354 NEWCLOSURE                       R37 P6
      355 CAPTURE                          VAL R35
      356 CAPTURE                          UPVAL U17
      357 NEWTABLE                         R38 0 1
      359 MOVE                             R39 R35
      360 SETLIST                          R38 R39 1 [1]
      362 CALL                             R36 2 1
      363 GETUPVAL                         R37 0
      364 GETTABLEKS                       R37 R37 K43 ["joinBindings"]
      366 NEWTABLE                         R38 0 2
      368 MOVE                             R39 R24
      369 MOVE                             R40 R35
      370 SETLIST                          R38 R39 2 [1]
      372 CALL                             R37 1 1
      373 DUPCLOSURE                       R39 K44 [PROTO_9]
      374 NAMECALL                         R37 R37 K45 ["map"]
      376 CALL                             R37 2 1
      377 GETUPVAL                         R38 0
      378 GETTABLEKS                       R38 R38 K46 ["useBinding"]
      380 GETTABLEKS                       R39 R0 K47 ["editName"]
      382 CALL                             R38 1 2
      383 GETUPVAL                         R40 2
      384 GETTABLEKS                       R40 R40 K48 ["useToggleState"]
      386 LOADB                            R41 0
      387 CALL                             R40 1 1
      388 GETUPVAL                         R41 0
      389 GETTABLEKS                       R41 R41 K35 ["useRef"]
      391 LOADNIL                          R42
      392 CALL                             R41 1 1
      393 GETUPVAL                         R42 2
      394 GETTABLEKS                       R42 R42 K49 ["useEventCallback"]
      396 NEWCLOSURE                       R43 P8
      397 CAPTURE                          VAL R39
      398 CAPTURE                          VAL R0
      399 CAPTURE                          VAL R40
      400 CAPTURE                          VAL R41
      401 CALL                             R42 1 1
      402 GETUPVAL                         R43 0
      403 GETTABLEKS                       R43 R43 K35 ["useRef"]
      405 LOADNIL                          R44
      406 CALL                             R43 1 1
      407 GETUPVAL                         R44 0
      408 GETTABLEKS                       R44 R44 K35 ["useRef"]
      410 LOADN                            R45 0
      411 CALL                             R44 1 1
      412 GETUPVAL                         R45 0
      413 GETTABLEKS                       R45 R45 K35 ["useRef"]
      415 LOADNIL                          R46
      416 CALL                             R45 1 1
      417 GETUPVAL                         R46 0
      418 GETTABLEKS                       R46 R46 K38 ["useCallback"]
      420 NEWCLOSURE                       R47 P9
      421 CAPTURE                          VAL R43
      422 CAPTURE                          VAL R40
      423 CAPTURE                          VAL R45
      424 CAPTURE                          VAL R44
      425 CAPTURE                          VAL R42
      426 CAPTURE                          VAL R0
      427 CAPTURE                          VAL R3
      428 NEWTABLE                         R48 0 4
      430 MOVE                             R49 R3
      431 GETTABLEKS                       R50 R40 K50 ["enabled"]
      433 GETTABLEKS                       R51 R0 K51 ["OnDragStart"]
      435 MOVE                             R52 R42
      436 SETLIST                          R48 R49 4 [1]
      438 CALL                             R46 2 1
      439 GETUPVAL                         R47 0
      440 GETTABLEKS                       R47 R47 K38 ["useCallback"]
      442 NEWCLOSURE                       R48 P10
      443 CAPTURE                          VAL R43
      444 CAPTURE                          VAL R0
      445 CAPTURE                          VAL R3
      446 CAPTURE                          VAL R40
      447 NEWTABLE                         R49 0 5
      449 MOVE                             R50 R3
      450 MOVE                             R51 R43
      451 GETTABLEKS                       R52 R0 K52 ["OnDragMoved"]
      453 MOVE                             R53 R7
      454 GETTABLEKS                       R54 R40 K53 ["disable"]
      456 SETLIST                          R49 R50 5 [1]
      458 CALL                             R47 2 1
      459 GETUPVAL                         R48 0
      460 GETTABLEKS                       R48 R48 K38 ["useCallback"]
      462 NEWCLOSURE                       R49 P11
      463 CAPTURE                          VAL R43
      464 CAPTURE                          VAL R44
      465 CAPTURE                          VAL R0
      466 CAPTURE                          VAL R3
      467 NEWTABLE                         R50 0 4
      469 MOVE                             R51 R3
      470 MOVE                             R52 R43
      471 GETTABLEKS                       R53 R0 K54 ["OnDragEnded"]
      473 MOVE                             R54 R7
      474 SETLIST                          R50 R51 4 [1]
      476 CALL                             R48 2 1
      477 GETUPVAL                         R49 0
      478 GETTABLEKS                       R49 R49 K39 ["useEffect"]
      480 NEWCLOSURE                       R50 P12
      481 CAPTURE                          VAL R7
      482 CAPTURE                          UPVAL U14
      483 CAPTURE                          VAL R33
      484 CAPTURE                          UPVAL U13
      485 CAPTURE                          VAL R31
      486 CAPTURE                          VAL R30
      487 CAPTURE                          VAL R22
      488 CAPTURE                          VAL R4
      489 NEWTABLE                         R51 0 4
      491 GETTABLEKS                       R52 R4 K55 ["setNodeSize"]
      493 GETTABLEKS                       R53 R33 K56 ["observeAbsoluteSize"]
      495 MOVE                             R54 R7
      496 MOVE                             R55 R22
      497 SETLIST                          R51 R52 4 [1]
      499 CALL                             R49 2 0
      500 GETUPVAL                         R49 0
      501 GETTABLEKS                       R49 R49 K33 ["useMemo"]
      503 NEWCLOSURE                       R50 P13
      504 CAPTURE                          VAL R6
      505 CAPTURE                          VAL R4
      506 CAPTURE                          VAL R7
      507 CAPTURE                          UPVAL U14
      508 NEWTABLE                         R51 0 3
      510 GETTABLEKS                       R52 R6 K57 ["observeSpotlightedSubtree"]
      512 GETTABLEKS                       R53 R4 K58 ["observeFadeByNodeId"]
      514 MOVE                             R54 R7
      515 SETLIST                          R51 R52 3 [1]
      517 CALL                             R49 2 1
      518 GETUPVAL                         R50 0
      519 GETTABLEKS                       R50 R50 K33 ["useMemo"]
      521 NEWCLOSURE                       R51 P14
      522 CAPTURE                          VAL R0
      523 NEWTABLE                         R52 0 1
      525 GETTABLEKS                       R53 R0 K14 ["Collapsed"]
      527 SETLIST                          R52 R53 1 [1]
      529 CALL                             R50 2 1
      530 GETUPVAL                         R51 2
      531 GETTABLEKS                       R51 R51 K49 ["useEventCallback"]
      533 NEWCLOSURE                       R52 P15
      534 CAPTURE                          VAL R7
      535 CAPTURE                          VAL R4
      536 CAPTURE                          VAL R0
      537 CAPTURE                          UPVAL U18
      538 CALL                             R51 1 1
      539 GETTABLEKS                       R52 R0 K59 ["text"]
      541 JUMPIF                           R52 ; [+6]
      542 GETTABLEKS                       R52 R0 K4 ["GraphPayload"]
      544 GETTABLEKS                       R52 R52 K60 ["name"]
      546 JUMPIF                           R52 ; [+1]
      547 LOADK                            R52 K61 [""]
      548 GETUPVAL                         R53 0
      549 GETTABLEKS                       R53 R53 K38 ["useCallback"]
      551 NEWCLOSURE                       R54 P16
      552 CAPTURE                          UPVAL U19
      553 CAPTURE                          VAL R38
      554 CAPTURE                          UPVAL U20
      555 CAPTURE                          VAL R40
      556 CAPTURE                          VAL R7
      557 CAPTURE                          UPVAL U7
      558 CAPTURE                          VAL R0
      559 CAPTURE                          UPVAL U8
      560 CAPTURE                          VAL R4
      561 NEWTABLE                         R55 0 8
      563 MOVE                             R56 R7
      564 GETTABLEKS                       R57 R40 K53 ["disable"]
      566 GETTABLEKS                       R58 R0 K11 ["IsParameterNode"]
      568 GETTABLEKS                       R59 R0 K6 ["NodeType"]
      570 GETTABLEKS                       R60 R0 K62 ["onRename"]
      572 GETTABLEKS                       R61 R0 K4 ["GraphPayload"]
      574 GETTABLEKS                       R61 R61 K60 ["name"]
      576 GETTABLEKS                       R62 R4 K63 ["renameParameter"]
      578 GETTABLEKS                       R63 R4 K64 ["renameNode"]
      580 SETLIST                          R55 R56 8 [1]
      582 CALL                             R53 2 1
      583 MOVE                             R54 R2
      584 CALL                             R54 0 1
      585 GETUPVAL                         R55 0
      586 GETTABLEKS                       R55 R55 K33 ["useMemo"]
      588 DUPCLOSURE                       R56 K65 [PROTO_21]
      589 CAPTURE                          UPVAL U14
      590 NEWTABLE                         R57 0 0
      592 CALL                             R55 2 2
      593 GETUPVAL                         R57 21
      594 JUMPIFNOT                        R57 ; [+17]
      595 GETUPVAL                         R57 0
      596 GETTABLEKS                       R57 R57 K39 ["useEffect"]
      598 NEWCLOSURE                       R58 P18
      599 CAPTURE                          UPVAL U14
      600 CAPTURE                          VAL R55
      601 CAPTURE                          VAL R52
      602 CAPTURE                          VAL R0
      603 NEWTABLE                         R59 0 3
      605 MOVE                             R60 R55
      606 MOVE                             R61 R52
      607 GETTABLEKS                       R62 R0 K66 ["Selected"]
      609 SETLIST                          R59 R60 3 [1]
      611 CALL                             R57 2 0
      612 GETUPVAL                         R57 15
      613 GETTABLEKS                       R57 R57 K34 ["useSignalBinding"]
      615 MOVE                             R58 R49
      616 CALL                             R57 1 1
      617 GETUPVAL                         R58 0
      618 GETTABLEKS                       R58 R58 K33 ["useMemo"]
      620 NEWCLOSURE                       R59 P19
      621 CAPTURE                          UPVAL U9
      622 CAPTURE                          VAL R12
      623 CAPTURE                          UPVAL U22
      624 CAPTURE                          VAL R14
      625 CAPTURE                          REF R8
      626 CAPTURE                          UPVAL U17
      627 CAPTURE                          VAL R0
      628 NEWTABLE                         R60 0 5
      630 GETTABLEKS                       R61 R0 K14 ["Collapsed"]
      632 MOVE                             R62 R8
      633 GETTABLEKS                       R63 R0 K66 ["Selected"]
      635 MOVE                             R64 R11
      636 MOVE                             R65 R14
      637 SETLIST                          R60 R61 5 [1]
      639 CALL                             R58 2 1
      640 GETUPVAL                         R59 0
      641 GETTABLEKS                       R59 R59 K33 ["useMemo"]
      643 NEWCLOSURE                       R60 P20
      644 CAPTURE                          VAL R58
      645 NEWTABLE                         R61 0 1
      647 MOVE                             R62 R58
      648 SETLIST                          R61 R62 1 [1]
      650 CALL                             R59 2 1
      651 GETUPVAL                         R60 0
      652 GETTABLEKS                       R60 R60 K33 ["useMemo"]
      654 NEWCLOSURE                       R61 P21
      655 CAPTURE                          UPVAL U0
      656 CAPTURE                          VAL R36
      657 CAPTURE                          VAL R18
      658 NEWTABLE                         R62 0 2
      660 MOVE                             R63 R36
      661 GETTABLEKS                       R64 R18 K23 ["Color"]
      663 GETTABLEKS                       R64 R64 K67 ["System"]
      665 GETTABLEKS                       R64 R64 K68 ["Neutral"]
      667 GETTABLEKS                       R64 R64 K69 ["Color3"]
      669 SETLIST                          R62 R63 2 [1]
      671 CALL                             R60 2 1
      672 GETUPVAL                         R62 23
      673 JUMPIFNOT                        R62 ; [+12]
      674 GETUPVAL                         R61 2
      675 GETTABLEKS                       R61 R61 K49 ["useEventCallback"]
      677 NEWCLOSURE                       R62 P22
      678 CAPTURE                          VAL R4
      679 CAPTURE                          VAL R0
      680 CAPTURE                          UPVAL U18
      681 CAPTURE                          UPVAL U24
      682 CAPTURE                          VAL R5
      683 CAPTURE                          VAL R3
      684 CALL                             R61 1 1
      685 JUMP                             ; [+1]
      686 LOADNIL                          R61
      687 JUMPIFNOT                        R12 ; [+15]
      688 GETUPVAL                         R62 0
      689 GETTABLEKS                       R62 R62 K43 ["joinBindings"]
      691 NEWTABLE                         R63 0 2
      693 MOVE                             R64 R24
      694 MOVE                             R65 R27
      695 SETLIST                          R63 R64 2 [1]
      697 CALL                             R62 1 1
      698 DUPCLOSURE                       R64 K70 [PROTO_28]
      699 NAMECALL                         R62 R62 K45 ["map"]
      701 CALL                             R62 2 1
      702 JUMP                             ; [+4]
      703 DUPCLOSURE                       R64 K71 [PROTO_29]
      704 NAMECALL                         R62 R24 K45 ["map"]
      706 CALL                             R62 2 1
      707 GETUPVAL                         R63 0
      708 GETTABLEKS                       R63 R63 K72 ["createElement"]
      710 GETUPVAL                         R64 12
      711 GETTABLEKS                       R64 R64 K73 ["View"]
      713 DUPTABLE                         R65 K82 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      714 DUPCLOSURE                       R68 K83 [PROTO_30]
      715 NAMECALL                         R66 R24 K45 ["map"]
      717 CALL                             R66 2 1
      718 SETTABLEKS                       R66 R65 K36 ["Size"]
      720 GETTABLEKS                       R66 R0 K76 ["LayoutOrder"]
      722 SETTABLEKS                       R66 R65 K76 ["LayoutOrder"]
      724 GETTABLEKS                       R66 R0 K77 ["ZIndex"]
      726 SETTABLEKS                       R66 R65 K77 ["ZIndex"]
      728 SETTABLEKS                       R34 R65 K41 ["Position"]
      730 DUPTABLE                         R66 K86 [{"UIScale", "ComponentContext"}]
      731 GETUPVAL                         R67 0
      732 GETTABLEKS                       R67 R67 K72 ["createElement"]
      734 LOADK                            R68 K84 ["UIScale"]
      735 DUPTABLE                         R69 K88 [{"Scale"}]
      736 SETTABLEKS                       R35 R69 K87 ["Scale"]
      738 CALL                             R67 2 1
      739 SETTABLEKS                       R67 R66 K84 ["UIScale"]
      741 GETUPVAL                         R67 0
      742 GETTABLEKS                       R67 R67 K72 ["createElement"]
      744 GETUPVAL                         R68 25
      745 GETTABLEKS                       R68 R68 K89 ["Provider"]
      747 DUPTABLE                         R69 K92 [{"absoluteSizeHook", "observeControlledHeight"}]
      748 SETTABLEKS                       R33 R69 K90 ["absoluteSizeHook"]
      750 SETTABLEKS                       R28 R69 K91 ["observeControlledHeight"]
      752 DUPTABLE                         R70 K97 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      753 GETUPVAL                         R71 0
      754 GETTABLEKS                       R71 R71 K72 ["createElement"]
      756 GETUPVAL                         R72 12
      757 GETTABLEKS                       R72 R72 K73 ["View"]
      759 DUPTABLE                         R73 K99 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      760 SETTABLEKS                       R59 R73 K74 ["tag"]
      762 GETUPVAL                         R75 9
      763 CALL                             R75 0 1
      764 JUMPIFNOT                        R75 ; [+2]
      765 MOVE                             R74 R62
      766 JUMP                             ; [+4]
      767 DUPCLOSURE                       R76 K100 [PROTO_31]
      768 NAMECALL                         R74 R24 K45 ["map"]
      770 CALL                             R74 2 1
      771 SETTABLEKS                       R74 R73 K36 ["Size"]
      773 GETTABLEKS                       R74 R33 K101 ["setFrame"]
      775 SETTABLEKS                       R74 R73 K98 ["ref"]
      777 DUPTABLE                         R74 K108 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      778 GETUPVAL                         R75 0
      779 GETTABLEKS                       R75 R75 K72 ["createElement"]
      781 LOADK                            R76 K109 ["Folder"]
      782 NEWTABLE                         R77 0 0
      784 DUPTABLE                         R78 K111 [{"Cover"}]
      785 GETUPVAL                         R79 0
      786 GETTABLEKS                       R79 R79 K72 ["createElement"]
      788 GETUPVAL                         R80 12
      789 GETTABLEKS                       R80 R80 K73 ["View"]
      791 DUPTABLE                         R81 K116 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"] = 2, ["testId"] = "CompositorNodeCover"}]
      792 SETTABLEKS                       R58 R81 K74 ["tag"]
      794 GETIMPORT                        R82 K119 [UDim2.fromScale]
      796 LOADN                            R83 1
      797 LOADN                            R84 1
      798 CALL                             R82 2 1
      799 SETTABLEKS                       R82 R81 K36 ["Size"]
      801 SETTABLEKS                       R57 R81 K112 ["GroupTransparency"]
      803 CALL                             R79 2 1
      804 SETTABLEKS                       R79 R78 K110 ["Cover"]
      806 CALL                             R75 3 1
      807 SETTABLEKS                       R75 R74 K102 ["CoverContainer"]
      809 GETUPVAL                         R75 0
      810 GETTABLEKS                       R75 R75 K72 ["createElement"]
      812 GETUPVAL                         R76 12
      813 GETTABLEKS                       R76 R76 K73 ["View"]
      815 DUPTABLE                         R77 K121 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      816 NEWTABLE                         R78 4 0
      818 LOADB                            R79 1
      819 SETTABLEKS                       R79 R78 K122 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      821 GETUPVAL                         R80 26
      822 NOT                              R79 R80
      823 JUMPIFNOT                        R79 ; [+1]
      824 NOT                              R79 R9
      825 SETTABLEKS                       R79 R78 K123 ["radius-small bg-shift-200"]
      827 GETUPVAL                         R79 22
      828 JUMPIF                           R79 ; [+8]
      829 JUMPIFNOT                        R8 ; [+4]
      830 GETTABLEKS                       R80 R0 K14 ["Collapsed"]
      832 NOT                              R79 R80
      833 JUMPIF                           R79 ; [+3]
      834 MOVE                             R79 R9
      835 JUMPIFNOT                        R79 ; [+1]
      836 NOT                              R79 R8
      837 SETTABLEKS                       R79 R78 K124 ["radius-small"]
      839 GETUPVAL                         R80 22
      840 NOT                              R79 R80
      841 JUMPIFNOT                        R79 ; [+4]
      842 MOVE                             R79 R8
      843 JUMPIFNOT                        R79 ; [+2]
      844 GETTABLEKS                       R79 R0 K14 ["Collapsed"]
      846 SETTABLEKS                       R79 R78 K125 ["radius-large"]
      848 SETTABLEKS                       R78 R77 K74 ["tag"]
      850 JUMPIFNOT                        R9 ; [+2]
      851 MOVE                             R78 R20
      852 JUMP                             ; [+1]
      853 LOADNIL                          R78
      854 SETTABLEKS                       R78 R77 K120 ["backgroundStyle"]
      856 SETTABLEKS                       R54 R77 K76 ["LayoutOrder"]
      858 SETTABLEKS                       R45 R77 K98 ["ref"]
      860 DUPTABLE                         R78 K132 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "HelpButton", "Children"}]
      861 GETTABLEKS                       R80 R0 K133 ["Collapsible"]
      863 JUMPIFEQKB                       R80 FALSE ; [+47]
      865 GETUPVAL                         R80 26
      866 JUMPIF                           R80 ; [+44]
      867 GETUPVAL                         R79 0
      868 GETTABLEKS                       R79 R79 K72 ["createElement"]
      870 GETUPVAL                         R80 12
      871 GETTABLEKS                       R80 R80 K134 ["Button"]
      873 DUPTABLE                         R81 K140 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      874 SETTABLEKS                       R50 R81 K135 ["icon"]
      876 GETUPVAL                         R82 12
      877 GETTABLEKS                       R82 R82 K20 ["Enums"]
      879 GETTABLEKS                       R82 R82 K141 ["ButtonVariant"]
      881 GETTABLEKS                       R82 R82 K142 ["Text"]
      883 SETTABLEKS                       R82 R81 K136 ["variant"]
      885 SETTABLEKS                       R51 R81 K137 ["onActivated"]
      887 GETUPVAL                         R82 12
      888 GETTABLEKS                       R82 R82 K20 ["Enums"]
      890 GETTABLEKS                       R82 R82 K143 ["InputSize"]
      892 GETTABLEKS                       R82 R82 K144 ["XSmall"]
      894 SETTABLEKS                       R82 R81 K138 ["size"]
      896 MOVE                             R82 R2
      897 CALL                             R82 0 1
      898 SETTABLEKS                       R82 R81 K76 ["LayoutOrder"]
      900 GETUPVAL                         R82 12
      901 GETTABLEKS                       R82 R82 K20 ["Enums"]
      903 GETTABLEKS                       R82 R82 K145 ["FillBehavior"]
      905 GETTABLEKS                       R82 R82 K146 ["Fit"]
      907 SETTABLEKS                       R82 R81 K139 ["fillBehavior"]
      909 CALL                             R79 2 1
      910 JUMP                             ; [+1]
      911 LOADNIL                          R79
      912 SETTABLEKS                       R79 R78 K126 ["DEPRECATED_ToggleButton"]
      914 GETUPVAL                         R79 0
      915 GETTABLEKS                       R79 R79 K72 ["createElement"]
      917 GETUPVAL                         R80 12
      918 GETTABLEKS                       R80 R80 K142 ["Text"]
      920 DUPTABLE                         R81 K151 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      921 NEWTABLE                         R82 2 0
      923 LOADB                            R83 1
      924 SETTABLEKS                       R83 R82 K152 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      926 GETUPVAL                         R83 26
      927 JUMPIF                           R83 ; [+6]
      928 GETTABLEKS                       R84 R0 K133 ["Collapsible"]
      930 JUMPIFEQKB                       R84 FALSE ; [+2]
      932 LOADB                            R83 0 +1
      933 LOADB                            R83 1
      934 SETTABLEKS                       R83 R82 K153 ["padding-left-small"]
      936 SETTABLEKS                       R82 R81 K74 ["tag"]
      938 SETTABLEKS                       R52 R81 K142 ["Text"]
      940 MOVE                             R82 R2
      941 CALL                             R82 0 1
      942 SETTABLEKS                       R82 R81 K76 ["LayoutOrder"]
      944 GETTABLEKS                       R83 R40 K50 ["enabled"]
      946 NOT                              R82 R83
      947 SETTABLEKS                       R82 R81 K149 ["Visible"]
      949 CALL                             R79 2 1
      950 SETTABLEKS                       R79 R78 K127 ["Title"]
      952 GETUPVAL                         R79 0
      953 GETTABLEKS                       R79 R79 K72 ["createElement"]
      955 GETUPVAL                         R80 12
      956 GETTABLEKS                       R80 R80 K154 ["TextInput"]
      958 DUPTABLE                         R81 K161 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      959 NEWTABLE                         R82 1 0
      961 LOADB                            R83 1
      962 SETTABLEKS                       R83 R82 K152 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      964 SETTABLEKS                       R82 R81 K74 ["tag"]
      966 SETTABLEKS                       R38 R81 K59 ["text"]
      968 MOVE                             R82 R2
      969 CALL                             R82 0 1
      970 SETTABLEKS                       R82 R81 K76 ["LayoutOrder"]
      972 SETTABLEKS                       R39 R81 K155 ["onChanged"]
      974 GETUPVAL                         R82 12
      975 GETTABLEKS                       R82 R82 K20 ["Enums"]
      977 GETTABLEKS                       R82 R82 K143 ["InputSize"]
      979 GETTABLEKS                       R82 R82 K144 ["XSmall"]
      981 SETTABLEKS                       R82 R81 K138 ["size"]
      983 GETUPVAL                         R82 12
      984 GETTABLEKS                       R82 R82 K20 ["Enums"]
      986 GETTABLEKS                       R82 R82 K162 ["InputFocusBehavior"]
      988 GETTABLEKS                       R82 R82 K163 ["Highlight"]
      990 SETTABLEKS                       R82 R81 K157 ["focusBehavior"]
      992 SETTABLEKS                       R41 R81 K158 ["textBoxRef"]
      994 SETTABLEKS                       R53 R81 K159 ["onFocusLost"]
      996 SETTABLEKS                       R41 R81 K98 ["ref"]
      998 GETIMPORT                        R82 K166 [UDim.new]
     1000 LOADN                            R83 0
     1001 LOADN                            R84 100
     1002 CALL                             R82 2 1
     1003 SETTABLEKS                       R82 R81 K160 ["width"]
     1005 GETTABLEKS                       R82 R40 K50 ["enabled"]
     1007 SETTABLEKS                       R82 R81 K149 ["Visible"]
     1009 CALL                             R79 2 1
     1010 SETTABLEKS                       R79 R78 K128 ["TitleInput"]
     1012 GETTABLEKS                       R80 R0 K133 ["Collapsible"]
     1014 JUMPIFEQKB                       R80 FALSE ; [+47]
     1016 GETUPVAL                         R80 26
     1017 JUMPIFNOT                        R80 ; [+44]
     1018 GETUPVAL                         R79 0
     1019 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1021 GETUPVAL                         R80 12
     1022 GETTABLEKS                       R80 R80 K134 ["Button"]
     1024 DUPTABLE                         R81 K140 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
     1025 SETTABLEKS                       R50 R81 K135 ["icon"]
     1027 GETUPVAL                         R82 12
     1028 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1030 GETTABLEKS                       R82 R82 K141 ["ButtonVariant"]
     1032 GETTABLEKS                       R82 R82 K142 ["Text"]
     1034 SETTABLEKS                       R82 R81 K136 ["variant"]
     1036 SETTABLEKS                       R51 R81 K137 ["onActivated"]
     1038 GETUPVAL                         R82 12
     1039 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1041 GETTABLEKS                       R82 R82 K143 ["InputSize"]
     1043 GETTABLEKS                       R82 R82 K144 ["XSmall"]
     1045 SETTABLEKS                       R82 R81 K138 ["size"]
     1047 MOVE                             R82 R2
     1048 CALL                             R82 0 1
     1049 SETTABLEKS                       R82 R81 K76 ["LayoutOrder"]
     1051 GETUPVAL                         R82 12
     1052 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1054 GETTABLEKS                       R82 R82 K145 ["FillBehavior"]
     1056 GETTABLEKS                       R82 R82 K146 ["Fit"]
     1058 SETTABLEKS                       R82 R81 K139 ["fillBehavior"]
     1060 CALL                             R79 2 1
     1061 JUMP                             ; [+1]
     1062 LOADNIL                          R79
     1063 SETTABLEKS                       R79 R78 K129 ["ToggleButton"]
     1065 GETTABLEKS                       R80 R0 K167 ["OnHelpActivated"]
     1067 JUMPIFNOT                        R80 ; [+44]
     1068 GETUPVAL                         R79 0
     1069 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1071 GETUPVAL                         R80 12
     1072 GETTABLEKS                       R80 R80 K134 ["Button"]
     1074 DUPTABLE                         R81 K170 [{["icon"] = "circle-question", ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"], ["testId"] = "CompositorNode-HelpButton"}]
     1075 GETUPVAL                         R82 12
     1076 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1078 GETTABLEKS                       R82 R82 K141 ["ButtonVariant"]
     1080 GETTABLEKS                       R82 R82 K142 ["Text"]
     1082 SETTABLEKS                       R82 R81 K136 ["variant"]
     1084 GETTABLEKS                       R82 R0 K167 ["OnHelpActivated"]
     1086 SETTABLEKS                       R82 R81 K137 ["onActivated"]
     1088 GETUPVAL                         R82 12
     1089 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1091 GETTABLEKS                       R82 R82 K143 ["InputSize"]
     1093 GETTABLEKS                       R82 R82 K144 ["XSmall"]
     1095 SETTABLEKS                       R82 R81 K138 ["size"]
     1097 MOVE                             R82 R2
     1098 CALL                             R82 0 1
     1099 SETTABLEKS                       R82 R81 K76 ["LayoutOrder"]
     1101 GETUPVAL                         R82 12
     1102 GETTABLEKS                       R82 R82 K20 ["Enums"]
     1104 GETTABLEKS                       R82 R82 K145 ["FillBehavior"]
     1106 GETTABLEKS                       R82 R82 K146 ["Fit"]
     1108 SETTABLEKS                       R82 R81 K139 ["fillBehavior"]
     1110 CALL                             R79 2 1
     1111 JUMP                             ; [+1]
     1112 LOADNIL                          R79
     1113 SETTABLEKS                       R79 R78 K130 ["HelpButton"]
     1115 GETUPVAL                         R79 0
     1116 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1118 LOADK                            R80 K109 ["Folder"]
     1119 NEWTABLE                         R81 0 0
     1121 GETTABLEKS                       R82 R0 K171 ["HeaderChildren"]
     1123 CALL                             R79 3 1
     1124 SETTABLEKS                       R79 R78 K131 ["Children"]
     1126 CALL                             R75 3 1
     1127 SETTABLEKS                       R75 R74 K103 ["CompositorNodeHeader"]
     1129 GETUPVAL                         R75 26
     1130 JUMPIFNOT                        R75 ; [+16]
     1131 GETTABLEKS                       R76 R0 K14 ["Collapsed"]
     1133 NOT                              R75 R76
     1134 JUMPIFNOT                        R75 ; [+12]
     1135 GETUPVAL                         R75 0
     1136 GETTABLEKS                       R75 R75 K72 ["createElement"]
     1138 GETUPVAL                         R76 12
     1139 GETTABLEKS                       R76 R76 K172 ["Divider"]
     1141 DUPTABLE                         R77 K173 [{"LayoutOrder"}]
     1142 MOVE                             R78 R2
     1143 CALL                             R78 0 1
     1144 SETTABLEKS                       R78 R77 K76 ["LayoutOrder"]
     1146 CALL                             R75 2 1
     1147 SETTABLEKS                       R75 R74 K104 ["TitleDivider"]
     1149 GETUPVAL                         R76 0
     1150 GETTABLEKS                       R76 R76 K131 ["Children"]
     1152 GETTABLEKS                       R76 R76 K174 ["count"]
     1154 GETTABLEKS                       R77 R0 K175 ["children"]
     1156 CALL                             R76 1 1
     1157 LOADN                            R77 0
     1158 JUMPIFNOTLT                      R77 R76 ; [+142]
     1160 GETUPVAL                         R75 0
     1161 GETTABLEKS                       R75 R75 K72 ["createElement"]
     1163 GETUPVAL                         R76 12
     1164 GETTABLEKS                       R76 R76 K73 ["View"]
     1166 DUPTABLE                         R77 K176 [{"tag", "LayoutOrder"}]
     1167 JUMPIFNOT                        R11 ; [+2]
     1168 LOADK                            R78 K177 ["size-full-0 grow"]
     1169 JUMP                             ; [+1]
     1170 LOADK                            R78 K178 ["size-full-700 auto-y"]
     1171 SETTABLEKS                       R78 R77 K74 ["tag"]
     1173 MOVE                             R78 R2
     1174 CALL                             R78 0 1
     1175 SETTABLEKS                       R78 R77 K76 ["LayoutOrder"]
     1177 DUPTABLE                         R78 K181 [{"Contents", "ResizeBars"}]
     1178 GETUPVAL                         R79 0
     1179 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1181 GETUPVAL                         R80 12
     1182 GETTABLEKS                       R80 R80 K73 ["View"]
     1184 DUPTABLE                         R81 K183 [{["tag"], ["ZIndex"] = 1, ["testId"] = "CompositorNodeContents"}]
     1185 NEWTABLE                         R82 4 0
     1187 LOADB                            R83 1
     1188 SETTABLEKS                       R83 R82 K184 ["col padding-y-xsmall radius-small"]
     1190 SETTABLEKS                       R13 R82 K185 ["size-full"]
     1192 NOT                              R83 R13
     1193 SETTABLEKS                       R83 R82 K186 ["size-full-0 auto-y"]
     1195 SETTABLEKS                       R82 R81 K74 ["tag"]
     1197 DUPTABLE                         R82 K188 [{"NodeProperties"}]
     1198 GETUPVAL                         R83 0
     1199 GETTABLEKS                       R83 R83 K72 ["createElement"]
     1201 GETUPVAL                         R84 0
     1202 GETTABLEKS                       R84 R84 K189 ["Fragment"]
     1204 NEWTABLE                         R85 0 0
     1206 GETTABLEKS                       R86 R0 K175 ["children"]
     1208 CALL                             R83 3 1
     1209 SETTABLEKS                       R83 R82 K187 ["NodeProperties"]
     1211 CALL                             R79 3 1
     1212 SETTABLEKS                       R79 R78 K179 ["Contents"]
     1214 GETUPVAL                         R80 9
     1215 CALL                             R80 0 1
     1216 JUMPIFNOT                        R80 ; [+45]
     1217 JUMPIF                           R10 ; [+1]
     1218 JUMPIFNOT                        R11 ; [+41]
     1219 GETUPVAL                         R79 0
     1220 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1222 GETUPVAL                         R80 27
     1223 DUPTABLE                         R81 K200 [{["tag"] = "radius-small", ["showHorizontal"], ["showVertical"], ["nodeWidthBinding"], ["minimumWidth"], ["OnResized"], ["nodeHeightBinding"], ["OnResizedVertical"], ["onResizingChanged"], ["Style"], ["ZIndex"] = 4}]
     1224 SETTABLEKS                       R10 R81 K190 ["showHorizontal"]
     1226 SETTABLEKS                       R11 R81 K191 ["showVertical"]
     1228 SETTABLEKS                       R24 R81 K192 ["nodeWidthBinding"]
     1230 SETTABLEKS                       R21 R81 K193 ["minimumWidth"]
     1232 SETTABLEKS                       R23 R81 K194 ["OnResized"]
     1234 SETTABLEKS                       R27 R81 K195 ["nodeHeightBinding"]
     1236 SETTABLEKS                       R26 R81 K196 ["OnResizedVertical"]
     1238 SETTABLEKS                       R32 R81 K197 ["onResizingChanged"]
     1240 GETTABLEKS                       R83 R0 K66 ["Selected"]
     1242 JUMPIFNOT                        R83 ; [+7]
     1243 GETTABLEKS                       R82 R18 K23 ["Color"]
     1245 GETTABLEKS                       R82 R82 K67 ["System"]
     1247 GETTABLEKS                       R82 R82 K68 ["Neutral"]
     1249 JUMP                             ; [+6]
     1250 GETTABLEKS                       R82 R18 K23 ["Color"]
     1252 GETTABLEKS                       R82 R82 K201 ["Stroke"]
     1254 GETTABLEKS                       R82 R82 K202 ["Default"]
     1256 SETTABLEKS                       R82 R81 K198 ["Style"]
     1258 CALL                             R79 2 1
     1259 JUMP                             ; [+37]
     1260 LOADNIL                          R79
     1261 JUMP                             ; [+35]
     1262 JUMPIF                           R8 ; [+33]
     1263 GETUPVAL                         R79 0
     1264 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1266 GETUPVAL                         R80 27
     1267 DUPTABLE                         R81 K203 [{["tag"] = "radius-small", ["nodeWidthBinding"], ["minimumWidth"], ["OnResized"], ["onResizingChanged"], ["Style"], ["ZIndex"] = 4}]
     1268 SETTABLEKS                       R24 R81 K192 ["nodeWidthBinding"]
     1270 SETTABLEKS                       R21 R81 K193 ["minimumWidth"]
     1272 SETTABLEKS                       R23 R81 K194 ["OnResized"]
     1274 SETTABLEKS                       R32 R81 K197 ["onResizingChanged"]
     1276 GETTABLEKS                       R83 R0 K66 ["Selected"]
     1278 JUMPIFNOT                        R83 ; [+7]
     1279 GETTABLEKS                       R82 R18 K23 ["Color"]
     1281 GETTABLEKS                       R82 R82 K67 ["System"]
     1283 GETTABLEKS                       R82 R82 K68 ["Neutral"]
     1285 JUMP                             ; [+6]
     1286 GETTABLEKS                       R82 R18 K23 ["Color"]
     1288 GETTABLEKS                       R82 R82 K201 ["Stroke"]
     1290 GETTABLEKS                       R82 R82 K202 ["Default"]
     1292 SETTABLEKS                       R82 R81 K198 ["Style"]
     1294 CALL                             R79 2 1
     1295 JUMP                             ; [+1]
     1296 LOADNIL                          R79
     1297 SETTABLEKS                       R79 R78 K180 ["ResizeBars"]
     1299 CALL                             R75 3 1
     1300 JUMP                             ; [+1]
     1301 LOADNIL                          R75
     1302 SETTABLEKS                       R75 R74 K105 ["CompositorNodeContent"]
     1304 GETTABLEKS                       R75 R0 K106 ["ContextToolbar"]
     1306 JUMPIFNOT                        R75 ; [+21]
     1307 GETTABLEKS                       R76 R0 K66 ["Selected"]
     1309 JUMPIF                           R76 ; [+2]
     1310 MOVE                             R75 R16
     1311 JUMPIFNOT                        R75 ; [+16]
     1312 GETUPVAL                         R75 0
     1313 GETTABLEKS                       R75 R75 K72 ["createElement"]
     1315 GETUPVAL                         R76 28
     1316 DUPTABLE                         R77 K207 [{"Buttons", "positionBinding", "widthBinding"}]
     1317 GETTABLEKS                       R78 R0 K106 ["ContextToolbar"]
     1319 GETTABLEKS                       R78 R78 K204 ["Buttons"]
     1321 SETTABLEKS                       R78 R77 K204 ["Buttons"]
     1323 SETTABLEKS                       R34 R77 K205 ["positionBinding"]
     1325 SETTABLEKS                       R37 R77 K206 ["widthBinding"]
     1327 CALL                             R75 2 1
     1328 SETTABLEKS                       R75 R74 K106 ["ContextToolbar"]
     1330 GETUPVAL                         R75 17
     1331 CALL                             R75 0 1
     1332 JUMPIFNOT                        R75 ; [+140]
     1333 GETUPVAL                         R75 0
     1334 GETTABLEKS                       R75 R75 K72 ["createElement"]
     1336 LOADK                            R76 K109 ["Folder"]
     1337 NEWTABLE                         R77 0 0
     1339 DUPTABLE                         R78 K209 [{"SelectionHighlight"}]
     1340 GETTABLEKS                       R80 R0 K66 ["Selected"]
     1342 JUMPIFNOT                        R80 ; [+126]
     1343 GETUPVAL                         R80 26
     1344 JUMPIFNOT                        R80 ; [+66]
     1345 GETUPVAL                         R79 0
     1346 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1348 GETUPVAL                         R80 12
     1349 GETTABLEKS                       R80 R80 K73 ["View"]
     1351 DUPTABLE                         R81 K211 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1352 GETUPVAL                         R82 0
     1353 GETTABLEKS                       R82 R82 K72 ["createElement"]
     1355 GETUPVAL                         R83 12
     1356 GETTABLEKS                       R83 R83 K73 ["View"]
     1358 DUPTABLE                         R84 K213 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1359 NEWTABLE                         R85 4 0
     1361 LOADB                            R86 1
     1362 SETTABLEKS                       R86 R85 K214 ["position-center-center anchor-center-center"]
     1364 GETUPVAL                         R87 22
     1365 JUMPIFNOT                        R87 ; [+2]
     1366 LOADB                            R86 1
     1367 JUMP                             ; [+6]
     1368 GETUPVAL                         R87 9
     1369 CALL                             R87 0 1
     1370 JUMPIFNOT                        R87 ; [+2]
     1371 NOT                              R86 R14
     1372 JUMP                             ; [+1]
     1373 NOT                              R86 R8
     1374 SETTABLEKS                       R86 R85 K124 ["radius-small"]
     1376 GETUPVAL                         R87 22
     1377 JUMPIFNOT                        R87 ; [+2]
     1378 LOADB                            R86 0
     1379 JUMP                             ; [+6]
     1380 GETUPVAL                         R87 9
     1381 CALL                             R87 0 1
     1382 JUMPIFNOT                        R87 ; [+2]
     1383 MOVE                             R86 R14
     1384 JUMP                             ; [+1]
     1385 MOVE                             R86 R8
     1386 SETTABLEKS                       R86 R85 K125 ["radius-large"]
     1388 SETTABLEKS                       R85 R84 K74 ["tag"]
     1390 GETIMPORT                        R85 K215 [UDim2.new]
     1392 LOADN                            R86 1
     1393 GETTABLEKS                       R87 R18 K216 ["Padding"]
     1395 GETTABLEKS                       R87 R87 K217 ["Small"]
     1397 LOADN                            R88 1
     1398 GETTABLEKS                       R89 R18 K216 ["Padding"]
     1400 GETTABLEKS                       R89 R89 K217 ["Small"]
     1402 CALL                             R85 4 1
     1403 SETTABLEKS                       R85 R84 K36 ["Size"]
     1405 DUPTABLE                         R85 K219 [{"UIStroke"}]
     1406 SETTABLEKS                       R60 R85 K218 ["UIStroke"]
     1408 CALL                             R82 3 -1
     1409 CALL                             R79 -1 1
     1410 JUMP                             ; [+59]
     1411 GETUPVAL                         R79 0
     1412 GETTABLEKS                       R79 R79 K72 ["createElement"]
     1414 GETUPVAL                         R80 12
     1415 GETTABLEKS                       R80 R80 K73 ["View"]
     1417 DUPTABLE                         R81 K213 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1418 NEWTABLE                         R82 4 0
     1420 LOADB                            R83 1
     1421 SETTABLEKS                       R83 R82 K214 ["position-center-center anchor-center-center"]
     1423 GETUPVAL                         R84 22
     1424 JUMPIFNOT                        R84 ; [+2]
     1425 LOADB                            R83 1
     1426 JUMP                             ; [+6]
     1427 GETUPVAL                         R84 9
     1428 CALL                             R84 0 1
     1429 JUMPIFNOT                        R84 ; [+2]
     1430 NOT                              R83 R14
     1431 JUMP                             ; [+1]
     1432 NOT                              R83 R8
     1433 SETTABLEKS                       R83 R82 K124 ["radius-small"]
     1435 GETUPVAL                         R84 22
     1436 JUMPIFNOT                        R84 ; [+2]
     1437 LOADB                            R83 0
     1438 JUMP                             ; [+6]
     1439 GETUPVAL                         R84 9
     1440 CALL                             R84 0 1
     1441 JUMPIFNOT                        R84 ; [+2]
     1442 MOVE                             R83 R14
     1443 JUMP                             ; [+1]
     1444 MOVE                             R83 R8
     1445 SETTABLEKS                       R83 R82 K125 ["radius-large"]
     1447 SETTABLEKS                       R82 R81 K74 ["tag"]
     1449 GETIMPORT                        R82 K215 [UDim2.new]
     1451 LOADN                            R83 1
     1452 GETTABLEKS                       R84 R18 K216 ["Padding"]
     1454 GETTABLEKS                       R84 R84 K217 ["Small"]
     1456 LOADN                            R85 1
     1457 GETTABLEKS                       R86 R18 K216 ["Padding"]
     1459 GETTABLEKS                       R86 R86 K217 ["Small"]
     1461 CALL                             R82 4 1
     1462 SETTABLEKS                       R82 R81 K36 ["Size"]
     1464 DUPTABLE                         R82 K219 [{"UIStroke"}]
     1465 SETTABLEKS                       R60 R82 K218 ["UIStroke"]
     1467 CALL                             R79 3 1
     1468 JUMP                             ; [+1]
     1469 LOADNIL                          R79
     1470 SETTABLEKS                       R79 R78 K208 ["SelectionHighlight"]
     1472 CALL                             R75 3 1
     1473 SETTABLEKS                       R75 R74 K107 ["SelectionHighlightContainer"]
     1475 CALL                             R71 3 1
     1476 SETTABLEKS                       R71 R70 K93 ["Node"]
     1478 GETUPVAL                         R72 21
     1479 JUMPIFNOT                        R72 ; [+15]
     1480 GETUPVAL                         R71 0
     1481 GETTABLEKS                       R71 R71 K72 ["createElement"]
     1483 GETUPVAL                         R72 12
     1484 GETTABLEKS                       R72 R72 K73 ["View"]
     1486 DUPTABLE                         R73 K221 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1487 MOVE                             R74 R2
     1488 CALL                             R74 0 1
     1489 SETTABLEKS                       R74 R73 K76 ["LayoutOrder"]
     1491 SETTABLEKS                       R56 R73 K98 ["ref"]
     1493 CALL                             R71 2 1
     1494 JUMP                             ; [+1]
     1495 LOADNIL                          R71
     1496 SETTABLEKS                       R71 R70 K94 ["DebugMarker"]
     1498 GETUPVAL                         R72 29
     1499 CALL                             R72 0 1
     1500 JUMPIFNOT                        R72 ; [+5]
     1501 LOADB                            R71 0
     1502 GETTABLEKS                       R72 R0 K222 ["CanDrag"]
     1504 JUMPIFEQKB                       R72 FALSE ; [+39]
     1506 GETUPVAL                         R71 0
     1507 GETTABLEKS                       R71 R71 K72 ["createElement"]
     1509 LOADK                            R72 K223 ["UIDragDetector"]
     1510 NEWTABLE                         R73 8 0
     1512 GETIMPORT                        R74 K227 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1514 SETTABLEKS                       R74 R73 K228 ["DragStyle"]
     1516 GETIMPORT                        R74 K231 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1518 SETTABLEKS                       R74 R73 K232 ["ResponseStyle"]
     1520 GETTABLEKS                       R74 R3 K233 ["getViewport"]
     1522 CALL                             R74 0 1
     1523 SETTABLEKS                       R74 R73 K234 ["ReferenceUIInstance"]
     1525 GETUPVAL                         R74 0
     1526 GETTABLEKS                       R74 R74 K235 ["Event"]
     1528 GETTABLEKS                       R74 R74 K236 ["DragStart"]
     1530 SETTABLE                         R46 R73 R74
     1531 GETUPVAL                         R74 0
     1532 GETTABLEKS                       R74 R74 K235 ["Event"]
     1534 GETTABLEKS                       R74 R74 K237 ["DragContinue"]
     1536 SETTABLE                         R47 R73 R74
     1537 GETUPVAL                         R74 0
     1538 GETTABLEKS                       R74 R74 K235 ["Event"]
     1540 GETTABLEKS                       R74 R74 K238 ["DragEnd"]
     1542 SETTABLE                         R48 R73 R74
     1543 CALL                             R71 2 1
     1544 SETTABLEKS                       R71 R70 K95 ["DragDetector"]
     1546 GETUPVAL                         R71 23
     1547 JUMPIFNOT                        R71 ; [+26]
     1548 GETUPVAL                         R71 0
     1549 GETTABLEKS                       R71 R71 K72 ["createElement"]
     1551 LOADK                            R72 K239 ["Frame"]
     1552 NEWTABLE                         R73 4 0
     1554 LOADN                            R74 1
     1555 SETTABLEKS                       R74 R73 K78 ["BackgroundTransparency"]
     1557 GETIMPORT                        R74 K119 [UDim2.fromScale]
     1559 LOADN                            R75 1
     1560 LOADN                            R76 1
     1561 CALL                             R74 2 1
     1562 SETTABLEKS                       R74 R73 K36 ["Size"]
     1564 LOADN                            R74 -10
     1565 SETTABLEKS                       R74 R73 K77 ["ZIndex"]
     1567 GETUPVAL                         R74 0
     1568 GETTABLEKS                       R74 R74 K235 ["Event"]
     1570 GETTABLEKS                       R74 R74 K240 ["InputBegan"]
     1572 SETTABLE                         R61 R73 R74
     1573 CALL                             R71 2 1
     1574 SETTABLEKS                       R71 R70 K96 ["RightClickCapture"]
     1576 CALL                             R67 3 1
     1577 SETTABLEKS                       R67 R66 K85 ["ComponentContext"]
     1579 CALL                             R63 3 -1
     1580 CLOSEUPVALS                      R8
     1581 RETURN                           R63 -1

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
       51 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Flags"]
       58 GETTABLEKS                       R9 R9 K15 ["FFlagAnimGraphUI_RightClickSelects"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Flags"]
       65 GETTABLEKS                       R10 R10 K16 ["FFlagAnimGraphUI_StateMachineNodeType"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Flags"]
       72 GETTABLEKS                       R11 R11 K17 ["FFlagAnimGraphUI_StyleTouches"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Flags"]
       79 GETTABLEKS                       R12 R12 K18 ["FFlagAnimGraphUI_UnifyNodeCorners"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K19 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["Foundation"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K21 ["Components"]
       93 GETTABLEKS                       R14 R14 K22 ["GraphContext"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K19 ["Parent"]
      100 GETTABLEKS                       R15 R15 K23 ["Graphing"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K21 ["Components"]
      107 GETTABLEKS                       R16 R16 K24 ["NodeRightClickMenuContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K19 ["Parent"]
      114 GETTABLEKS                       R17 R17 K25 ["React"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K19 ["Parent"]
      121 GETTABLEKS                       R18 R18 K26 ["ReactUtils"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETIMPORT                        R19 K1 [script]
      128 GETTABLEKS                       R19 R19 K27 ["ResizeBars"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K19 ["Parent"]
      135 GETTABLEKS                       R20 R20 K28 ["Signals"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K19 ["Parent"]
      142 GETTABLEKS                       R21 R21 K29 ["SignalsReact"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K21 ["Components"]
      149 GETTABLEKS                       R22 R22 K30 ["SpotlightedNodeContext"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K19 ["Parent"]
      156 GETTABLEKS                       R23 R23 K31 ["TestLoader"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K21 ["Components"]
      163 GETTABLEKS                       R24 R24 K32 ["ViewportRectContext"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K10 ["Util"]
      170 GETTABLEKS                       R25 R25 K33 ["bumpNodeZIndex"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K12 ["Flags"]
      177 GETTABLEKS                       R26 R26 K34 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K12 ["Flags"]
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUI_LoadNodeSizes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K12 ["Flags"]
      198 GETTABLEKS                       R29 R29 K37 ["getFFlagAnimGraphUI_RunTimeDebug"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K12 ["Flags"]
      205 GETTABLEKS                       R30 R30 K38 ["getFFlagEnableExpressionSyntaxHighlighting"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K39 ["Hooks"]
      212 GETTABLEKS                       R31 R31 K40 ["useAbsoluteSize"]
      214 CALL                             R30 1 1
      215 GETIMPORT                        R31 K5 [require]
      217 GETTABLEKS                       R32 R0 K39 ["Hooks"]
      219 GETTABLEKS                       R32 R32 K41 ["useFoundationStudioTheme"]
      221 CALL                             R31 1 1
      222 GETTABLEKS                       R32 R22 K42 ["isCli"]
      224 CALL                             R32 0 1
      225 JUMPIF                           R32 ; [+3]
      226 GETTABLEKS                       R32 R22 K43 ["isFTF"]
      228 CALL                             R32 0 1
      229 DUPCLOSURE                       R33 K44 [PROTO_32]
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R13
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R25
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R27
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R30
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R7
      250 CAPTURE                          VAL R5
      251 CAPTURE                          VAL R32
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R10
      257 CAPTURE                          VAL R18
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R28
      260 RETURN                           R33 1
