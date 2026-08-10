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
        0 GETIMPORT                        R1 K2 [math.map]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADN                            R3 0
        6 LOADN                            R4 1
        7 LOADK                            R5 K3 [0.5]
        8 LOADN                            R6 1
        9 CALL                             R1 5 -1
       10 RETURN                           R1 -1

PROTO_15:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+26]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["observeSpotlightedSubtree"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["observeFadeByNodeId"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["observeFadeByNodeId"]
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K2 ["createComputed"]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R0 2
       30 GETTABLEKS                       R0 R0 K1 ["observeFadeByNodeId"]
       32 JUMPIFNOT                        R0 ; [+22]
       33 GETUPVAL                         R0 3
       34 JUMPIFNOT                        R0 ; [+20]
       35 GETUPVAL                         R0 5
       36 JUMPIFNOT                        R0 ; [+12]
       37 GETUPVAL                         R0 2
       38 GETTABLEKS                       R0 R0 K1 ["observeFadeByNodeId"]
       40 GETUPVAL                         R1 3
       41 CALL                             R0 1 1
       42 GETUPVAL                         R1 4
       43 GETTABLEKS                       R1 R1 K2 ["createComputed"]
       45 NEWCLOSURE                       R2 P1
       46 CAPTURE                          VAL R0
       47 CALL                             R1 1 -1
       48 RETURN                           R1 -1
       49 GETUPVAL                         R0 2
       50 GETTABLEKS                       R0 R0 K1 ["observeFadeByNodeId"]
       52 GETUPVAL                         R1 3
       53 CALL                             R0 1 -1
       54 RETURN                           R0 -1
       55 GETUPVAL                         R0 6
       56 GETTABLEKS                       R0 R0 K3 ["Experimental"]
       58 GETTABLEKS                       R0 R0 K2 ["createComputed"]
       60 DUPCLOSURE                       R1 K4 [PROTO_15]
       61 CALL                             R0 1 -1
       62 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
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

PROTO_28:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_30:
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
       32 GETUPVAL                         R7 6
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K0 ["useContext"]
       38 GETUPVAL                         R7 7
       39 GETTABLEKS                       R7 R7 K1 ["Context"]
       41 CALL                             R6 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       46 JUMPIFNOT                        R8 ; [+5]
       47 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       49 GETTABLEKS                       R7 R7 K5 ["id"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R7
       53 GETTABLEKS                       R8 R0 K6 ["IsParameterNode"]
       55 JUMPIF                           R8 ; [+14]
       56 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       58 JUMPIFNOT                        R8 ; [+11]
       59 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       61 GETTABLEKS                       R9 R9 K7 ["className"]
       63 GETUPVAL                         R10 8
       64 GETTABLEKS                       R10 R10 K8 ["PARAMETER_NODE_CLASSNAME"]
       66 JUMPIFEQ                         R9 R10 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       72 JUMPIFNOT                        R9 ; [+11]
       73 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
       75 GETTABLEKS                       R10 R10 K7 ["className"]
       77 GETUPVAL                         R11 8
       78 GETTABLEKS                       R11 R11 K9 ["OUTPUT_NODE_CLASSNAME"]
       80 JUMPIFEQ                         R10 R11 ; [+2]
       82 LOADB                            R9 0 +1
       83 LOADB                            R9 1
       84 GETUPVAL                         R10 6
       85 CALL                             R10 0 1
       86 JUMPIFNOT                        R10 ; [+13]
       87 LOADB                            R10 1
       88 GETTABLEKS                       R11 R6 K10 ["spotlightedNodeId"]
       90 JUMPIFEQ                         R11 R7 ; [+9]
       92 MOVE                             R10 R9
       93 JUMPIFNOT                        R10 ; [+6]
       94 GETTABLEKS                       R11 R6 K10 ["spotlightedNodeId"]
       96 JUMPIFEQKNIL                     R11 ; [+2]
       98 LOADB                            R10 0 +1
       99 LOADB                            R10 1
      100 GETUPVAL                         R11 9
      101 CALL                             R11 0 1
      102 GETUPVAL                         R12 10
      103 GETTABLEKS                       R12 R12 K11 ["Hooks"]
      105 GETTABLEKS                       R12 R12 K12 ["useTokens"]
      107 CALL                             R12 0 1
      108 GETUPVAL                         R14 10
      109 GETTABLEKS                       R14 R14 K13 ["Enums"]
      111 GETTABLEKS                       R14 R14 K14 ["Theme"]
      113 GETTABLEKS                       R14 R14 K15 ["Dark"]
      115 JUMPIFNOTEQ                      R11 R14 ; [+10]
      117 GETTABLEKS                       R13 R12 K16 ["Color"]
      119 GETTABLEKS                       R13 R13 K17 ["Extended"]
      121 GETTABLEKS                       R13 R13 K18 ["Green"]
      123 GETTABLEKS                       R13 R13 K19 ["Green_1300"]
      125 JUMP                             ; [+8]
      126 GETTABLEKS                       R13 R12 K16 ["Color"]
      128 GETTABLEKS                       R13 R13 K17 ["Extended"]
      130 GETTABLEKS                       R13 R13 K18 ["Green"]
      132 GETTABLEKS                       R13 R13 K20 ["Green_100"]
      134 GETUPVAL                         R14 10
      135 GETTABLEKS                       R14 R14 K11 ["Hooks"]
      137 GETTABLEKS                       R14 R14 K21 ["useCumulativeBackground"]
      139 MOVE                             R15 R13
      140 GETTABLEKS                       R16 R12 K16 ["Color"]
      142 GETTABLEKS                       R16 R16 K22 ["Shift"]
      144 GETTABLEKS                       R16 R16 K23 ["Shift_100"]
      146 CALL                             R14 2 1
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K24 ["useMemo"]
      150 DUPCLOSURE                       R16 K25 [PROTO_0]
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          UPVAL U8
      153 NEWTABLE                         R17 0 0
      155 CALL                             R15 2 2
      156 GETUPVAL                         R17 12
      157 GETTABLEKS                       R17 R17 K26 ["useSignalBinding"]
      159 MOVE                             R18 R15
      160 CALL                             R17 1 1
      161 GETUPVAL                         R18 0
      162 GETTABLEKS                       R18 R18 K27 ["useState"]
      164 GETUPVAL                         R19 8
      165 GETTABLEKS                       R19 R19 K28 ["NODE_VIEW_CHILD_WIDTH"]
      167 CALL                             R18 1 2
      168 GETUPVAL                         R20 13
      169 CALL                             R20 0 1
      170 GETUPVAL                         R21 3
      171 GETTABLEKS                       R21 R21 K29 ["useViewportBinding"]
      173 NEWCLOSURE                       R22 P1
      174 CAPTURE                          VAL R0
      175 NEWTABLE                         R23 0 1
      177 GETTABLEKS                       R24 R0 K30 ["Position"]
      179 SETLIST                          R23 R24 1 [1]
      181 CALL                             R21 2 1
      182 GETUPVAL                         R22 12
      183 GETTABLEKS                       R22 R22 K26 ["useSignalBinding"]
      185 GETTABLEKS                       R23 R1 K31 ["observeZoomRatio"]
      187 CALL                             R22 1 1
      188 GETUPVAL                         R23 0
      189 GETTABLEKS                       R23 R23 K24 ["useMemo"]
      191 NEWCLOSURE                       R24 P2
      192 CAPTURE                          VAL R22
      193 CAPTURE                          UPVAL U14
      194 NEWTABLE                         R25 0 1
      196 MOVE                             R26 R22
      197 SETLIST                          R25 R26 1 [1]
      199 CALL                             R23 2 1
      200 GETUPVAL                         R25 15
      201 JUMPIFNOT                        R25 ; [+15]
      202 GETUPVAL                         R24 0
      203 GETTABLEKS                       R24 R24 K32 ["joinBindings"]
      205 NEWTABLE                         R25 0 2
      207 MOVE                             R26 R17
      208 MOVE                             R27 R22
      209 SETLIST                          R25 R26 2 [1]
      211 CALL                             R24 1 1
      212 DUPCLOSURE                       R26 K33 [PROTO_4]
      213 NAMECALL                         R24 R24 K34 ["map"]
      215 CALL                             R24 2 1
      216 JUMP                             ; [+5]
      217 NEWCLOSURE                       R26 P4
      218 CAPTURE                          VAL R18
      219 NAMECALL                         R24 R22 K34 ["map"]
      221 CALL                             R24 2 1
      222 GETUPVAL                         R25 0
      223 GETTABLEKS                       R25 R25 K35 ["useBinding"]
      225 GETTABLEKS                       R26 R0 K36 ["editName"]
      227 CALL                             R25 1 2
      228 GETUPVAL                         R27 2
      229 GETTABLEKS                       R27 R27 K37 ["useToggleState"]
      231 LOADB                            R28 0
      232 CALL                             R27 1 1
      233 GETUPVAL                         R28 0
      234 GETTABLEKS                       R28 R28 K38 ["useRef"]
      236 LOADNIL                          R29
      237 CALL                             R28 1 1
      238 GETUPVAL                         R29 2
      239 GETTABLEKS                       R29 R29 K39 ["useEventCallback"]
      241 NEWCLOSURE                       R30 P5
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R0
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R28
      246 CALL                             R29 1 1
      247 GETUPVAL                         R30 0
      248 GETTABLEKS                       R30 R30 K38 ["useRef"]
      250 LOADNIL                          R31
      251 CALL                             R30 1 1
      252 GETUPVAL                         R31 0
      253 GETTABLEKS                       R31 R31 K38 ["useRef"]
      255 LOADN                            R32 0
      256 CALL                             R31 1 1
      257 GETUPVAL                         R32 0
      258 GETTABLEKS                       R32 R32 K38 ["useRef"]
      260 LOADNIL                          R33
      261 CALL                             R32 1 1
      262 GETUPVAL                         R33 0
      263 GETTABLEKS                       R33 R33 K40 ["useCallback"]
      265 NEWCLOSURE                       R34 P6
      266 CAPTURE                          VAL R30
      267 CAPTURE                          VAL R27
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R31
      270 CAPTURE                          VAL R29
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R3
      273 NEWTABLE                         R35 0 4
      275 MOVE                             R36 R3
      276 GETTABLEKS                       R37 R27 K41 ["enabled"]
      278 GETTABLEKS                       R38 R0 K42 ["OnDragStart"]
      280 MOVE                             R39 R29
      281 SETLIST                          R35 R36 4 [1]
      283 CALL                             R33 2 1
      284 GETUPVAL                         R34 0
      285 GETTABLEKS                       R34 R34 K40 ["useCallback"]
      287 NEWCLOSURE                       R35 P7
      288 CAPTURE                          VAL R30
      289 CAPTURE                          VAL R0
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R27
      292 NEWTABLE                         R36 0 5
      294 MOVE                             R37 R3
      295 MOVE                             R38 R30
      296 GETTABLEKS                       R39 R0 K43 ["OnDragMoved"]
      298 MOVE                             R40 R7
      299 GETTABLEKS                       R41 R27 K44 ["disable"]
      301 SETLIST                          R36 R37 5 [1]
      303 CALL                             R34 2 1
      304 GETUPVAL                         R35 0
      305 GETTABLEKS                       R35 R35 K40 ["useCallback"]
      307 NEWCLOSURE                       R36 P8
      308 CAPTURE                          VAL R30
      309 CAPTURE                          VAL R31
      310 CAPTURE                          VAL R0
      311 CAPTURE                          VAL R3
      312 NEWTABLE                         R37 0 4
      314 MOVE                             R38 R3
      315 MOVE                             R39 R30
      316 GETTABLEKS                       R40 R0 K45 ["OnDragEnded"]
      318 MOVE                             R41 R7
      319 SETLIST                          R37 R38 4 [1]
      321 CALL                             R35 2 1
      322 GETUPVAL                         R36 0
      323 GETTABLEKS                       R36 R36 K40 ["useCallback"]
      325 NEWCLOSURE                       R37 P9
      326 CAPTURE                          VAL R19
      327 NEWTABLE                         R38 0 1
      329 MOVE                             R39 R19
      330 SETLIST                          R38 R39 1 [1]
      332 CALL                             R36 2 1
      333 GETUPVAL                         R37 0
      334 GETTABLEKS                       R37 R37 K46 ["useEffect"]
      336 NEWCLOSURE                       R38 P10
      337 CAPTURE                          VAL R7
      338 CAPTURE                          UPVAL U11
      339 CAPTURE                          VAL R20
      340 CAPTURE                          UPVAL U15
      341 CAPTURE                          VAL R15
      342 CAPTURE                          VAL R4
      343 CAPTURE                          VAL R18
      344 NEWTABLE                         R39 0 4
      346 GETTABLEKS                       R40 R4 K47 ["setNodeSize"]
      348 GETTABLEKS                       R41 R20 K48 ["observeAbsoluteSize"]
      350 MOVE                             R42 R7
      351 GETUPVAL                         R44 15
      352 JUMPIFNOT                        R44 ; [+2]
      353 MOVE                             R43 R15
      354 JUMP                             ; [+1]
      355 MOVE                             R43 R18
      356 SETLIST                          R39 R40 4 [1]
      358 CALL                             R37 2 0
      359 GETUPVAL                         R37 0
      360 GETTABLEKS                       R37 R37 K24 ["useMemo"]
      362 NEWCLOSURE                       R38 P11
      363 CAPTURE                          UPVAL U6
      364 CAPTURE                          VAL R6
      365 CAPTURE                          VAL R4
      366 CAPTURE                          VAL R7
      367 CAPTURE                          UPVAL U11
      368 CAPTURE                          UPVAL U16
      369 CAPTURE                          UPVAL U17
      370 NEWTABLE                         R39 0 3
      372 GETUPVAL                         R41 6
      373 CALL                             R41 0 1
      374 JUMPIFNOT                        R41 ; [+3]
      375 GETTABLEKS                       R40 R6 K49 ["observeSpotlightedSubtree"]
      377 JUMP                             ; [+1]
      378 LOADNIL                          R40
      379 GETTABLEKS                       R41 R4 K50 ["observeFadeByNodeId"]
      381 MOVE                             R42 R7
      382 SETLIST                          R39 R40 3 [1]
      384 CALL                             R37 2 1
      385 GETUPVAL                         R38 0
      386 GETTABLEKS                       R38 R38 K24 ["useMemo"]
      388 NEWCLOSURE                       R39 P12
      389 CAPTURE                          VAL R0
      390 NEWTABLE                         R40 0 1
      392 GETTABLEKS                       R41 R0 K51 ["Collapsed"]
      394 SETLIST                          R40 R41 1 [1]
      396 CALL                             R38 2 1
      397 GETUPVAL                         R40 18
      398 JUMPIFNOT                        R40 ; [+10]
      399 GETUPVAL                         R39 2
      400 GETTABLEKS                       R39 R39 K39 ["useEventCallback"]
      402 NEWCLOSURE                       R40 P13
      403 CAPTURE                          VAL R7
      404 CAPTURE                          VAL R4
      405 CAPTURE                          VAL R0
      406 CAPTURE                          UPVAL U19
      407 CALL                             R39 1 1
      408 JUMP                             ; [+17]
      409 GETUPVAL                         R39 0
      410 GETTABLEKS                       R39 R39 K40 ["useCallback"]
      412 NEWCLOSURE                       R40 P14
      413 CAPTURE                          VAL R7
      414 CAPTURE                          VAL R4
      415 CAPTURE                          VAL R0
      416 NEWTABLE                         R41 0 3
      418 GETTABLEKS                       R42 R4 K52 ["setCollapsed"]
      420 MOVE                             R43 R7
      421 GETTABLEKS                       R44 R0 K51 ["Collapsed"]
      423 SETLIST                          R41 R42 3 [1]
      425 CALL                             R39 2 1
      426 GETTABLEKS                       R40 R0 K53 ["text"]
      428 JUMPIF                           R40 ; [+6]
      429 GETTABLEKS                       R40 R0 K4 ["GraphPayload"]
      431 GETTABLEKS                       R40 R40 K54 ["name"]
      433 JUMPIF                           R40 ; [+1]
      434 LOADK                            R40 K55 [""]
      435 GETUPVAL                         R41 0
      436 GETTABLEKS                       R41 R41 K40 ["useCallback"]
      438 NEWCLOSURE                       R42 P15
      439 CAPTURE                          UPVAL U20
      440 CAPTURE                          VAL R25
      441 CAPTURE                          UPVAL U21
      442 CAPTURE                          VAL R27
      443 CAPTURE                          VAL R7
      444 CAPTURE                          VAL R0
      445 CAPTURE                          VAL R4
      446 NEWTABLE                         R43 0 6
      448 MOVE                             R44 R7
      449 GETTABLEKS                       R45 R27 K44 ["disable"]
      451 GETTABLEKS                       R46 R0 K6 ["IsParameterNode"]
      453 GETTABLEKS                       R47 R0 K4 ["GraphPayload"]
      455 GETTABLEKS                       R47 R47 K54 ["name"]
      457 GETTABLEKS                       R48 R4 K56 ["renameParameter"]
      459 GETTABLEKS                       R49 R4 K57 ["renameNode"]
      461 SETLIST                          R43 R44 6 [1]
      463 CALL                             R41 2 1
      464 MOVE                             R42 R2
      465 CALL                             R42 0 1
      466 GETUPVAL                         R43 0
      467 GETTABLEKS                       R43 R43 K24 ["useMemo"]
      469 DUPCLOSURE                       R44 K58 [PROTO_21]
      470 CAPTURE                          UPVAL U11
      471 NEWTABLE                         R45 0 0
      473 CALL                             R43 2 2
      474 GETUPVAL                         R45 22
      475 JUMPIFNOT                        R45 ; [+17]
      476 GETUPVAL                         R45 0
      477 GETTABLEKS                       R45 R45 K46 ["useEffect"]
      479 NEWCLOSURE                       R46 P17
      480 CAPTURE                          UPVAL U11
      481 CAPTURE                          VAL R43
      482 CAPTURE                          VAL R40
      483 CAPTURE                          VAL R0
      484 NEWTABLE                         R47 0 3
      486 MOVE                             R48 R43
      487 MOVE                             R49 R40
      488 GETTABLEKS                       R50 R0 K59 ["Selected"]
      490 SETLIST                          R47 R48 3 [1]
      492 CALL                             R45 2 0
      493 GETUPVAL                         R45 12
      494 GETTABLEKS                       R45 R45 K26 ["useSignalBinding"]
      496 MOVE                             R46 R37
      497 CALL                             R45 1 1
      498 GETUPVAL                         R46 0
      499 GETTABLEKS                       R46 R46 K24 ["useMemo"]
      501 NEWCLOSURE                       R47 P18
      502 CAPTURE                          VAL R8
      503 CAPTURE                          UPVAL U14
      504 CAPTURE                          VAL R0
      505 NEWTABLE                         R48 0 3
      507 GETTABLEKS                       R49 R0 K51 ["Collapsed"]
      509 MOVE                             R50 R8
      510 GETTABLEKS                       R51 R0 K59 ["Selected"]
      512 SETLIST                          R48 R49 3 [1]
      514 CALL                             R46 2 1
      515 GETUPVAL                         R47 0
      516 GETTABLEKS                       R47 R47 K24 ["useMemo"]
      518 NEWCLOSURE                       R48 P19
      519 CAPTURE                          VAL R46
      520 NEWTABLE                         R49 0 1
      522 MOVE                             R50 R46
      523 SETLIST                          R49 R50 1 [1]
      525 CALL                             R47 2 1
      526 GETUPVAL                         R48 0
      527 GETTABLEKS                       R48 R48 K24 ["useMemo"]
      529 NEWCLOSURE                       R49 P20
      530 CAPTURE                          UPVAL U0
      531 CAPTURE                          VAL R23
      532 CAPTURE                          VAL R12
      533 NEWTABLE                         R50 0 2
      535 MOVE                             R51 R23
      536 GETTABLEKS                       R52 R12 K16 ["Color"]
      538 GETTABLEKS                       R52 R52 K60 ["System"]
      540 GETTABLEKS                       R52 R52 K61 ["Neutral"]
      542 GETTABLEKS                       R52 R52 K62 ["Color3"]
      544 SETLIST                          R50 R51 2 [1]
      546 CALL                             R48 2 1
      547 GETUPVAL                         R50 23
      548 JUMPIFNOT                        R50 ; [+13]
      549 GETUPVAL                         R49 2
      550 GETTABLEKS                       R49 R49 K39 ["useEventCallback"]
      552 NEWCLOSURE                       R50 P21
      553 CAPTURE                          VAL R4
      554 CAPTURE                          VAL R0
      555 CAPTURE                          UPVAL U18
      556 CAPTURE                          UPVAL U19
      557 CAPTURE                          UPVAL U24
      558 CAPTURE                          VAL R5
      559 CAPTURE                          VAL R3
      560 CALL                             R49 1 1
      561 JUMP                             ; [+1]
      562 LOADNIL                          R49
      563 GETUPVAL                         R50 0
      564 GETTABLEKS                       R50 R50 K63 ["createElement"]
      566 GETUPVAL                         R51 10
      567 GETTABLEKS                       R51 R51 K64 ["View"]
      569 DUPTABLE                         R52 K74 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      570 GETUPVAL                         R54 15
      571 JUMPIFNOT                        R54 ; [+5]
      572 DUPCLOSURE                       R55 K75 [PROTO_28]
      573 NAMECALL                         R53 R17 K34 ["map"]
      575 CALL                             R53 2 1
      576 JUMP                             ; [+5]
      577 GETIMPORT                        R53 K78 [UDim2.fromOffset]
      579 MOVE                             R54 R18
      580 LOADN                            R55 0
      581 CALL                             R53 2 1
      582 SETTABLEKS                       R53 R52 K67 ["Size"]
      584 GETTABLEKS                       R53 R0 K68 ["LayoutOrder"]
      586 SETTABLEKS                       R53 R52 K68 ["LayoutOrder"]
      588 GETTABLEKS                       R53 R0 K69 ["ZIndex"]
      590 SETTABLEKS                       R53 R52 K69 ["ZIndex"]
      592 SETTABLEKS                       R21 R52 K30 ["Position"]
      594 DUPTABLE                         R53 K81 [{"UIScale", "ComponentContext"}]
      595 GETUPVAL                         R54 0
      596 GETTABLEKS                       R54 R54 K63 ["createElement"]
      598 LOADK                            R55 K79 ["UIScale"]
      599 DUPTABLE                         R56 K83 [{"Scale"}]
      600 SETTABLEKS                       R22 R56 K82 ["Scale"]
      602 CALL                             R54 2 1
      603 SETTABLEKS                       R54 R53 K79 ["UIScale"]
      605 GETUPVAL                         R54 0
      606 GETTABLEKS                       R54 R54 K63 ["createElement"]
      608 GETUPVAL                         R55 25
      609 GETTABLEKS                       R55 R55 K84 ["Provider"]
      611 DUPTABLE                         R56 K86 [{"absoluteSizeHook"}]
      612 SETTABLEKS                       R20 R56 K85 ["absoluteSizeHook"]
      614 DUPTABLE                         R57 K91 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      615 GETUPVAL                         R58 0
      616 GETTABLEKS                       R58 R58 K63 ["createElement"]
      618 GETUPVAL                         R59 10
      619 GETTABLEKS                       R59 R59 K64 ["View"]
      621 DUPTABLE                         R60 K93 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      622 SETTABLEKS                       R47 R60 K65 ["tag"]
      624 GETUPVAL                         R62 15
      625 JUMPIFNOT                        R62 ; [+5]
      626 DUPCLOSURE                       R63 K94 [PROTO_29]
      627 NAMECALL                         R61 R17 K34 ["map"]
      629 CALL                             R61 2 1
      630 JUMP                             ; [+5]
      631 GETIMPORT                        R61 K78 [UDim2.fromOffset]
      633 MOVE                             R62 R18
      634 LOADN                            R63 0
      635 CALL                             R61 2 1
      636 SETTABLEKS                       R61 R60 K67 ["Size"]
      638 GETTABLEKS                       R61 R20 K95 ["setFrame"]
      640 SETTABLEKS                       R61 R60 K92 ["ref"]
      642 DUPTABLE                         R61 K102 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      643 GETUPVAL                         R62 0
      644 GETTABLEKS                       R62 R62 K63 ["createElement"]
      646 LOADK                            R63 K103 ["Folder"]
      647 NEWTABLE                         R64 0 0
      649 DUPTABLE                         R65 K105 [{"Cover"}]
      650 GETUPVAL                         R66 0
      651 GETTABLEKS                       R66 R66 K63 ["createElement"]
      653 GETUPVAL                         R67 10
      654 GETTABLEKS                       R67 R67 K64 ["View"]
      656 DUPTABLE                         R68 K109 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      657 SETTABLEKS                       R46 R68 K65 ["tag"]
      659 GETIMPORT                        R69 K111 [UDim2.fromScale]
      661 LOADN                            R70 1
      662 LOADN                            R71 1
      663 CALL                             R69 2 1
      664 SETTABLEKS                       R69 R68 K67 ["Size"]
      666 SETTABLEKS                       R45 R68 K106 ["GroupTransparency"]
      668 GETUPVAL                         R70 26
      669 CALL                             R70 0 1
      670 JUMPIFNOT                        R70 ; [+5]
      671 GETUPVAL                         R70 27
      672 CALL                             R70 0 1
      673 JUMPIFNOT                        R70 ; [+2]
      674 LOADN                            R69 2
      675 JUMP                             ; [+1]
      676 LOADN                            R69 1
      677 SETTABLEKS                       R69 R68 K69 ["ZIndex"]
      679 CALL                             R66 2 1
      680 SETTABLEKS                       R66 R65 K104 ["Cover"]
      682 CALL                             R62 3 1
      683 SETTABLEKS                       R62 R61 K96 ["CoverContainer"]
      685 GETUPVAL                         R62 0
      686 GETTABLEKS                       R62 R62 K63 ["createElement"]
      688 GETUPVAL                         R63 10
      689 GETTABLEKS                       R63 R63 K64 ["View"]
      691 DUPTABLE                         R64 K113 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      692 NEWTABLE                         R65 4 0
      694 LOADB                            R66 1
      695 SETTABLEKS                       R66 R65 K114 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      697 GETUPVAL                         R67 28
      698 NOT                              R66 R67
      699 JUMPIFNOT                        R66 ; [+1]
      700 NOT                              R66 R8
      701 SETTABLEKS                       R66 R65 K115 ["radius-small bg-shift-200"]
      703 MOVE                             R66 R8
      704 JUMPIFNOT                        R66 ; [+3]
      705 GETTABLEKS                       R67 R0 K51 ["Collapsed"]
      707 NOT                              R66 R67
      708 SETTABLEKS                       R66 R65 K116 ["radius-small"]
      710 MOVE                             R66 R8
      711 JUMPIFNOT                        R66 ; [+2]
      712 GETTABLEKS                       R66 R0 K51 ["Collapsed"]
      714 SETTABLEKS                       R66 R65 K117 ["radius-large"]
      716 SETTABLEKS                       R65 R64 K65 ["tag"]
      718 JUMPIFNOT                        R8 ; [+2]
      719 MOVE                             R65 R14
      720 JUMP                             ; [+1]
      721 LOADNIL                          R65
      722 SETTABLEKS                       R65 R64 K112 ["backgroundStyle"]
      724 SETTABLEKS                       R42 R64 K68 ["LayoutOrder"]
      726 SETTABLEKS                       R32 R64 K92 ["ref"]
      728 DUPTABLE                         R65 K123 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      729 GETTABLEKS                       R67 R0 K124 ["Collapsible"]
      731 JUMPIFEQKB                       R67 FALSE ; [+47]
      733 GETUPVAL                         R67 28
      734 JUMPIF                           R67 ; [+44]
      735 GETUPVAL                         R66 0
      736 GETTABLEKS                       R66 R66 K63 ["createElement"]
      738 GETUPVAL                         R67 10
      739 GETTABLEKS                       R67 R67 K125 ["Button"]
      741 DUPTABLE                         R68 K131 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      742 SETTABLEKS                       R38 R68 K126 ["icon"]
      744 GETUPVAL                         R69 10
      745 GETTABLEKS                       R69 R69 K13 ["Enums"]
      747 GETTABLEKS                       R69 R69 K132 ["ButtonVariant"]
      749 GETTABLEKS                       R69 R69 K133 ["Text"]
      751 SETTABLEKS                       R69 R68 K127 ["variant"]
      753 SETTABLEKS                       R39 R68 K128 ["onActivated"]
      755 GETUPVAL                         R69 10
      756 GETTABLEKS                       R69 R69 K13 ["Enums"]
      758 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      760 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      762 SETTABLEKS                       R69 R68 K129 ["size"]
      764 MOVE                             R69 R2
      765 CALL                             R69 0 1
      766 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      768 GETUPVAL                         R69 10
      769 GETTABLEKS                       R69 R69 K13 ["Enums"]
      771 GETTABLEKS                       R69 R69 K136 ["FillBehavior"]
      773 GETTABLEKS                       R69 R69 K137 ["Fit"]
      775 SETTABLEKS                       R69 R68 K130 ["fillBehavior"]
      777 CALL                             R66 2 1
      778 JUMP                             ; [+1]
      779 LOADNIL                          R66
      780 SETTABLEKS                       R66 R65 K118 ["DEPRECATED_ToggleButton"]
      782 GETUPVAL                         R66 0
      783 GETTABLEKS                       R66 R66 K63 ["createElement"]
      785 GETUPVAL                         R67 10
      786 GETTABLEKS                       R67 R67 K133 ["Text"]
      788 DUPTABLE                         R68 K142 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      789 NEWTABLE                         R69 2 0
      791 LOADB                            R70 1
      792 SETTABLEKS                       R70 R69 K143 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      794 GETUPVAL                         R70 28
      795 JUMPIF                           R70 ; [+6]
      796 GETTABLEKS                       R71 R0 K124 ["Collapsible"]
      798 JUMPIFEQKB                       R71 FALSE ; [+2]
      800 LOADB                            R70 0 +1
      801 LOADB                            R70 1
      802 SETTABLEKS                       R70 R69 K144 ["padding-left-small"]
      804 SETTABLEKS                       R69 R68 K65 ["tag"]
      806 SETTABLEKS                       R40 R68 K133 ["Text"]
      808 MOVE                             R69 R2
      809 CALL                             R69 0 1
      810 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      812 GETTABLEKS                       R70 R27 K41 ["enabled"]
      814 NOT                              R69 R70
      815 SETTABLEKS                       R69 R68 K140 ["Visible"]
      817 CALL                             R66 2 1
      818 SETTABLEKS                       R66 R65 K119 ["Title"]
      820 GETUPVAL                         R66 0
      821 GETTABLEKS                       R66 R66 K63 ["createElement"]
      823 GETUPVAL                         R67 10
      824 GETTABLEKS                       R67 R67 K145 ["TextInput"]
      826 DUPTABLE                         R68 K152 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      827 NEWTABLE                         R69 1 0
      829 LOADB                            R70 1
      830 SETTABLEKS                       R70 R69 K143 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      832 SETTABLEKS                       R69 R68 K65 ["tag"]
      834 SETTABLEKS                       R25 R68 K53 ["text"]
      836 MOVE                             R69 R2
      837 CALL                             R69 0 1
      838 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      840 SETTABLEKS                       R26 R68 K146 ["onChanged"]
      842 GETUPVAL                         R69 10
      843 GETTABLEKS                       R69 R69 K13 ["Enums"]
      845 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      847 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      849 SETTABLEKS                       R69 R68 K129 ["size"]
      851 GETUPVAL                         R69 10
      852 GETTABLEKS                       R69 R69 K13 ["Enums"]
      854 GETTABLEKS                       R69 R69 K153 ["InputFocusBehavior"]
      856 GETTABLEKS                       R69 R69 K154 ["Highlight"]
      858 SETTABLEKS                       R69 R68 K148 ["focusBehavior"]
      860 SETTABLEKS                       R28 R68 K149 ["textBoxRef"]
      862 SETTABLEKS                       R41 R68 K150 ["onFocusLost"]
      864 SETTABLEKS                       R28 R68 K92 ["ref"]
      866 GETIMPORT                        R69 K157 [UDim.new]
      868 LOADN                            R70 0
      869 LOADN                            R71 100
      870 CALL                             R69 2 1
      871 SETTABLEKS                       R69 R68 K151 ["width"]
      873 GETTABLEKS                       R69 R27 K41 ["enabled"]
      875 SETTABLEKS                       R69 R68 K140 ["Visible"]
      877 CALL                             R66 2 1
      878 SETTABLEKS                       R66 R65 K120 ["TitleInput"]
      880 GETTABLEKS                       R67 R0 K124 ["Collapsible"]
      882 JUMPIFEQKB                       R67 FALSE ; [+47]
      884 GETUPVAL                         R67 28
      885 JUMPIFNOT                        R67 ; [+44]
      886 GETUPVAL                         R66 0
      887 GETTABLEKS                       R66 R66 K63 ["createElement"]
      889 GETUPVAL                         R67 10
      890 GETTABLEKS                       R67 R67 K125 ["Button"]
      892 DUPTABLE                         R68 K131 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      893 SETTABLEKS                       R38 R68 K126 ["icon"]
      895 GETUPVAL                         R69 10
      896 GETTABLEKS                       R69 R69 K13 ["Enums"]
      898 GETTABLEKS                       R69 R69 K132 ["ButtonVariant"]
      900 GETTABLEKS                       R69 R69 K133 ["Text"]
      902 SETTABLEKS                       R69 R68 K127 ["variant"]
      904 SETTABLEKS                       R39 R68 K128 ["onActivated"]
      906 GETUPVAL                         R69 10
      907 GETTABLEKS                       R69 R69 K13 ["Enums"]
      909 GETTABLEKS                       R69 R69 K134 ["InputSize"]
      911 GETTABLEKS                       R69 R69 K135 ["XSmall"]
      913 SETTABLEKS                       R69 R68 K129 ["size"]
      915 MOVE                             R69 R2
      916 CALL                             R69 0 1
      917 SETTABLEKS                       R69 R68 K68 ["LayoutOrder"]
      919 GETUPVAL                         R69 10
      920 GETTABLEKS                       R69 R69 K13 ["Enums"]
      922 GETTABLEKS                       R69 R69 K136 ["FillBehavior"]
      924 GETTABLEKS                       R69 R69 K137 ["Fit"]
      926 SETTABLEKS                       R69 R68 K130 ["fillBehavior"]
      928 CALL                             R66 2 1
      929 JUMP                             ; [+1]
      930 LOADNIL                          R66
      931 SETTABLEKS                       R66 R65 K121 ["ToggleButton"]
      933 GETUPVAL                         R66 0
      934 GETTABLEKS                       R66 R66 K63 ["createElement"]
      936 LOADK                            R67 K103 ["Folder"]
      937 NEWTABLE                         R68 0 0
      939 GETTABLEKS                       R69 R0 K158 ["HeaderChildren"]
      941 CALL                             R66 3 1
      942 SETTABLEKS                       R66 R65 K122 ["Children"]
      944 CALL                             R62 3 1
      945 SETTABLEKS                       R62 R61 K97 ["CompositorNodeHeader"]
      947 GETUPVAL                         R62 28
      948 JUMPIFNOT                        R62 ; [+16]
      949 GETTABLEKS                       R63 R0 K51 ["Collapsed"]
      951 NOT                              R62 R63
      952 JUMPIFNOT                        R62 ; [+12]
      953 GETUPVAL                         R62 0
      954 GETTABLEKS                       R62 R62 K63 ["createElement"]
      956 GETUPVAL                         R63 10
      957 GETTABLEKS                       R63 R63 K159 ["Divider"]
      959 DUPTABLE                         R64 K160 [{"LayoutOrder"}]
      960 MOVE                             R65 R2
      961 CALL                             R65 0 1
      962 SETTABLEKS                       R65 R64 K68 ["LayoutOrder"]
      964 CALL                             R62 2 1
      965 SETTABLEKS                       R62 R61 K98 ["TitleDivider"]
      967 GETUPVAL                         R63 0
      968 GETTABLEKS                       R63 R63 K122 ["Children"]
      970 GETTABLEKS                       R63 R63 K161 ["count"]
      972 GETTABLEKS                       R64 R0 K162 ["children"]
      974 CALL                             R63 1 1
      975 LOADN                            R64 0
      976 JUMPIFNOTLT                      R64 R63 ; [+90]
      978 GETUPVAL                         R62 0
      979 GETTABLEKS                       R62 R62 K63 ["createElement"]
      981 GETUPVAL                         R63 10
      982 GETTABLEKS                       R63 R63 K64 ["View"]
      984 DUPTABLE                         R64 K164 [{["tag"] = "size-full-700 auto-y", ["LayoutOrder"]}]
      985 MOVE                             R65 R2
      986 CALL                             R65 0 1
      987 SETTABLEKS                       R65 R64 K68 ["LayoutOrder"]
      989 DUPTABLE                         R65 K167 [{"Contents", "ResizeBars"}]
      990 GETUPVAL                         R66 0
      991 GETTABLEKS                       R66 R66 K63 ["createElement"]
      993 GETUPVAL                         R67 10
      994 GETTABLEKS                       R67 R67 K64 ["View"]
      996 DUPTABLE                         R68 K170 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"], ["testId"] = "CompositorNodeContents"}]
      997 GETUPVAL                         R70 26
      998 CALL                             R70 0 1
      999 JUMPIFNOT                        R70 ; [+5]
     1000 GETUPVAL                         R70 27
     1001 CALL                             R70 0 1
     1002 JUMPIFNOT                        R70 ; [+2]
     1003 LOADN                            R69 1
     1004 JUMP                             ; [+1]
     1005 LOADN                            R69 2
     1006 SETTABLEKS                       R69 R68 K69 ["ZIndex"]
     1008 DUPTABLE                         R69 K172 [{"NodeProperties"}]
     1009 GETUPVAL                         R70 0
     1010 GETTABLEKS                       R70 R70 K63 ["createElement"]
     1012 GETUPVAL                         R71 0
     1013 GETTABLEKS                       R71 R71 K173 ["Fragment"]
     1015 NEWTABLE                         R72 0 0
     1017 GETTABLEKS                       R73 R0 K162 ["children"]
     1019 CALL                             R70 3 1
     1020 SETTABLEKS                       R70 R69 K171 ["NodeProperties"]
     1022 CALL                             R66 3 1
     1023 SETTABLEKS                       R66 R65 K165 ["Contents"]
     1025 JUMPIF                           R8 ; [+36]
     1026 GETUPVAL                         R66 0
     1027 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1029 GETUPVAL                         R67 29
     1030 DUPTABLE                         R68 K179 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 4}]
     1031 SETTABLEKS                       R18 R68 K174 ["DEPRECATED_nodeWidth"]
     1033 SETTABLEKS                       R17 R68 K175 ["nodeWidthBinding"]
     1035 GETUPVAL                         R70 15
     1036 JUMPIFNOT                        R70 ; [+2]
     1037 MOVE                             R69 R16
     1038 JUMP                             ; [+1]
     1039 MOVE                             R69 R36
     1040 SETTABLEKS                       R69 R68 K176 ["OnResized"]
     1042 GETTABLEKS                       R70 R0 K59 ["Selected"]
     1044 JUMPIFNOT                        R70 ; [+7]
     1045 GETTABLEKS                       R69 R12 K16 ["Color"]
     1047 GETTABLEKS                       R69 R69 K60 ["System"]
     1049 GETTABLEKS                       R69 R69 K61 ["Neutral"]
     1051 JUMP                             ; [+6]
     1052 GETTABLEKS                       R69 R12 K16 ["Color"]
     1054 GETTABLEKS                       R69 R69 K180 ["Stroke"]
     1056 GETTABLEKS                       R69 R69 K181 ["Default"]
     1058 SETTABLEKS                       R69 R68 K177 ["Style"]
     1060 CALL                             R66 2 1
     1061 JUMP                             ; [+1]
     1062 LOADNIL                          R66
     1063 SETTABLEKS                       R66 R65 K166 ["ResizeBars"]
     1065 CALL                             R62 3 1
     1066 JUMP                             ; [+1]
     1067 LOADNIL                          R62
     1068 SETTABLEKS                       R62 R61 K99 ["CompositorNodeContent"]
     1070 GETTABLEKS                       R62 R0 K100 ["ContextToolbar"]
     1072 JUMPIFNOT                        R62 ; [+21]
     1073 GETTABLEKS                       R63 R0 K59 ["Selected"]
     1075 JUMPIF                           R63 ; [+2]
     1076 MOVE                             R62 R10
     1077 JUMPIFNOT                        R62 ; [+16]
     1078 GETUPVAL                         R62 0
     1079 GETTABLEKS                       R62 R62 K63 ["createElement"]
     1081 GETUPVAL                         R63 30
     1082 DUPTABLE                         R64 K185 [{"Buttons", "positionBinding", "widthBinding"}]
     1083 GETTABLEKS                       R65 R0 K100 ["ContextToolbar"]
     1085 GETTABLEKS                       R65 R65 K182 ["Buttons"]
     1087 SETTABLEKS                       R65 R64 K182 ["Buttons"]
     1089 SETTABLEKS                       R21 R64 K183 ["positionBinding"]
     1091 SETTABLEKS                       R24 R64 K184 ["widthBinding"]
     1093 CALL                             R62 2 1
     1094 SETTABLEKS                       R62 R61 K100 ["ContextToolbar"]
     1096 GETUPVAL                         R62 14
     1097 CALL                             R62 0 1
     1098 JUMPIFNOT                        R62 ; [+102]
     1099 GETUPVAL                         R62 0
     1100 GETTABLEKS                       R62 R62 K63 ["createElement"]
     1102 LOADK                            R63 K103 ["Folder"]
     1103 NEWTABLE                         R64 0 0
     1105 DUPTABLE                         R65 K187 [{"SelectionHighlight"}]
     1106 GETTABLEKS                       R67 R0 K59 ["Selected"]
     1108 JUMPIFNOT                        R67 ; [+88]
     1109 GETUPVAL                         R67 28
     1110 JUMPIFNOT                        R67 ; [+47]
     1111 GETUPVAL                         R66 0
     1112 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1114 GETUPVAL                         R67 10
     1115 GETTABLEKS                       R67 R67 K64 ["View"]
     1117 DUPTABLE                         R68 K189 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1118 GETUPVAL                         R69 0
     1119 GETTABLEKS                       R69 R69 K63 ["createElement"]
     1121 GETUPVAL                         R70 10
     1122 GETTABLEKS                       R70 R70 K64 ["View"]
     1124 DUPTABLE                         R71 K191 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1125 NEWTABLE                         R72 4 0
     1127 LOADB                            R73 1
     1128 SETTABLEKS                       R73 R72 K192 ["position-center-center anchor-center-center"]
     1130 NOT                              R73 R8
     1131 SETTABLEKS                       R73 R72 K116 ["radius-small"]
     1133 SETTABLEKS                       R8 R72 K117 ["radius-large"]
     1135 SETTABLEKS                       R72 R71 K65 ["tag"]
     1137 GETIMPORT                        R72 K193 [UDim2.new]
     1139 LOADN                            R73 1
     1140 GETTABLEKS                       R74 R12 K194 ["Padding"]
     1142 GETTABLEKS                       R74 R74 K195 ["Small"]
     1144 LOADN                            R75 1
     1145 GETTABLEKS                       R76 R12 K194 ["Padding"]
     1147 GETTABLEKS                       R76 R76 K195 ["Small"]
     1149 CALL                             R72 4 1
     1150 SETTABLEKS                       R72 R71 K67 ["Size"]
     1152 DUPTABLE                         R72 K197 [{"UIStroke"}]
     1153 SETTABLEKS                       R48 R72 K196 ["UIStroke"]
     1155 CALL                             R69 3 -1
     1156 CALL                             R66 -1 1
     1157 JUMP                             ; [+40]
     1158 GETUPVAL                         R66 0
     1159 GETTABLEKS                       R66 R66 K63 ["createElement"]
     1161 GETUPVAL                         R67 10
     1162 GETTABLEKS                       R67 R67 K64 ["View"]
     1164 DUPTABLE                         R68 K191 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 3, ["testId"] = "SelectionHighlight"}]
     1165 NEWTABLE                         R69 4 0
     1167 LOADB                            R70 1
     1168 SETTABLEKS                       R70 R69 K192 ["position-center-center anchor-center-center"]
     1170 NOT                              R70 R8
     1171 SETTABLEKS                       R70 R69 K116 ["radius-small"]
     1173 SETTABLEKS                       R8 R69 K117 ["radius-large"]
     1175 SETTABLEKS                       R69 R68 K65 ["tag"]
     1177 GETIMPORT                        R69 K193 [UDim2.new]
     1179 LOADN                            R70 1
     1180 GETTABLEKS                       R71 R12 K194 ["Padding"]
     1182 GETTABLEKS                       R71 R71 K195 ["Small"]
     1184 LOADN                            R72 1
     1185 GETTABLEKS                       R73 R12 K194 ["Padding"]
     1187 GETTABLEKS                       R73 R73 K195 ["Small"]
     1189 CALL                             R69 4 1
     1190 SETTABLEKS                       R69 R68 K67 ["Size"]
     1192 DUPTABLE                         R69 K197 [{"UIStroke"}]
     1193 SETTABLEKS                       R48 R69 K196 ["UIStroke"]
     1195 CALL                             R66 3 1
     1196 JUMP                             ; [+1]
     1197 LOADNIL                          R66
     1198 SETTABLEKS                       R66 R65 K186 ["SelectionHighlight"]
     1200 CALL                             R62 3 1
     1201 SETTABLEKS                       R62 R61 K101 ["SelectionHighlightContainer"]
     1203 CALL                             R58 3 1
     1204 SETTABLEKS                       R58 R57 K87 ["Node"]
     1206 GETUPVAL                         R59 22
     1207 JUMPIFNOT                        R59 ; [+15]
     1208 GETUPVAL                         R58 0
     1209 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1211 GETUPVAL                         R59 10
     1212 GETTABLEKS                       R59 R59 K64 ["View"]
     1214 DUPTABLE                         R60 K200 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1215 MOVE                             R61 R2
     1216 CALL                             R61 0 1
     1217 SETTABLEKS                       R61 R60 K68 ["LayoutOrder"]
     1219 SETTABLEKS                       R44 R60 K92 ["ref"]
     1221 CALL                             R58 2 1
     1222 JUMP                             ; [+1]
     1223 LOADNIL                          R58
     1224 SETTABLEKS                       R58 R57 K88 ["DebugMarker"]
     1226 GETUPVAL                         R59 31
     1227 CALL                             R59 0 1
     1228 JUMPIFNOT                        R59 ; [+5]
     1229 LOADB                            R58 0
     1230 GETTABLEKS                       R59 R0 K201 ["CanDrag"]
     1232 JUMPIFEQKB                       R59 FALSE ; [+39]
     1234 GETUPVAL                         R58 0
     1235 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1237 LOADK                            R59 K202 ["UIDragDetector"]
     1238 NEWTABLE                         R60 8 0
     1240 GETIMPORT                        R61 K206 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1242 SETTABLEKS                       R61 R60 K207 ["DragStyle"]
     1244 GETIMPORT                        R61 K210 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1246 SETTABLEKS                       R61 R60 K211 ["ResponseStyle"]
     1248 GETTABLEKS                       R61 R3 K212 ["getViewport"]
     1250 CALL                             R61 0 1
     1251 SETTABLEKS                       R61 R60 K213 ["ReferenceUIInstance"]
     1253 GETUPVAL                         R61 0
     1254 GETTABLEKS                       R61 R61 K214 ["Event"]
     1256 GETTABLEKS                       R61 R61 K215 ["DragStart"]
     1258 SETTABLE                         R33 R60 R61
     1259 GETUPVAL                         R61 0
     1260 GETTABLEKS                       R61 R61 K214 ["Event"]
     1262 GETTABLEKS                       R61 R61 K216 ["DragContinue"]
     1264 SETTABLE                         R34 R60 R61
     1265 GETUPVAL                         R61 0
     1266 GETTABLEKS                       R61 R61 K214 ["Event"]
     1268 GETTABLEKS                       R61 R61 K217 ["DragEnd"]
     1270 SETTABLE                         R35 R60 R61
     1271 CALL                             R58 2 1
     1272 SETTABLEKS                       R58 R57 K89 ["DragDetector"]
     1274 GETUPVAL                         R58 23
     1275 JUMPIFNOT                        R58 ; [+26]
     1276 GETUPVAL                         R58 0
     1277 GETTABLEKS                       R58 R58 K63 ["createElement"]
     1279 LOADK                            R59 K218 ["Frame"]
     1280 NEWTABLE                         R60 4 0
     1282 LOADN                            R61 1
     1283 SETTABLEKS                       R61 R60 K70 ["BackgroundTransparency"]
     1285 GETIMPORT                        R61 K111 [UDim2.fromScale]
     1287 LOADN                            R62 1
     1288 LOADN                            R63 1
     1289 CALL                             R61 2 1
     1290 SETTABLEKS                       R61 R60 K67 ["Size"]
     1292 LOADN                            R61 -10
     1293 SETTABLEKS                       R61 R60 K69 ["ZIndex"]
     1295 GETUPVAL                         R61 0
     1296 GETTABLEKS                       R61 R61 K214 ["Event"]
     1298 GETTABLEKS                       R61 R61 K219 ["InputBegan"]
     1300 SETTABLE                         R49 R60 R61
     1301 CALL                             R58 2 1
     1302 SETTABLEKS                       R58 R57 K90 ["RightClickCapture"]
     1304 CALL                             R54 3 1
     1305 SETTABLEKS                       R54 R53 K80 ["ComponentContext"]
     1307 CALL                             R50 3 -1
     1308 RETURN                           R50 -1

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
      154 GETTABLEKS                       R23 R0 K20 ["Parent"]
      156 GETTABLEKS                       R23 R23 K31 ["SignalsUtils"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K22 ["Components"]
      163 GETTABLEKS                       R24 R24 K32 ["SpotlightedNodeContext"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K5 [require]
      168 GETTABLEKS                       R25 R0 K20 ["Parent"]
      170 GETTABLEKS                       R25 R25 K33 ["TestLoader"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K5 [require]
      175 GETTABLEKS                       R26 R0 K22 ["Components"]
      177 GETTABLEKS                       R26 R26 K34 ["ViewportRectContext"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K10 ["Util"]
      184 GETTABLEKS                       R27 R27 K35 ["bumpNodeZIndex"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphFixNodeDimming"]
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
      217 GETTABLEKS                       R32 R0 K12 ["Flags"]
      219 GETTABLEKS                       R32 R32 K40 ["getFFlagAnimGraphUI_SpotlightNodes"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K41 ["Hooks"]
      226 GETTABLEKS                       R33 R33 K42 ["useAbsoluteSize"]
      228 CALL                             R32 1 1
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R34 R0 K41 ["Hooks"]
      233 GETTABLEKS                       R34 R34 K43 ["useFoundationStudioTheme"]
      235 CALL                             R33 1 1
      236 GETTABLEKS                       R34 R24 K44 ["isCli"]
      238 CALL                             R34 0 1
      239 JUMPIF                           R34 ; [+3]
      240 GETTABLEKS                       R34 R24 K45 ["isFTF"]
      242 CALL                             R34 0 1
      243 DUPCLOSURE                       R35 K46 [PROTO_30]
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R18
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R31
      251 CAPTURE                          VAL R23
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R33
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R20
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R32
      258 CAPTURE                          VAL R29
      259 CAPTURE                          VAL R10
      260 CAPTURE                          VAL R9
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R26
      264 CAPTURE                          VAL R8
      265 CAPTURE                          VAL R5
      266 CAPTURE                          VAL R34
      267 CAPTURE                          VAL R11
      268 CAPTURE                          VAL R6
      269 CAPTURE                          VAL R1
      270 CAPTURE                          VAL R27
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R12
      273 CAPTURE                          VAL R19
      274 CAPTURE                          VAL R4
      275 CAPTURE                          VAL R30
      276 RETURN                           R35 1
