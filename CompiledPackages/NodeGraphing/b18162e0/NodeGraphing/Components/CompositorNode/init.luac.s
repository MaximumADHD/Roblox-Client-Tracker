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
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["observeFadeByNodeId"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K1 ["Experimental"]
       15 GETTABLEKS                       R0 R0 K2 ["createComputed"]
       17 DUPCLOSURE                       R1 K3 [PROTO_11]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_24:
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
      318 NEWTABLE                         R36 0 2
      320 GETTABLEKS                       R37 R4 K48 ["observeFadeByNodeId"]
      322 MOVE                             R38 R5
      323 SETLIST                          R36 R37 2 [1]
      325 CALL                             R34 2 1
      326 GETUPVAL                         R35 0
      327 GETTABLEKS                       R35 R35 K26 ["useMemo"]
      329 NEWCLOSURE                       R36 P10
      330 CAPTURE                          VAL R0
      331 NEWTABLE                         R37 0 1
      333 GETTABLEKS                       R38 R0 K49 ["Collapsed"]
      335 SETLIST                          R37 R38 1 [1]
      337 CALL                             R35 2 1
      338 GETUPVAL                         R36 0
      339 GETTABLEKS                       R36 R36 K39 ["useCallback"]
      341 NEWCLOSURE                       R37 P11
      342 CAPTURE                          VAL R5
      343 CAPTURE                          VAL R4
      344 CAPTURE                          VAL R0
      345 NEWTABLE                         R38 0 3
      347 GETTABLEKS                       R39 R4 K50 ["setCollapsed"]
      349 MOVE                             R40 R5
      350 GETTABLEKS                       R41 R0 K49 ["Collapsed"]
      352 SETLIST                          R38 R39 3 [1]
      354 CALL                             R36 2 1
      355 GETTABLEKS                       R37 R0 K51 ["text"]
      357 JUMPIF                           R37 ; [+6]
      358 GETTABLEKS                       R37 R0 K4 ["GraphPayload"]
      360 GETTABLEKS                       R37 R37 K52 ["name"]
      362 JUMPIF                           R37 ; [+1]
      363 LOADK                            R37 K53 [""]
      364 GETUPVAL                         R38 0
      365 GETTABLEKS                       R38 R38 K39 ["useCallback"]
      367 NEWCLOSURE                       R39 P12
      368 CAPTURE                          UPVAL U15
      369 CAPTURE                          VAL R22
      370 CAPTURE                          VAL R24
      371 CAPTURE                          VAL R5
      372 CAPTURE                          VAL R0
      373 CAPTURE                          VAL R4
      374 NEWTABLE                         R40 0 6
      376 MOVE                             R41 R5
      377 GETTABLEKS                       R42 R24 K43 ["disable"]
      379 GETTABLEKS                       R43 R0 K6 ["IsParameterNode"]
      381 GETTABLEKS                       R44 R0 K4 ["GraphPayload"]
      383 GETTABLEKS                       R44 R44 K52 ["name"]
      385 GETTABLEKS                       R45 R4 K54 ["renameParameter"]
      387 GETTABLEKS                       R46 R4 K55 ["renameNode"]
      389 SETLIST                          R40 R41 6 [1]
      391 CALL                             R38 2 1
      392 MOVE                             R39 R2
      393 CALL                             R39 0 1
      394 GETUPVAL                         R40 0
      395 GETTABLEKS                       R40 R40 K26 ["useMemo"]
      397 DUPCLOSURE                       R41 K56 [PROTO_16]
      398 CAPTURE                          UPVAL U8
      399 NEWTABLE                         R42 0 0
      401 CALL                             R40 2 2
      402 GETUPVAL                         R42 16
      403 JUMPIFNOT                        R42 ; [+14]
      404 GETUPVAL                         R42 0
      405 GETTABLEKS                       R42 R42 K45 ["useEffect"]
      407 NEWCLOSURE                       R43 P14
      408 CAPTURE                          UPVAL U8
      409 CAPTURE                          VAL R40
      410 CAPTURE                          VAL R37
      411 NEWTABLE                         R44 0 2
      413 MOVE                             R45 R40
      414 MOVE                             R46 R37
      415 SETLIST                          R44 R45 2 [1]
      417 CALL                             R42 2 0
      418 GETUPVAL                         R42 9
      419 GETTABLEKS                       R42 R42 K28 ["useSignalBinding"]
      421 MOVE                             R43 R34
      422 CALL                             R42 1 1
      423 GETUPVAL                         R43 0
      424 GETTABLEKS                       R43 R43 K26 ["useMemo"]
      426 NEWCLOSURE                       R44 P15
      427 CAPTURE                          VAL R6
      428 CAPTURE                          UPVAL U11
      429 CAPTURE                          VAL R0
      430 NEWTABLE                         R45 0 3
      432 GETTABLEKS                       R46 R0 K49 ["Collapsed"]
      434 MOVE                             R47 R6
      435 GETTABLEKS                       R48 R0 K57 ["Selected"]
      437 SETLIST                          R45 R46 3 [1]
      439 CALL                             R43 2 1
      440 GETUPVAL                         R44 0
      441 GETTABLEKS                       R44 R44 K26 ["useMemo"]
      443 NEWCLOSURE                       R45 P16
      444 CAPTURE                          VAL R43
      445 NEWTABLE                         R46 0 1
      447 MOVE                             R47 R43
      448 SETLIST                          R46 R47 1 [1]
      450 CALL                             R44 2 1
      451 GETUPVAL                         R45 0
      452 GETTABLEKS                       R45 R45 K26 ["useMemo"]
      454 NEWCLOSURE                       R46 P17
      455 CAPTURE                          UPVAL U0
      456 CAPTURE                          VAL R21
      457 CAPTURE                          UPVAL U17
      458 CAPTURE                          VAL R9
      459 NEWTABLE                         R47 0 2
      461 MOVE                             R48 R21
      462 GETTABLEKS                       R49 R9 K15 ["Color"]
      464 GETTABLEKS                       R49 R49 K58 ["System"]
      466 GETTABLEKS                       R49 R49 K59 ["Neutral"]
      468 GETTABLEKS                       R49 R49 K60 ["Color3"]
      470 SETLIST                          R47 R48 2 [1]
      472 CALL                             R45 2 1
      473 GETUPVAL                         R46 0
      474 GETTABLEKS                       R46 R46 K61 ["createElement"]
      476 GETUPVAL                         R47 7
      477 GETTABLEKS                       R47 R47 K62 ["View"]
      479 DUPTABLE                         R48 K69 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      480 LOADK                            R49 K70 ["auto-y"]
      481 SETTABLEKS                       R49 R48 K63 ["tag"]
      483 GETUPVAL                         R50 13
      484 JUMPIFNOT                        R50 ; [+5]
      485 DUPCLOSURE                       R51 K71 [PROTO_22]
      486 NAMECALL                         R49 R15 K72 ["map"]
      488 CALL                             R49 2 1
      489 JUMP                             ; [+5]
      490 GETIMPORT                        R49 K75 [UDim2.fromOffset]
      492 MOVE                             R50 R16
      493 LOADN                            R51 0
      494 CALL                             R49 2 1
      495 SETTABLEKS                       R49 R48 K64 ["Size"]
      497 GETTABLEKS                       R49 R0 K65 ["LayoutOrder"]
      499 SETTABLEKS                       R49 R48 K65 ["LayoutOrder"]
      501 GETTABLEKS                       R49 R0 K66 ["ZIndex"]
      503 SETTABLEKS                       R49 R48 K66 ["ZIndex"]
      505 SETTABLEKS                       R19 R48 K32 ["Position"]
      507 LOADN                            R49 1
      508 SETTABLEKS                       R49 R48 K67 ["BackgroundTransparency"]
      510 LOADN                            R49 0
      511 SETTABLEKS                       R49 R48 K68 ["BorderSizePixel"]
      513 DUPTABLE                         R49 K78 [{"UIScale", "ComponentContext"}]
      514 GETUPVAL                         R50 0
      515 GETTABLEKS                       R50 R50 K61 ["createElement"]
      517 LOADK                            R51 K76 ["UIScale"]
      518 DUPTABLE                         R52 K80 [{"Scale"}]
      519 SETTABLEKS                       R20 R52 K79 ["Scale"]
      521 CALL                             R50 2 1
      522 SETTABLEKS                       R50 R49 K76 ["UIScale"]
      524 GETUPVAL                         R50 0
      525 GETTABLEKS                       R50 R50 K61 ["createElement"]
      527 GETUPVAL                         R51 18
      528 GETTABLEKS                       R51 R51 K81 ["Provider"]
      530 DUPTABLE                         R52 K83 [{"absoluteSizeHook"}]
      531 SETTABLEKS                       R18 R52 K82 ["absoluteSizeHook"]
      533 DUPTABLE                         R53 K87 [{"Node", "DebugMarker", "DragDetector"}]
      534 GETUPVAL                         R54 0
      535 GETTABLEKS                       R54 R54 K61 ["createElement"]
      537 GETUPVAL                         R55 7
      538 GETTABLEKS                       R55 R55 K62 ["View"]
      540 DUPTABLE                         R56 K89 [{"tag", "Size", "ref", "ZIndex"}]
      541 SETTABLEKS                       R44 R56 K63 ["tag"]
      543 GETUPVAL                         R58 13
      544 JUMPIFNOT                        R58 ; [+5]
      545 DUPCLOSURE                       R59 K90 [PROTO_23]
      546 NAMECALL                         R57 R15 K72 ["map"]
      548 CALL                             R57 2 1
      549 JUMP                             ; [+5]
      550 GETIMPORT                        R57 K75 [UDim2.fromOffset]
      552 MOVE                             R58 R16
      553 LOADN                            R59 0
      554 CALL                             R57 2 1
      555 SETTABLEKS                       R57 R56 K64 ["Size"]
      557 GETTABLEKS                       R57 R18 K91 ["setFrame"]
      559 SETTABLEKS                       R57 R56 K88 ["ref"]
      561 LOADN                            R57 1
      562 SETTABLEKS                       R57 R56 K66 ["ZIndex"]
      564 DUPTABLE                         R57 K97 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent", "ContextToolbar", "SelectionHighlightContainer"}]
      565 GETUPVAL                         R58 0
      566 GETTABLEKS                       R58 R58 K61 ["createElement"]
      568 LOADK                            R59 K98 ["Folder"]
      569 NEWTABLE                         R60 0 0
      571 DUPTABLE                         R61 K100 [{"Cover"}]
      572 GETUPVAL                         R62 0
      573 GETTABLEKS                       R62 R62 K61 ["createElement"]
      575 GETUPVAL                         R63 7
      576 GETTABLEKS                       R63 R63 K62 ["View"]
      578 DUPTABLE                         R64 K103 [{"tag", "Size", "GroupTransparency", "ZIndex", "testId"}]
      579 SETTABLEKS                       R43 R64 K63 ["tag"]
      581 GETIMPORT                        R65 K105 [UDim2.fromScale]
      583 LOADN                            R66 1
      584 LOADN                            R67 1
      585 CALL                             R65 2 1
      586 SETTABLEKS                       R65 R64 K64 ["Size"]
      588 SETTABLEKS                       R42 R64 K101 ["GroupTransparency"]
      590 LOADN                            R65 2
      591 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      593 LOADK                            R65 K106 ["CompositorNodeCover"]
      594 SETTABLEKS                       R65 R64 K102 ["testId"]
      596 CALL                             R62 2 1
      597 SETTABLEKS                       R62 R61 K99 ["Cover"]
      599 CALL                             R58 3 1
      600 SETTABLEKS                       R58 R57 K92 ["CoverContainer"]
      602 GETUPVAL                         R58 0
      603 GETTABLEKS                       R58 R58 K61 ["createElement"]
      605 GETUPVAL                         R59 7
      606 GETTABLEKS                       R59 R59 K62 ["View"]
      608 DUPTABLE                         R60 K108 [{"tag", "backgroundStyle", "LayoutOrder", "ref"}]
      609 NEWTABLE                         R61 4 0
      611 LOADB                            R62 1
      612 SETTABLEKS                       R62 R61 K109 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      614 NOT                              R62 R6
      615 JUMPIFNOT                        R62 ; [+1]
      616 NOT                              R62 R7
      617 SETTABLEKS                       R62 R61 K110 ["radius-small bg-shift-200"]
      619 MOVE                             R62 R6
      620 JUMPIFNOT                        R62 ; [+3]
      621 GETTABLEKS                       R63 R0 K49 ["Collapsed"]
      623 NOT                              R62 R63
      624 SETTABLEKS                       R62 R61 K111 ["radius-small"]
      626 MOVE                             R62 R6
      627 JUMPIFNOT                        R62 ; [+2]
      628 GETTABLEKS                       R62 R0 K49 ["Collapsed"]
      630 SETTABLEKS                       R62 R61 K112 ["radius-large"]
      632 SETTABLEKS                       R61 R60 K63 ["tag"]
      634 JUMPIFNOT                        R6 ; [+2]
      635 MOVE                             R61 R11
      636 JUMP                             ; [+4]
      637 JUMPIFNOT                        R7 ; [+2]
      638 MOVE                             R61 R12
      639 JUMP                             ; [+1]
      640 LOADNIL                          R61
      641 SETTABLEKS                       R61 R60 K107 ["backgroundStyle"]
      643 SETTABLEKS                       R39 R60 K65 ["LayoutOrder"]
      645 GETUPVAL                         R62 12
      646 JUMPIFNOT                        R62 ; [+2]
      647 MOVE                             R61 R29
      648 JUMP                             ; [+1]
      649 LOADNIL                          R61
      650 SETTABLEKS                       R61 R60 K88 ["ref"]
      652 DUPTABLE                         R61 K117 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      653 GETTABLEKS                       R63 R0 K118 ["Collapsible"]
      655 JUMPIFEQKB                       R63 FALSE ; [+45]
      657 GETUPVAL                         R62 0
      658 GETTABLEKS                       R62 R62 K61 ["createElement"]
      660 GETUPVAL                         R63 7
      661 GETTABLEKS                       R63 R63 K119 ["Button"]
      663 DUPTABLE                         R64 K125 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      664 SETTABLEKS                       R35 R64 K120 ["icon"]
      666 GETUPVAL                         R65 7
      667 GETTABLEKS                       R65 R65 K12 ["Enums"]
      669 GETTABLEKS                       R65 R65 K126 ["ButtonVariant"]
      671 GETTABLEKS                       R65 R65 K127 ["Text"]
      673 SETTABLEKS                       R65 R64 K121 ["variant"]
      675 SETTABLEKS                       R36 R64 K122 ["onActivated"]
      677 GETUPVAL                         R65 7
      678 GETTABLEKS                       R65 R65 K12 ["Enums"]
      680 GETTABLEKS                       R65 R65 K128 ["InputSize"]
      682 GETTABLEKS                       R65 R65 K129 ["XSmall"]
      684 SETTABLEKS                       R65 R64 K123 ["size"]
      686 MOVE                             R65 R2
      687 CALL                             R65 0 1
      688 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      690 GETUPVAL                         R65 7
      691 GETTABLEKS                       R65 R65 K12 ["Enums"]
      693 GETTABLEKS                       R65 R65 K130 ["FillBehavior"]
      695 GETTABLEKS                       R65 R65 K131 ["Fit"]
      697 SETTABLEKS                       R65 R64 K124 ["fillBehavior"]
      699 CALL                             R62 2 1
      700 JUMP                             ; [+1]
      701 LOADNIL                          R62
      702 SETTABLEKS                       R62 R61 K113 ["ToggleButton"]
      704 GETUPVAL                         R62 0
      705 GETTABLEKS                       R62 R62 K61 ["createElement"]
      707 GETUPVAL                         R63 7
      708 GETTABLEKS                       R63 R63 K127 ["Text"]
      710 DUPTABLE                         R64 K134 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      711 NEWTABLE                         R65 2 0
      713 LOADB                            R66 1
      714 SETTABLEKS                       R66 R65 K135 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      716 GETTABLEKS                       R67 R0 K118 ["Collapsible"]
      718 JUMPIFEQKB                       R67 FALSE ; [+2]
      720 LOADB                            R66 0 +1
      721 LOADB                            R66 1
      722 SETTABLEKS                       R66 R65 K136 ["padding-left-small"]
      724 SETTABLEKS                       R65 R64 K63 ["tag"]
      726 SETTABLEKS                       R37 R64 K127 ["Text"]
      728 LOADB                            R65 1
      729 SETTABLEKS                       R65 R64 K132 ["RichText"]
      731 MOVE                             R65 R2
      732 CALL                             R65 0 1
      733 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      735 GETTABLEKS                       R66 R24 K40 ["enabled"]
      737 NOT                              R65 R66
      738 SETTABLEKS                       R65 R64 K133 ["Visible"]
      740 LOADK                            R65 K137 ["CompositorNode-Title"]
      741 SETTABLEKS                       R65 R64 K102 ["testId"]
      743 CALL                             R62 2 1
      744 SETTABLEKS                       R62 R61 K114 ["Title"]
      746 GETUPVAL                         R62 0
      747 GETTABLEKS                       R62 R62 K61 ["createElement"]
      749 GETUPVAL                         R63 7
      750 GETTABLEKS                       R63 R63 K138 ["TextInput"]
      752 DUPTABLE                         R64 K144 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      753 NEWTABLE                         R65 1 0
      755 LOADB                            R66 1
      756 SETTABLEKS                       R66 R65 K135 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      758 SETTABLEKS                       R65 R64 K63 ["tag"]
      760 SETTABLEKS                       R22 R64 K51 ["text"]
      762 MOVE                             R65 R2
      763 CALL                             R65 0 1
      764 SETTABLEKS                       R65 R64 K65 ["LayoutOrder"]
      766 SETTABLEKS                       R23 R64 K139 ["onChanged"]
      768 LOADK                            R65 K53 [""]
      769 SETTABLEKS                       R65 R64 K140 ["label"]
      771 GETUPVAL                         R65 7
      772 GETTABLEKS                       R65 R65 K12 ["Enums"]
      774 GETTABLEKS                       R65 R65 K128 ["InputSize"]
      776 GETTABLEKS                       R65 R65 K129 ["XSmall"]
      778 SETTABLEKS                       R65 R64 K123 ["size"]
      780 SETTABLEKS                       R25 R64 K141 ["textBoxRef"]
      782 SETTABLEKS                       R38 R64 K142 ["onFocusLost"]
      784 SETTABLEKS                       R25 R64 K88 ["ref"]
      786 GETIMPORT                        R65 K147 [UDim.new]
      788 LOADN                            R66 0
      789 LOADN                            R67 100
      790 CALL                             R65 2 1
      791 SETTABLEKS                       R65 R64 K143 ["width"]
      793 GETTABLEKS                       R65 R24 K40 ["enabled"]
      795 SETTABLEKS                       R65 R64 K133 ["Visible"]
      797 CALL                             R62 2 1
      798 SETTABLEKS                       R62 R61 K115 ["TitleInput"]
      800 GETUPVAL                         R62 0
      801 GETTABLEKS                       R62 R62 K61 ["createElement"]
      803 LOADK                            R63 K98 ["Folder"]
      804 NEWTABLE                         R64 0 0
      806 GETTABLEKS                       R65 R0 K148 ["HeaderChildren"]
      808 CALL                             R62 3 1
      809 SETTABLEKS                       R62 R61 K116 ["Children"]
      811 CALL                             R58 3 1
      812 SETTABLEKS                       R58 R57 K93 ["CompositorNodeHeader"]
      814 GETUPVAL                         R59 0
      815 GETTABLEKS                       R59 R59 K116 ["Children"]
      817 GETTABLEKS                       R59 R59 K149 ["count"]
      819 GETTABLEKS                       R60 R0 K150 ["children"]
      821 CALL                             R59 1 1
      822 LOADN                            R60 0
      823 JUMPIFNOTLT                      R60 R59 ; [+94]
      825 GETUPVAL                         R58 0
      826 GETTABLEKS                       R58 R58 K61 ["createElement"]
      828 GETUPVAL                         R59 7
      829 GETTABLEKS                       R59 R59 K62 ["View"]
      831 DUPTABLE                         R60 K151 [{"tag", "LayoutOrder"}]
      832 LOADK                            R61 K152 ["size-full-700 auto-y"]
      833 SETTABLEKS                       R61 R60 K63 ["tag"]
      835 MOVE                             R61 R2
      836 CALL                             R61 0 1
      837 SETTABLEKS                       R61 R60 K65 ["LayoutOrder"]
      839 DUPTABLE                         R61 K155 [{"Contents", "ResizeBars"}]
      840 GETUPVAL                         R62 0
      841 GETTABLEKS                       R62 R62 K61 ["createElement"]
      843 GETUPVAL                         R63 7
      844 GETTABLEKS                       R63 R63 K62 ["View"]
      846 DUPTABLE                         R64 K156 [{"tag", "ZIndex"}]
      847 LOADK                            R65 K157 ["padding-y-xsmall size-full-0 auto-y col radius-small"]
      848 SETTABLEKS                       R65 R64 K63 ["tag"]
      850 LOADN                            R65 1
      851 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      853 DUPTABLE                         R65 K159 [{"NodeProperties"}]
      854 GETUPVAL                         R66 0
      855 GETTABLEKS                       R66 R66 K61 ["createElement"]
      857 GETUPVAL                         R67 0
      858 GETTABLEKS                       R67 R67 K160 ["Fragment"]
      860 NEWTABLE                         R68 0 0
      862 GETTABLEKS                       R69 R0 K150 ["children"]
      864 CALL                             R66 3 1
      865 SETTABLEKS                       R66 R65 K158 ["NodeProperties"]
      867 CALL                             R62 3 1
      868 SETTABLEKS                       R62 R61 K153 ["Contents"]
      870 JUMPIF                           R6 ; [+42]
      871 GETUPVAL                         R62 0
      872 GETTABLEKS                       R62 R62 K61 ["createElement"]
      874 GETUPVAL                         R63 19
      875 DUPTABLE                         R64 K165 [{"tag", "DEPRECATED_nodeWidth", "nodeWidthBinding", "OnResized", "Style", "ZIndex"}]
      876 LOADK                            R65 K111 ["radius-small"]
      877 SETTABLEKS                       R65 R64 K63 ["tag"]
      879 SETTABLEKS                       R16 R64 K161 ["DEPRECATED_nodeWidth"]
      881 SETTABLEKS                       R15 R64 K162 ["nodeWidthBinding"]
      883 GETUPVAL                         R66 13
      884 JUMPIFNOT                        R66 ; [+2]
      885 MOVE                             R65 R14
      886 JUMP                             ; [+1]
      887 MOVE                             R65 R33
      888 SETTABLEKS                       R65 R64 K163 ["OnResized"]
      890 GETTABLEKS                       R66 R0 K57 ["Selected"]
      892 JUMPIFNOT                        R66 ; [+7]
      893 GETTABLEKS                       R65 R9 K15 ["Color"]
      895 GETTABLEKS                       R65 R65 K58 ["System"]
      897 GETTABLEKS                       R65 R65 K59 ["Neutral"]
      899 JUMP                             ; [+6]
      900 GETTABLEKS                       R65 R9 K15 ["Color"]
      902 GETTABLEKS                       R65 R65 K166 ["Stroke"]
      904 GETTABLEKS                       R65 R65 K167 ["Default"]
      906 SETTABLEKS                       R65 R64 K164 ["Style"]
      908 LOADN                            R65 2
      909 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      911 CALL                             R62 2 1
      912 JUMP                             ; [+1]
      913 LOADNIL                          R62
      914 SETTABLEKS                       R62 R61 K154 ["ResizeBars"]
      916 CALL                             R58 3 1
      917 JUMP                             ; [+1]
      918 LOADNIL                          R58
      919 SETTABLEKS                       R58 R57 K94 ["CompositorNodeContent"]
      921 GETUPVAL                         R58 17
      922 JUMPIFNOT                        R58 ; [+10]
      923 GETTABLEKS                       R58 R0 K95 ["ContextToolbar"]
      925 JUMPIFNOT                        R58 ; [+7]
      926 GETUPVAL                         R58 0
      927 GETTABLEKS                       R58 R58 K61 ["createElement"]
      929 GETUPVAL                         R59 20
      930 GETTABLEKS                       R60 R0 K95 ["ContextToolbar"]
      932 CALL                             R58 2 1
      933 SETTABLEKS                       R58 R57 K95 ["ContextToolbar"]
      935 GETUPVAL                         R58 11
      936 CALL                             R58 0 1
      937 JUMPIFNOT                        R58 ; [+70]
      938 GETUPVAL                         R58 0
      939 GETTABLEKS                       R58 R58 K61 ["createElement"]
      941 LOADK                            R59 K98 ["Folder"]
      942 NEWTABLE                         R60 0 0
      944 DUPTABLE                         R61 K169 [{"SelectionHighlight"}]
      945 GETTABLEKS                       R63 R0 K57 ["Selected"]
      947 JUMPIFNOT                        R63 ; [+56]
      948 GETUPVAL                         R62 0
      949 GETTABLEKS                       R62 R62 K61 ["createElement"]
      951 GETUPVAL                         R63 7
      952 GETTABLEKS                       R63 R63 K62 ["View"]
      954 DUPTABLE                         R64 K170 [{"tag", "Size", "BackgroundTransparency", "ZIndex", "testId"}]
      955 NEWTABLE                         R65 4 0
      957 GETUPVAL                         R66 17
      958 SETTABLEKS                       R66 R65 K171 ["position-center-center anchor-center-center"]
      960 NOT                              R66 R6
      961 SETTABLEKS                       R66 R65 K111 ["radius-small"]
      963 SETTABLEKS                       R6 R65 K112 ["radius-large"]
      965 SETTABLEKS                       R65 R64 K63 ["tag"]
      967 GETUPVAL                         R66 17
      968 JUMPIFNOT                        R66 ; [+14]
      969 GETIMPORT                        R65 K172 [UDim2.new]
      971 LOADN                            R66 1
      972 GETTABLEKS                       R67 R9 K173 ["Padding"]
      974 GETTABLEKS                       R67 R67 K174 ["Small"]
      976 LOADN                            R68 1
      977 GETTABLEKS                       R69 R9 K173 ["Padding"]
      979 GETTABLEKS                       R69 R69 K174 ["Small"]
      981 CALL                             R65 4 1
      982 JUMP                             ; [+5]
      983 GETIMPORT                        R65 K105 [UDim2.fromScale]
      985 LOADN                            R66 1
      986 LOADN                            R67 1
      987 CALL                             R65 2 1
      988 SETTABLEKS                       R65 R64 K64 ["Size"]
      990 LOADN                            R65 1
      991 SETTABLEKS                       R65 R64 K67 ["BackgroundTransparency"]
      993 LOADN                            R65 10
      994 SETTABLEKS                       R65 R64 K66 ["ZIndex"]
      996 LOADK                            R65 K168 ["SelectionHighlight"]
      997 SETTABLEKS                       R65 R64 K102 ["testId"]
      999 DUPTABLE                         R65 K176 [{"UIStroke"}]
     1000 SETTABLEKS                       R45 R65 K175 ["UIStroke"]
     1002 CALL                             R62 3 1
     1003 JUMP                             ; [+1]
     1004 LOADNIL                          R62
     1005 SETTABLEKS                       R62 R61 K168 ["SelectionHighlight"]
     1007 CALL                             R58 3 1
     1008 SETTABLEKS                       R58 R57 K96 ["SelectionHighlightContainer"]
     1010 CALL                             R54 3 1
     1011 SETTABLEKS                       R54 R53 K84 ["Node"]
     1013 GETUPVAL                         R55 16
     1014 JUMPIFNOT                        R55 ; [+21]
     1015 GETUPVAL                         R54 0
     1016 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1018 GETUPVAL                         R55 7
     1019 GETTABLEKS                       R55 R55 K62 ["View"]
     1021 DUPTABLE                         R56 K177 [{"tag", "testId", "LayoutOrder", "ref"}]
     1022 LOADK                            R57 K178 ["size-full"]
     1023 SETTABLEKS                       R57 R56 K63 ["tag"]
     1025 LOADK                            R57 K179 ["CompositorNode-DebugMarker"]
     1026 SETTABLEKS                       R57 R56 K102 ["testId"]
     1028 MOVE                             R57 R2
     1029 CALL                             R57 0 1
     1030 SETTABLEKS                       R57 R56 K65 ["LayoutOrder"]
     1032 SETTABLEKS                       R41 R56 K88 ["ref"]
     1034 CALL                             R54 2 1
     1035 JUMP                             ; [+1]
     1036 LOADNIL                          R54
     1037 SETTABLEKS                       R54 R53 K85 ["DebugMarker"]
     1039 GETUPVAL                         R54 0
     1040 GETTABLEKS                       R54 R54 K61 ["createElement"]
     1042 LOADK                            R55 K180 ["UIDragDetector"]
     1043 NEWTABLE                         R56 8 0
     1045 GETIMPORT                        R57 K184 [Enum.UIDragDetectorDragStyle.TranslatePlane]
     1047 SETTABLEKS                       R57 R56 K185 ["DragStyle"]
     1049 GETIMPORT                        R57 K188 [Enum.UIDragDetectorResponseStyle.CustomOffset]
     1051 SETTABLEKS                       R57 R56 K189 ["ResponseStyle"]
     1053 GETTABLEKS                       R57 R3 K190 ["getViewport"]
     1055 CALL                             R57 0 1
     1056 SETTABLEKS                       R57 R56 K191 ["ReferenceUIInstance"]
     1058 GETUPVAL                         R57 0
     1059 GETTABLEKS                       R57 R57 K192 ["Event"]
     1061 GETTABLEKS                       R57 R57 K193 ["DragStart"]
     1063 SETTABLE                         R30 R56 R57
     1064 GETUPVAL                         R57 0
     1065 GETTABLEKS                       R57 R57 K192 ["Event"]
     1067 GETTABLEKS                       R57 R57 K194 ["DragContinue"]
     1069 SETTABLE                         R31 R56 R57
     1070 GETUPVAL                         R57 0
     1071 GETTABLEKS                       R57 R57 K192 ["Event"]
     1073 GETTABLEKS                       R57 R57 K195 ["DragEnd"]
     1075 SETTABLE                         R32 R56 R57
     1076 CALL                             R54 2 1
     1077 SETTABLEKS                       R54 R53 K86 ["DragDetector"]
     1079 CALL                             R50 3 1
     1080 SETTABLEKS                       R50 R49 K77 ["ComponentContext"]
     1082 CALL                             R46 3 -1
     1083 RETURN                           R46 -1

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
       51 GETTABLEKS                       R8 R8 K13 ["FFlagAnimGraphUI_PerfFixes_7123"]
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
       77 GETTABLEKS                       R12 R0 K14 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["React"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K14 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["ReactUtils"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETIMPORT                        R14 K1 [script]
       93 GETTABLEKS                       R14 R14 K21 ["ResizeBars"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K14 ["Parent"]
      100 GETTABLEKS                       R15 R15 K22 ["Signals"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K14 ["Parent"]
      107 GETTABLEKS                       R16 R16 K23 ["SignalsReact"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K14 ["Parent"]
      114 GETTABLEKS                       R17 R17 K24 ["SignalsUtils"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K14 ["Parent"]
      121 GETTABLEKS                       R18 R18 K25 ["TestLoader"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K16 ["Components"]
      128 GETTABLEKS                       R19 R19 K26 ["ViewportRectContext"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K27 ["Util"]
      135 GETTABLEKS                       R20 R20 K28 ["sanitizeParameterNames"]
      137 CALL                             R19 1 1
      138 GETIMPORT                        R20 K5 [require]
      140 GETTABLEKS                       R21 R0 K29 ["Hooks"]
      142 GETTABLEKS                       R21 R21 K30 ["useAbsoluteSize"]
      144 CALL                             R20 1 1
      145 GETIMPORT                        R21 K5 [require]
      147 GETTABLEKS                       R22 R0 K29 ["Hooks"]
      149 GETTABLEKS                       R22 R22 K31 ["useFoundationStudioTheme"]
      151 CALL                             R21 1 1
      152 GETIMPORT                        R22 K5 [require]
      154 GETTABLEKS                       R23 R0 K10 ["Flags"]
      156 GETTABLEKS                       R23 R23 K32 ["getFFlagAnimGraphUIShowSelectionOutlineAcrossZoom"]
      158 CALL                             R22 1 1
      159 GETTABLEKS                       R23 R17 K33 ["isCli"]
      161 CALL                             R23 0 1
      162 JUMPIF                           R23 ; [+3]
      163 GETTABLEKS                       R23 R17 K34 ["isFTF"]
      165 CALL                             R23 0 1
      166 DUPCLOSURE                       R24 K35 [PROTO_24]
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R19
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R4
      188 RETURN                           R24 1
