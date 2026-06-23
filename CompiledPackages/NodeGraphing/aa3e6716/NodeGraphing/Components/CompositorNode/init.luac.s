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
        3 DIVRK                            R1 R0 K0 [1]
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

PROTO_12:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 1
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["createComputed"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
       23 GETUPVAL                         R1 1
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1
       26 GETUPVAL                         R0 4
       27 GETTABLEKS                       R0 R0 K2 ["Experimental"]
       29 GETTABLEKS                       R0 R0 K1 ["createComputed"]
       31 DUPCLOSURE                       R1 K3 [PROTO_12]
       32 CALL                             R0 1 -1
       33 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["disable"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 3
       11 JUMPIFNOT                        R1 ; [+2]
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K2 ["IsParameterNode"]
       18 JUMPIFNOT                        R1 ; [+18]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K3 ["GraphPayload"]
       22 GETTABLEKS                       R1 R1 K4 ["name"]
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETUPVAL                         R1 5
       26 GETTABLEKS                       R1 R1 K5 ["renameParameter"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K3 ["GraphPayload"]
       31 GETTABLEKS                       R2 R2 K4 ["name"]
       33 MOVE                             R3 R0
       34 GETUPVAL                         R4 3
       35 CALL                             R1 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 5
       38 GETTABLEKS                       R1 R1 K6 ["renameNode"]
       40 GETUPVAL                         R2 3
       41 MOVE                             R3 R0
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_20:
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

PROTO_21:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_22:
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

PROTO_23:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_24:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_25:
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
       25 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       27 JUMPIFNOT                        R6 ; [+5]
       28 GETTABLEKS                       R5 R0 K4 ["GraphPayload"]
       30 GETTABLEKS                       R5 R5 K5 ["id"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 GETTABLEKS                       R6 R0 K6 ["IsParameterNode"]
       36 JUMPIF                           R6 ; [+14]
       37 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       39 JUMPIFNOT                        R6 ; [+11]
       40 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       42 GETTABLEKS                       R7 R7 K7 ["className"]
       44 GETUPVAL                         R8 5
       45 GETTABLEKS                       R8 R8 K8 ["PARAMETER_NODE_CLASSNAME"]
       47 JUMPIFEQ                         R7 R8 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 GETTABLEKS                       R7 R0 K9 ["IsGeneric"]
       53 GETUPVAL                         R8 6
       54 CALL                             R8 0 1
       55 GETUPVAL                         R9 7
       56 GETTABLEKS                       R9 R9 K10 ["Hooks"]
       58 GETTABLEKS                       R9 R9 K11 ["useTokens"]
       60 CALL                             R9 0 1
       61 GETUPVAL                         R11 7
       62 GETTABLEKS                       R11 R11 K12 ["Enums"]
       64 GETTABLEKS                       R11 R11 K13 ["Theme"]
       66 GETTABLEKS                       R11 R11 K14 ["Dark"]
       68 JUMPIFNOTEQ                      R8 R11 ; [+10]
       70 GETTABLEKS                       R10 R9 K15 ["Color"]
       72 GETTABLEKS                       R10 R10 K16 ["Extended"]
       74 GETTABLEKS                       R10 R10 K17 ["Green"]
       76 GETTABLEKS                       R10 R10 K18 ["Green_1300"]
       78 JUMP                             ; [+8]
       79 GETTABLEKS                       R10 R9 K15 ["Color"]
       81 GETTABLEKS                       R10 R10 K16 ["Extended"]
       83 GETTABLEKS                       R10 R10 K17 ["Green"]
       85 GETTABLEKS                       R10 R10 K19 ["Green_100"]
       87 GETUPVAL                         R11 7
       88 GETTABLEKS                       R11 R11 K10 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K20 ["useCumulativeBackground"]
       92 MOVE                             R12 R10
       93 GETTABLEKS                       R13 R9 K15 ["Color"]
       95 GETTABLEKS                       R13 R13 K21 ["Shift"]
       97 GETTABLEKS                       R13 R13 K22 ["Shift_100"]
       99 CALL                             R11 2 1
      100 GETUPVAL                         R12 7
      101 GETTABLEKS                       R12 R12 K10 ["Hooks"]
      103 GETTABLEKS                       R12 R12 K20 ["useCumulativeBackground"]
      105 GETTABLEKS                       R13 R9 K15 ["Color"]
      107 GETTABLEKS                       R13 R13 K16 ["Extended"]
      109 GETTABLEKS                       R13 R13 K23 ["Purple"]
      111 GETTABLEKS                       R13 R13 K24 ["Purple_800"]
      113 GETTABLEKS                       R14 R9 K15 ["Color"]
      115 GETTABLEKS                       R14 R14 K21 ["Shift"]
      117 GETTABLEKS                       R14 R14 K25 ["Shift_200"]
      119 CALL                             R12 2 1
      120 GETUPVAL                         R13 0
      121 GETTABLEKS                       R13 R13 K26 ["useMemo"]
      123 DUPCLOSURE                       R14 K27 [PROTO_0]
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          UPVAL U5
      126 NEWTABLE                         R15 0 0
      128 CALL                             R13 2 2
      129 GETUPVAL                         R15 9
      130 GETTABLEKS                       R15 R15 K28 ["useSignalBinding"]
      132 MOVE                             R16 R13
      133 CALL                             R15 1 1
      134 GETUPVAL                         R16 0
      135 GETTABLEKS                       R16 R16 K29 ["useState"]
      137 GETUPVAL                         R17 5
      138 GETTABLEKS                       R17 R17 K30 ["NODE_VIEW_CHILD_WIDTH"]
      140 CALL                             R16 1 2
      141 GETUPVAL                         R18 10
      142 CALL                             R18 0 1
      143 GETUPVAL                         R19 3
      144 GETTABLEKS                       R19 R19 K31 ["useViewportBinding"]
      146 NEWCLOSURE                       R20 P1
      147 CAPTURE                          VAL R0
      148 NEWTABLE                         R21 0 1
      150 GETTABLEKS                       R22 R0 K32 ["Position"]
      152 SETLIST                          R21 R22 1 [1]
      154 CALL                             R19 2 1
      155 GETUPVAL                         R20 9
      156 GETTABLEKS                       R20 R20 K28 ["useSignalBinding"]
      158 GETTABLEKS                       R21 R1 K33 ["observeZoomRatio"]
      160 CALL                             R20 1 1
      161 GETUPVAL                         R21 0
      162 GETTABLEKS                       R21 R21 K26 ["useMemo"]
      164 NEWCLOSURE                       R22 P2
      165 CAPTURE                          VAL R20
      166 CAPTURE                          UPVAL U11
      167 NEWTABLE                         R23 0 1
      169 MOVE                             R24 R20
      170 SETLIST                          R23 R24 1 [1]
      172 CALL                             R21 2 1
      173 GETUPVAL                         R22 0
      174 GETTABLEKS                       R22 R22 K34 ["useBinding"]
      176 GETTABLEKS                       R23 R0 K35 ["editName"]
      178 CALL                             R22 1 2
      179 GETUPVAL                         R24 2
      180 GETTABLEKS                       R24 R24 K36 ["useToggleState"]
      182 LOADB                            R25 0
      183 CALL                             R24 1 1
      184 GETUPVAL                         R25 0
      185 GETTABLEKS                       R25 R25 K37 ["useRef"]
      187 LOADNIL                          R26
      188 CALL                             R25 1 1
      189 GETUPVAL                         R26 2
      190 GETTABLEKS                       R26 R26 K38 ["useEventCallback"]
      192 NEWCLOSURE                       R27 P3
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R25
      197 CALL                             R26 1 1
      198 GETUPVAL                         R27 0
      199 GETTABLEKS                       R27 R27 K37 ["useRef"]
      201 LOADNIL                          R28
      202 CALL                             R27 1 1
      203 GETUPVAL                         R28 0
      204 GETTABLEKS                       R28 R28 K37 ["useRef"]
      206 LOADN                            R29 0
      207 CALL                             R28 1 1
      208 GETUPVAL                         R29 0
      209 GETTABLEKS                       R29 R29 K37 ["useRef"]
      211 LOADNIL                          R30
      212 CALL                             R29 1 1
      213 GETUPVAL                         R30 0
      214 GETTABLEKS                       R30 R30 K39 ["useCallback"]
      216 NEWCLOSURE                       R31 P4
      217 CAPTURE                          VAL R27
      218 CAPTURE                          VAL R24
      219 CAPTURE                          UPVAL U12
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R0
      224 CAPTURE                          VAL R3
      225 NEWTABLE                         R32 0 4
      227 MOVE                             R33 R3
      228 GETTABLEKS                       R34 R24 K40 ["enabled"]
      230 GETTABLEKS                       R35 R0 K41 ["OnDragStart"]
      232 MOVE                             R36 R26
      233 SETLIST                          R32 R33 4 [1]
      235 CALL                             R30 2 1
      236 GETUPVAL                         R31 0
      237 GETTABLEKS                       R31 R31 K39 ["useCallback"]
      239 NEWCLOSURE                       R32 P5
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R0
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R24
      244 NEWTABLE                         R33 0 5
      246 MOVE                             R34 R3
      247 MOVE                             R35 R27
      248 GETTABLEKS                       R36 R0 K42 ["OnDragMoved"]
      250 MOVE                             R37 R5
      251 GETTABLEKS                       R38 R24 K43 ["disable"]
      253 SETLIST                          R33 R34 5 [1]
      255 CALL                             R31 2 1
      256 GETUPVAL                         R32 0
      257 GETTABLEKS                       R32 R32 K39 ["useCallback"]
      259 NEWCLOSURE                       R33 P6
      260 CAPTURE                          VAL R27
      261 CAPTURE                          VAL R28
      262 CAPTURE                          VAL R0
      263 CAPTURE                          VAL R3
      264 NEWTABLE                         R34 0 4
      266 MOVE                             R35 R3
      267 MOVE                             R36 R27
      268 GETTABLEKS                       R37 R0 K44 ["OnDragEnded"]
      270 MOVE                             R38 R5
      271 SETLIST                          R34 R35 4 [1]
      273 CALL                             R32 2 1
      274 GETUPVAL                         R33 0
      275 GETTABLEKS                       R33 R33 K39 ["useCallback"]
      277 NEWCLOSURE                       R34 P7
      278 CAPTURE                          VAL R17
      279 NEWTABLE                         R35 0 1
      281 MOVE                             R36 R17
      282 SETLIST                          R35 R36 1 [1]
      284 CALL                             R33 2 1
      285 GETUPVAL                         R34 0
      286 GETTABLEKS                       R34 R34 K45 ["useEffect"]
      288 NEWCLOSURE                       R35 P8
      289 CAPTURE                          VAL R5
      290 CAPTURE                          UPVAL U8
      291 CAPTURE                          VAL R18
      292 CAPTURE                          UPVAL U13
      293 CAPTURE                          VAL R13
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R16
      296 NEWTABLE                         R36 0 4
      298 GETTABLEKS                       R37 R4 K46 ["setNodeSize"]
      300 GETTABLEKS                       R38 R18 K47 ["observeAbsoluteSize"]
      302 MOVE                             R39 R5
      303 GETUPVAL                         R41 13
      304 JUMPIFNOT                        R41 ; [+2]
      305 MOVE                             R40 R13
      306 JUMP                             ; [+1]
      307 MOVE                             R40 R16
      308 SETLIST                          R36 R37 4 [1]
      310 CALL                             R34 2 0
      311 GETUPVAL                         R34 0
      312 GETTABLEKS                       R34 R34 K26 ["useMemo"]
      314 NEWCLOSURE                       R35 P9
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R5
      317 CAPTURE                          UPVAL U14
      318 CAPTURE                          UPVAL U8
      319 CAPTURE                          UPVAL U15
      320 NEWTABLE                         R36 0 2
      322 GETTABLEKS                       R37 R4 K48 ["observeFadeByNodeId"]
      324 MOVE                             R38 R5
      325 SETLIST                          R36 R37 2 [1]
      327 CALL                             R34 2 1
      328 GETUPVAL                         R35 0
      329 GETTABLEKS                       R35 R35 K26 ["useMemo"]
      331 NEWCLOSURE                       R36 P10
      332 CAPTURE                          VAL R0
      333 NEWTABLE                         R37 0 1
      335 GETTABLEKS                       R38 R0 K49 ["Collapsed"]
      337 SETLIST                          R37 R38 1 [1]
      339 CALL                             R35 2 1
      340 GETUPVAL                         R36 0
      341 GETTABLEKS                       R36 R36 K39 ["useCallback"]
      343 NEWCLOSURE                       R37 P11
      344 CAPTURE                          VAL R5
      345 CAPTURE                          VAL R4
      346 CAPTURE                          VAL R0
      347 NEWTABLE                         R38 0 3
      349 GETTABLEKS                       R39 R4 K50 ["setCollapsed"]
      351 MOVE                             R40 R5
      352 GETTABLEKS                       R41 R0 K49 ["Collapsed"]
      354 SETLIST                          R38 R39 3 [1]
      356 CALL                             R36 2 1
      357 GETTABLEKS                       R37 R0 K51 ["text"]
      359 JUMPIF                           R37 ; [+6]
      360 GETTABLEKS                       R37 R0 K4 ["GraphPayload"]
      362 GETTABLEKS                       R37 R37 K52 ["name"]
      364 JUMPIF                           R37 ; [+1]
      365 LOADK                            R37 K53 [""]
      366 GETUPVAL                         R38 0
      367 GETTABLEKS                       R38 R38 K39 ["useCallback"]
      369 NEWCLOSURE                       R39 P12
      370 CAPTURE                          UPVAL U16
      371 CAPTURE                          VAL R22
      372 CAPTURE                          VAL R24
      373 CAPTURE                          VAL R5
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R4
      376 NEWTABLE                         R40 0 6
      378 MOVE                             R41 R5
      379 GETTABLEKS                       R42 R24 K43 ["disable"]
      381 GETTABLEKS                       R43 R0 K6 ["IsParameterNode"]
      383 GETTABLEKS                       R44 R0 K4 ["GraphPayload"]
      385 GETTABLEKS                       R44 R44 K52 ["name"]
      387 GETTABLEKS                       R45 R4 K54 ["renameParameter"]
      389 GETTABLEKS                       R46 R4 K55 ["renameNode"]
      391 SETLIST                          R40 R41 6 [1]
      393 CALL                             R38 2 1
      394 MOVE                             R39 R2
      395 CALL                             R39 0 1
      396 GETUPVAL                         R40 0
      397 GETTABLEKS                       R40 R40 K26 ["useMemo"]
      399 DUPCLOSURE                       R41 K56 [PROTO_17]
      400 CAPTURE                          UPVAL U8
      401 NEWTABLE                         R42 0 0
      403 CALL                             R40 2 2
      404 GETUPVAL                         R42 17
      405 JUMPIFNOT                        R42 ; [+14]
      406 GETUPVAL                         R42 0
      407 GETTABLEKS                       R42 R42 K45 ["useEffect"]
      409 NEWCLOSURE                       R43 P14
      410 CAPTURE                          UPVAL U8
      411 CAPTURE                          VAL R40
      412 CAPTURE                          VAL R37
      413 NEWTABLE                         R44 0 2
      415 MOVE                             R45 R40
      416 MOVE                             R46 R37
      417 SETLIST                          R44 R45 2 [1]
      419 CALL                             R42 2 0
      420 GETUPVAL                         R42 9
      421 GETTABLEKS                       R42 R42 K28 ["useSignalBinding"]
      423 MOVE                             R43 R34
      424 CALL                             R42 1 1
      425 GETUPVAL                         R43 0
      426 GETTABLEKS                       R43 R43 K26 ["useMemo"]
      428 NEWCLOSURE                       R44 P15
      429 CAPTURE                          VAL R6
      430 CAPTURE                          UPVAL U11
      431 CAPTURE                          VAL R0
      432 NEWTABLE                         R45 0 3
      434 GETTABLEKS                       R46 R0 K49 ["Collapsed"]
      436 MOVE                             R47 R6
      437 GETTABLEKS                       R48 R0 K57 ["Selected"]
      439 SETLIST                          R45 R46 3 [1]
      441 CALL                             R43 2 1
      442 GETUPVAL                         R44 0
      443 GETTABLEKS                       R44 R44 K26 ["useMemo"]
      445 NEWCLOSURE                       R45 P16
      446 CAPTURE                          VAL R43
      447 NEWTABLE                         R46 0 1
      449 MOVE                             R47 R43
      450 SETLIST                          R46 R47 1 [1]
      452 CALL                             R44 2 1
      453 GETUPVAL                         R45 0
      454 GETTABLEKS                       R45 R45 K26 ["useMemo"]
      456 NEWCLOSURE                       R46 P17
      457 CAPTURE                          UPVAL U0
      458 CAPTURE                          VAL R21
      459 CAPTURE                          UPVAL U18
      460 CAPTURE                          VAL R9
      461 NEWTABLE                         R47 0 2
      463 MOVE                             R48 R21
      464 GETTABLEKS                       R49 R9 K15 ["Color"]
      466 GETTABLEKS                       R49 R49 K58 ["System"]
      468 GETTABLEKS                       R49 R49 K59 ["Neutral"]
      470 GETTABLEKS                       R49 R49 K60 ["Color3"]
      472 SETLIST                          R47 R48 2 [1]
      474 CALL                             R45 2 1
      475 GETUPVAL                         R46 0
      476 GETTABLEKS                       R46 R46 K61 ["createElement"]
      478 GETUPVAL                         R47 7
      479 GETTABLEKS                       R47 R47 K62 ["View"]
      481 DUPTABLE                         R48 K69 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      482 LOADK                            R49 K70 ["auto-y"]
      483 SETTABLEKS                       R49 R48 K63 ["tag"]
      485 GETUPVAL                         R50 13
      486 JUMPIFNOT                        R50 ; [+5]
      487 DUPCLOSURE                       R51 K71 [PROTO_23]
      488 NAMECALL                         R49 R15 K72 ["map"]
      490 CALL                             R49 2 1
      491 JUMP                             ; [+5]
      492 GETIMPORT                        R49 K75 [UDim2.fromOffset]
      494 MOVE                             R50 R16
      495 LOADN                            R51 0
      496 CALL                             R49 2 1
      497 SETTABLEKS                       R49 R48 K64 ["Size"]
      499 GETTABLEKS                       R49 R0 K65 ["LayoutOrder"]
      501 SETTABLEKS                       R49 R48 K65 ["LayoutOrder"]
      503 GETTABLEKS                       R49 R0 K66 ["ZIndex"]
      505 SETTABLEKS                       R49 R48 K66 ["ZIndex"]
      507 SETTABLEKS                       R19 R48 K32 ["Position"]
      509 LOADN                            R49 1
      510 SETTABLEKS                       R49 R48 K67 ["BackgroundTransparency"]
      512 LOADN                            R49 0
      513 SETTABLEKS                       R49 R48 K68 ["BorderSizePixel"]
      515 DUPTABLE                         R49 K78 [{"UIScale", "ComponentContext"}]
      516 GETUPVAL                         R50 0
      517 GETTABLEKS                       R50 R50 K61 ["createElement"]
      519 LOADK                            R51 K76 ["UIScale"]
      520 DUPTABLE                         R52 K80 [{"Scale"}]
      521 SETTABLEKS                       R20 R52 K79 ["Scale"]
      523 CALL                             R50 2 1
      524 SETTABLEKS                       R50 R49 K76 ["UIScale"]
      526 GETUPVAL                         R50 0
      527 GETTABLEKS                       R50 R50 K61 ["createElement"]
      529 GETUPVAL                         R51 19
      530 GETTABLEKS                       R51 R51 K81 ["Provider"]
      532 DUPTABLE                         R52 K83 [{"absoluteSizeHook"}]
      533 SETTABLEKS                       R18 R52 K82 ["absoluteSizeHook"]
      535 DUPTABLE                         R53 K87 [{"Node", "DebugMarker", "DragDetector"}]
      536 GETUPVAL                         R54 0
      537 GETTABLEKS                       R54 R54 K61 ["createElement"]
      539 GETUPVAL                         R55 7
      540 GETTABLEKS                       R55 R55 K62 ["View"]
      542 DUPTABLE                         R56 K89 [{"tag", "Size", "ref", "ZIndex"}]
      543 SETTABLEKS                       R44 R56 K63 ["tag"]
      545 GETUPVAL                         R58 13
      546 JUMPIFNOT                        R58 ; [+5]
      547 DUPCLOSURE                       R59 K90 [PROTO_24]
      548 NAMECALL                         R57 R15 K72 ["map"]
      550 CALL                             R57 2 1
      551 JUMP                             ; [+5]
      552 GETIMPORT                        R57 K75 [UDim2.fromOffset]
      554 MOVE                             R58 R16
      555 LOADN                            R59 0
      556 CALL                             R57 2 1
      557 SETTABLEKS                       R57 R56 K64 ["Size"]
      559 GETTABLEKS                       R57 R18 K91 ["setFrame"]
      561 SETTABLEKS                       R57 R56 K88 ["ref"]
      563 LOADN                            R57 1
      564 SETTABLEKS                       R57 R56 K66 ["ZIndex"]
      566 DUPTABLE                         R57 K97 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      567 GETUPVAL                         R58 0
      568 GETTABLEKS                       R58 R58 K61 ["createElement"]
      570 LOADK                            R59 K98 ["Folder"]
      571 NEWTABLE                         R60 0 0
      573 DUPTABLE                         R61 K100 [{"Cover"}]
      574 GETUPVAL                         R62 0
      575 GETTABLEKS                       R62 R62 K61 ["createElement"]
      577 GETUPVAL                         R63 7
      578 GETTABLEKS                       R63 R63 K62 ["View"]
      580 DUPTABLE                         R64 K103 [{"tag", "Size", "GroupTransparency", "ZIndex", "testId"}]
      581 SETTABLEKS                       R43 R64 K63 ["tag"]
      583 GETIMPORT                        R65 K105 [UDim2.fromScale]
      585 LOADN                            R66 1
      586 LOADN                            R67 1
      587 CALL                             R65 2 1
      588 SETTABLEKS                       R65 R64 K64 ["Size"]
      590 SETTABLEKS                       R42 R64 K101 ["GroupTransparency"]
      592 LOADN                            R65 2
      593 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      595 LOADK                            R65 K106 ["CompositorNodeCover"]
      596 SETTABLEKS                       R65 R64 K102 ["testId"]
      598 CALL                             R62 2 1
      599 SETTABLEKS                       R62 R61 K99 ["Cover"]
      601 CALL                             R58 3 1
      602 SETTABLEKS                       R58 R57 K92 ["CoverContainer"]
      604 GETUPVAL                         R58 0
      605 GETTABLEKS                       R58 R58 K61 ["createElement"]
      607 GETUPVAL                         R59 7
      608 GETTABLEKS                       R59 R59 K62 ["View"]
      610 DUPTABLE                         R60 K108 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      611 NEWTABLE                         R61 4 0
      613 LOADB                            R62 1
      614 SETTABLEKS                       R62 R61 K109 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      616 NOT                              R62 R6
      617 JUMPIFNOT                        R62 ; [+1]
      618 NOT                              R62 R7
      619 SETTABLEKS                       R62 R61 K110 ["radius-small bg-shift-200"]
      621 MOVE                             R62 R6
      622 JUMPIFNOT                        R62 ; [+3]
      623 GETTABLEKS                       R63 R0 K49 ["Collapsed"]
      625 NOT                              R62 R63
      626 SETTABLEKS                       R62 R61 K111 ["radius-small"]
      628 MOVE                             R62 R6
      629 JUMPIFNOT                        R62 ; [+2]
      630 GETTABLEKS                       R62 R0 K49 ["Collapsed"]
      632 SETTABLEKS                       R62 R61 K112 ["radius-large"]
      634 SETTABLEKS                       R61 R60 K63 ["tag"]
      636 JUMPIFNOT                        R6 ; [+2]
      637 MOVE                             R61 R11
      638 JUMP                             ; [+4]
      639 JUMPIFNOT                        R7 ; [+2]
      640 MOVE                             R61 R12
      641 JUMP                             ; [+1]
      642 LOADNIL                          R61
      643 SETTABLEKS                       R61 R60 K107 ["backgroundStyle"]
      645 SETTABLEKS                       R39 R60 K65 ["LayoutOrder"]
      647 GETUPVAL                         R62 12
      648 JUMPIFNOT                        R62 ; [+2]
      649 MOVE                             R61 R29
      650 JUMP                             ; [+1]
      651 LOADNIL                          R61
      652 SETTABLEKS                       R61 R60 K88 ["ref"]
      654 DUPTABLE                         R61 K117 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      655 GETTABLEKS                       R63 R0 K118 ["Collapsible"]
      657 JUMPIFEQKB                       R63 FALSE ; [+45]
      659 GETUPVAL                         R62 0
      660 GETTABLEKS                       R62 R62 K61 ["createElement"]
      662 GETUPVAL                         R63 7
      663 GETTABLEKS                       R63 R63 K119 ["Button"]
      665 DUPTABLE                         R64 K125 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      666 SETTABLEKS                       R35 R64 K120 ["icon"]
      668 GETUPVAL                         R65 7
      669 GETTABLEKS                       R65 R65 K12 ["Enums"]
      671 GETTABLEKS                       R65 R65 K126 ["ButtonVariant"]
      673 GETTABLEKS                       R65 R65 K127 ["Text"]
      675 SETTABLEKS                       R65 R64 K121 ["variant"]
      677 SETTABLEKS                       R36 R64 K122 ["onActivated"]
      679 GETUPVAL                         R65 7
      680 GETTABLEKS                       R65 R65 K12 ["Enums"]
      682 GETTABLEKS                       R65 R65 K128 ["InputSize"]
      684 GETTABLEKS                       R65 R65 K129 ["XSmall"]
      686 SETTABLEKS                       R65 R64 K123 ["size"]
      688 MOVE                             R65 R2
      689 CALL                             R65 0 1
      690 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      692 GETUPVAL                         R65 7
      693 GETTABLEKS                       R65 R65 K12 ["Enums"]
      695 GETTABLEKS                       R65 R65 K130 ["FillBehavior"]
      697 GETTABLEKS                       R65 R65 K131 ["Fit"]
      699 SETTABLEKS                       R65 R64 K124 ["fillBehavior"]
      701 CALL                             R62 2 1
      702 JUMP                             ; [+1]
      703 LOADNIL                          R62
      704 SETTABLEKS                       R62 R61 K113 ["ToggleButton"]
      706 GETUPVAL                         R62 0
      707 GETTABLEKS                       R62 R62 K61 ["createElement"]
      709 GETUPVAL                         R63 7
      710 GETTABLEKS                       R63 R63 K127 ["Text"]
      712 DUPTABLE                         R64 K134 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      713 NEWTABLE                         R65 2 0
      715 LOADB                            R66 1
      716 SETTABLEKS                       R66 R65 K135 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      718 GETTABLEKS                       R67 R0 K118 ["Collapsible"]
      720 JUMPIFEQKB                       R67 FALSE ; [+2]
      722 LOADB                            R66 0 +1
      723 LOADB                            R66 1
      724 SETTABLEKS                       R66 R65 K136 ["padding-left-small"]
      726 SETTABLEKS                       R65 R64 K63 ["tag"]
      728 SETTABLEKS                       R37 R64 K127 ["Text"]
      730 LOADB                            R65 1
      731 SETTABLEKS                       R65 R64 K132 ["RichText"]
      733 MOVE                             R65 R2
      734 CALL                             R65 0 1
      735 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      737 GETTABLEKS                       R66 R24 K40 ["enabled"]
      739 NOT                              R65 R66
      740 SETTABLEKS                       R65 R64 K133 ["Visible"]
      742 LOADK                            R65 K137 ["CompositorNode-Title"]
      743 SETTABLEKS                       R65 R64 K102 ["testId"]
      745 CALL                             R62 2 1
      746 SETTABLEKS                       R62 R61 K114 ["Title"]
      748 GETUPVAL                         R62 0
      749 GETTABLEKS                       R62 R62 K61 ["createElement"]
      751 GETUPVAL                         R63 7
      752 GETTABLEKS                       R63 R63 K138 ["TextInput"]
      754 DUPTABLE                         R64 K145 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "focusBehavior", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      755 NEWTABLE                         R65 1 0
      757 LOADB                            R66 1
      758 SETTABLEKS                       R66 R65 K135 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      760 SETTABLEKS                       R65 R64 K63 ["tag"]
      762 SETTABLEKS                       R22 R64 K51 ["text"]
      764 MOVE                             R65 R2
      765 CALL                             R65 0 1
      766 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      768 SETTABLEKS                       R23 R64 K139 ["onChanged"]
      770 LOADK                            R65 K53 [""]
      771 SETTABLEKS                       R65 R64 K140 ["label"]
      773 GETUPVAL                         R65 7
      774 GETTABLEKS                       R65 R65 K12 ["Enums"]
      776 GETTABLEKS                       R65 R65 K128 ["InputSize"]
      778 GETTABLEKS                       R65 R65 K129 ["XSmall"]
      780 SETTABLEKS                       R65 R64 K123 ["size"]
      782 GETUPVAL                         R65 7
      783 GETTABLEKS                       R65 R65 K12 ["Enums"]
      785 GETTABLEKS                       R65 R65 K146 ["InputFocusBehavior"]
      787 GETTABLEKS                       R65 R65 K147 ["Highlight"]
      789 SETTABLEKS                       R65 R64 K141 ["focusBehavior"]
      791 SETTABLEKS                       R25 R64 K142 ["textBoxRef"]
      793 SETTABLEKS                       R38 R64 K143 ["onFocusLost"]
      795 SETTABLEKS                       R25 R64 K88 ["ref"]
      797 GETIMPORT                        R65 K150 [UDim.new]
      799 LOADN                            R66 0
      800 LOADN                            R67 100
      801 CALL                             R65 2 1
      802 SETTABLEKS                       R65 R64 K144 ["width"]
      804 GETTABLEKS                       R65 R24 K40 ["enabled"]
      806 SETTABLEKS                       R65 R64 K133 ["Visible"]
      808 CALL                             R62 2 1
      809 SETTABLEKS                       R62 R61 K115 ["TitleInput"]
      811 GETUPVAL                         R62 0
      812 GETTABLEKS                       R62 R62 K61 ["createElement"]
      814 LOADK                            R63 K98 ["Folder"]
      815 NEWTABLE                         R64 0 0
      817 GETTABLEKS                       R65 R0 K151 ["HeaderChildren"]
      819 CALL                             R62 3 1
      820 SETTABLEKS                       R62 R61 K116 ["Children"]
      822 CALL                             R58 3 1
      823 SETTABLEKS                       R58 R57 K93 ["CompositorNodeHeader"]
      825 GETUPVAL                         R59 0
      826 GETTABLEKS                       R59 R59 K116 ["Children"]
      828 GETTABLEKS                       R59 R59 K152 ["count"]
      830 GETTABLEKS                       R60 R0 K153 ["children"]
      832 CALL                             R59 1 1
      833 LOADN                            R60 0
      834 JUMPIFNOTLT                      R60 R59 ; [+94]
      836 GETUPVAL                         R58 0
      837 GETTABLEKS                       R58 R58 K61 ["createElement"]
      839 GETUPVAL                         R59 7
      840 GETTABLEKS                       R59 R59 K62 ["View"]
      842 DUPTABLE                         R60 K154 [{"tag", "LayoutOrder"}]
      843 LOADK                            R61 K155 ["size-full-700 auto-y"]
      844 SETTABLEKS                       R61 R60 K63 ["tag"]
      846 MOVE                             R61 R2
      847 CALL                             R61 0 1
      848 SETTABLEKS                       R61 R60 K65 ["LayoutOrder"]
      850 DUPTABLE                         R61 K158 [{"Contents", "ResizeBars"}]
      851 GETUPVAL                         R62 0
      852 GETTABLEKS                       R62 R62 K61 ["createElement"]
      854 GETUPVAL                         R63 7
      855 GETTABLEKS                       R63 R63 K62 ["View"]
      857 DUPTABLE                         R64 K159 [{"tag", "ZIndex"}]
      858 LOADK                            R65 K160 ["padding-y-xsmall size-full-0 auto-y col radius-small"]
      859 SETTABLEKS                       R65 R64 K63 ["tag"]
      861 LOADN                            R65 1
      862 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      864 DUPTABLE                         R65 K162 [{"NodeProperties"}]
      865 GETUPVAL                         R66 0
      866 GETTABLEKS                       R66 R66 K61 ["createElement"]
      868 GETUPVAL                         R67 0
      869 GETTABLEKS                       R67 R67 K163 ["Fragment"]
      871 NEWTABLE                         R68 0 0
      873 GETTABLEKS                       R69 R0 K153 ["children"]
      875 CALL                             R66 3 1
      876 SETTABLEKS                       R66 R65 K161 ["NodeProperties"]
      878 CALL                             R62 3 1
      879 SETTABLEKS                       R62 R61 K156 ["Contents"]
      881 JUMPIF                           R6 ; [+42]
      882 GETUPVAL                         R62 0
      883 GETTABLEKS                       R62 R62 K61 ["createElement"]
      885 GETUPVAL                         R63 20
      886 DUPTABLE                         R64 K168 [{"tag", "DEPRECATED_nodeWidth", "nodeWidthBinding", "OnResized", "Style", "ZIndex"}]
      887 LOADK                            R65 K111 ["radius-small"]
      888 SETTABLEKS                       R65 R64 K63 ["tag"]
      890 SETTABLEKS                       R16 R64 K164 ["DEPRECATED_nodeWidth"]
      892 SETTABLEKS                       R15 R64 K165 ["nodeWidthBinding"]
      894 GETUPVAL                         R66 13
      895 JUMPIFNOT                        R66 ; [+2]
      896 MOVE                             R65 R14
      897 JUMP                             ; [+1]
      898 MOVE                             R65 R33
      899 SETTABLEKS                       R65 R64 K166 ["OnResized"]
      901 GETTABLEKS                       R66 R0 K57 ["Selected"]
      903 JUMPIFNOT                        R66 ; [+7]
      904 GETTABLEKS                       R65 R9 K15 ["Color"]
      906 GETTABLEKS                       R65 R65 K58 ["System"]
      908 GETTABLEKS                       R65 R65 K59 ["Neutral"]
      910 JUMP                             ; [+6]
      911 GETTABLEKS                       R65 R9 K15 ["Color"]
      913 GETTABLEKS                       R65 R65 K169 ["Stroke"]
      915 GETTABLEKS                       R65 R65 K170 ["Default"]
      917 SETTABLEKS                       R65 R64 K167 ["Style"]
      919 LOADN                            R65 2
      920 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      922 CALL                             R62 2 1
      923 JUMP                             ; [+1]
      924 LOADNIL                          R62
      925 SETTABLEKS                       R62 R61 K157 ["ResizeBars"]
      927 CALL                             R58 3 1
      928 JUMP                             ; [+1]
      929 LOADNIL                          R58
      930 SETTABLEKS                       R58 R57 K94 ["CompositorNodeContent"]
      932 GETUPVAL                         R58 18
      933 JUMPIFNOT                        R58 ; [+10]
      934 GETTABLEKS                       R58 R0 K95 ["ContextToolbar"]
      936 JUMPIFNOT                        R58 ; [+7]
      937 GETUPVAL                         R58 0
      938 GETTABLEKS                       R58 R58 K61 ["createElement"]
      940 GETUPVAL                         R59 21
      941 GETTABLEKS                       R60 R0 K95 ["ContextToolbar"]
      943 CALL                             R58 2 1
      944 SETTABLEKS                       R58 R57 K95 ["ContextToolbar"]
      946 GETUPVAL                         R58 11
      947 CALL                             R58 0 1
      948 JUMPIFNOT                        R58 ; [+70]
      949 GETUPVAL                         R58 0
      950 GETTABLEKS                       R58 R58 K61 ["createElement"]
      952 LOADK                            R59 K98 ["Folder"]
      953 NEWTABLE                         R60 0 0
      955 DUPTABLE                         R61 K172 [{"SelectionHighlight"}]
      956 GETTABLEKS                       R63 R0 K57 ["Selected"]
      958 JUMPIFNOT                        R63 ; [+56]
      959 GETUPVAL                         R62 0
      960 GETTABLEKS                       R62 R62 K61 ["createElement"]
      962 GETUPVAL                         R63 7
      963 GETTABLEKS                       R63 R63 K62 ["View"]
      965 DUPTABLE                         R64 K173 [{"tag", "Size", "BackgroundTransparency", "ZIndex", "testId"}]
      966 NEWTABLE                         R65 4 0
      968 GETUPVAL                         R66 18
      969 SETTABLEKS                       R66 R65 K174 ["position-center-center anchor-center-center"]
      971 NOT                              R66 R6
      972 SETTABLEKS                       R66 R65 K111 ["radius-small"]
      974 SETTABLEKS                       R6 R65 K112 ["radius-large"]
      976 SETTABLEKS                       R65 R64 K63 ["tag"]
      978 GETUPVAL                         R66 18
      979 JUMPIFNOT                        R66 ; [+14]
      980 GETIMPORT                        R65 K175 [UDim2.new]
      982 LOADN                            R66 1
      983 GETTABLEKS                       R67 R9 K176 ["Padding"]
      985 GETTABLEKS                       R67 R67 K177 ["Small"]
      987 LOADN                            R68 1
      988 GETTABLEKS                       R69 R9 K176 ["Padding"]
      990 GETTABLEKS                       R69 R69 K177 ["Small"]
      992 CALL                             R65 4 1
      993 JUMP                             ; [+5]
      994 GETIMPORT                        R65 K105 [UDim2.fromScale]
      996 LOADN                            R66 1
      997 LOADN                            R67 1
      998 CALL                             R65 2 1
      999 SETTABLEKS                       R65 R64 K64 ["Size"]
     1001 LOADN                            R65 1
     1002 SETTABLEKS                       R65 R64 K67 ["BackgroundTransparency"]
     1004 LOADN                            R65 10
     1005 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
     1007 LOADK                            R65 K171 ["SelectionHighlight"]
     1008 SETTABLEKS                       R65 R64 K102 ["testId"]
     1010 DUPTABLE                         R65 K179 [{"UIStroke"}]
     1011 SETTABLEKS                       R45 R65 K178 ["UIStroke"]
     1013 CALL                             R62 3 1
     1014 JUMP                             ; [+1]
     1015 LOADNIL                          R62
     1016 SETTABLEKS                       R62 R61 K171 ["SelectionHighlight"]
     1018 CALL                             R58 3 1
     1019 SETTABLEKS                       R58 R57 K96 ["SelectionHighlightContainer"]
     1021 CALL                             R54 3 1
     1022 SETTABLEKS                       R54 R53 K84 ["Node"]
     1024 GETUPVAL                         R55 17
     1025 JUMPIFNOT                        R55 ; [+21]
     1026 GETUPVAL                         R54 0
     1027 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1029 GETUPVAL                         R55 7
     1030 GETTABLEKS                       R55 R55 K62 ["View"]
     1032 DUPTABLE                         R56 K180 [{"tag", "testId", "LayoutOrder", "ref"}]
     1033 LOADK                            R57 K181 ["size-full"]
     1034 SETTABLEKS                       R57 R56 K63 ["tag"]
     1036 LOADK                            R57 K182 ["CompositorNode-DebugMarker"]
     1037 SETTABLEKS                       R57 R56 K102 ["testId"]
     1039 MOVE                             R57 R2
     1040 CALL                             R57 0 1
     1041 SETTABLEKS                       R57 R56 K65 ["LayoutOrder"]
     1043 SETTABLEKS                       R41 R56 K88 ["ref"]
     1045 CALL                             R54 2 1
     1046 JUMP                             ; [+1]
     1047 LOADNIL                          R54
     1048 SETTABLEKS                       R54 R53 K85 ["DebugMarker"]
     1050 GETUPVAL                         R54 0
     1051 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1053 LOADK                            R55 K183 ["UIDragDetector"]
     1054 NEWTABLE                         R56 8 0
     1056 GETIMPORT                        R57 K187 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1058 SETTABLEKS                       R57 R56 K188 ["DragStyle"]
     1060 GETIMPORT                        R57 K191 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1062 SETTABLEKS                       R57 R56 K192 ["ResponseStyle"]
     1064 GETTABLEKS                       R57 R3 K193 ["getViewport"]
     1066 CALL                             R57 0 1
     1067 SETTABLEKS                       R57 R56 K194 ["ReferenceUIInstance"]
     1069 GETUPVAL                         R57 0
     1070 GETTABLEKS                       R57 R57 K195 ["Event"]
     1072 GETTABLEKS                       R57 R57 K196 ["DragStart"]
     1074 SETTABLE                         R30 R56 R57
     1075 GETUPVAL                         R57 0
     1076 GETTABLEKS                       R57 R57 K195 ["Event"]
     1078 GETTABLEKS                       R57 R57 K197 ["DragContinue"]
     1080 SETTABLE                         R31 R56 R57
     1081 GETUPVAL                         R57 0
     1082 GETTABLEKS                       R57 R57 K195 ["Event"]
     1084 GETTABLEKS                       R57 R57 K198 ["DragEnd"]
     1086 SETTABLE                         R32 R56 R57
     1087 CALL                             R54 2 1
     1088 SETTABLEKS                       R54 R53 K86 ["DragDetector"]
     1090 CALL                             R50 3 1
     1091 SETTABLEKS                       R50 R49 K77 ["ComponentContext"]
     1093 CALL                             R46 3 -1
     1094 RETURN                           R46 -1

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
       37 GETTABLEKS                       R6 R6 K11 ["FFlagAnimGraphUI_ContextToolbar"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Flags"]
       44 GETTABLEKS                       R7 R7 K12 ["FFlagAnimGraphUI_NarrowerRenaming"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Flags"]
       51 GETTABLEKS                       R8 R8 K13 ["FFlagAnimGraphUI_NoodleColorLerping"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K10 ["Flags"]
       58 GETTABLEKS                       R9 R9 K14 ["FFlagAnimGraphUI_PerfFixes_7123"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K15 ["Parent"]
       65 GETTABLEKS                       R10 R10 K16 ["Foundation"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Components"]
       72 GETTABLEKS                       R11 R11 K18 ["GraphContext"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K15 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["Graphing"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K15 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["React"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K15 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["ReactUtils"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETIMPORT                        R15 K1 [script]
      100 GETTABLEKS                       R15 R15 K22 ["ResizeBars"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K15 ["Parent"]
      107 GETTABLEKS                       R16 R16 K23 ["Signals"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K15 ["Parent"]
      114 GETTABLEKS                       R17 R17 K24 ["SignalsReact"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K15 ["Parent"]
      121 GETTABLEKS                       R18 R18 K25 ["SignalsUtils"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K15 ["Parent"]
      128 GETTABLEKS                       R19 R19 K26 ["TestLoader"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K17 ["Components"]
      135 GETTABLEKS                       R20 R20 K27 ["ViewportRectContext"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K28 ["Util"]
      142 GETTABLEKS                       R21 R21 K29 ["sanitizeParameterNames"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K30 ["Hooks"]
      149 GETTABLEKS                       R22 R22 K31 ["useAbsoluteSize"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K30 ["Hooks"]
      156 GETTABLEKS                       R23 R23 K32 ["useFoundationStudioTheme"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K5 [require]
      161 GETTABLEKS                       R24 R0 K10 ["Flags"]
      163 GETTABLEKS                       R24 R24 K33 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      165 CALL                             R23 1 1
      166 GETTABLEKS                       R24 R18 K34 ["isCli"]
      168 CALL                             R24 0 1
      169 JUMPIF                           R24 ; [+3]
      170 GETTABLEKS                       R24 R18 K35 ["isFTF"]
      172 CALL                             R24 0 1
      173 DUPCLOSURE                       R25 K36 [PROTO_25]
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R10
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R4
      196 RETURN                           R25 1
