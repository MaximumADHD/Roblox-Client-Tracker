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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_14:
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
       60 DUPCLOSURE                       R1 K4 [PROTO_13]
       61 CALL                             R0 1 -1
       62 RETURN                           R0 -1

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
        4 JUMPIFNOTEQ                      R2 R3 ; [+25]
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
       30 RETURN                           R0 0

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
       25 GETUPVAL                         R6 5
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+8]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["useContext"]
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K1 ["Context"]
       34 CALL                             R5 1 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R5
       37 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       39 JUMPIFNOT                        R7 ; [+5]
       40 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       42 GETTABLEKS                       R6 R6 K5 ["id"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R6
       46 GETTABLEKS                       R7 R0 K6 ["IsParameterNode"]
       48 JUMPIF                           R7 ; [+14]
       49 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       51 JUMPIFNOT                        R7 ; [+11]
       52 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       54 GETTABLEKS                       R8 R8 K7 ["className"]
       56 GETUPVAL                         R9 7
       57 GETTABLEKS                       R9 R9 K8 ["PARAMETER_NODE_CLASSNAME"]
       59 JUMPIFEQ                         R8 R9 ; [+2]
       61 LOADB                            R7 0 +1
       62 LOADB                            R7 1
       63 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       65 JUMPIFNOT                        R8 ; [+11]
       66 GETTABLEKS                       R9 R0 K4 ["GraphPayload"]
       68 GETTABLEKS                       R9 R9 K7 ["className"]
       70 GETUPVAL                         R10 7
       71 GETTABLEKS                       R10 R10 K9 ["OUTPUT_NODE_CLASSNAME"]
       73 JUMPIFEQ                         R9 R10 ; [+2]
       75 LOADB                            R8 0 +1
       76 LOADB                            R8 1
       77 GETUPVAL                         R9 5
       78 CALL                             R9 0 1
       79 JUMPIFNOT                        R9 ; [+13]
       80 LOADB                            R9 1
       81 GETTABLEKS                       R10 R5 K10 ["spotlightedNodeId"]
       83 JUMPIFEQ                         R10 R6 ; [+9]
       85 MOVE                             R9 R8
       86 JUMPIFNOT                        R9 ; [+6]
       87 GETTABLEKS                       R10 R5 K10 ["spotlightedNodeId"]
       89 JUMPIFEQKNIL                     R10 ; [+2]
       91 LOADB                            R9 0 +1
       92 LOADB                            R9 1
       93 GETUPVAL                         R10 8
       94 CALL                             R10 0 1
       95 GETUPVAL                         R11 9
       96 GETTABLEKS                       R11 R11 K11 ["Hooks"]
       98 GETTABLEKS                       R11 R11 K12 ["useTokens"]
      100 CALL                             R11 0 1
      101 GETUPVAL                         R13 9
      102 GETTABLEKS                       R13 R13 K13 ["Enums"]
      104 GETTABLEKS                       R13 R13 K14 ["Theme"]
      106 GETTABLEKS                       R13 R13 K15 ["Dark"]
      108 JUMPIFNOTEQ                      R10 R13 ; [+10]
      110 GETTABLEKS                       R12 R11 K16 ["Color"]
      112 GETTABLEKS                       R12 R12 K17 ["Extended"]
      114 GETTABLEKS                       R12 R12 K18 ["Green"]
      116 GETTABLEKS                       R12 R12 K19 ["Green_1300"]
      118 JUMP                             ; [+8]
      119 GETTABLEKS                       R12 R11 K16 ["Color"]
      121 GETTABLEKS                       R12 R12 K17 ["Extended"]
      123 GETTABLEKS                       R12 R12 K18 ["Green"]
      125 GETTABLEKS                       R12 R12 K20 ["Green_100"]
      127 GETUPVAL                         R13 9
      128 GETTABLEKS                       R13 R13 K11 ["Hooks"]
      130 GETTABLEKS                       R13 R13 K21 ["useCumulativeBackground"]
      132 MOVE                             R14 R12
      133 GETTABLEKS                       R15 R11 K16 ["Color"]
      135 GETTABLEKS                       R15 R15 K22 ["Shift"]
      137 GETTABLEKS                       R15 R15 K23 ["Shift_100"]
      139 CALL                             R13 2 1
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R14 R14 K24 ["useMemo"]
      143 DUPCLOSURE                       R15 K25 [PROTO_0]
      144 CAPTURE                          UPVAL U10
      145 CAPTURE                          UPVAL U7
      146 NEWTABLE                         R16 0 0
      148 CALL                             R14 2 2
      149 GETUPVAL                         R16 11
      150 GETTABLEKS                       R16 R16 K26 ["useSignalBinding"]
      152 MOVE                             R17 R14
      153 CALL                             R16 1 1
      154 GETUPVAL                         R17 0
      155 GETTABLEKS                       R17 R17 K27 ["useState"]
      157 GETUPVAL                         R18 7
      158 GETTABLEKS                       R18 R18 K28 ["NODE_VIEW_CHILD_WIDTH"]
      160 CALL                             R17 1 2
      161 GETUPVAL                         R19 12
      162 CALL                             R19 0 1
      163 GETUPVAL                         R20 3
      164 GETTABLEKS                       R20 R20 K29 ["useViewportBinding"]
      166 NEWCLOSURE                       R21 P1
      167 CAPTURE                          VAL R0
      168 NEWTABLE                         R22 0 1
      170 GETTABLEKS                       R23 R0 K30 ["Position"]
      172 SETLIST                          R22 R23 1 [1]
      174 CALL                             R20 2 1
      175 GETUPVAL                         R21 11
      176 GETTABLEKS                       R21 R21 K26 ["useSignalBinding"]
      178 GETTABLEKS                       R22 R1 K31 ["observeZoomRatio"]
      180 CALL                             R21 1 1
      181 GETUPVAL                         R22 0
      182 GETTABLEKS                       R22 R22 K24 ["useMemo"]
      184 NEWCLOSURE                       R23 P2
      185 CAPTURE                          VAL R21
      186 CAPTURE                          UPVAL U13
      187 NEWTABLE                         R24 0 1
      189 MOVE                             R25 R21
      190 SETLIST                          R24 R25 1 [1]
      192 CALL                             R22 2 1
      193 GETUPVAL                         R23 0
      194 GETTABLEKS                       R23 R23 K32 ["useBinding"]
      196 GETTABLEKS                       R24 R0 K33 ["editName"]
      198 CALL                             R23 1 2
      199 GETUPVAL                         R25 2
      200 GETTABLEKS                       R25 R25 K34 ["useToggleState"]
      202 LOADB                            R26 0
      203 CALL                             R25 1 1
      204 GETUPVAL                         R26 0
      205 GETTABLEKS                       R26 R26 K35 ["useRef"]
      207 LOADNIL                          R27
      208 CALL                             R26 1 1
      209 GETUPVAL                         R27 2
      210 GETTABLEKS                       R27 R27 K36 ["useEventCallback"]
      212 NEWCLOSURE                       R28 P3
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R26
      217 CALL                             R27 1 1
      218 GETUPVAL                         R28 0
      219 GETTABLEKS                       R28 R28 K35 ["useRef"]
      221 LOADNIL                          R29
      222 CALL                             R28 1 1
      223 GETUPVAL                         R29 0
      224 GETTABLEKS                       R29 R29 K35 ["useRef"]
      226 LOADN                            R30 0
      227 CALL                             R29 1 1
      228 GETUPVAL                         R30 0
      229 GETTABLEKS                       R30 R30 K35 ["useRef"]
      231 LOADNIL                          R31
      232 CALL                             R30 1 1
      233 GETUPVAL                         R31 0
      234 GETTABLEKS                       R31 R31 K37 ["useCallback"]
      236 NEWCLOSURE                       R32 P4
      237 CAPTURE                          VAL R28
      238 CAPTURE                          VAL R25
      239 CAPTURE                          VAL R30
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R3
      244 NEWTABLE                         R33 0 4
      246 MOVE                             R34 R3
      247 GETTABLEKS                       R35 R25 K38 ["enabled"]
      249 GETTABLEKS                       R36 R0 K39 ["OnDragStart"]
      251 MOVE                             R37 R27
      252 SETLIST                          R33 R34 4 [1]
      254 CALL                             R31 2 1
      255 GETUPVAL                         R32 0
      256 GETTABLEKS                       R32 R32 K37 ["useCallback"]
      258 NEWCLOSURE                       R33 P5
      259 CAPTURE                          VAL R28
      260 CAPTURE                          VAL R0
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R25
      263 NEWTABLE                         R34 0 5
      265 MOVE                             R35 R3
      266 MOVE                             R36 R28
      267 GETTABLEKS                       R37 R0 K40 ["OnDragMoved"]
      269 MOVE                             R38 R6
      270 GETTABLEKS                       R39 R25 K41 ["disable"]
      272 SETLIST                          R34 R35 5 [1]
      274 CALL                             R32 2 1
      275 GETUPVAL                         R33 0
      276 GETTABLEKS                       R33 R33 K37 ["useCallback"]
      278 NEWCLOSURE                       R34 P6
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R29
      281 CAPTURE                          VAL R0
      282 CAPTURE                          VAL R3
      283 NEWTABLE                         R35 0 4
      285 MOVE                             R36 R3
      286 MOVE                             R37 R28
      287 GETTABLEKS                       R38 R0 K42 ["OnDragEnded"]
      289 MOVE                             R39 R6
      290 SETLIST                          R35 R36 4 [1]
      292 CALL                             R33 2 1
      293 GETUPVAL                         R34 0
      294 GETTABLEKS                       R34 R34 K37 ["useCallback"]
      296 NEWCLOSURE                       R35 P7
      297 CAPTURE                          VAL R18
      298 NEWTABLE                         R36 0 1
      300 MOVE                             R37 R18
      301 SETLIST                          R36 R37 1 [1]
      303 CALL                             R34 2 1
      304 GETUPVAL                         R35 0
      305 GETTABLEKS                       R35 R35 K43 ["useEffect"]
      307 NEWCLOSURE                       R36 P8
      308 CAPTURE                          VAL R6
      309 CAPTURE                          UPVAL U10
      310 CAPTURE                          VAL R19
      311 CAPTURE                          UPVAL U14
      312 CAPTURE                          VAL R14
      313 CAPTURE                          VAL R4
      314 CAPTURE                          VAL R17
      315 NEWTABLE                         R37 0 4
      317 GETTABLEKS                       R38 R4 K44 ["setNodeSize"]
      319 GETTABLEKS                       R39 R19 K45 ["observeAbsoluteSize"]
      321 MOVE                             R40 R6
      322 GETUPVAL                         R42 14
      323 JUMPIFNOT                        R42 ; [+2]
      324 MOVE                             R41 R14
      325 JUMP                             ; [+1]
      326 MOVE                             R41 R17
      327 SETLIST                          R37 R38 4 [1]
      329 CALL                             R35 2 0
      330 GETUPVAL                         R35 0
      331 GETTABLEKS                       R35 R35 K24 ["useMemo"]
      333 NEWCLOSURE                       R36 P9
      334 CAPTURE                          UPVAL U5
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R6
      338 CAPTURE                          UPVAL U10
      339 CAPTURE                          UPVAL U15
      340 CAPTURE                          UPVAL U16
      341 NEWTABLE                         R37 0 3
      343 GETUPVAL                         R39 5
      344 CALL                             R39 0 1
      345 JUMPIFNOT                        R39 ; [+3]
      346 GETTABLEKS                       R38 R5 K46 ["observeSpotlightedSubtree"]
      348 JUMP                             ; [+1]
      349 LOADNIL                          R38
      350 GETTABLEKS                       R39 R4 K47 ["observeFadeByNodeId"]
      352 MOVE                             R40 R6
      353 SETLIST                          R37 R38 3 [1]
      355 CALL                             R35 2 1
      356 GETUPVAL                         R36 0
      357 GETTABLEKS                       R36 R36 K24 ["useMemo"]
      359 NEWCLOSURE                       R37 P10
      360 CAPTURE                          VAL R0
      361 NEWTABLE                         R38 0 1
      363 GETTABLEKS                       R39 R0 K48 ["Collapsed"]
      365 SETLIST                          R38 R39 1 [1]
      367 CALL                             R36 2 1
      368 GETUPVAL                         R38 17
      369 JUMPIFNOT                        R38 ; [+10]
      370 GETUPVAL                         R37 2
      371 GETTABLEKS                       R37 R37 K36 ["useEventCallback"]
      373 NEWCLOSURE                       R38 P11
      374 CAPTURE                          VAL R6
      375 CAPTURE                          VAL R4
      376 CAPTURE                          VAL R0
      377 CAPTURE                          UPVAL U18
      378 CALL                             R37 1 1
      379 JUMP                             ; [+17]
      380 GETUPVAL                         R37 0
      381 GETTABLEKS                       R37 R37 K37 ["useCallback"]
      383 NEWCLOSURE                       R38 P12
      384 CAPTURE                          VAL R6
      385 CAPTURE                          VAL R4
      386 CAPTURE                          VAL R0
      387 NEWTABLE                         R39 0 3
      389 GETTABLEKS                       R40 R4 K49 ["setCollapsed"]
      391 MOVE                             R41 R6
      392 GETTABLEKS                       R42 R0 K48 ["Collapsed"]
      394 SETLIST                          R39 R40 3 [1]
      396 CALL                             R37 2 1
      397 GETTABLEKS                       R38 R0 K50 ["text"]
      399 JUMPIF                           R38 ; [+6]
      400 GETTABLEKS                       R38 R0 K4 ["GraphPayload"]
      402 GETTABLEKS                       R38 R38 K51 ["name"]
      404 JUMPIF                           R38 ; [+1]
      405 LOADK                            R38 K52 [""]
      406 GETUPVAL                         R39 0
      407 GETTABLEKS                       R39 R39 K37 ["useCallback"]
      409 NEWCLOSURE                       R40 P13
      410 CAPTURE                          UPVAL U19
      411 CAPTURE                          VAL R23
      412 CAPTURE                          UPVAL U20
      413 CAPTURE                          VAL R25
      414 CAPTURE                          VAL R6
      415 CAPTURE                          VAL R0
      416 CAPTURE                          VAL R4
      417 NEWTABLE                         R41 0 6
      419 MOVE                             R42 R6
      420 GETTABLEKS                       R43 R25 K41 ["disable"]
      422 GETTABLEKS                       R44 R0 K6 ["IsParameterNode"]
      424 GETTABLEKS                       R45 R0 K4 ["GraphPayload"]
      426 GETTABLEKS                       R45 R45 K51 ["name"]
      428 GETTABLEKS                       R46 R4 K53 ["renameParameter"]
      430 GETTABLEKS                       R47 R4 K54 ["renameNode"]
      432 SETLIST                          R41 R42 6 [1]
      434 CALL                             R39 2 1
      435 MOVE                             R40 R2
      436 CALL                             R40 0 1
      437 GETUPVAL                         R41 0
      438 GETTABLEKS                       R41 R41 K24 ["useMemo"]
      440 DUPCLOSURE                       R42 K55 [PROTO_19]
      441 CAPTURE                          UPVAL U10
      442 NEWTABLE                         R43 0 0
      444 CALL                             R41 2 2
      445 GETUPVAL                         R43 21
      446 JUMPIFNOT                        R43 ; [+17]
      447 GETUPVAL                         R43 0
      448 GETTABLEKS                       R43 R43 K43 ["useEffect"]
      450 NEWCLOSURE                       R44 P15
      451 CAPTURE                          UPVAL U10
      452 CAPTURE                          VAL R41
      453 CAPTURE                          VAL R38
      454 CAPTURE                          VAL R0
      455 NEWTABLE                         R45 0 3
      457 MOVE                             R46 R41
      458 MOVE                             R47 R38
      459 GETTABLEKS                       R48 R0 K56 ["Selected"]
      461 SETLIST                          R45 R46 3 [1]
      463 CALL                             R43 2 0
      464 GETUPVAL                         R43 11
      465 GETTABLEKS                       R43 R43 K26 ["useSignalBinding"]
      467 MOVE                             R44 R35
      468 CALL                             R43 1 1
      469 GETUPVAL                         R44 0
      470 GETTABLEKS                       R44 R44 K24 ["useMemo"]
      472 NEWCLOSURE                       R45 P16
      473 CAPTURE                          VAL R7
      474 CAPTURE                          UPVAL U13
      475 CAPTURE                          VAL R0
      476 NEWTABLE                         R46 0 3
      478 GETTABLEKS                       R47 R0 K48 ["Collapsed"]
      480 MOVE                             R48 R7
      481 GETTABLEKS                       R49 R0 K56 ["Selected"]
      483 SETLIST                          R46 R47 3 [1]
      485 CALL                             R44 2 1
      486 GETUPVAL                         R45 0
      487 GETTABLEKS                       R45 R45 K24 ["useMemo"]
      489 NEWCLOSURE                       R46 P17
      490 CAPTURE                          VAL R44
      491 NEWTABLE                         R47 0 1
      493 MOVE                             R48 R44
      494 SETLIST                          R47 R48 1 [1]
      496 CALL                             R45 2 1
      497 GETUPVAL                         R46 0
      498 GETTABLEKS                       R46 R46 K24 ["useMemo"]
      500 NEWCLOSURE                       R47 P18
      501 CAPTURE                          UPVAL U0
      502 CAPTURE                          VAL R22
      503 CAPTURE                          VAL R11
      504 NEWTABLE                         R48 0 2
      506 MOVE                             R49 R22
      507 GETTABLEKS                       R50 R11 K16 ["Color"]
      509 GETTABLEKS                       R50 R50 K57 ["System"]
      511 GETTABLEKS                       R50 R50 K58 ["Neutral"]
      513 GETTABLEKS                       R50 R50 K59 ["Color3"]
      515 SETLIST                          R48 R49 2 [1]
      517 CALL                             R46 2 1
      518 GETUPVAL                         R48 22
      519 JUMPIFNOT                        R48 ; [+10]
      520 GETUPVAL                         R47 2
      521 GETTABLEKS                       R47 R47 K36 ["useEventCallback"]
      523 NEWCLOSURE                       R48 P19
      524 CAPTURE                          VAL R4
      525 CAPTURE                          VAL R0
      526 CAPTURE                          UPVAL U17
      527 CAPTURE                          UPVAL U18
      528 CALL                             R47 1 1
      529 JUMP                             ; [+1]
      530 LOADNIL                          R47
      531 GETUPVAL                         R48 0
      532 GETTABLEKS                       R48 R48 K60 ["createElement"]
      534 GETUPVAL                         R49 9
      535 GETTABLEKS                       R49 R49 K61 ["View"]
      537 DUPTABLE                         R50 K71 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      538 GETUPVAL                         R52 14
      539 JUMPIFNOT                        R52 ; [+5]
      540 DUPCLOSURE                       R53 K72 [PROTO_26]
      541 NAMECALL                         R51 R16 K73 ["map"]
      543 CALL                             R51 2 1
      544 JUMP                             ; [+5]
      545 GETIMPORT                        R51 K76 [UDim2.fromOffset]
      547 MOVE                             R52 R17
      548 LOADN                            R53 0
      549 CALL                             R51 2 1
      550 SETTABLEKS                       R51 R50 K64 ["Size"]
      552 GETTABLEKS                       R51 R0 K65 ["LayoutOrder"]
      554 SETTABLEKS                       R51 R50 K65 ["LayoutOrder"]
      556 GETTABLEKS                       R51 R0 K66 ["ZIndex"]
      558 SETTABLEKS                       R51 R50 K66 ["ZIndex"]
      560 SETTABLEKS                       R20 R50 K30 ["Position"]
      562 DUPTABLE                         R51 K79 [{"UIScale", "ComponentContext"}]
      563 GETUPVAL                         R52 0
      564 GETTABLEKS                       R52 R52 K60 ["createElement"]
      566 LOADK                            R53 K77 ["UIScale"]
      567 DUPTABLE                         R54 K81 [{"Scale"}]
      568 SETTABLEKS                       R21 R54 K80 ["Scale"]
      570 CALL                             R52 2 1
      571 SETTABLEKS                       R52 R51 K77 ["UIScale"]
      573 GETUPVAL                         R52 0
      574 GETTABLEKS                       R52 R52 K60 ["createElement"]
      576 GETUPVAL                         R53 23
      577 GETTABLEKS                       R53 R53 K82 ["Provider"]
      579 DUPTABLE                         R54 K84 [{"absoluteSizeHook"}]
      580 SETTABLEKS                       R19 R54 K83 ["absoluteSizeHook"]
      582 DUPTABLE                         R55 K89 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      583 GETUPVAL                         R56 0
      584 GETTABLEKS                       R56 R56 K60 ["createElement"]
      586 GETUPVAL                         R57 9
      587 GETTABLEKS                       R57 R57 K61 ["View"]
      589 DUPTABLE                         R58 K91 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      590 SETTABLEKS                       R45 R58 K62 ["tag"]
      592 GETUPVAL                         R60 14
      593 JUMPIFNOT                        R60 ; [+5]
      594 DUPCLOSURE                       R61 K92 [PROTO_27]
      595 NAMECALL                         R59 R16 K73 ["map"]
      597 CALL                             R59 2 1
      598 JUMP                             ; [+5]
      599 GETIMPORT                        R59 K76 [UDim2.fromOffset]
      601 MOVE                             R60 R17
      602 LOADN                            R61 0
      603 CALL                             R59 2 1
      604 SETTABLEKS                       R59 R58 K64 ["Size"]
      606 GETTABLEKS                       R59 R19 K93 ["setFrame"]
      608 SETTABLEKS                       R59 R58 K90 ["ref"]
      610 DUPTABLE                         R59 K100 [{"CoverContainer", "CompositorNodeHeader", "TitleDivider", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      611 GETUPVAL                         R60 0
      612 GETTABLEKS                       R60 R60 K60 ["createElement"]
      614 LOADK                            R61 K101 ["Folder"]
      615 NEWTABLE                         R62 0 0
      617 DUPTABLE                         R63 K103 [{"Cover"}]
      618 GETUPVAL                         R64 0
      619 GETTABLEKS                       R64 R64 K60 ["createElement"]
      621 GETUPVAL                         R65 9
      622 GETTABLEKS                       R65 R65 K61 ["View"]
      624 DUPTABLE                         R66 K107 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"], ["testId"] = "CompositorNodeCover"}]
      625 SETTABLEKS                       R44 R66 K62 ["tag"]
      627 GETIMPORT                        R67 K109 [UDim2.fromScale]
      629 LOADN                            R68 1
      630 LOADN                            R69 1
      631 CALL                             R67 2 1
      632 SETTABLEKS                       R67 R66 K64 ["Size"]
      634 SETTABLEKS                       R43 R66 K104 ["GroupTransparency"]
      636 GETUPVAL                         R68 24
      637 CALL                             R68 0 1
      638 JUMPIFNOT                        R68 ; [+2]
      639 LOADN                            R67 1
      640 JUMP                             ; [+1]
      641 LOADN                            R67 2
      642 SETTABLEKS                       R67 R66 K66 ["ZIndex"]
      644 CALL                             R64 2 1
      645 SETTABLEKS                       R64 R63 K102 ["Cover"]
      647 CALL                             R60 3 1
      648 SETTABLEKS                       R60 R59 K94 ["CoverContainer"]
      650 GETUPVAL                         R60 0
      651 GETTABLEKS                       R60 R60 K60 ["createElement"]
      653 GETUPVAL                         R61 9
      654 GETTABLEKS                       R61 R61 K61 ["View"]
      656 DUPTABLE                         R62 K111 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      657 NEWTABLE                         R63 4 0
      659 LOADB                            R64 1
      660 SETTABLEKS                       R64 R63 K112 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      662 GETUPVAL                         R65 25
      663 NOT                              R64 R65
      664 JUMPIFNOT                        R64 ; [+1]
      665 NOT                              R64 R7
      666 SETTABLEKS                       R64 R63 K113 ["radius-small bg-shift-200"]
      668 MOVE                             R64 R7
      669 JUMPIFNOT                        R64 ; [+3]
      670 GETTABLEKS                       R65 R0 K48 ["Collapsed"]
      672 NOT                              R64 R65
      673 SETTABLEKS                       R64 R63 K114 ["radius-small"]
      675 MOVE                             R64 R7
      676 JUMPIFNOT                        R64 ; [+2]
      677 GETTABLEKS                       R64 R0 K48 ["Collapsed"]
      679 SETTABLEKS                       R64 R63 K115 ["radius-large"]
      681 SETTABLEKS                       R63 R62 K62 ["tag"]
      683 JUMPIFNOT                        R7 ; [+2]
      684 MOVE                             R63 R13
      685 JUMP                             ; [+1]
      686 LOADNIL                          R63
      687 SETTABLEKS                       R63 R62 K110 ["backgroundStyle"]
      689 SETTABLEKS                       R40 R62 K65 ["LayoutOrder"]
      691 SETTABLEKS                       R30 R62 K90 ["ref"]
      693 DUPTABLE                         R63 K121 [{"DEPRECATED_ToggleButton", "Title", "TitleInput", "ToggleButton", "Children"}]
      694 GETTABLEKS                       R65 R0 K122 ["Collapsible"]
      696 JUMPIFEQKB                       R65 FALSE ; [+47]
      698 GETUPVAL                         R65 25
      699 JUMPIF                           R65 ; [+44]
      700 GETUPVAL                         R64 0
      701 GETTABLEKS                       R64 R64 K60 ["createElement"]
      703 GETUPVAL                         R65 9
      704 GETTABLEKS                       R65 R65 K123 ["Button"]
      706 DUPTABLE                         R66 K129 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      707 SETTABLEKS                       R36 R66 K124 ["icon"]
      709 GETUPVAL                         R67 9
      710 GETTABLEKS                       R67 R67 K13 ["Enums"]
      712 GETTABLEKS                       R67 R67 K130 ["ButtonVariant"]
      714 GETTABLEKS                       R67 R67 K131 ["Text"]
      716 SETTABLEKS                       R67 R66 K125 ["variant"]
      718 SETTABLEKS                       R37 R66 K126 ["onActivated"]
      720 GETUPVAL                         R67 9
      721 GETTABLEKS                       R67 R67 K13 ["Enums"]
      723 GETTABLEKS                       R67 R67 K132 ["InputSize"]
      725 GETTABLEKS                       R67 R67 K133 ["XSmall"]
      727 SETTABLEKS                       R67 R66 K127 ["size"]
      729 MOVE                             R67 R2
      730 CALL                             R67 0 1
      731 SETTABLEKS                       R67 R66 K65 ["LayoutOrder"]
      733 GETUPVAL                         R67 9
      734 GETTABLEKS                       R67 R67 K13 ["Enums"]
      736 GETTABLEKS                       R67 R67 K134 ["FillBehavior"]
      738 GETTABLEKS                       R67 R67 K135 ["Fit"]
      740 SETTABLEKS                       R67 R66 K128 ["fillBehavior"]
      742 CALL                             R64 2 1
      743 JUMP                             ; [+1]
      744 LOADNIL                          R64
      745 SETTABLEKS                       R64 R63 K116 ["DEPRECATED_ToggleButton"]
      747 GETUPVAL                         R64 0
      748 GETTABLEKS                       R64 R64 K60 ["createElement"]
      750 GETUPVAL                         R65 9
      751 GETTABLEKS                       R65 R65 K131 ["Text"]
      753 DUPTABLE                         R66 K140 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      754 NEWTABLE                         R67 2 0
      756 LOADB                            R68 1
      757 SETTABLEKS                       R68 R67 K141 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      759 GETUPVAL                         R68 25
      760 JUMPIF                           R68 ; [+6]
      761 GETTABLEKS                       R69 R0 K122 ["Collapsible"]
      763 JUMPIFEQKB                       R69 FALSE ; [+2]
      765 LOADB                            R68 0 +1
      766 LOADB                            R68 1
      767 SETTABLEKS                       R68 R67 K142 ["padding-left-small"]
      769 SETTABLEKS                       R67 R66 K62 ["tag"]
      771 SETTABLEKS                       R38 R66 K131 ["Text"]
      773 MOVE                             R67 R2
      774 CALL                             R67 0 1
      775 SETTABLEKS                       R67 R66 K65 ["LayoutOrder"]
      777 GETTABLEKS                       R68 R25 K38 ["enabled"]
      779 NOT                              R67 R68
      780 SETTABLEKS                       R67 R66 K138 ["Visible"]
      782 CALL                             R64 2 1
      783 SETTABLEKS                       R64 R63 K117 ["Title"]
      785 GETUPVAL                         R64 0
      786 GETTABLEKS                       R64 R64 K60 ["createElement"]
      788 GETUPVAL                         R65 9
      789 GETTABLEKS                       R65 R65 K143 ["TextInput"]
      791 DUPTABLE                         R66 K150 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      792 NEWTABLE                         R67 1 0
      794 LOADB                            R68 1
      795 SETTABLEKS                       R68 R67 K141 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      797 SETTABLEKS                       R67 R66 K62 ["tag"]
      799 SETTABLEKS                       R23 R66 K50 ["text"]
      801 MOVE                             R67 R2
      802 CALL                             R67 0 1
      803 SETTABLEKS                       R67 R66 K65 ["LayoutOrder"]
      805 SETTABLEKS                       R24 R66 K144 ["onChanged"]
      807 GETUPVAL                         R67 9
      808 GETTABLEKS                       R67 R67 K13 ["Enums"]
      810 GETTABLEKS                       R67 R67 K132 ["InputSize"]
      812 GETTABLEKS                       R67 R67 K133 ["XSmall"]
      814 SETTABLEKS                       R67 R66 K127 ["size"]
      816 GETUPVAL                         R67 9
      817 GETTABLEKS                       R67 R67 K13 ["Enums"]
      819 GETTABLEKS                       R67 R67 K151 ["InputFocusBehavior"]
      821 GETTABLEKS                       R67 R67 K152 ["Highlight"]
      823 SETTABLEKS                       R67 R66 K146 ["focusBehavior"]
      825 SETTABLEKS                       R26 R66 K147 ["textBoxRef"]
      827 SETTABLEKS                       R39 R66 K148 ["onFocusLost"]
      829 SETTABLEKS                       R26 R66 K90 ["ref"]
      831 GETIMPORT                        R67 K155 [UDim.new]
      833 LOADN                            R68 0
      834 LOADN                            R69 100
      835 CALL                             R67 2 1
      836 SETTABLEKS                       R67 R66 K149 ["width"]
      838 GETTABLEKS                       R67 R25 K38 ["enabled"]
      840 SETTABLEKS                       R67 R66 K138 ["Visible"]
      842 CALL                             R64 2 1
      843 SETTABLEKS                       R64 R63 K118 ["TitleInput"]
      845 GETTABLEKS                       R65 R0 K122 ["Collapsible"]
      847 JUMPIFEQKB                       R65 FALSE ; [+47]
      849 GETUPVAL                         R65 25
      850 JUMPIFNOT                        R65 ; [+44]
      851 GETUPVAL                         R64 0
      852 GETTABLEKS                       R64 R64 K60 ["createElement"]
      854 GETUPVAL                         R65 9
      855 GETTABLEKS                       R65 R65 K123 ["Button"]
      857 DUPTABLE                         R66 K129 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      858 SETTABLEKS                       R36 R66 K124 ["icon"]
      860 GETUPVAL                         R67 9
      861 GETTABLEKS                       R67 R67 K13 ["Enums"]
      863 GETTABLEKS                       R67 R67 K130 ["ButtonVariant"]
      865 GETTABLEKS                       R67 R67 K131 ["Text"]
      867 SETTABLEKS                       R67 R66 K125 ["variant"]
      869 SETTABLEKS                       R37 R66 K126 ["onActivated"]
      871 GETUPVAL                         R67 9
      872 GETTABLEKS                       R67 R67 K13 ["Enums"]
      874 GETTABLEKS                       R67 R67 K132 ["InputSize"]
      876 GETTABLEKS                       R67 R67 K133 ["XSmall"]
      878 SETTABLEKS                       R67 R66 K127 ["size"]
      880 MOVE                             R67 R2
      881 CALL                             R67 0 1
      882 SETTABLEKS                       R67 R66 K65 ["LayoutOrder"]
      884 GETUPVAL                         R67 9
      885 GETTABLEKS                       R67 R67 K13 ["Enums"]
      887 GETTABLEKS                       R67 R67 K134 ["FillBehavior"]
      889 GETTABLEKS                       R67 R67 K135 ["Fit"]
      891 SETTABLEKS                       R67 R66 K128 ["fillBehavior"]
      893 CALL                             R64 2 1
      894 JUMP                             ; [+1]
      895 LOADNIL                          R64
      896 SETTABLEKS                       R64 R63 K119 ["ToggleButton"]
      898 GETUPVAL                         R64 0
      899 GETTABLEKS                       R64 R64 K60 ["createElement"]
      901 LOADK                            R65 K101 ["Folder"]
      902 NEWTABLE                         R66 0 0
      904 GETTABLEKS                       R67 R0 K156 ["HeaderChildren"]
      906 CALL                             R64 3 1
      907 SETTABLEKS                       R64 R63 K120 ["Children"]
      909 CALL                             R60 3 1
      910 SETTABLEKS                       R60 R59 K95 ["CompositorNodeHeader"]
      912 GETUPVAL                         R60 25
      913 JUMPIFNOT                        R60 ; [+16]
      914 GETTABLEKS                       R61 R0 K48 ["Collapsed"]
      916 NOT                              R60 R61
      917 JUMPIFNOT                        R60 ; [+12]
      918 GETUPVAL                         R60 0
      919 GETTABLEKS                       R60 R60 K60 ["createElement"]
      921 GETUPVAL                         R61 9
      922 GETTABLEKS                       R61 R61 K157 ["Divider"]
      924 DUPTABLE                         R62 K158 [{"LayoutOrder"}]
      925 MOVE                             R63 R2
      926 CALL                             R63 0 1
      927 SETTABLEKS                       R63 R62 K65 ["LayoutOrder"]
      929 CALL                             R60 2 1
      930 SETTABLEKS                       R60 R59 K96 ["TitleDivider"]
      932 GETUPVAL                         R61 0
      933 GETTABLEKS                       R61 R61 K120 ["Children"]
      935 GETTABLEKS                       R61 R61 K159 ["count"]
      937 GETTABLEKS                       R62 R0 K160 ["children"]
      939 CALL                             R61 1 1
      940 LOADN                            R62 0
      941 JUMPIFNOTLT                      R62 R61 ; [+95]
      943 GETUPVAL                         R60 0
      944 GETTABLEKS                       R60 R60 K60 ["createElement"]
      946 GETUPVAL                         R61 9
      947 GETTABLEKS                       R61 R61 K61 ["View"]
      949 DUPTABLE                         R62 K162 [{["tag"] = "size-full-700 auto-y", ["LayoutOrder"]}]
      950 MOVE                             R63 R2
      951 CALL                             R63 0 1
      952 SETTABLEKS                       R63 R62 K65 ["LayoutOrder"]
      954 DUPTABLE                         R63 K165 [{"Contents", "ResizeBars"}]
      955 GETUPVAL                         R64 0
      956 GETTABLEKS                       R64 R64 K60 ["createElement"]
      958 GETUPVAL                         R65 9
      959 GETTABLEKS                       R65 R65 K61 ["View"]
      961 DUPTABLE                         R66 K167 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"]}]
      962 GETUPVAL                         R68 24
      963 CALL                             R68 0 1
      964 JUMPIFNOT                        R68 ; [+2]
      965 LOADN                            R67 2
      966 JUMP                             ; [+1]
      967 LOADN                            R67 1
      968 SETTABLEKS                       R67 R66 K66 ["ZIndex"]
      970 DUPTABLE                         R67 K169 [{"NodeProperties"}]
      971 GETUPVAL                         R68 0
      972 GETTABLEKS                       R68 R68 K60 ["createElement"]
      974 GETUPVAL                         R69 0
      975 GETTABLEKS                       R69 R69 K170 ["Fragment"]
      977 NEWTABLE                         R70 0 0
      979 GETTABLEKS                       R71 R0 K160 ["children"]
      981 CALL                             R68 3 1
      982 SETTABLEKS                       R68 R67 K168 ["NodeProperties"]
      984 CALL                             R64 3 1
      985 SETTABLEKS                       R64 R63 K163 ["Contents"]
      987 JUMPIF                           R7 ; [+44]
      988 GETUPVAL                         R64 0
      989 GETTABLEKS                       R64 R64 K60 ["createElement"]
      991 GETUPVAL                         R65 26
      992 DUPTABLE                         R66 K175 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"]}]
      993 SETTABLEKS                       R17 R66 K171 ["DEPRECATED_nodeWidth"]
      995 SETTABLEKS                       R16 R66 K172 ["nodeWidthBinding"]
      997 GETUPVAL                         R68 14
      998 JUMPIFNOT                        R68 ; [+2]
      999 MOVE                             R67 R15
     1000 JUMP                             ; [+1]
     1001 MOVE                             R67 R34
     1002 SETTABLEKS                       R67 R66 K173 ["OnResized"]
     1004 GETTABLEKS                       R68 R0 K56 ["Selected"]
     1006 JUMPIFNOT                        R68 ; [+7]
     1007 GETTABLEKS                       R67 R11 K16 ["Color"]
     1009 GETTABLEKS                       R67 R67 K57 ["System"]
     1011 GETTABLEKS                       R67 R67 K58 ["Neutral"]
     1013 JUMP                             ; [+6]
     1014 GETTABLEKS                       R67 R11 K16 ["Color"]
     1016 GETTABLEKS                       R67 R67 K176 ["Stroke"]
     1018 GETTABLEKS                       R67 R67 K177 ["Default"]
     1020 SETTABLEKS                       R67 R66 K174 ["Style"]
     1022 GETUPVAL                         R68 24
     1023 CALL                             R68 0 1
     1024 JUMPIFNOT                        R68 ; [+2]
     1025 LOADN                            R67 4
     1026 JUMP                             ; [+1]
     1027 LOADN                            R67 2
     1028 SETTABLEKS                       R67 R66 K66 ["ZIndex"]
     1030 CALL                             R64 2 1
     1031 JUMP                             ; [+1]
     1032 LOADNIL                          R64
     1033 SETTABLEKS                       R64 R63 K164 ["ResizeBars"]
     1035 CALL                             R60 3 1
     1036 JUMP                             ; [+1]
     1037 LOADNIL                          R60
     1038 SETTABLEKS                       R60 R59 K97 ["CompositorNodeContent"]
     1040 GETTABLEKS                       R60 R0 K98 ["ContextToolbar"]
     1042 JUMPIFNOT                        R60 ; [+12]
     1043 GETTABLEKS                       R61 R0 K56 ["Selected"]
     1045 JUMPIF                           R61 ; [+2]
     1046 MOVE                             R60 R9
     1047 JUMPIFNOT                        R60 ; [+7]
     1048 GETUPVAL                         R60 0
     1049 GETTABLEKS                       R60 R60 K60 ["createElement"]
     1051 GETUPVAL                         R61 27
     1052 GETTABLEKS                       R62 R0 K98 ["ContextToolbar"]
     1054 CALL                             R60 2 1
     1055 SETTABLEKS                       R60 R59 K98 ["ContextToolbar"]
     1057 GETUPVAL                         R60 13
     1058 CALL                             R60 0 1
     1059 JUMPIFNOT                        R60 ; [+118]
     1060 GETUPVAL                         R60 0
     1061 GETTABLEKS                       R60 R60 K60 ["createElement"]
     1063 LOADK                            R61 K101 ["Folder"]
     1064 NEWTABLE                         R62 0 0
     1066 DUPTABLE                         R63 K179 [{"SelectionHighlight"}]
     1067 GETTABLEKS                       R65 R0 K56 ["Selected"]
     1069 JUMPIFNOT                        R65 ; [+104]
     1070 GETUPVAL                         R65 25
     1071 JUMPIFNOT                        R65 ; [+55]
     1072 GETUPVAL                         R64 0
     1073 GETTABLEKS                       R64 R64 K60 ["createElement"]
     1075 GETUPVAL                         R65 9
     1076 GETTABLEKS                       R65 R65 K61 ["View"]
     1078 DUPTABLE                         R66 K181 [{["tag"] = "size-full-full position-center-center anchor-center-center"}]
     1079 GETUPVAL                         R67 0
     1080 GETTABLEKS                       R67 R67 K60 ["createElement"]
     1082 GETUPVAL                         R68 9
     1083 GETTABLEKS                       R68 R68 K61 ["View"]
     1085 DUPTABLE                         R69 K182 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"], ["testId"] = "SelectionHighlight"}]
     1086 NEWTABLE                         R70 4 0
     1088 LOADB                            R71 1
     1089 SETTABLEKS                       R71 R70 K183 ["position-center-center anchor-center-center"]
     1091 NOT                              R71 R7
     1092 SETTABLEKS                       R71 R70 K114 ["radius-small"]
     1094 SETTABLEKS                       R7 R70 K115 ["radius-large"]
     1096 SETTABLEKS                       R70 R69 K62 ["tag"]
     1098 GETIMPORT                        R70 K184 [UDim2.new]
     1100 LOADN                            R71 1
     1101 GETTABLEKS                       R72 R11 K185 ["Padding"]
     1103 GETTABLEKS                       R72 R72 K186 ["Small"]
     1105 LOADN                            R73 1
     1106 GETTABLEKS                       R74 R11 K185 ["Padding"]
     1108 GETTABLEKS                       R74 R74 K186 ["Small"]
     1110 CALL                             R70 4 1
     1111 SETTABLEKS                       R70 R69 K64 ["Size"]
     1113 GETUPVAL                         R71 24
     1114 CALL                             R71 0 1
     1115 JUMPIFNOT                        R71 ; [+2]
     1116 LOADN                            R70 3
     1117 JUMP                             ; [+1]
     1118 LOADN                            R70 10
     1119 SETTABLEKS                       R70 R69 K66 ["ZIndex"]
     1121 DUPTABLE                         R70 K188 [{"UIStroke"}]
     1122 SETTABLEKS                       R46 R70 K187 ["UIStroke"]
     1124 CALL                             R67 3 -1
     1125 CALL                             R64 -1 1
     1126 JUMP                             ; [+48]
     1127 GETUPVAL                         R64 0
     1128 GETTABLEKS                       R64 R64 K60 ["createElement"]
     1130 GETUPVAL                         R65 9
     1131 GETTABLEKS                       R65 R65 K61 ["View"]
     1133 DUPTABLE                         R66 K182 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"], ["testId"] = "SelectionHighlight"}]
     1134 NEWTABLE                         R67 4 0
     1136 LOADB                            R68 1
     1137 SETTABLEKS                       R68 R67 K183 ["position-center-center anchor-center-center"]
     1139 NOT                              R68 R7
     1140 SETTABLEKS                       R68 R67 K114 ["radius-small"]
     1142 SETTABLEKS                       R7 R67 K115 ["radius-large"]
     1144 SETTABLEKS                       R67 R66 K62 ["tag"]
     1146 GETIMPORT                        R67 K184 [UDim2.new]
     1148 LOADN                            R68 1
     1149 GETTABLEKS                       R69 R11 K185 ["Padding"]
     1151 GETTABLEKS                       R69 R69 K186 ["Small"]
     1153 LOADN                            R70 1
     1154 GETTABLEKS                       R71 R11 K185 ["Padding"]
     1156 GETTABLEKS                       R71 R71 K186 ["Small"]
     1158 CALL                             R67 4 1
     1159 SETTABLEKS                       R67 R66 K64 ["Size"]
     1161 GETUPVAL                         R68 24
     1162 CALL                             R68 0 1
     1163 JUMPIFNOT                        R68 ; [+2]
     1164 LOADN                            R67 3
     1165 JUMP                             ; [+1]
     1166 LOADN                            R67 10
     1167 SETTABLEKS                       R67 R66 K66 ["ZIndex"]
     1169 DUPTABLE                         R67 K188 [{"UIStroke"}]
     1170 SETTABLEKS                       R46 R67 K187 ["UIStroke"]
     1172 CALL                             R64 3 1
     1173 JUMP                             ; [+1]
     1174 LOADNIL                          R64
     1175 SETTABLEKS                       R64 R63 K178 ["SelectionHighlight"]
     1177 CALL                             R60 3 1
     1178 SETTABLEKS                       R60 R59 K99 ["SelectionHighlightContainer"]
     1180 CALL                             R56 3 1
     1181 SETTABLEKS                       R56 R55 K85 ["Node"]
     1183 GETUPVAL                         R57 21
     1184 JUMPIFNOT                        R57 ; [+15]
     1185 GETUPVAL                         R56 0
     1186 GETTABLEKS                       R56 R56 K60 ["createElement"]
     1188 GETUPVAL                         R57 9
     1189 GETTABLEKS                       R57 R57 K61 ["View"]
     1191 DUPTABLE                         R58 K191 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1192 MOVE                             R59 R2
     1193 CALL                             R59 0 1
     1194 SETTABLEKS                       R59 R58 K65 ["LayoutOrder"]
     1196 SETTABLEKS                       R42 R58 K90 ["ref"]
     1198 CALL                             R56 2 1
     1199 JUMP                             ; [+1]
     1200 LOADNIL                          R56
     1201 SETTABLEKS                       R56 R55 K86 ["DebugMarker"]
     1203 GETUPVAL                         R57 28
     1204 CALL                             R57 0 1
     1205 JUMPIFNOT                        R57 ; [+5]
     1206 LOADB                            R56 0
     1207 GETTABLEKS                       R57 R0 K192 ["CanDrag"]
     1209 JUMPIFEQKB                       R57 FALSE ; [+39]
     1211 GETUPVAL                         R56 0
     1212 GETTABLEKS                       R56 R56 K60 ["createElement"]
     1214 LOADK                            R57 K193 ["UIDragDetector"]
     1215 NEWTABLE                         R58 8 0
     1217 GETIMPORT                        R59 K197 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1219 SETTABLEKS                       R59 R58 K198 ["DragStyle"]
     1221 GETIMPORT                        R59 K201 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1223 SETTABLEKS                       R59 R58 K202 ["ResponseStyle"]
     1225 GETTABLEKS                       R59 R3 K203 ["getViewport"]
     1227 CALL                             R59 0 1
     1228 SETTABLEKS                       R59 R58 K204 ["ReferenceUIInstance"]
     1230 GETUPVAL                         R59 0
     1231 GETTABLEKS                       R59 R59 K205 ["Event"]
     1233 GETTABLEKS                       R59 R59 K206 ["DragStart"]
     1235 SETTABLE                         R31 R58 R59
     1236 GETUPVAL                         R59 0
     1237 GETTABLEKS                       R59 R59 K205 ["Event"]
     1239 GETTABLEKS                       R59 R59 K207 ["DragContinue"]
     1241 SETTABLE                         R32 R58 R59
     1242 GETUPVAL                         R59 0
     1243 GETTABLEKS                       R59 R59 K205 ["Event"]
     1245 GETTABLEKS                       R59 R59 K208 ["DragEnd"]
     1247 SETTABLE                         R33 R58 R59
     1248 CALL                             R56 2 1
     1249 SETTABLEKS                       R56 R55 K87 ["DragDetector"]
     1251 GETUPVAL                         R56 22
     1252 JUMPIFNOT                        R56 ; [+26]
     1253 GETUPVAL                         R56 0
     1254 GETTABLEKS                       R56 R56 K60 ["createElement"]
     1256 LOADK                            R57 K209 ["Frame"]
     1257 NEWTABLE                         R58 4 0
     1259 LOADN                            R59 1
     1260 SETTABLEKS                       R59 R58 K67 ["BackgroundTransparency"]
     1262 GETIMPORT                        R59 K109 [UDim2.fromScale]
     1264 LOADN                            R60 1
     1265 LOADN                            R61 1
     1266 CALL                             R59 2 1
     1267 SETTABLEKS                       R59 R58 K64 ["Size"]
     1269 LOADN                            R59 -10
     1270 SETTABLEKS                       R59 R58 K66 ["ZIndex"]
     1272 GETUPVAL                         R59 0
     1273 GETTABLEKS                       R59 R59 K205 ["Event"]
     1275 GETTABLEKS                       R59 R59 K210 ["InputBegan"]
     1277 SETTABLE                         R47 R58 R59
     1278 CALL                             R56 2 1
     1279 SETTABLEKS                       R56 R55 K88 ["RightClickCapture"]
     1281 CALL                             R52 3 1
     1282 SETTABLEKS                       R52 R51 K78 ["ComponentContext"]
     1284 CALL                             R48 3 -1
     1285 RETURN                           R48 -1

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
       44 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUI_DynamicZIndex"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Flags"]
       51 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Flags"]
       58 GETTABLEKS                       R9 R9 K15 ["FFlagAnimGraphUI_NoodleColorLerping"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Flags"]
       65 GETTABLEKS                       R10 R10 K16 ["FFlagAnimGraphUI_PerfFixes_7123"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Flags"]
       72 GETTABLEKS                       R11 R11 K17 ["FFlagAnimGraphUI_RightClickSelects"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Flags"]
       79 GETTABLEKS                       R12 R12 K18 ["FFlagAnimGraphUI_StyleTouches"]
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
      105 GETTABLEKS                       R16 R0 K19 ["Parent"]
      107 GETTABLEKS                       R16 R16 K24 ["React"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K19 ["Parent"]
      114 GETTABLEKS                       R17 R17 K25 ["ReactUtils"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETIMPORT                        R18 K1 [script]
      121 GETTABLEKS                       R18 R18 K26 ["ResizeBars"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K19 ["Parent"]
      128 GETTABLEKS                       R19 R19 K27 ["Signals"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K19 ["Parent"]
      135 GETTABLEKS                       R20 R20 K28 ["SignalsReact"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K19 ["Parent"]
      142 GETTABLEKS                       R21 R21 K29 ["SignalsUtils"]
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
      177 GETTABLEKS                       R26 R26 K34 ["getFFlagAnimGraphUIPinStates"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K5 [require]
      182 GETTABLEKS                       R27 R0 K12 ["Flags"]
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUI_RunTimeDebug"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K12 ["Flags"]
      198 GETTABLEKS                       R29 R29 K37 ["getFFlagAnimGraphUI_SpotlightNodes"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K38 ["Hooks"]
      205 GETTABLEKS                       R30 R30 K39 ["useAbsoluteSize"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K5 [require]
      210 GETTABLEKS                       R31 R0 K38 ["Hooks"]
      212 GETTABLEKS                       R31 R31 K40 ["useFoundationStudioTheme"]
      214 CALL                             R30 1 1
      215 GETTABLEKS                       R31 R22 K41 ["isCli"]
      217 CALL                             R31 0 1
      218 JUMPIF                           R31 ; [+3]
      219 GETTABLEKS                       R31 R22 K42 ["isFTF"]
      221 CALL                             R31 0 1
      222 DUPCLOSURE                       R32 K43 [PROTO_28]
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R23
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R30
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R29
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R9
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R20
      240 CAPTURE                          VAL R6
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R5
      244 CAPTURE                          VAL R31
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R25
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R27
      252 RETURN                           R32 1
