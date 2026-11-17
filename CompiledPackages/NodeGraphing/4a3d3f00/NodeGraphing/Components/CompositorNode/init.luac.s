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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["ObservePosition"]
        5 JUMPIF                           R2 ; [+7]
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K1 ["of"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["Position"]
       12 CALL                             R2 1 1
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromScale]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_7]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_10:
        0 DIVRK                            R1 K0 [1] R0
        1 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 2
        2 MUL                              R1 R2 R3
        3 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["disable"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+2]
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+45]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["onRename"]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K2 ["onRename"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 4
       26 GETTABLEKS                       R1 R1 K3 ["NodeType"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K3 ["NodeType"]
       31 GETTABLEKS                       R2 R2 K4 ["Parameter"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+19]
       35 GETUPVAL                         R1 4
       36 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       38 GETTABLEKS                       R1 R1 K6 ["name"]
       40 JUMPIFNOT                        R1 ; [+12]
       41 GETUPVAL                         R1 6
       42 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       47 GETTABLEKS                       R2 R2 K6 ["name"]
       49 MOVE                             R3 R0
       50 GETUPVAL                         R4 2
       51 CALL                             R1 3 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R1 6
       54 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       56 GETUPVAL                         R2 2
       57 MOVE                             R3 R0
       58 CALL                             R1 2 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R1 4
       61 GETTABLEKS                       R1 R1 K9 ["IsParameterNode"]
       63 JUMPIFNOT                        R1 ; [+18]
       64 GETUPVAL                         R1 4
       65 GETTABLEKS                       R1 R1 K5 ["GraphPayload"]
       67 GETTABLEKS                       R1 R1 K6 ["name"]
       69 JUMPIFNOT                        R1 ; [+12]
       70 GETUPVAL                         R1 6
       71 GETTABLEKS                       R1 R1 K7 ["renameParameter"]
       73 GETUPVAL                         R2 4
       74 GETTABLEKS                       R2 R2 K5 ["GraphPayload"]
       76 GETTABLEKS                       R2 R2 K6 ["name"]
       78 MOVE                             R3 R0
       79 GETUPVAL                         R4 2
       80 CALL                             R1 3 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R1 6
       83 GETTABLEKS                       R1 R1 K8 ["renameNode"]
       85 GETUPVAL                         R2 2
       86 MOVE                             R3 R0
       87 CALL                             R1 2 0
       88 RETURN                           R0 0

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
        0 NEWTABLE                         R0 8 0
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
       50 LOADB                            R1 1
       51 SETTABLEKS                       R1 R0 K7 ["stroke-default"]
       53 RETURN                           R0 1

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
        4 JUMPIFNOTEQ                      R2 R3 ; [+48]
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
       28 GETIMPORT                        R2 K9 [Vector2.new]
       30 GETTABLEKS                       R3 R1 K10 ["Position"]
       32 GETTABLEKS                       R3 R3 K11 ["X"]
       34 GETTABLEKS                       R4 R1 K10 ["Position"]
       36 GETTABLEKS                       R4 R4 K12 ["Y"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R3 R3 K13 ["showMenu"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K5 ["GraphPayload"]
       45 GETTABLEKS                       R4 R4 K6 ["id"]
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R5 R5 K14 ["absToPlot"]
       50 MOVE                             R6 R2
       51 CALL                             R5 1 -1
       52 CALL                             R3 -1 0
       53 RETURN                           R0 0

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
      333 GETUPVAL                         R34 15
      334 GETTABLEKS                       R34 R34 K34 ["useSignalBinding"]
      336 GETUPVAL                         R35 0
      337 GETTABLEKS                       R35 R35 K33 ["useMemo"]
      339 NEWCLOSURE                       R36 P5
      340 CAPTURE                          UPVAL U17
      341 CAPTURE                          VAL R3
      342 CAPTURE                          VAL R0
      343 CAPTURE                          UPVAL U18
      344 NEWTABLE                         R37 0 3
      346 MOVE                             R38 R3
      347 GETTABLEKS                       R39 R0 K40 ["ObservePosition"]
      349 GETTABLEKS                       R40 R0 K41 ["Position"]
      351 SETLIST                          R37 R38 3 [1]
      353 CALL                             R35 2 -1
      354 CALL                             R34 -1 1
      355 GETUPVAL                         R35 0
      356 GETTABLEKS                       R35 R35 K33 ["useMemo"]
      358 NEWCLOSURE                       R36 P6
      359 CAPTURE                          VAL R34
      360 NEWTABLE                         R37 0 1
      362 MOVE                             R38 R34
      363 SETLIST                          R37 R38 1 [1]
      365 CALL                             R35 2 1
      366 GETUPVAL                         R36 3
      367 GETTABLEKS                       R36 R36 K42 ["useViewportBinding"]
      369 NEWCLOSURE                       R37 P7
      370 CAPTURE                          VAL R0
      371 NEWTABLE                         R38 0 1
      373 GETTABLEKS                       R39 R0 K41 ["Position"]
      375 SETLIST                          R38 R39 1 [1]
      377 CALL                             R36 2 1
      378 GETUPVAL                         R38 19
      379 CALL                             R38 0 1
      380 JUMPIFNOT                        R38 ; [+2]
      381 MOVE                             R37 R35
      382 JUMP                             ; [+1]
      383 MOVE                             R37 R36
      384 GETUPVAL                         R38 15
      385 GETTABLEKS                       R38 R38 K34 ["useSignalBinding"]
      387 GETTABLEKS                       R39 R1 K43 ["observeZoomRatio"]
      389 CALL                             R38 1 1
      390 GETUPVAL                         R39 0
      391 GETTABLEKS                       R39 R39 K33 ["useMemo"]
      393 NEWCLOSURE                       R40 P8
      394 CAPTURE                          VAL R38
      395 NEWTABLE                         R41 0 1
      397 MOVE                             R42 R38
      398 SETLIST                          R41 R42 1 [1]
      400 CALL                             R39 2 1
      401 GETUPVAL                         R40 0
      402 GETTABLEKS                       R40 R40 K44 ["joinBindings"]
      404 NEWTABLE                         R41 0 2
      406 MOVE                             R42 R24
      407 MOVE                             R43 R38
      408 SETLIST                          R41 R42 2 [1]
      410 CALL                             R40 1 1
      411 DUPCLOSURE                       R42 K45 [PROTO_12]
      412 NAMECALL                         R40 R40 K46 ["map"]
      414 CALL                             R40 2 1
      415 GETUPVAL                         R41 0
      416 GETTABLEKS                       R41 R41 K47 ["useBinding"]
      418 GETTABLEKS                       R42 R0 K48 ["editName"]
      420 CALL                             R41 1 2
      421 GETUPVAL                         R43 2
      422 GETTABLEKS                       R43 R43 K49 ["useToggleState"]
      424 LOADB                            R44 0
      425 CALL                             R43 1 1
      426 GETUPVAL                         R44 0
      427 GETTABLEKS                       R44 R44 K35 ["useRef"]
      429 LOADNIL                          R45
      430 CALL                             R44 1 1
      431 GETUPVAL                         R45 2
      432 GETTABLEKS                       R45 R45 K50 ["useEventCallback"]
      434 NEWCLOSURE                       R46 P10
      435 CAPTURE                          VAL R42
      436 CAPTURE                          VAL R0
      437 CAPTURE                          VAL R43
      438 CAPTURE                          VAL R44
      439 CALL                             R45 1 1
      440 GETUPVAL                         R46 0
      441 GETTABLEKS                       R46 R46 K35 ["useRef"]
      443 LOADNIL                          R47
      444 CALL                             R46 1 1
      445 GETUPVAL                         R47 0
      446 GETTABLEKS                       R47 R47 K35 ["useRef"]
      448 LOADN                            R48 0
      449 CALL                             R47 1 1
      450 GETUPVAL                         R48 0
      451 GETTABLEKS                       R48 R48 K35 ["useRef"]
      453 LOADNIL                          R49
      454 CALL                             R48 1 1
      455 GETUPVAL                         R49 0
      456 GETTABLEKS                       R49 R49 K38 ["useCallback"]
      458 NEWCLOSURE                       R50 P11
      459 CAPTURE                          VAL R46
      460 CAPTURE                          VAL R43
      461 CAPTURE                          VAL R48
      462 CAPTURE                          VAL R47
      463 CAPTURE                          VAL R45
      464 CAPTURE                          VAL R0
      465 CAPTURE                          VAL R3
      466 NEWTABLE                         R51 0 4
      468 MOVE                             R52 R3
      469 GETTABLEKS                       R53 R43 K51 ["enabled"]
      471 GETTABLEKS                       R54 R0 K52 ["OnDragStart"]
      473 MOVE                             R55 R45
      474 SETLIST                          R51 R52 4 [1]
      476 CALL                             R49 2 1
      477 GETUPVAL                         R50 0
      478 GETTABLEKS                       R50 R50 K38 ["useCallback"]
      480 NEWCLOSURE                       R51 P12
      481 CAPTURE                          VAL R46
      482 CAPTURE                          VAL R0
      483 CAPTURE                          VAL R3
      484 CAPTURE                          VAL R43
      485 NEWTABLE                         R52 0 5
      487 MOVE                             R53 R3
      488 MOVE                             R54 R46
      489 GETTABLEKS                       R55 R0 K53 ["OnDragMoved"]
      491 MOVE                             R56 R7
      492 GETTABLEKS                       R57 R43 K54 ["disable"]
      494 SETLIST                          R52 R53 5 [1]
      496 CALL                             R50 2 1
      497 GETUPVAL                         R51 0
      498 GETTABLEKS                       R51 R51 K38 ["useCallback"]
      500 NEWCLOSURE                       R52 P13
      501 CAPTURE                          VAL R46
      502 CAPTURE                          VAL R47
      503 CAPTURE                          VAL R0
      504 CAPTURE                          VAL R3
      505 NEWTABLE                         R53 0 4
      507 MOVE                             R54 R3
      508 MOVE                             R55 R46
      509 GETTABLEKS                       R56 R0 K55 ["OnDragEnded"]
      511 MOVE                             R57 R7
      512 SETLIST                          R53 R54 4 [1]
      514 CALL                             R51 2 1
      515 GETUPVAL                         R52 0
      516 GETTABLEKS                       R52 R52 K39 ["useEffect"]
      518 NEWCLOSURE                       R53 P14
      519 CAPTURE                          VAL R7
      520 CAPTURE                          UPVAL U14
      521 CAPTURE                          VAL R33
      522 CAPTURE                          UPVAL U13
      523 CAPTURE                          VAL R31
      524 CAPTURE                          VAL R30
      525 CAPTURE                          VAL R22
      526 CAPTURE                          VAL R4
      527 NEWTABLE                         R54 0 4
      529 GETTABLEKS                       R55 R4 K56 ["setNodeSize"]
      531 GETTABLEKS                       R56 R33 K57 ["observeAbsoluteSize"]
      533 MOVE                             R57 R7
      534 MOVE                             R58 R22
      535 SETLIST                          R54 R55 4 [1]
      537 CALL                             R52 2 0
      538 GETUPVAL                         R52 0
      539 GETTABLEKS                       R52 R52 K33 ["useMemo"]
      541 NEWCLOSURE                       R53 P15
      542 CAPTURE                          VAL R6
      543 CAPTURE                          VAL R4
      544 CAPTURE                          VAL R7
      545 CAPTURE                          UPVAL U14
      546 NEWTABLE                         R54 0 3
      548 GETTABLEKS                       R55 R6 K58 ["observeSpotlightedSubtree"]
      550 GETTABLEKS                       R56 R4 K59 ["observeFadeByNodeId"]
      552 MOVE                             R57 R7
      553 SETLIST                          R54 R55 3 [1]
      555 CALL                             R52 2 1
      556 GETUPVAL                         R53 0
      557 GETTABLEKS                       R53 R53 K33 ["useMemo"]
      559 NEWCLOSURE                       R54 P16
      560 CAPTURE                          VAL R0
      561 NEWTABLE                         R55 0 1
      563 GETTABLEKS                       R56 R0 K14 ["Collapsed"]
      565 SETLIST                          R55 R56 1 [1]
      567 CALL                             R53 2 1
      568 GETUPVAL                         R54 2
      569 GETTABLEKS                       R54 R54 K50 ["useEventCallback"]
      571 NEWCLOSURE                       R55 P17
      572 CAPTURE                          VAL R7
      573 CAPTURE                          VAL R4
      574 CAPTURE                          VAL R0
      575 CAPTURE                          UPVAL U20
      576 CALL                             R54 1 1
      577 GETTABLEKS                       R55 R0 K60 ["text"]
      579 JUMPIF                           R55 ; [+6]
      580 GETTABLEKS                       R55 R0 K4 ["GraphPayload"]
      582 GETTABLEKS                       R55 R55 K61 ["name"]
      584 JUMPIF                           R55 ; [+1]
      585 LOADK                            R55 K62 [""]
      586 GETUPVAL                         R56 0
      587 GETTABLEKS                       R56 R56 K38 ["useCallback"]
      589 NEWCLOSURE                       R57 P18
      590 CAPTURE                          VAL R41
      591 CAPTURE                          VAL R43
      592 CAPTURE                          VAL R7
      593 CAPTURE                          UPVAL U7
      594 CAPTURE                          VAL R0
      595 CAPTURE                          UPVAL U8
      596 CAPTURE                          VAL R4
      597 NEWTABLE                         R58 0 8
      599 MOVE                             R59 R7
      600 GETTABLEKS                       R60 R43 K54 ["disable"]
      602 GETTABLEKS                       R61 R0 K11 ["IsParameterNode"]
      604 GETTABLEKS                       R62 R0 K6 ["NodeType"]
      606 GETTABLEKS                       R63 R0 K63 ["onRename"]
      608 GETTABLEKS                       R64 R0 K4 ["GraphPayload"]
      610 GETTABLEKS                       R64 R64 K61 ["name"]
      612 GETTABLEKS                       R65 R4 K64 ["renameParameter"]
      614 GETTABLEKS                       R66 R4 K65 ["renameNode"]
      616 SETLIST                          R58 R59 8 [1]
      618 CALL                             R56 2 1
      619 MOVE                             R57 R2
      620 CALL                             R57 0 1
      621 GETUPVAL                         R58 0
      622 GETTABLEKS                       R58 R58 K33 ["useMemo"]
      624 DUPCLOSURE                       R59 K66 [PROTO_24]
      625 CAPTURE                          UPVAL U14
      626 NEWTABLE                         R60 0 0
      628 CALL                             R58 2 2
      629 GETUPVAL                         R60 21
      630 JUMPIFNOT                        R60 ; [+17]
      631 GETUPVAL                         R60 0
      632 GETTABLEKS                       R60 R60 K39 ["useEffect"]
      634 NEWCLOSURE                       R61 P20
      635 CAPTURE                          UPVAL U14
      636 CAPTURE                          VAL R58
      637 CAPTURE                          VAL R55
      638 CAPTURE                          VAL R0
      639 NEWTABLE                         R62 0 3
      641 MOVE                             R63 R58
      642 MOVE                             R64 R55
      643 GETTABLEKS                       R65 R0 K67 ["Selected"]
      645 SETLIST                          R62 R63 3 [1]
      647 CALL                             R60 2 0
      648 GETUPVAL                         R60 15
      649 GETTABLEKS                       R60 R60 K34 ["useSignalBinding"]
      651 MOVE                             R61 R52
      652 CALL                             R60 1 1
      653 GETUPVAL                         R61 0
      654 GETTABLEKS                       R61 R61 K33 ["useMemo"]
      656 NEWCLOSURE                       R62 P21
      657 CAPTURE                          UPVAL U9
      658 CAPTURE                          VAL R12
      659 CAPTURE                          UPVAL U22
      660 CAPTURE                          VAL R14
      661 CAPTURE                          REF R8
      662 NEWTABLE                         R63 0 5
      664 GETTABLEKS                       R64 R0 K14 ["Collapsed"]
      666 MOVE                             R65 R8
      667 MOVE                             R66 R11
      668 MOVE                             R67 R14
      669 MOVE                             R68 R12
      670 SETLIST                          R63 R64 5 [1]
      672 CALL                             R61 2 1
      673 GETUPVAL                         R62 0
      674 GETTABLEKS                       R62 R62 K33 ["useMemo"]
      676 NEWCLOSURE                       R63 P22
      677 CAPTURE                          VAL R61
      678 NEWTABLE                         R64 0 1
      680 MOVE                             R65 R61
      681 SETLIST                          R64 R65 1 [1]
      683 CALL                             R62 2 1
      684 GETUPVAL                         R63 0
      685 GETTABLEKS                       R63 R63 K33 ["useMemo"]
      687 NEWCLOSURE                       R64 P23
      688 CAPTURE                          UPVAL U0
      689 CAPTURE                          VAL R39
      690 CAPTURE                          VAL R18
      691 NEWTABLE                         R65 0 2
      693 MOVE                             R66 R39
      694 GETTABLEKS                       R67 R18 K23 ["Color"]
      696 GETTABLEKS                       R67 R67 K68 ["System"]
      698 GETTABLEKS                       R67 R67 K69 ["Neutral"]
      700 GETTABLEKS                       R67 R67 K70 ["Color3"]
      702 SETLIST                          R65 R66 2 [1]
      704 CALL                             R63 2 1
      705 GETUPVAL                         R64 2
      706 GETTABLEKS                       R64 R64 K50 ["useEventCallback"]
      708 NEWCLOSURE                       R65 P24
      709 CAPTURE                          VAL R4
      710 CAPTURE                          VAL R0
      711 CAPTURE                          UPVAL U20
      712 CAPTURE                          VAL R5
      713 CAPTURE                          VAL R3
      714 CALL                             R64 1 1
      715 JUMPIFNOT                        R12 ; [+15]
      716 GETUPVAL                         R65 0
      717 GETTABLEKS                       R65 R65 K44 ["joinBindings"]
      719 NEWTABLE                         R66 0 2
      721 MOVE                             R67 R24
      722 MOVE                             R68 R27
      723 SETLIST                          R66 R67 2 [1]
      725 CALL                             R65 1 1
      726 DUPCLOSURE                       R67 K71 [PROTO_31]
      727 NAMECALL                         R65 R65 K46 ["map"]
      729 CALL                             R65 2 1
      730 JUMP                             ; [+4]
      731 DUPCLOSURE                       R67 K72 [PROTO_32]
      732 NAMECALL                         R65 R24 K46 ["map"]
      734 CALL                             R65 2 1
      735 GETUPVAL                         R66 0
      736 GETTABLEKS                       R66 R66 K73 ["createElement"]
      738 GETUPVAL                         R67 12
      739 GETTABLEKS                       R67 R67 K74 ["View"]
      741 DUPTABLE                         R68 K83 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      742 DUPCLOSURE                       R71 K84 [PROTO_33]
      743 NAMECALL                         R69 R24 K46 ["map"]
      745 CALL                             R69 2 1
      746 SETTABLEKS                       R69 R68 K36 ["Size"]
      748 GETTABLEKS                       R69 R0 K77 ["LayoutOrder"]
      750 SETTABLEKS                       R69 R68 K77 ["LayoutOrder"]
      752 GETTABLEKS                       R69 R0 K78 ["ZIndex"]
      754 SETTABLEKS                       R69 R68 K78 ["ZIndex"]
      756 SETTABLEKS                       R37 R68 K41 ["Position"]
      758 DUPTABLE                         R69 K87 [{"UIScale", "ComponentContext"}]
      759 GETUPVAL                         R70 0
      760 GETTABLEKS                       R70 R70 K73 ["createElement"]
      762 LOADK                            R71 K85 ["UIScale"]
      763 DUPTABLE                         R72 K89 [{"Scale"}]
      764 SETTABLEKS                       R38 R72 K88 ["Scale"]
      766 CALL                             R70 2 1
      767 SETTABLEKS                       R70 R69 K85 ["UIScale"]
      769 GETUPVAL                         R70 0
      770 GETTABLEKS                       R70 R70 K73 ["createElement"]
      772 GETUPVAL                         R71 23
      773 GETTABLEKS                       R71 R71 K90 ["Provider"]
      775 DUPTABLE                         R72 K94 [{"absoluteSizeHook", "observeControlledHeight", "observeWidth"}]
      776 SETTABLEKS                       R33 R72 K91 ["absoluteSizeHook"]
      778 SETTABLEKS                       R28 R72 K92 ["observeControlledHeight"]
      780 SETTABLEKS                       R22 R72 K93 ["observeWidth"]
      782 DUPTABLE                         R73 K99 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      783 GETUPVAL                         R74 0
      784 GETTABLEKS                       R74 R74 K73 ["createElement"]
      786 GETUPVAL                         R75 12
      787 GETTABLEKS                       R75 R75 K74 ["View"]
      789 DUPTABLE                         R76 K101 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      790 SETTABLEKS                       R62 R76 K75 ["tag"]
      792 GETUPVAL                         R78 9
      793 CALL                             R78 0 1
      794 JUMPIFNOT                        R78 ; [+2]
      795 MOVE                             R77 R65
      796 JUMP                             ; [+4]
      797 DUPCLOSURE                       R79 K102 [PROTO_34]
      798 NAMECALL                         R77 R24 K46 ["map"]
      800 CALL                             R77 2 1
      801 SETTABLEKS                       R77 R76 K36 ["Size"]
      803 GETTABLEKS                       R77 R33 K103 ["setFrame"]
      805 SETTABLEKS                       R77 R76 K100 ["ref"]
      807 DUPTABLE                         R77 K110 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      808 GETUPVAL                         R78 0
      809 GETTABLEKS                       R78 R78 K73 ["createElement"]
      811 LOADK                            R79 K111 ["Folder"]
      812 NEWTABLE                         R80 0 0
      814 DUPTABLE                         R81 K113 [{"Cover"}]
      815 GETUPVAL                         R82 0
      816 GETTABLEKS                       R82 R82 K73 ["createElement"]
      818 GETUPVAL                         R83 12
      819 GETTABLEKS                       R83 R83 K74 ["View"]
      821 DUPTABLE                         R84 K118 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"] = 2, ["testId"] = "CompositorNodeCover"}]
      822 SETTABLEKS                       R61 R84 K75 ["tag"]
      824 GETIMPORT                        R85 K121 [UDim2.fromScale]
      826 LOADN                            R86 1
      827 LOADN                            R87 1
      828 CALL                             R85 2 1
      829 SETTABLEKS                       R85 R84 K36 ["Size"]
      831 SETTABLEKS                       R60 R84 K114 ["GroupTransparency"]
      833 CALL                             R82 2 1
      834 SETTABLEKS                       R82 R81 K112 ["Cover"]
      836 CALL                             R78 3 1
      837 SETTABLEKS                       R78 R77 K104 ["CoverContainer"]
      839 GETUPVAL                         R78 0
      840 GETTABLEKS                       R78 R78 K73 ["createElement"]
      842 GETUPVAL                         R79 12
      843 GETTABLEKS                       R79 R79 K74 ["View"]
      845 DUPTABLE                         R80 K123 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      846 NEWTABLE                         R81 4 0
      848 LOADB                            R82 1
      849 SETTABLEKS                       R82 R81 K124 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      851 GETUPVAL                         R83 24
      852 NOT                              R82 R83
      853 JUMPIFNOT                        R82 ; [+1]
      854 NOT                              R82 R9
      855 SETTABLEKS                       R82 R81 K125 ["radius-small bg-shift-200"]
      857 GETUPVAL                         R82 22
      858 JUMPIF                           R82 ; [+8]
      859 JUMPIFNOT                        R8 ; [+4]
      860 GETTABLEKS                       R83 R0 K14 ["Collapsed"]
      862 NOT                              R82 R83
      863 JUMPIF                           R82 ; [+3]
      864 MOVE                             R82 R9
      865 JUMPIFNOT                        R82 ; [+1]
      866 NOT                              R82 R8
      867 SETTABLEKS                       R82 R81 K126 ["radius-small"]
      869 GETUPVAL                         R83 22
      870 NOT                              R82 R83
      871 JUMPIFNOT                        R82 ; [+4]
      872 MOVE                             R82 R8
      873 JUMPIFNOT                        R82 ; [+2]
      874 GETTABLEKS                       R82 R0 K14 ["Collapsed"]
      876 SETTABLEKS                       R82 R81 K127 ["radius-large"]
      878 SETTABLEKS                       R81 R80 K75 ["tag"]
      880 JUMPIFNOT                        R9 ; [+2]
      881 MOVE                             R81 R20
      882 JUMP                             ; [+1]
      883 LOADNIL                          R81
      884 SETTABLEKS                       R81 R80 K122 ["backgroundStyle"]
      886 SETTABLEKS                       R57 R80 K77 ["LayoutOrder"]
      888 SETTABLEKS                       R48 R80 K100 ["ref"]
      890 DUPTABLE                         R81 K134 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "HelpButton", "Children"}]
      891 GETTABLEKS                       R83 R0 K135 ["Collapsible"]
      893 JUMPIFEQKB                       R83 FALSE ; [+47]
      895 GETUPVAL                         R83 24
      896 JUMPIF                           R83 ; [+44]
      897 GETUPVAL                         R82 0
      898 GETTABLEKS                       R82 R82 K73 ["createElement"]
      900 GETUPVAL                         R83 12
      901 GETTABLEKS                       R83 R83 K136 ["Button"]
      903 DUPTABLE                         R84 K143 [{["icon"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"], ["testId"] = "CompositorNode-CollapseButton"}]
      904 SETTABLEKS                       R53 R84 K137 ["icon"]
      906 GETUPVAL                         R85 12
      907 GETTABLEKS                       R85 R85 K20 ["Enums"]
      909 GETTABLEKS                       R85 R85 K144 ["ButtonVariant"]
      911 GETTABLEKS                       R85 R85 K145 ["Text"]
      913 SETTABLEKS                       R85 R84 K138 ["variant"]
      915 SETTABLEKS                       R54 R84 K139 ["onActivated"]
      917 GETUPVAL                         R85 12
      918 GETTABLEKS                       R85 R85 K20 ["Enums"]
      920 GETTABLEKS                       R85 R85 K146 ["InputSize"]
      922 GETTABLEKS                       R85 R85 K147 ["XSmall"]
      924 SETTABLEKS                       R85 R84 K140 ["size"]
      926 MOVE                             R85 R2
      927 CALL                             R85 0 1
      928 SETTABLEKS                       R85 R84 K77 ["LayoutOrder"]
      930 GETUPVAL                         R85 12
      931 GETTABLEKS                       R85 R85 K20 ["Enums"]
      933 GETTABLEKS                       R85 R85 K148 ["FillBehavior"]
      935 GETTABLEKS                       R85 R85 K149 ["Fit"]
      937 SETTABLEKS                       R85 R84 K141 ["fillBehavior"]
      939 CALL                             R82 2 1
      940 JUMP                             ; [+1]
      941 LOADNIL                          R82
      942 SETTABLEKS                       R82 R81 K128 ["DEPRECATED_ToggleButton"]
      944 GETUPVAL                         R82 0
      945 GETTABLEKS                       R82 R82 K73 ["createElement"]
      947 GETUPVAL                         R83 12
      948 GETTABLEKS                       R83 R83 K145 ["Text"]
      950 DUPTABLE                         R84 K154 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      951 NEWTABLE                         R85 2 0
      953 LOADB                            R86 1
      954 SETTABLEKS                       R86 R85 K155 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      956 GETUPVAL                         R86 24
      957 JUMPIF                           R86 ; [+6]
      958 GETTABLEKS                       R87 R0 K135 ["Collapsible"]
      960 JUMPIFEQKB                       R87 FALSE ; [+2]
      962 LOADB                            R86 0 +1
      963 LOADB                            R86 1
      964 SETTABLEKS                       R86 R85 K156 ["padding-left-small"]
      966 SETTABLEKS                       R85 R84 K75 ["tag"]
      968 SETTABLEKS                       R55 R84 K145 ["Text"]
      970 MOVE                             R85 R2
      971 CALL                             R85 0 1
      972 SETTABLEKS                       R85 R84 K77 ["LayoutOrder"]
      974 GETTABLEKS                       R86 R43 K51 ["enabled"]
      976 NOT                              R85 R86
      977 SETTABLEKS                       R85 R84 K152 ["Visible"]
      979 CALL                             R82 2 1
      980 SETTABLEKS                       R82 R81 K129 ["Title"]
      982 GETUPVAL                         R82 0
      983 GETTABLEKS                       R82 R82 K73 ["createElement"]
      985 GETUPVAL                         R83 12
      986 GETTABLEKS                       R83 R83 K157 ["TextInput"]
      988 DUPTABLE                         R84 K164 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      989 NEWTABLE                         R85 1 0
      991 LOADB                            R86 1
      992 SETTABLEKS                       R86 R85 K155 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      994 SETTABLEKS                       R85 R84 K75 ["tag"]
      996 SETTABLEKS                       R41 R84 K60 ["text"]
      998 MOVE                             R85 R2
      999 CALL                             R85 0 1
     1000 SETTABLEKS                       R85 R84 K77 ["LayoutOrder"]
     1002 SETTABLEKS                       R42 R84 K158 ["onChanged"]
     1004 GETUPVAL                         R85 12
     1005 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1007 GETTABLEKS                       R85 R85 K146 ["InputSize"]
     1009 GETTABLEKS                       R85 R85 K147 ["XSmall"]
     1011 SETTABLEKS                       R85 R84 K140 ["size"]
     1013 GETUPVAL                         R85 12
     1014 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1016 GETTABLEKS                       R85 R85 K165 ["InputFocusBehavior"]
     1018 GETTABLEKS                       R85 R85 K166 ["Highlight"]
     1020 SETTABLEKS                       R85 R84 K160 ["focusBehavior"]
     1022 SETTABLEKS                       R44 R84 K161 ["textBoxRef"]
     1024 SETTABLEKS                       R56 R84 K162 ["onFocusLost"]
     1026 SETTABLEKS                       R44 R84 K100 ["ref"]
     1028 GETIMPORT                        R85 K169 [UDim.new]
     1030 LOADN                            R86 0
     1031 LOADN                            R87 100
     1032 CALL                             R85 2 1
     1033 SETTABLEKS                       R85 R84 K163 ["width"]
     1035 GETTABLEKS                       R85 R43 K51 ["enabled"]
     1037 SETTABLEKS                       R85 R84 K152 ["Visible"]
     1039 CALL                             R82 2 1
     1040 SETTABLEKS                       R82 R81 K130 ["TitleInput"]
     1042 GETTABLEKS                       R83 R0 K135 ["Collapsible"]
     1044 JUMPIFEQKB                       R83 FALSE ; [+47]
     1046 GETUPVAL                         R83 24
     1047 JUMPIFNOT                        R83 ; [+44]
     1048 GETUPVAL                         R82 0
     1049 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1051 GETUPVAL                         R83 12
     1052 GETTABLEKS                       R83 R83 K136 ["Button"]
     1054 DUPTABLE                         R84 K143 [{["icon"], ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"], ["testId"] = "CompositorNode-CollapseButton"}]
     1055 SETTABLEKS                       R53 R84 K137 ["icon"]
     1057 GETUPVAL                         R85 12
     1058 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1060 GETTABLEKS                       R85 R85 K144 ["ButtonVariant"]
     1062 GETTABLEKS                       R85 R85 K145 ["Text"]
     1064 SETTABLEKS                       R85 R84 K138 ["variant"]
     1066 SETTABLEKS                       R54 R84 K139 ["onActivated"]
     1068 GETUPVAL                         R85 12
     1069 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1071 GETTABLEKS                       R85 R85 K146 ["InputSize"]
     1073 GETTABLEKS                       R85 R85 K147 ["XSmall"]
     1075 SETTABLEKS                       R85 R84 K140 ["size"]
     1077 MOVE                             R85 R2
     1078 CALL                             R85 0 1
     1079 SETTABLEKS                       R85 R84 K77 ["LayoutOrder"]
     1081 GETUPVAL                         R85 12
     1082 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1084 GETTABLEKS                       R85 R85 K148 ["FillBehavior"]
     1086 GETTABLEKS                       R85 R85 K149 ["Fit"]
     1088 SETTABLEKS                       R85 R84 K141 ["fillBehavior"]
     1090 CALL                             R82 2 1
     1091 JUMP                             ; [+1]
     1092 LOADNIL                          R82
     1093 SETTABLEKS                       R82 R81 K131 ["ToggleButton"]
     1095 GETTABLEKS                       R83 R0 K170 ["OnHelpActivated"]
     1097 JUMPIFNOT                        R83 ; [+44]
     1098 GETUPVAL                         R82 0
     1099 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1101 GETUPVAL                         R83 12
     1102 GETTABLEKS                       R83 R83 K136 ["Button"]
     1104 DUPTABLE                         R84 K173 [{["icon"] = "circle-question", ["variant"], ["onActivated"], ["size"], ["LayoutOrder"], ["fillBehavior"], ["testId"] = "CompositorNode-HelpButton"}]
     1105 GETUPVAL                         R85 12
     1106 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1108 GETTABLEKS                       R85 R85 K144 ["ButtonVariant"]
     1110 GETTABLEKS                       R85 R85 K145 ["Text"]
     1112 SETTABLEKS                       R85 R84 K138 ["variant"]
     1114 GETTABLEKS                       R85 R0 K170 ["OnHelpActivated"]
     1116 SETTABLEKS                       R85 R84 K139 ["onActivated"]
     1118 GETUPVAL                         R85 12
     1119 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1121 GETTABLEKS                       R85 R85 K146 ["InputSize"]
     1123 GETTABLEKS                       R85 R85 K147 ["XSmall"]
     1125 SETTABLEKS                       R85 R84 K140 ["size"]
     1127 MOVE                             R85 R2
     1128 CALL                             R85 0 1
     1129 SETTABLEKS                       R85 R84 K77 ["LayoutOrder"]
     1131 GETUPVAL                         R85 12
     1132 GETTABLEKS                       R85 R85 K20 ["Enums"]
     1134 GETTABLEKS                       R85 R85 K148 ["FillBehavior"]
     1136 GETTABLEKS                       R85 R85 K149 ["Fit"]
     1138 SETTABLEKS                       R85 R84 K141 ["fillBehavior"]
     1140 CALL                             R82 2 1
     1141 JUMP                             ; [+1]
     1142 LOADNIL                          R82
     1143 SETTABLEKS                       R82 R81 K132 ["HelpButton"]
     1145 GETUPVAL                         R82 0
     1146 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1148 LOADK                            R83 K111 ["Folder"]
     1149 NEWTABLE                         R84 0 0
     1151 GETTABLEKS                       R85 R0 K174 ["HeaderChildren"]
     1153 CALL                             R82 3 1
     1154 SETTABLEKS                       R82 R81 K133 ["Children"]
     1156 CALL                             R78 3 1
     1157 SETTABLEKS                       R78 R77 K105 ["CompositorNodeHeader"]
     1159 GETUPVAL                         R78 24
     1160 JUMPIFNOT                        R78 ; [+16]
     1161 GETTABLEKS                       R79 R0 K14 ["Collapsed"]
     1163 NOT                              R78 R79
     1164 JUMPIFNOT                        R78 ; [+12]
     1165 GETUPVAL                         R78 0
     1166 GETTABLEKS                       R78 R78 K73 ["createElement"]
     1168 GETUPVAL                         R79 12
     1169 GETTABLEKS                       R79 R79 K175 ["Divider"]
     1171 DUPTABLE                         R80 K176 [{"LayoutOrder"}]
     1172 MOVE                             R81 R2
     1173 CALL                             R81 0 1
     1174 SETTABLEKS                       R81 R80 K77 ["LayoutOrder"]
     1176 CALL                             R78 2 1
     1177 SETTABLEKS                       R78 R77 K106 ["TitleDivider"]
     1179 GETUPVAL                         R79 0
     1180 GETTABLEKS                       R79 R79 K133 ["Children"]
     1182 GETTABLEKS                       R79 R79 K177 ["count"]
     1184 GETTABLEKS                       R80 R0 K178 ["children"]
     1186 CALL                             R79 1 1
     1187 LOADN                            R80 0
     1188 JUMPIFNOTLT                      R80 R79 ; [+142]
     1190 GETUPVAL                         R78 0
     1191 GETTABLEKS                       R78 R78 K73 ["createElement"]
     1193 GETUPVAL                         R79 12
     1194 GETTABLEKS                       R79 R79 K74 ["View"]
     1196 DUPTABLE                         R80 K179 [{"tag", "LayoutOrder"}]
     1197 JUMPIFNOT                        R11 ; [+2]
     1198 LOADK                            R81 K180 ["size-full-0 grow"]
     1199 JUMP                             ; [+1]
     1200 LOADK                            R81 K181 ["size-full-700 auto-y"]
     1201 SETTABLEKS                       R81 R80 K75 ["tag"]
     1203 MOVE                             R81 R2
     1204 CALL                             R81 0 1
     1205 SETTABLEKS                       R81 R80 K77 ["LayoutOrder"]
     1207 DUPTABLE                         R81 K184 [{"Contents", "ResizeBars"}]
     1208 GETUPVAL                         R82 0
     1209 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1211 GETUPVAL                         R83 12
     1212 GETTABLEKS                       R83 R83 K74 ["View"]
     1214 DUPTABLE                         R84 K186 [{["tag"], ["ZIndex"] = 1, ["testId"] = "CompositorNodeContents"}]
     1215 NEWTABLE                         R85 4 0
     1217 LOADB                            R86 1
     1218 SETTABLEKS                       R86 R85 K187 ["col padding-y-xsmall radius-small"]
     1220 SETTABLEKS                       R13 R85 K188 ["size-full"]
     1222 NOT                              R86 R13
     1223 SETTABLEKS                       R86 R85 K189 ["size-full-0 auto-y"]
     1225 SETTABLEKS                       R85 R84 K75 ["tag"]
     1227 DUPTABLE                         R85 K191 [{"NodeProperties"}]
     1228 GETUPVAL                         R86 0
     1229 GETTABLEKS                       R86 R86 K73 ["createElement"]
     1231 GETUPVAL                         R87 0
     1232 GETTABLEKS                       R87 R87 K192 ["Fragment"]
     1234 NEWTABLE                         R88 0 0
     1236 GETTABLEKS                       R89 R0 K178 ["children"]
     1238 CALL                             R86 3 1
     1239 SETTABLEKS                       R86 R85 K190 ["NodeProperties"]
     1241 CALL                             R82 3 1
     1242 SETTABLEKS                       R82 R81 K182 ["Contents"]
     1244 GETUPVAL                         R83 9
     1245 CALL                             R83 0 1
     1246 JUMPIFNOT                        R83 ; [+45]
     1247 JUMPIF                           R10 ; [+1]
     1248 JUMPIFNOT                        R11 ; [+41]
     1249 GETUPVAL                         R82 0
     1250 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1252 GETUPVAL                         R83 25
     1253 DUPTABLE                         R84 K203 [{["tag"] = "radius-small", ["showHorizontal"], ["showVertical"], ["nodeWidthBinding"], ["minimumWidth"], ["OnResized"], ["nodeHeightBinding"], ["OnResizedVertical"], ["onResizingChanged"], ["Style"], ["ZIndex"] = 4}]
     1254 SETTABLEKS                       R10 R84 K193 ["showHorizontal"]
     1256 SETTABLEKS                       R11 R84 K194 ["showVertical"]
     1258 SETTABLEKS                       R24 R84 K195 ["nodeWidthBinding"]
     1260 SETTABLEKS                       R21 R84 K196 ["minimumWidth"]
     1262 SETTABLEKS                       R23 R84 K197 ["OnResized"]
     1264 SETTABLEKS                       R27 R84 K198 ["nodeHeightBinding"]
     1266 SETTABLEKS                       R26 R84 K199 ["OnResizedVertical"]
     1268 SETTABLEKS                       R32 R84 K200 ["onResizingChanged"]
     1270 GETTABLEKS                       R86 R0 K67 ["Selected"]
     1272 JUMPIFNOT                        R86 ; [+7]
     1273 GETTABLEKS                       R85 R18 K23 ["Color"]
     1275 GETTABLEKS                       R85 R85 K68 ["System"]
     1277 GETTABLEKS                       R85 R85 K69 ["Neutral"]
     1279 JUMP                             ; [+6]
     1280 GETTABLEKS                       R85 R18 K23 ["Color"]
     1282 GETTABLEKS                       R85 R85 K204 ["Stroke"]
     1284 GETTABLEKS                       R85 R85 K205 ["Default"]
     1286 SETTABLEKS                       R85 R84 K201 ["Style"]
     1288 CALL                             R82 2 1
     1289 JUMP                             ; [+37]
     1290 LOADNIL                          R82
     1291 JUMP                             ; [+35]
     1292 JUMPIF                           R8 ; [+33]
     1293 GETUPVAL                         R82 0
     1294 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1296 GETUPVAL                         R83 25
     1297 DUPTABLE                         R84 K206 [{["tag"] = "radius-small", ["nodeWidthBinding"], ["minimumWidth"], ["OnResized"], ["onResizingChanged"], ["Style"], ["ZIndex"] = 4}]
     1298 SETTABLEKS                       R24 R84 K195 ["nodeWidthBinding"]
     1300 SETTABLEKS                       R21 R84 K196 ["minimumWidth"]
     1302 SETTABLEKS                       R23 R84 K197 ["OnResized"]
     1304 SETTABLEKS                       R32 R84 K200 ["onResizingChanged"]
     1306 GETTABLEKS                       R86 R0 K67 ["Selected"]
     1308 JUMPIFNOT                        R86 ; [+7]
     1309 GETTABLEKS                       R85 R18 K23 ["Color"]
     1311 GETTABLEKS                       R85 R85 K68 ["System"]
     1313 GETTABLEKS                       R85 R85 K69 ["Neutral"]
     1315 JUMP                             ; [+6]
     1316 GETTABLEKS                       R85 R18 K23 ["Color"]
     1318 GETTABLEKS                       R85 R85 K204 ["Stroke"]
     1320 GETTABLEKS                       R85 R85 K205 ["Default"]
     1322 SETTABLEKS                       R85 R84 K201 ["Style"]
     1324 CALL                             R82 2 1
     1325 JUMP                             ; [+1]
     1326 LOADNIL                          R82
     1327 SETTABLEKS                       R82 R81 K183 ["ResizeBars"]
     1329 CALL                             R78 3 1
     1330 JUMP                             ; [+1]
     1331 LOADNIL                          R78
     1332 SETTABLEKS                       R78 R77 K107 ["CompositorNodeContent"]
     1334 GETTABLEKS                       R78 R0 K108 ["ContextToolbar"]
     1336 JUMPIFNOT                        R78 ; [+21]
     1337 GETTABLEKS                       R79 R0 K67 ["Selected"]
     1339 JUMPIF                           R79 ; [+2]
     1340 MOVE                             R78 R16
     1341 JUMPIFNOT                        R78 ; [+16]
     1342 GETUPVAL                         R78 0
     1343 GETTABLEKS                       R78 R78 K73 ["createElement"]
     1345 GETUPVAL                         R79 26
     1346 DUPTABLE                         R80 K210 [{"Buttons", "positionBinding", "widthBinding"}]
     1347 GETTABLEKS                       R81 R0 K108 ["ContextToolbar"]
     1349 GETTABLEKS                       R81 R81 K207 ["Buttons"]
     1351 SETTABLEKS                       R81 R80 K207 ["Buttons"]
     1353 SETTABLEKS                       R37 R80 K208 ["positionBinding"]
     1355 SETTABLEKS                       R40 R80 K209 ["widthBinding"]
     1357 CALL                             R78 2 1
     1358 SETTABLEKS                       R78 R77 K108 ["ContextToolbar"]
     1360 GETUPVAL                         R78 0
     1361 GETTABLEKS                       R78 R78 K73 ["createElement"]
     1363 LOADK                            R79 K111 ["Folder"]
     1364 NEWTABLE                         R80 0 0
     1366 DUPTABLE                         R81 K212 [{"SelectionHighlight"}]
     1367 GETTABLEKS                       R83 R0 K67 ["Selected"]
     1369 JUMPIFNOT                        R83 ; [+126]
     1370 GETUPVAL                         R83 24
     1371 JUMPIFNOT                        R83 ; [+66]
     1372 GETUPVAL                         R82 0
     1373 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1375 GETUPVAL                         R83 12
     1376 GETTABLEKS                       R83 R83 K74 ["View"]
     1378 DUPTABLE                         R84 K214 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1379 GETUPVAL                         R85 0
     1380 GETTABLEKS                       R85 R85 K73 ["createElement"]
     1382 GETUPVAL                         R86 12
     1383 GETTABLEKS                       R86 R86 K74 ["View"]
     1385 DUPTABLE                         R87 K216 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1386 NEWTABLE                         R88 4 0
     1388 LOADB                            R89 1
     1389 SETTABLEKS                       R89 R88 K217 ["position-center-center anchor-center-center"]
     1391 GETUPVAL                         R90 22
     1392 JUMPIFNOT                        R90 ; [+2]
     1393 LOADB                            R89 1
     1394 JUMP                             ; [+6]
     1395 GETUPVAL                         R90 9
     1396 CALL                             R90 0 1
     1397 JUMPIFNOT                        R90 ; [+2]
     1398 NOT                              R89 R14
     1399 JUMP                             ; [+1]
     1400 NOT                              R89 R8
     1401 SETTABLEKS                       R89 R88 K126 ["radius-small"]
     1403 GETUPVAL                         R90 22
     1404 JUMPIFNOT                        R90 ; [+2]
     1405 LOADB                            R89 0
     1406 JUMP                             ; [+6]
     1407 GETUPVAL                         R90 9
     1408 CALL                             R90 0 1
     1409 JUMPIFNOT                        R90 ; [+2]
     1410 MOVE                             R89 R14
     1411 JUMP                             ; [+1]
     1412 MOVE                             R89 R8
     1413 SETTABLEKS                       R89 R88 K127 ["radius-large"]
     1415 SETTABLEKS                       R88 R87 K75 ["tag"]
     1417 GETIMPORT                        R88 K218 [UDim2.new]
     1419 LOADN                            R89 1
     1420 GETTABLEKS                       R90 R18 K219 ["Padding"]
     1422 GETTABLEKS                       R90 R90 K220 ["Small"]
     1424 LOADN                            R91 1
     1425 GETTABLEKS                       R92 R18 K219 ["Padding"]
     1427 GETTABLEKS                       R92 R92 K220 ["Small"]
     1429 CALL                             R88 4 1
     1430 SETTABLEKS                       R88 R87 K36 ["Size"]
     1432 DUPTABLE                         R88 K222 [{"UIStroke"}]
     1433 SETTABLEKS                       R63 R88 K221 ["UIStroke"]
     1435 CALL                             R85 3 -1
     1436 CALL                             R82 -1 1
     1437 JUMP                             ; [+59]
     1438 GETUPVAL                         R82 0
     1439 GETTABLEKS                       R82 R82 K73 ["createElement"]
     1441 GETUPVAL                         R83 12
     1442 GETTABLEKS                       R83 R83 K74 ["View"]
     1444 DUPTABLE                         R84 K216 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1445 NEWTABLE                         R85 4 0
     1447 LOADB                            R86 1
     1448 SETTABLEKS                       R86 R85 K217 ["position-center-center anchor-center-center"]
     1450 GETUPVAL                         R87 22
     1451 JUMPIFNOT                        R87 ; [+2]
     1452 LOADB                            R86 1
     1453 JUMP                             ; [+6]
     1454 GETUPVAL                         R87 9
     1455 CALL                             R87 0 1
     1456 JUMPIFNOT                        R87 ; [+2]
     1457 NOT                              R86 R14
     1458 JUMP                             ; [+1]
     1459 NOT                              R86 R8
     1460 SETTABLEKS                       R86 R85 K126 ["radius-small"]
     1462 GETUPVAL                         R87 22
     1463 JUMPIFNOT                        R87 ; [+2]
     1464 LOADB                            R86 0
     1465 JUMP                             ; [+6]
     1466 GETUPVAL                         R87 9
     1467 CALL                             R87 0 1
     1468 JUMPIFNOT                        R87 ; [+2]
     1469 MOVE                             R86 R14
     1470 JUMP                             ; [+1]
     1471 MOVE                             R86 R8
     1472 SETTABLEKS                       R86 R85 K127 ["radius-large"]
     1474 SETTABLEKS                       R85 R84 K75 ["tag"]
     1476 GETIMPORT                        R85 K218 [UDim2.new]
     1478 LOADN                            R86 1
     1479 GETTABLEKS                       R87 R18 K219 ["Padding"]
     1481 GETTABLEKS                       R87 R87 K220 ["Small"]
     1483 LOADN                            R88 1
     1484 GETTABLEKS                       R89 R18 K219 ["Padding"]
     1486 GETTABLEKS                       R89 R89 K220 ["Small"]
     1488 CALL                             R85 4 1
     1489 SETTABLEKS                       R85 R84 K36 ["Size"]
     1491 DUPTABLE                         R85 K222 [{"UIStroke"}]
     1492 SETTABLEKS                       R63 R85 K221 ["UIStroke"]
     1494 CALL                             R82 3 1
     1495 JUMP                             ; [+1]
     1496 LOADNIL                          R82
     1497 SETTABLEKS                       R82 R81 K211 ["SelectionHighlight"]
     1499 CALL                             R78 3 1
     1500 SETTABLEKS                       R78 R77 K109 ["SelectionHighlightContainer"]
     1502 CALL                             R74 3 1
     1503 SETTABLEKS                       R74 R73 K95 ["Node"]
     1505 GETUPVAL                         R75 21
     1506 JUMPIFNOT                        R75 ; [+15]
     1507 GETUPVAL                         R74 0
     1508 GETTABLEKS                       R74 R74 K73 ["createElement"]
     1510 GETUPVAL                         R75 12
     1511 GETTABLEKS                       R75 R75 K74 ["View"]
     1513 DUPTABLE                         R76 K224 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1514 MOVE                             R77 R2
     1515 CALL                             R77 0 1
     1516 SETTABLEKS                       R77 R76 K77 ["LayoutOrder"]
     1518 SETTABLEKS                       R59 R76 K100 ["ref"]
     1520 CALL                             R74 2 1
     1521 JUMP                             ; [+1]
     1522 LOADNIL                          R74
     1523 SETTABLEKS                       R74 R73 K96 ["DebugMarker"]
     1525 LOADB                            R74 0
     1526 GETTABLEKS                       R75 R0 K225 ["CanDrag"]
     1528 JUMPIFEQKB                       R75 FALSE ; [+39]
     1530 GETUPVAL                         R74 0
     1531 GETTABLEKS                       R74 R74 K73 ["createElement"]
     1533 LOADK                            R75 K226 ["UIDragDetector"]
     1534 NEWTABLE                         R76 8 0
     1536 GETIMPORT                        R77 K230 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1538 SETTABLEKS                       R77 R76 K231 ["DragStyle"]
     1540 GETIMPORT                        R77 K234 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1542 SETTABLEKS                       R77 R76 K235 ["ResponseStyle"]
     1544 GETTABLEKS                       R77 R3 K236 ["getViewport"]
     1546 CALL                             R77 0 1
     1547 SETTABLEKS                       R77 R76 K237 ["ReferenceUIInstance"]
     1549 GETUPVAL                         R77 0
     1550 GETTABLEKS                       R77 R77 K238 ["Event"]
     1552 GETTABLEKS                       R77 R77 K239 ["DragStart"]
     1554 SETTABLE                         R49 R76 R77
     1555 GETUPVAL                         R77 0
     1556 GETTABLEKS                       R77 R77 K238 ["Event"]
     1558 GETTABLEKS                       R77 R77 K240 ["DragContinue"]
     1560 SETTABLE                         R50 R76 R77
     1561 GETUPVAL                         R77 0
     1562 GETTABLEKS                       R77 R77 K238 ["Event"]
     1564 GETTABLEKS                       R77 R77 K241 ["DragEnd"]
     1566 SETTABLE                         R51 R76 R77
     1567 CALL                             R74 2 1
     1568 SETTABLEKS                       R74 R73 K97 ["DragDetector"]
     1570 GETUPVAL                         R74 0
     1571 GETTABLEKS                       R74 R74 K73 ["createElement"]
     1573 LOADK                            R75 K242 ["Frame"]
     1574 NEWTABLE                         R76 4 0
     1576 LOADN                            R77 1
     1577 SETTABLEKS                       R77 R76 K79 ["BackgroundTransparency"]
     1579 GETIMPORT                        R77 K121 [UDim2.fromScale]
     1581 LOADN                            R78 1
     1582 LOADN                            R79 1
     1583 CALL                             R77 2 1
     1584 SETTABLEKS                       R77 R76 K36 ["Size"]
     1586 LOADN                            R77 -10
     1587 SETTABLEKS                       R77 R76 K78 ["ZIndex"]
     1589 GETUPVAL                         R77 0
     1590 GETTABLEKS                       R77 R77 K238 ["Event"]
     1592 GETTABLEKS                       R77 R77 K243 ["InputBegan"]
     1594 SETTABLE                         R64 R76 R77
     1595 CALL                             R74 2 1
     1596 SETTABLEKS                       R74 R73 K98 ["RightClickCapture"]
     1598 CALL                             R70 3 1
     1599 SETTABLEKS                       R70 R69 K86 ["ComponentContext"]
     1601 CALL                             R66 3 -1
     1602 CLOSEUPVALS                      R8
     1603 RETURN                           R66 -1

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
       35 GETTABLEKS                       R6 R0 K10 ["Flags"]
       37 GETTABLEKS                       R6 R6 K11 ["FFlagAnimGraphUI_StateMachineNodeType"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Flags"]
       44 GETTABLEKS                       R7 R7 K12 ["FFlagAnimGraphUI_StyleTouches"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Flags"]
       51 GETTABLEKS                       R8 R8 K13 ["FFlagAnimGraphUI_UnifyNodeCorners"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["Parent"]
       58 GETTABLEKS                       R9 R9 K15 ["Foundation"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Components"]
       65 GETTABLEKS                       R10 R10 K17 ["GraphContext"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K14 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["Graphing"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K16 ["Components"]
       79 GETTABLEKS                       R12 R12 K19 ["NodeRightClickMenuContext"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K14 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["React"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K14 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["ReactUtils"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETIMPORT                        R15 K1 [script]
      100 GETTABLEKS                       R15 R15 K22 ["ResizeBars"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K14 ["Parent"]
      107 GETTABLEKS                       R16 R16 K23 ["Signals"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K14 ["Parent"]
      114 GETTABLEKS                       R17 R17 K24 ["SignalsReact"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K14 ["Parent"]
      121 GETTABLEKS                       R18 R18 K25 ["SignalsUtils"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K16 ["Components"]
      128 GETTABLEKS                       R19 R19 K26 ["SpotlightedNodeContext"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K14 ["Parent"]
      135 GETTABLEKS                       R20 R20 K27 ["TestLoader"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K16 ["Components"]
      142 GETTABLEKS                       R21 R21 K28 ["ViewportRectContext"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K29 ["Util"]
      149 GETTABLEKS                       R22 R22 K30 ["bumpNodeZIndex"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K10 ["Flags"]
      156 GETTABLEKS                       R23 R23 K31 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K10 ["Flags"]
      163 GETTABLEKS                       R24 R24 K32 ["getFFlagAnimGraphUI_LoadNodeSizes"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K10 ["Flags"]
      170 GETTABLEKS                       R25 R25 K33 ["getFFlagAnimGraphUI_SyncNodeDragPosition"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K10 ["Flags"]
      177 GETTABLEKS                       R26 R26 K34 ["getFFlagEnableExpressionSyntaxHighlighting"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K29 ["Util"]
      184 GETTABLEKS                       R27 R27 K35 ["observePlotToView"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K36 ["Hooks"]
      191 GETTABLEKS                       R28 R28 K37 ["useAbsoluteSize"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K36 ["Hooks"]
      198 GETTABLEKS                       R29 R29 K38 ["useFoundationStudioTheme"]
      200 CALL                             R28 1 1
      201 GETTABLEKS                       R29 R19 K39 ["isCli"]
      203 CALL                             R29 0 1
      204 JUMPIF                           R29 ; [+3]
      205 GETTABLEKS                       R29 R19 K40 ["isFTF"]
      207 CALL                             R29 0 1
      208 DUPCLOSURE                       R30 K41 [PROTO_35]
      209 CAPTURE                          VAL R12
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R22
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R27
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R17
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R29
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R6
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R4
      236 RETURN                           R30 1
