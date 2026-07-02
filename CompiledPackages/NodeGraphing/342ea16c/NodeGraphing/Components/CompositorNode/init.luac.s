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
       10 JUMPIFNOT                        R2 ; [+89]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 JUMPIFEQKNIL                     R2 ; [+108]
       16 GETTABLEKS                       R2 R1 K2 ["X"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K0 ["current"]
       21 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       23 GETTABLEKS                       R3 R3 K2 ["X"]
       25 JUMPIFNOTLE                      R3 R2 ; [+97]
       27 GETTABLEKS                       R2 R1 K2 ["X"]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K0 ["current"]
       32 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       34 GETTABLEKS                       R4 R4 K2 ["X"]
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R5 R5 K0 ["current"]
       39 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       41 GETTABLEKS                       R5 R5 K2 ["X"]
       43 ADD                              R3 R4 R5
       44 JUMPIFNOTLE                      R2 R3 ; [+78]
       46 GETTABLEKS                       R2 R1 K5 ["Y"]
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K0 ["current"]
       51 GETTABLEKS                       R3 R3 K3 ["AbsolutePosition"]
       53 GETTABLEKS                       R3 R3 K5 ["Y"]
       55 JUMPIFNOTLE                      R3 R2 ; [+67]
       57 GETTABLEKS                       R2 R1 K5 ["Y"]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R4 R4 K0 ["current"]
       62 GETTABLEKS                       R4 R4 K3 ["AbsolutePosition"]
       64 GETTABLEKS                       R4 R4 K5 ["Y"]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K0 ["current"]
       69 GETTABLEKS                       R5 R5 K4 ["AbsoluteSize"]
       71 GETTABLEKS                       R5 R5 K5 ["Y"]
       73 ADD                              R3 R4 R5
       74 JUMPIFNOTLE                      R2 R3 ; [+48]
       76 GETUPVAL                         R2 4
       77 GETTABLEKS                       R2 R2 K0 ["current"]
       79 GETUPVAL                         R3 4
       80 GETIMPORT                        R4 K8 [os.clock]
       82 CALL                             R4 0 1
       83 SETTABLEKS                       R4 R3 K0 ["current"]
       85 GETIMPORT                        R4 K8 [os.clock]
       87 CALL                             R4 0 1
       88 SUB                              R3 R4 R2
       89 LOADK                            R4 K9 [0.5]
       90 JUMPIFNOTLE                      R3 R4 ; [+32]
       92 GETUPVAL                         R3 0
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K0 ["current"]
       96 GETUPVAL                         R3 5
       97 CALL                             R3 0 0
       98 RETURN                           R0 0
       99 JUMP                             ; [+23]
      100 GETUPVAL                         R2 4
      101 GETTABLEKS                       R2 R2 K0 ["current"]
      103 GETUPVAL                         R3 4
      104 GETIMPORT                        R4 K8 [os.clock]
      106 CALL                             R4 0 1
      107 SETTABLEKS                       R4 R3 K0 ["current"]
      109 GETIMPORT                        R4 K8 [os.clock]
      111 CALL                             R4 0 1
      112 SUB                              R3 R4 R2
      113 LOADK                            R4 K9 [0.5]
      114 JUMPIFNOTLE                      R3 R4 ; [+8]
      116 GETUPVAL                         R3 0
      117 LOADNIL                          R4
      118 SETTABLEKS                       R4 R3 K0 ["current"]
      120 GETUPVAL                         R3 5
      121 CALL                             R3 0 0
      122 RETURN                           R0 0
      123 GETUPVAL                         R2 0
      124 DUPTABLE                         R3 K13 [{"startTime", "dragOffset", "initialPosition"}]
      125 GETIMPORT                        R4 K8 [os.clock]
      127 CALL                             R4 0 1
      128 SETTABLEKS                       R4 R3 K10 ["startTime"]
      130 GETIMPORT                        R4 K16 [Vector2.zero]
      132 SETTABLEKS                       R4 R3 K11 ["dragOffset"]
      134 SETTABLEKS                       R1 R3 K12 ["initialPosition"]
      136 SETTABLEKS                       R3 R2 K0 ["current"]
      138 GETUPVAL                         R2 6
      139 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      141 JUMPIFNOT                        R2 ; [+13]
      142 GETUPVAL                         R2 6
      143 GETTABLEKS                       R2 R2 K17 ["OnDragStart"]
      145 GETUPVAL                         R3 7
      146 GETTABLEKS                       R3 R3 K18 ["viewToPlot"]
      148 GETUPVAL                         R4 7
      149 GETTABLEKS                       R4 R4 K19 ["absToView"]
      151 MOVE                             R5 R1
      152 CALL                             R4 1 -1
      153 CALL                             R3 -1 -1
      154 CALL                             R2 -1 0
      155 RETURN                           R0 0

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
        8 GETUPVAL                         R4 2
        9 JUMPIFNOT                        R4 ; [+10]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["Color"]
       13 GETTABLEKS                       R3 R3 K5 ["System"]
       15 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       17 GETTABLEKS                       R3 R3 K7 ["Color3"]
       19 JUMP                             ; [+9]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K3 ["Color"]
       23 GETTABLEKS                       R3 R3 K5 ["System"]
       25 GETTABLEKS                       R3 R3 K8 ["Neutral"]
       27 GETTABLEKS                       R3 R3 K7 ["Color3"]
       29 SETTABLEKS                       R3 R2 K3 ["Color"]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1

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
       93 GETTABLEKS                       R10 R0 K11 ["IsGeneric"]
       95 GETUPVAL                         R11 8
       96 CALL                             R11 0 1
       97 GETUPVAL                         R12 9
       98 GETTABLEKS                       R12 R12 K12 ["Hooks"]
      100 GETTABLEKS                       R12 R12 K13 ["useTokens"]
      102 CALL                             R12 0 1
      103 GETUPVAL                         R14 9
      104 GETTABLEKS                       R14 R14 K14 ["Enums"]
      106 GETTABLEKS                       R14 R14 K15 ["Theme"]
      108 GETTABLEKS                       R14 R14 K16 ["Dark"]
      110 JUMPIFNOTEQ                      R11 R14 ; [+10]
      112 GETTABLEKS                       R13 R12 K17 ["Color"]
      114 GETTABLEKS                       R13 R13 K18 ["Extended"]
      116 GETTABLEKS                       R13 R13 K19 ["Green"]
      118 GETTABLEKS                       R13 R13 K20 ["Green_1300"]
      120 JUMP                             ; [+8]
      121 GETTABLEKS                       R13 R12 K17 ["Color"]
      123 GETTABLEKS                       R13 R13 K18 ["Extended"]
      125 GETTABLEKS                       R13 R13 K19 ["Green"]
      127 GETTABLEKS                       R13 R13 K21 ["Green_100"]
      129 GETUPVAL                         R14 9
      130 GETTABLEKS                       R14 R14 K12 ["Hooks"]
      132 GETTABLEKS                       R14 R14 K22 ["useCumulativeBackground"]
      134 MOVE                             R15 R13
      135 GETTABLEKS                       R16 R12 K17 ["Color"]
      137 GETTABLEKS                       R16 R16 K23 ["Shift"]
      139 GETTABLEKS                       R16 R16 K24 ["Shift_100"]
      141 CALL                             R14 2 1
      142 GETUPVAL                         R15 9
      143 GETTABLEKS                       R15 R15 K12 ["Hooks"]
      145 GETTABLEKS                       R15 R15 K22 ["useCumulativeBackground"]
      147 GETTABLEKS                       R16 R12 K17 ["Color"]
      149 GETTABLEKS                       R16 R16 K18 ["Extended"]
      151 GETTABLEKS                       R16 R16 K25 ["Purple"]
      153 GETTABLEKS                       R16 R16 K26 ["Purple_800"]
      155 GETTABLEKS                       R17 R12 K17 ["Color"]
      157 GETTABLEKS                       R17 R17 K23 ["Shift"]
      159 GETTABLEKS                       R17 R17 K27 ["Shift_200"]
      161 CALL                             R15 2 1
      162 GETUPVAL                         R16 0
      163 GETTABLEKS                       R16 R16 K28 ["useMemo"]
      165 DUPCLOSURE                       R17 K29 [PROTO_0]
      166 CAPTURE                          UPVAL U10
      167 CAPTURE                          UPVAL U7
      168 NEWTABLE                         R18 0 0
      170 CALL                             R16 2 2
      171 GETUPVAL                         R18 11
      172 GETTABLEKS                       R18 R18 K30 ["useSignalBinding"]
      174 MOVE                             R19 R16
      175 CALL                             R18 1 1
      176 GETUPVAL                         R19 0
      177 GETTABLEKS                       R19 R19 K31 ["useState"]
      179 GETUPVAL                         R20 7
      180 GETTABLEKS                       R20 R20 K32 ["NODE_VIEW_CHILD_WIDTH"]
      182 CALL                             R19 1 2
      183 GETUPVAL                         R21 12
      184 CALL                             R21 0 1
      185 GETUPVAL                         R22 3
      186 GETTABLEKS                       R22 R22 K33 ["useViewportBinding"]
      188 NEWCLOSURE                       R23 P1
      189 CAPTURE                          VAL R0
      190 NEWTABLE                         R24 0 1
      192 GETTABLEKS                       R25 R0 K34 ["Position"]
      194 SETLIST                          R24 R25 1 [1]
      196 CALL                             R22 2 1
      197 GETUPVAL                         R23 11
      198 GETTABLEKS                       R23 R23 K30 ["useSignalBinding"]
      200 GETTABLEKS                       R24 R1 K35 ["observeZoomRatio"]
      202 CALL                             R23 1 1
      203 GETUPVAL                         R24 0
      204 GETTABLEKS                       R24 R24 K28 ["useMemo"]
      206 NEWCLOSURE                       R25 P2
      207 CAPTURE                          VAL R23
      208 CAPTURE                          UPVAL U13
      209 NEWTABLE                         R26 0 1
      211 MOVE                             R27 R23
      212 SETLIST                          R26 R27 1 [1]
      214 CALL                             R24 2 1
      215 GETUPVAL                         R25 0
      216 GETTABLEKS                       R25 R25 K36 ["useBinding"]
      218 GETTABLEKS                       R26 R0 K37 ["editName"]
      220 CALL                             R25 1 2
      221 GETUPVAL                         R27 2
      222 GETTABLEKS                       R27 R27 K38 ["useToggleState"]
      224 LOADB                            R28 0
      225 CALL                             R27 1 1
      226 GETUPVAL                         R28 0
      227 GETTABLEKS                       R28 R28 K39 ["useRef"]
      229 LOADNIL                          R29
      230 CALL                             R28 1 1
      231 GETUPVAL                         R29 2
      232 GETTABLEKS                       R29 R29 K40 ["useEventCallback"]
      234 NEWCLOSURE                       R30 P3
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R27
      238 CAPTURE                          VAL R28
      239 CALL                             R29 1 1
      240 GETUPVAL                         R30 0
      241 GETTABLEKS                       R30 R30 K39 ["useRef"]
      243 LOADNIL                          R31
      244 CALL                             R30 1 1
      245 GETUPVAL                         R31 0
      246 GETTABLEKS                       R31 R31 K39 ["useRef"]
      248 LOADN                            R32 0
      249 CALL                             R31 1 1
      250 GETUPVAL                         R32 0
      251 GETTABLEKS                       R32 R32 K39 ["useRef"]
      253 LOADNIL                          R33
      254 CALL                             R32 1 1
      255 GETUPVAL                         R33 0
      256 GETTABLEKS                       R33 R33 K41 ["useCallback"]
      258 NEWCLOSURE                       R34 P4
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R27
      261 CAPTURE                          UPVAL U14
      262 CAPTURE                          VAL R32
      263 CAPTURE                          VAL R31
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R3
      267 NEWTABLE                         R35 0 4
      269 MOVE                             R36 R3
      270 GETTABLEKS                       R37 R27 K42 ["enabled"]
      272 GETTABLEKS                       R38 R0 K43 ["OnDragStart"]
      274 MOVE                             R39 R29
      275 SETLIST                          R35 R36 4 [1]
      277 CALL                             R33 2 1
      278 GETUPVAL                         R34 0
      279 GETTABLEKS                       R34 R34 K41 ["useCallback"]
      281 NEWCLOSURE                       R35 P5
      282 CAPTURE                          VAL R30
      283 CAPTURE                          VAL R0
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R27
      286 NEWTABLE                         R36 0 5
      288 MOVE                             R37 R3
      289 MOVE                             R38 R30
      290 GETTABLEKS                       R39 R0 K44 ["OnDragMoved"]
      292 MOVE                             R40 R6
      293 GETTABLEKS                       R41 R27 K45 ["disable"]
      295 SETLIST                          R36 R37 5 [1]
      297 CALL                             R34 2 1
      298 GETUPVAL                         R35 0
      299 GETTABLEKS                       R35 R35 K41 ["useCallback"]
      301 NEWCLOSURE                       R36 P6
      302 CAPTURE                          VAL R30
      303 CAPTURE                          VAL R31
      304 CAPTURE                          VAL R0
      305 CAPTURE                          VAL R3
      306 NEWTABLE                         R37 0 4
      308 MOVE                             R38 R3
      309 MOVE                             R39 R30
      310 GETTABLEKS                       R40 R0 K46 ["OnDragEnded"]
      312 MOVE                             R41 R6
      313 SETLIST                          R37 R38 4 [1]
      315 CALL                             R35 2 1
      316 GETUPVAL                         R36 0
      317 GETTABLEKS                       R36 R36 K41 ["useCallback"]
      319 NEWCLOSURE                       R37 P7
      320 CAPTURE                          VAL R20
      321 NEWTABLE                         R38 0 1
      323 MOVE                             R39 R20
      324 SETLIST                          R38 R39 1 [1]
      326 CALL                             R36 2 1
      327 GETUPVAL                         R37 0
      328 GETTABLEKS                       R37 R37 K47 ["useEffect"]
      330 NEWCLOSURE                       R38 P8
      331 CAPTURE                          VAL R6
      332 CAPTURE                          UPVAL U10
      333 CAPTURE                          VAL R21
      334 CAPTURE                          UPVAL U15
      335 CAPTURE                          VAL R16
      336 CAPTURE                          VAL R4
      337 CAPTURE                          VAL R19
      338 NEWTABLE                         R39 0 4
      340 GETTABLEKS                       R40 R4 K48 ["setNodeSize"]
      342 GETTABLEKS                       R41 R21 K49 ["observeAbsoluteSize"]
      344 MOVE                             R42 R6
      345 GETUPVAL                         R44 15
      346 JUMPIFNOT                        R44 ; [+2]
      347 MOVE                             R43 R16
      348 JUMP                             ; [+1]
      349 MOVE                             R43 R19
      350 SETLIST                          R39 R40 4 [1]
      352 CALL                             R37 2 0
      353 GETUPVAL                         R37 0
      354 GETTABLEKS                       R37 R37 K28 ["useMemo"]
      356 NEWCLOSURE                       R38 P9
      357 CAPTURE                          UPVAL U5
      358 CAPTURE                          VAL R5
      359 CAPTURE                          VAL R4
      360 CAPTURE                          VAL R6
      361 CAPTURE                          UPVAL U10
      362 CAPTURE                          UPVAL U16
      363 CAPTURE                          UPVAL U17
      364 NEWTABLE                         R39 0 3
      366 GETUPVAL                         R41 5
      367 CALL                             R41 0 1
      368 JUMPIFNOT                        R41 ; [+3]
      369 GETTABLEKS                       R40 R5 K50 ["observeSpotlightedSubtree"]
      371 JUMP                             ; [+1]
      372 LOADNIL                          R40
      373 GETTABLEKS                       R41 R4 K51 ["observeFadeByNodeId"]
      375 MOVE                             R42 R6
      376 SETLIST                          R39 R40 3 [1]
      378 CALL                             R37 2 1
      379 GETUPVAL                         R38 0
      380 GETTABLEKS                       R38 R38 K28 ["useMemo"]
      382 NEWCLOSURE                       R39 P10
      383 CAPTURE                          VAL R0
      384 NEWTABLE                         R40 0 1
      386 GETTABLEKS                       R41 R0 K52 ["Collapsed"]
      388 SETLIST                          R40 R41 1 [1]
      390 CALL                             R38 2 1
      391 GETUPVAL                         R40 18
      392 JUMPIFNOT                        R40 ; [+10]
      393 GETUPVAL                         R39 2
      394 GETTABLEKS                       R39 R39 K40 ["useEventCallback"]
      396 NEWCLOSURE                       R40 P11
      397 CAPTURE                          VAL R6
      398 CAPTURE                          VAL R4
      399 CAPTURE                          VAL R0
      400 CAPTURE                          UPVAL U19
      401 CALL                             R39 1 1
      402 JUMP                             ; [+17]
      403 GETUPVAL                         R39 0
      404 GETTABLEKS                       R39 R39 K41 ["useCallback"]
      406 NEWCLOSURE                       R40 P12
      407 CAPTURE                          VAL R6
      408 CAPTURE                          VAL R4
      409 CAPTURE                          VAL R0
      410 NEWTABLE                         R41 0 3
      412 GETTABLEKS                       R42 R4 K53 ["setCollapsed"]
      414 MOVE                             R43 R6
      415 GETTABLEKS                       R44 R0 K52 ["Collapsed"]
      417 SETLIST                          R41 R42 3 [1]
      419 CALL                             R39 2 1
      420 GETTABLEKS                       R40 R0 K54 ["text"]
      422 JUMPIF                           R40 ; [+6]
      423 GETTABLEKS                       R40 R0 K4 ["GraphPayload"]
      425 GETTABLEKS                       R40 R40 K55 ["name"]
      427 JUMPIF                           R40 ; [+1]
      428 LOADK                            R40 K56 [""]
      429 GETUPVAL                         R41 0
      430 GETTABLEKS                       R41 R41 K41 ["useCallback"]
      432 NEWCLOSURE                       R42 P13
      433 CAPTURE                          UPVAL U20
      434 CAPTURE                          VAL R25
      435 CAPTURE                          UPVAL U21
      436 CAPTURE                          VAL R27
      437 CAPTURE                          VAL R6
      438 CAPTURE                          VAL R0
      439 CAPTURE                          VAL R4
      440 NEWTABLE                         R43 0 6
      442 MOVE                             R44 R6
      443 GETTABLEKS                       R45 R27 K45 ["disable"]
      445 GETTABLEKS                       R46 R0 K6 ["IsParameterNode"]
      447 GETTABLEKS                       R47 R0 K4 ["GraphPayload"]
      449 GETTABLEKS                       R47 R47 K55 ["name"]
      451 GETTABLEKS                       R48 R4 K57 ["renameParameter"]
      453 GETTABLEKS                       R49 R4 K58 ["renameNode"]
      455 SETLIST                          R43 R44 6 [1]
      457 CALL                             R41 2 1
      458 MOVE                             R42 R2
      459 CALL                             R42 0 1
      460 GETUPVAL                         R43 0
      461 GETTABLEKS                       R43 R43 K28 ["useMemo"]
      463 DUPCLOSURE                       R44 K59 [PROTO_19]
      464 CAPTURE                          UPVAL U10
      465 NEWTABLE                         R45 0 0
      467 CALL                             R43 2 2
      468 GETUPVAL                         R45 22
      469 JUMPIFNOT                        R45 ; [+17]
      470 GETUPVAL                         R45 0
      471 GETTABLEKS                       R45 R45 K47 ["useEffect"]
      473 NEWCLOSURE                       R46 P15
      474 CAPTURE                          UPVAL U10
      475 CAPTURE                          VAL R43
      476 CAPTURE                          VAL R40
      477 CAPTURE                          VAL R0
      478 NEWTABLE                         R47 0 3
      480 MOVE                             R48 R43
      481 MOVE                             R49 R40
      482 GETTABLEKS                       R50 R0 K60 ["Selected"]
      484 SETLIST                          R47 R48 3 [1]
      486 CALL                             R45 2 0
      487 GETUPVAL                         R45 11
      488 GETTABLEKS                       R45 R45 K30 ["useSignalBinding"]
      490 MOVE                             R46 R37
      491 CALL                             R45 1 1
      492 GETUPVAL                         R46 0
      493 GETTABLEKS                       R46 R46 K28 ["useMemo"]
      495 NEWCLOSURE                       R47 P16
      496 CAPTURE                          VAL R7
      497 CAPTURE                          UPVAL U13
      498 CAPTURE                          VAL R0
      499 NEWTABLE                         R48 0 3
      501 GETTABLEKS                       R49 R0 K52 ["Collapsed"]
      503 MOVE                             R50 R7
      504 GETTABLEKS                       R51 R0 K60 ["Selected"]
      506 SETLIST                          R48 R49 3 [1]
      508 CALL                             R46 2 1
      509 GETUPVAL                         R47 0
      510 GETTABLEKS                       R47 R47 K28 ["useMemo"]
      512 NEWCLOSURE                       R48 P17
      513 CAPTURE                          VAL R46
      514 NEWTABLE                         R49 0 1
      516 MOVE                             R50 R46
      517 SETLIST                          R49 R50 1 [1]
      519 CALL                             R47 2 1
      520 GETUPVAL                         R48 0
      521 GETTABLEKS                       R48 R48 K28 ["useMemo"]
      523 NEWCLOSURE                       R49 P18
      524 CAPTURE                          UPVAL U0
      525 CAPTURE                          VAL R24
      526 CAPTURE                          UPVAL U23
      527 CAPTURE                          VAL R12
      528 NEWTABLE                         R50 0 2
      530 MOVE                             R51 R24
      531 GETTABLEKS                       R52 R12 K17 ["Color"]
      533 GETTABLEKS                       R52 R52 K61 ["System"]
      535 GETTABLEKS                       R52 R52 K62 ["Neutral"]
      537 GETTABLEKS                       R52 R52 K63 ["Color3"]
      539 SETLIST                          R50 R51 2 [1]
      541 CALL                             R48 2 1
      542 GETUPVAL                         R50 24
      543 JUMPIFNOT                        R50 ; [+10]
      544 GETUPVAL                         R49 2
      545 GETTABLEKS                       R49 R49 K40 ["useEventCallback"]
      547 NEWCLOSURE                       R50 P19
      548 CAPTURE                          VAL R4
      549 CAPTURE                          VAL R0
      550 CAPTURE                          UPVAL U18
      551 CAPTURE                          UPVAL U19
      552 CALL                             R49 1 1
      553 JUMP                             ; [+1]
      554 LOADNIL                          R49
      555 GETUPVAL                         R50 0
      556 GETTABLEKS                       R50 R50 K64 ["createElement"]
      558 GETUPVAL                         R51 9
      559 GETTABLEKS                       R51 R51 K65 ["View"]
      561 DUPTABLE                         R52 K75 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["ZIndex"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      562 GETUPVAL                         R54 15
      563 JUMPIFNOT                        R54 ; [+5]
      564 DUPCLOSURE                       R55 K76 [PROTO_26]
      565 NAMECALL                         R53 R18 K77 ["map"]
      567 CALL                             R53 2 1
      568 JUMP                             ; [+5]
      569 GETIMPORT                        R53 K80 [UDim2.fromOffset]
      571 MOVE                             R54 R19
      572 LOADN                            R55 0
      573 CALL                             R53 2 1
      574 SETTABLEKS                       R53 R52 K68 ["Size"]
      576 GETTABLEKS                       R53 R0 K69 ["LayoutOrder"]
      578 SETTABLEKS                       R53 R52 K69 ["LayoutOrder"]
      580 GETTABLEKS                       R53 R0 K70 ["ZIndex"]
      582 SETTABLEKS                       R53 R52 K70 ["ZIndex"]
      584 SETTABLEKS                       R22 R52 K34 ["Position"]
      586 DUPTABLE                         R53 K83 [{"UIScale", "ComponentContext"}]
      587 GETUPVAL                         R54 0
      588 GETTABLEKS                       R54 R54 K64 ["createElement"]
      590 LOADK                            R55 K81 ["UIScale"]
      591 DUPTABLE                         R56 K85 [{"Scale"}]
      592 SETTABLEKS                       R23 R56 K84 ["Scale"]
      594 CALL                             R54 2 1
      595 SETTABLEKS                       R54 R53 K81 ["UIScale"]
      597 GETUPVAL                         R54 0
      598 GETTABLEKS                       R54 R54 K64 ["createElement"]
      600 GETUPVAL                         R55 25
      601 GETTABLEKS                       R55 R55 K86 ["Provider"]
      603 DUPTABLE                         R56 K88 [{"absoluteSizeHook"}]
      604 SETTABLEKS                       R21 R56 K87 ["absoluteSizeHook"]
      606 DUPTABLE                         R57 K93 [{"Node", "DebugMarker", "DragDetector", "RightClickCapture"}]
      607 GETUPVAL                         R58 0
      608 GETTABLEKS                       R58 R58 K64 ["createElement"]
      610 GETUPVAL                         R59 9
      611 GETTABLEKS                       R59 R59 K65 ["View"]
      613 DUPTABLE                         R60 K95 [{["tag"], ["Size"], ["ref"], ["ZIndex"] = 1}]
      614 SETTABLEKS                       R47 R60 K66 ["tag"]
      616 GETUPVAL                         R62 15
      617 JUMPIFNOT                        R62 ; [+5]
      618 DUPCLOSURE                       R63 K96 [PROTO_27]
      619 NAMECALL                         R61 R18 K77 ["map"]
      621 CALL                             R61 2 1
      622 JUMP                             ; [+5]
      623 GETIMPORT                        R61 K80 [UDim2.fromOffset]
      625 MOVE                             R62 R19
      626 LOADN                            R63 0
      627 CALL                             R61 2 1
      628 SETTABLEKS                       R61 R60 K68 ["Size"]
      630 GETTABLEKS                       R61 R21 K97 ["setFrame"]
      632 SETTABLEKS                       R61 R60 K94 ["ref"]
      634 DUPTABLE                         R61 K103 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      635 GETUPVAL                         R62 0
      636 GETTABLEKS                       R62 R62 K64 ["createElement"]
      638 LOADK                            R63 K104 ["Folder"]
      639 NEWTABLE                         R64 0 0
      641 DUPTABLE                         R65 K106 [{"Cover"}]
      642 GETUPVAL                         R66 0
      643 GETTABLEKS                       R66 R66 K64 ["createElement"]
      645 GETUPVAL                         R67 9
      646 GETTABLEKS                       R67 R67 K65 ["View"]
      648 DUPTABLE                         R68 K111 [{["tag"], ["Size"], ["GroupTransparency"], ["ZIndex"] = 2, ["testId"] = "CompositorNodeCover"}]
      649 SETTABLEKS                       R46 R68 K66 ["tag"]
      651 GETIMPORT                        R69 K113 [UDim2.fromScale]
      653 LOADN                            R70 1
      654 LOADN                            R71 1
      655 CALL                             R69 2 1
      656 SETTABLEKS                       R69 R68 K68 ["Size"]
      658 SETTABLEKS                       R45 R68 K107 ["GroupTransparency"]
      660 CALL                             R66 2 1
      661 SETTABLEKS                       R66 R65 K105 ["Cover"]
      663 CALL                             R62 3 1
      664 SETTABLEKS                       R62 R61 K98 ["CoverContainer"]
      666 GETUPVAL                         R62 0
      667 GETTABLEKS                       R62 R62 K64 ["createElement"]
      669 GETUPVAL                         R63 9
      670 GETTABLEKS                       R63 R63 K65 ["View"]
      672 DUPTABLE                         R64 K115 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      673 NEWTABLE                         R65 4 0
      675 LOADB                            R66 1
      676 SETTABLEKS                       R66 R65 K116 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      678 NOT                              R66 R7
      679 JUMPIFNOT                        R66 ; [+1]
      680 NOT                              R66 R10
      681 SETTABLEKS                       R66 R65 K117 ["radius-small bg-shift-200"]
      683 MOVE                             R66 R7
      684 JUMPIFNOT                        R66 ; [+3]
      685 GETTABLEKS                       R67 R0 K52 ["Collapsed"]
      687 NOT                              R66 R67
      688 SETTABLEKS                       R66 R65 K118 ["radius-small"]
      690 MOVE                             R66 R7
      691 JUMPIFNOT                        R66 ; [+2]
      692 GETTABLEKS                       R66 R0 K52 ["Collapsed"]
      694 SETTABLEKS                       R66 R65 K119 ["radius-large"]
      696 SETTABLEKS                       R65 R64 K66 ["tag"]
      698 JUMPIFNOT                        R7 ; [+2]
      699 MOVE                             R65 R14
      700 JUMP                             ; [+4]
      701 JUMPIFNOT                        R10 ; [+2]
      702 MOVE                             R65 R15
      703 JUMP                             ; [+1]
      704 LOADNIL                          R65
      705 SETTABLEKS                       R65 R64 K114 ["backgroundStyle"]
      707 SETTABLEKS                       R42 R64 K69 ["LayoutOrder"]
      709 GETUPVAL                         R66 14
      710 JUMPIFNOT                        R66 ; [+2]
      711 MOVE                             R65 R32
      712 JUMP                             ; [+1]
      713 LOADNIL                          R65
      714 SETTABLEKS                       R65 R64 K94 ["ref"]
      716 DUPTABLE                         R65 K124 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      717 GETTABLEKS                       R67 R0 K125 ["Collapsible"]
      719 JUMPIFEQKB                       R67 FALSE ; [+45]
      721 GETUPVAL                         R66 0
      722 GETTABLEKS                       R66 R66 K64 ["createElement"]
      724 GETUPVAL                         R67 9
      725 GETTABLEKS                       R67 R67 K126 ["Button"]
      727 DUPTABLE                         R68 K132 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      728 SETTABLEKS                       R38 R68 K127 ["icon"]
      730 GETUPVAL                         R69 9
      731 GETTABLEKS                       R69 R69 K14 ["Enums"]
      733 GETTABLEKS                       R69 R69 K133 ["ButtonVariant"]
      735 GETTABLEKS                       R69 R69 K134 ["Text"]
      737 SETTABLEKS                       R69 R68 K128 ["variant"]
      739 SETTABLEKS                       R39 R68 K129 ["onActivated"]
      741 GETUPVAL                         R69 9
      742 GETTABLEKS                       R69 R69 K14 ["Enums"]
      744 GETTABLEKS                       R69 R69 K135 ["InputSize"]
      746 GETTABLEKS                       R69 R69 K136 ["XSmall"]
      748 SETTABLEKS                       R69 R68 K130 ["size"]
      750 MOVE                             R69 R2
      751 CALL                             R69 0 1
      752 SETTABLEKS                       R69 R68 K69 ["LayoutOrder"]
      754 GETUPVAL                         R69 9
      755 GETTABLEKS                       R69 R69 K14 ["Enums"]
      757 GETTABLEKS                       R69 R69 K137 ["FillBehavior"]
      759 GETTABLEKS                       R69 R69 K138 ["Fit"]
      761 SETTABLEKS                       R69 R68 K131 ["fillBehavior"]
      763 CALL                             R66 2 1
      764 JUMP                             ; [+1]
      765 LOADNIL                          R66
      766 SETTABLEKS                       R66 R65 K120 ["ToggleButton"]
      768 GETUPVAL                         R66 0
      769 GETTABLEKS                       R66 R66 K64 ["createElement"]
      771 GETUPVAL                         R67 9
      772 GETTABLEKS                       R67 R67 K134 ["Text"]
      774 DUPTABLE                         R68 K143 [{["tag"], ["Text"], ["RichText"] = True, ["LayoutOrder"], ["Visible"], ["testId"] = "CompositorNode-Title"}]
      775 NEWTABLE                         R69 2 0
      777 LOADB                            R70 1
      778 SETTABLEKS                       R70 R69 K144 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      780 GETTABLEKS                       R71 R0 K125 ["Collapsible"]
      782 JUMPIFEQKB                       R71 FALSE ; [+2]
      784 LOADB                            R70 0 +1
      785 LOADB                            R70 1
      786 SETTABLEKS                       R70 R69 K145 ["padding-left-small"]
      788 SETTABLEKS                       R69 R68 K66 ["tag"]
      790 SETTABLEKS                       R40 R68 K134 ["Text"]
      792 MOVE                             R69 R2
      793 CALL                             R69 0 1
      794 SETTABLEKS                       R69 R68 K69 ["LayoutOrder"]
      796 GETTABLEKS                       R70 R27 K42 ["enabled"]
      798 NOT                              R69 R70
      799 SETTABLEKS                       R69 R68 K141 ["Visible"]
      801 CALL                             R66 2 1
      802 SETTABLEKS                       R66 R65 K121 ["Title"]
      804 GETUPVAL                         R66 0
      805 GETTABLEKS                       R66 R66 K64 ["createElement"]
      807 GETUPVAL                         R67 9
      808 GETTABLEKS                       R67 R67 K146 ["TextInput"]
      810 DUPTABLE                         R68 K153 [{["tag"], ["text"], ["LayoutOrder"], ["onChanged"], ["label"] = "", ["size"], ["focusBehavior"], ["textBoxRef"], ["onFocusLost"], ["ref"], ["width"], ["Visible"]}]
      811 NEWTABLE                         R69 1 0
      813 LOADB                            R70 1
      814 SETTABLEKS                       R70 R69 K144 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      816 SETTABLEKS                       R69 R68 K66 ["tag"]
      818 SETTABLEKS                       R25 R68 K54 ["text"]
      820 MOVE                             R69 R2
      821 CALL                             R69 0 1
      822 SETTABLEKS                       R69 R68 K69 ["LayoutOrder"]
      824 SETTABLEKS                       R26 R68 K147 ["onChanged"]
      826 GETUPVAL                         R69 9
      827 GETTABLEKS                       R69 R69 K14 ["Enums"]
      829 GETTABLEKS                       R69 R69 K135 ["InputSize"]
      831 GETTABLEKS                       R69 R69 K136 ["XSmall"]
      833 SETTABLEKS                       R69 R68 K130 ["size"]
      835 GETUPVAL                         R69 9
      836 GETTABLEKS                       R69 R69 K14 ["Enums"]
      838 GETTABLEKS                       R69 R69 K154 ["InputFocusBehavior"]
      840 GETTABLEKS                       R69 R69 K155 ["Highlight"]
      842 SETTABLEKS                       R69 R68 K149 ["focusBehavior"]
      844 SETTABLEKS                       R28 R68 K150 ["textBoxRef"]
      846 SETTABLEKS                       R41 R68 K151 ["onFocusLost"]
      848 SETTABLEKS                       R28 R68 K94 ["ref"]
      850 GETIMPORT                        R69 K158 [UDim.new]
      852 LOADN                            R70 0
      853 LOADN                            R71 100
      854 CALL                             R69 2 1
      855 SETTABLEKS                       R69 R68 K152 ["width"]
      857 GETTABLEKS                       R69 R27 K42 ["enabled"]
      859 SETTABLEKS                       R69 R68 K141 ["Visible"]
      861 CALL                             R66 2 1
      862 SETTABLEKS                       R66 R65 K122 ["TitleInput"]
      864 GETUPVAL                         R66 0
      865 GETTABLEKS                       R66 R66 K64 ["createElement"]
      867 LOADK                            R67 K104 ["Folder"]
      868 NEWTABLE                         R68 0 0
      870 GETTABLEKS                       R69 R0 K159 ["HeaderChildren"]
      872 CALL                             R66 3 1
      873 SETTABLEKS                       R66 R65 K123 ["Children"]
      875 CALL                             R62 3 1
      876 SETTABLEKS                       R62 R61 K99 ["CompositorNodeHeader"]
      878 GETUPVAL                         R63 0
      879 GETTABLEKS                       R63 R63 K123 ["Children"]
      881 GETTABLEKS                       R63 R63 K160 ["count"]
      883 GETTABLEKS                       R64 R0 K161 ["children"]
      885 CALL                             R63 1 1
      886 LOADN                            R64 0
      887 JUMPIFNOTLT                      R64 R63 ; [+79]
      889 GETUPVAL                         R62 0
      890 GETTABLEKS                       R62 R62 K64 ["createElement"]
      892 GETUPVAL                         R63 9
      893 GETTABLEKS                       R63 R63 K65 ["View"]
      895 DUPTABLE                         R64 K163 [{["tag"] = "size-full-700 auto-y", ["LayoutOrder"]}]
      896 MOVE                             R65 R2
      897 CALL                             R65 0 1
      898 SETTABLEKS                       R65 R64 K69 ["LayoutOrder"]
      900 DUPTABLE                         R65 K166 [{"Contents", "ResizeBars"}]
      901 GETUPVAL                         R66 0
      902 GETTABLEKS                       R66 R66 K64 ["createElement"]
      904 GETUPVAL                         R67 9
      905 GETTABLEKS                       R67 R67 K65 ["View"]
      907 DUPTABLE                         R68 K168 [{["tag"] = "col size-full-0 auto-y padding-y-xsmall radius-small", ["ZIndex"] = 1}]
      908 DUPTABLE                         R69 K170 [{"NodeProperties"}]
      909 GETUPVAL                         R70 0
      910 GETTABLEKS                       R70 R70 K64 ["createElement"]
      912 GETUPVAL                         R71 0
      913 GETTABLEKS                       R71 R71 K171 ["Fragment"]
      915 NEWTABLE                         R72 0 0
      917 GETTABLEKS                       R73 R0 K161 ["children"]
      919 CALL                             R70 3 1
      920 SETTABLEKS                       R70 R69 K169 ["NodeProperties"]
      922 CALL                             R66 3 1
      923 SETTABLEKS                       R66 R65 K164 ["Contents"]
      925 JUMPIF                           R7 ; [+36]
      926 GETUPVAL                         R66 0
      927 GETTABLEKS                       R66 R66 K64 ["createElement"]
      929 GETUPVAL                         R67 26
      930 DUPTABLE                         R68 K176 [{["tag"] = "radius-small", ["DEPRECATED_nodeWidth"], ["nodeWidthBinding"], ["OnResized"], ["Style"], ["ZIndex"] = 2}]
      931 SETTABLEKS                       R19 R68 K172 ["DEPRECATED_nodeWidth"]
      933 SETTABLEKS                       R18 R68 K173 ["nodeWidthBinding"]
      935 GETUPVAL                         R70 15
      936 JUMPIFNOT                        R70 ; [+2]
      937 MOVE                             R69 R17
      938 JUMP                             ; [+1]
      939 MOVE                             R69 R36
      940 SETTABLEKS                       R69 R68 K174 ["OnResized"]
      942 GETTABLEKS                       R70 R0 K60 ["Selected"]
      944 JUMPIFNOT                        R70 ; [+7]
      945 GETTABLEKS                       R69 R12 K17 ["Color"]
      947 GETTABLEKS                       R69 R69 K61 ["System"]
      949 GETTABLEKS                       R69 R69 K62 ["Neutral"]
      951 JUMP                             ; [+6]
      952 GETTABLEKS                       R69 R12 K17 ["Color"]
      954 GETTABLEKS                       R69 R69 K177 ["Stroke"]
      956 GETTABLEKS                       R69 R69 K178 ["Default"]
      958 SETTABLEKS                       R69 R68 K175 ["Style"]
      960 CALL                             R66 2 1
      961 JUMP                             ; [+1]
      962 LOADNIL                          R66
      963 SETTABLEKS                       R66 R65 K165 ["ResizeBars"]
      965 CALL                             R62 3 1
      966 JUMP                             ; [+1]
      967 LOADNIL                          R62
      968 SETTABLEKS                       R62 R61 K100 ["CompositorNodeContent"]
      970 GETUPVAL                         R62 23
      971 JUMPIFNOT                        R62 ; [+15]
      972 GETTABLEKS                       R62 R0 K101 ["ContextToolbar"]
      974 JUMPIFNOT                        R62 ; [+12]
      975 GETTABLEKS                       R63 R0 K60 ["Selected"]
      977 JUMPIF                           R63 ; [+2]
      978 MOVE                             R62 R9
      979 JUMPIFNOT                        R62 ; [+7]
      980 GETUPVAL                         R62 0
      981 GETTABLEKS                       R62 R62 K64 ["createElement"]
      983 GETUPVAL                         R63 27
      984 GETTABLEKS                       R64 R0 K101 ["ContextToolbar"]
      986 CALL                             R62 2 1
      987 SETTABLEKS                       R62 R61 K101 ["ContextToolbar"]
      989 GETUPVAL                         R62 13
      990 CALL                             R62 0 1
      991 JUMPIFNOT                        R62 ; [+61]
      992 GETUPVAL                         R62 0
      993 GETTABLEKS                       R62 R62 K64 ["createElement"]
      995 LOADK                            R63 K104 ["Folder"]
      996 NEWTABLE                         R64 0 0
      998 DUPTABLE                         R65 K180 [{"SelectionHighlight"}]
      999 GETTABLEKS                       R67 R0 K60 ["Selected"]
     1001 JUMPIFNOT                        R67 ; [+47]
     1002 GETUPVAL                         R66 0
     1003 GETTABLEKS                       R66 R66 K64 ["createElement"]
     1005 GETUPVAL                         R67 9
     1006 GETTABLEKS                       R67 R67 K65 ["View"]
     1008 DUPTABLE                         R68 K182 [{["tag"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 10, ["testId"] = "SelectionHighlight"}]
     1009 NEWTABLE                         R69 4 0
     1011 GETUPVAL                         R70 23
     1012 SETTABLEKS                       R70 R69 K183 ["position-center-center anchor-center-center"]
     1014 NOT                              R70 R7
     1015 SETTABLEKS                       R70 R69 K118 ["radius-small"]
     1017 SETTABLEKS                       R7 R69 K119 ["radius-large"]
     1019 SETTABLEKS                       R69 R68 K66 ["tag"]
     1021 GETUPVAL                         R70 23
     1022 JUMPIFNOT                        R70 ; [+14]
     1023 GETIMPORT                        R69 K184 [UDim2.new]
     1025 LOADN                            R70 1
     1026 GETTABLEKS                       R71 R12 K185 ["Padding"]
     1028 GETTABLEKS                       R71 R71 K186 ["Small"]
     1030 LOADN                            R72 1
     1031 GETTABLEKS                       R73 R12 K185 ["Padding"]
     1033 GETTABLEKS                       R73 R73 K186 ["Small"]
     1035 CALL                             R69 4 1
     1036 JUMP                             ; [+5]
     1037 GETIMPORT                        R69 K113 [UDim2.fromScale]
     1039 LOADN                            R70 1
     1040 LOADN                            R71 1
     1041 CALL                             R69 2 1
     1042 SETTABLEKS                       R69 R68 K68 ["Size"]
     1044 DUPTABLE                         R69 K188 [{"UIStroke"}]
     1045 SETTABLEKS                       R48 R69 K187 ["UIStroke"]
     1047 CALL                             R66 3 1
     1048 JUMP                             ; [+1]
     1049 LOADNIL                          R66
     1050 SETTABLEKS                       R66 R65 K179 ["SelectionHighlight"]
     1052 CALL                             R62 3 1
     1053 SETTABLEKS                       R62 R61 K102 ["SelectionHighlightContainer"]
     1055 CALL                             R58 3 1
     1056 SETTABLEKS                       R58 R57 K89 ["Node"]
     1058 GETUPVAL                         R59 22
     1059 JUMPIFNOT                        R59 ; [+15]
     1060 GETUPVAL                         R58 0
     1061 GETTABLEKS                       R58 R58 K64 ["createElement"]
     1063 GETUPVAL                         R59 9
     1064 GETTABLEKS                       R59 R59 K65 ["View"]
     1066 DUPTABLE                         R60 K191 [{["tag"] = "size-full", ["testId"] = "CompositorNode-DebugMarker", ["LayoutOrder"], ["ref"]}]
     1067 MOVE                             R61 R2
     1068 CALL                             R61 0 1
     1069 SETTABLEKS                       R61 R60 K69 ["LayoutOrder"]
     1071 SETTABLEKS                       R44 R60 K94 ["ref"]
     1073 CALL                             R58 2 1
     1074 JUMP                             ; [+1]
     1075 LOADNIL                          R58
     1076 SETTABLEKS                       R58 R57 K90 ["DebugMarker"]
     1078 GETUPVAL                         R58 0
     1079 GETTABLEKS                       R58 R58 K64 ["createElement"]
     1081 LOADK                            R59 K192 ["UIDragDetector"]
     1082 NEWTABLE                         R60 8 0
     1084 GETIMPORT                        R61 K196 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1086 SETTABLEKS                       R61 R60 K197 ["DragStyle"]
     1088 GETIMPORT                        R61 K200 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1090 SETTABLEKS                       R61 R60 K201 ["ResponseStyle"]
     1092 GETTABLEKS                       R61 R3 K202 ["getViewport"]
     1094 CALL                             R61 0 1
     1095 SETTABLEKS                       R61 R60 K203 ["ReferenceUIInstance"]
     1097 GETUPVAL                         R61 0
     1098 GETTABLEKS                       R61 R61 K204 ["Event"]
     1100 GETTABLEKS                       R61 R61 K205 ["DragStart"]
     1102 SETTABLE                         R33 R60 R61
     1103 GETUPVAL                         R61 0
     1104 GETTABLEKS                       R61 R61 K204 ["Event"]
     1106 GETTABLEKS                       R61 R61 K206 ["DragContinue"]
     1108 SETTABLE                         R34 R60 R61
     1109 GETUPVAL                         R61 0
     1110 GETTABLEKS                       R61 R61 K204 ["Event"]
     1112 GETTABLEKS                       R61 R61 K207 ["DragEnd"]
     1114 SETTABLE                         R35 R60 R61
     1115 CALL                             R58 2 1
     1116 SETTABLEKS                       R58 R57 K91 ["DragDetector"]
     1118 GETUPVAL                         R58 24
     1119 JUMPIFNOT                        R58 ; [+26]
     1120 GETUPVAL                         R58 0
     1121 GETTABLEKS                       R58 R58 K64 ["createElement"]
     1123 LOADK                            R59 K208 ["Frame"]
     1124 NEWTABLE                         R60 4 0
     1126 LOADN                            R61 1
     1127 SETTABLEKS                       R61 R60 K71 ["BackgroundTransparency"]
     1129 GETIMPORT                        R61 K113 [UDim2.fromScale]
     1131 LOADN                            R62 1
     1132 LOADN                            R63 1
     1133 CALL                             R61 2 1
     1134 SETTABLEKS                       R61 R60 K68 ["Size"]
     1136 LOADN                            R61 -10
     1137 SETTABLEKS                       R61 R60 K70 ["ZIndex"]
     1139 GETUPVAL                         R61 0
     1140 GETTABLEKS                       R61 R61 K204 ["Event"]
     1142 GETTABLEKS                       R61 R61 K209 ["InputBegan"]
     1144 SETTABLE                         R49 R60 R61
     1145 CALL                             R58 2 1
     1146 SETTABLEKS                       R58 R57 K92 ["RightClickCapture"]
     1148 CALL                             R54 3 1
     1149 SETTABLEKS                       R54 R53 K82 ["ComponentContext"]
     1151 CALL                             R50 3 -1
     1152 RETURN                           R50 -1

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
       44 GETTABLEKS                       R7 R7 K13 ["FFlagAnimGraphUI_ContextToolbar"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Flags"]
       51 GETTABLEKS                       R8 R8 K14 ["FFlagAnimGraphUI_DynamicZIndex"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K12 ["Flags"]
       58 GETTABLEKS                       R9 R9 K15 ["FFlagAnimGraphUI_NarrowerRenaming"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Flags"]
       65 GETTABLEKS                       R10 R10 K16 ["FFlagAnimGraphUI_NodesHaveSpaces"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Flags"]
       72 GETTABLEKS                       R11 R11 K17 ["FFlagAnimGraphUI_NoodleColorLerping"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Flags"]
       79 GETTABLEKS                       R12 R12 K18 ["FFlagAnimGraphUI_PerfFixes_7123"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K12 ["Flags"]
       86 GETTABLEKS                       R13 R13 K19 ["FFlagAnimGraphUI_RightClickSelects"]
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
      112 GETTABLEKS                       R17 R0 K20 ["Parent"]
      114 GETTABLEKS                       R17 R17 K25 ["React"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K20 ["Parent"]
      121 GETTABLEKS                       R18 R18 K26 ["ReactUtils"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETIMPORT                        R19 K1 [script]
      128 GETTABLEKS                       R19 R19 K27 ["ResizeBars"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K20 ["Parent"]
      135 GETTABLEKS                       R20 R20 K28 ["Signals"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K20 ["Parent"]
      142 GETTABLEKS                       R21 R21 K29 ["SignalsReact"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K20 ["Parent"]
      149 GETTABLEKS                       R22 R22 K30 ["SignalsUtils"]
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
      184 GETTABLEKS                       R27 R27 K35 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K5 [require]
      189 GETTABLEKS                       R28 R0 K12 ["Flags"]
      191 GETTABLEKS                       R28 R28 K36 ["getFFlagAnimGraphUI_SpotlightNodes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K5 [require]
      196 GETTABLEKS                       R29 R0 K37 ["Hooks"]
      198 GETTABLEKS                       R29 R29 K38 ["useAbsoluteSize"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K5 [require]
      203 GETTABLEKS                       R30 R0 K37 ["Hooks"]
      205 GETTABLEKS                       R30 R30 K39 ["useFoundationStudioTheme"]
      207 CALL                             R29 1 1
      208 GETTABLEKS                       R30 R23 K40 ["isCli"]
      210 CALL                             R30 0 1
      211 JUMPIF                           R30 ; [+3]
      212 GETTABLEKS                       R30 R23 K41 ["isFTF"]
      214 CALL                             R30 0 1
      215 DUPCLOSURE                       R31 K42 [PROTO_28]
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R15
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R27
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R29
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R11
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R21
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R6
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R1
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R4
      244 RETURN                           R31 1
