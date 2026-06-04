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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["enabled"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETUPVAL                         R3 2
       13 GETIMPORT                        R4 K4 [os.clock]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K0 ["current"]
       18 GETIMPORT                        R4 K4 [os.clock]
       20 CALL                             R4 0 1
       21 SUB                              R3 R4 R2
       22 LOADK                            R4 K5 [0.5]
       23 JUMPIFNOTLE                      R3 R4 ; [+8]
       25 GETUPVAL                         R3 0
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K0 ["current"]
       29 GETUPVAL                         R3 3
       30 CALL                             R3 0 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 0
       33 DUPTABLE                         R4 K9 [{"startTime", "dragOffset", "initialPosition"}]
       34 GETIMPORT                        R5 K4 [os.clock]
       36 CALL                             R5 0 1
       37 SETTABLEKS                       R5 R4 K6 ["startTime"]
       39 GETIMPORT                        R5 K12 [Vector2.zero]
       41 SETTABLEKS                       R5 R4 K7 ["dragOffset"]
       43 SETTABLEKS                       R1 R4 K8 ["initialPosition"]
       45 SETTABLEKS                       R4 R3 K0 ["current"]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R3 R3 K13 ["OnDragStart"]
       50 JUMPIFNOT                        R3 ; [+13]
       51 GETUPVAL                         R3 4
       52 GETTABLEKS                       R3 R3 K13 ["OnDragStart"]
       54 GETUPVAL                         R4 5
       55 GETTABLEKS                       R4 R4 K14 ["viewToPlot"]
       57 GETUPVAL                         R5 5
       58 GETTABLEKS                       R5 R5 K15 ["absToView"]
       60 MOVE                             R6 R1
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 -1
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_10:
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
       17 DUPCLOSURE                       R1 K3 [PROTO_9]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_17:
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
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["Selected"]
       21 SETTABLEKS                       R1 R0 K6 ["stroke-system-neutral"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K5 ["Selected"]
       26 NOT                              R1 R2
       27 SETTABLEKS                       R1 R0 K7 ["stroke-default"]
       29 RETURN                           R0 1

PROTO_18:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_19:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_21:
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
      162 GETTABLEKS                       R21 R21 K34 ["useBinding"]
      164 GETTABLEKS                       R22 R0 K35 ["editName"]
      166 CALL                             R21 1 2
      167 GETUPVAL                         R23 2
      168 GETTABLEKS                       R23 R23 K36 ["useToggleState"]
      170 LOADB                            R24 0
      171 CALL                             R23 1 1
      172 GETUPVAL                         R24 0
      173 GETTABLEKS                       R24 R24 K37 ["useRef"]
      175 LOADNIL                          R25
      176 CALL                             R24 1 1
      177 GETUPVAL                         R25 2
      178 GETTABLEKS                       R25 R25 K38 ["useEventCallback"]
      180 NEWCLOSURE                       R26 P2
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R0
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R24
      185 CALL                             R25 1 1
      186 GETUPVAL                         R26 0
      187 GETTABLEKS                       R26 R26 K37 ["useRef"]
      189 LOADNIL                          R27
      190 CALL                             R26 1 1
      191 GETUPVAL                         R27 0
      192 GETTABLEKS                       R27 R27 K37 ["useRef"]
      194 LOADN                            R28 0
      195 CALL                             R27 1 1
      196 GETUPVAL                         R28 0
      197 GETTABLEKS                       R28 R28 K39 ["useCallback"]
      199 NEWCLOSURE                       R29 P3
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R23
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R3
      206 NEWTABLE                         R30 0 4
      208 MOVE                             R31 R3
      209 GETTABLEKS                       R32 R23 K40 ["enabled"]
      211 GETTABLEKS                       R33 R0 K41 ["OnDragStart"]
      213 MOVE                             R34 R25
      214 SETLIST                          R30 R31 4 [1]
      216 CALL                             R28 2 1
      217 GETUPVAL                         R29 0
      218 GETTABLEKS                       R29 R29 K39 ["useCallback"]
      220 NEWCLOSURE                       R30 P4
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R23
      225 NEWTABLE                         R31 0 5
      227 MOVE                             R32 R3
      228 MOVE                             R33 R26
      229 GETTABLEKS                       R34 R0 K42 ["OnDragMoved"]
      231 MOVE                             R35 R5
      232 GETTABLEKS                       R36 R23 K43 ["disable"]
      234 SETLIST                          R31 R32 5 [1]
      236 CALL                             R29 2 1
      237 GETUPVAL                         R30 0
      238 GETTABLEKS                       R30 R30 K39 ["useCallback"]
      240 NEWCLOSURE                       R31 P5
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R0
      244 CAPTURE                          VAL R3
      245 NEWTABLE                         R32 0 4
      247 MOVE                             R33 R3
      248 MOVE                             R34 R26
      249 GETTABLEKS                       R35 R0 K44 ["OnDragEnded"]
      251 MOVE                             R36 R5
      252 SETLIST                          R32 R33 4 [1]
      254 CALL                             R30 2 1
      255 GETUPVAL                         R31 0
      256 GETTABLEKS                       R31 R31 K39 ["useCallback"]
      258 NEWCLOSURE                       R32 P6
      259 CAPTURE                          VAL R17
      260 NEWTABLE                         R33 0 1
      262 MOVE                             R34 R17
      263 SETLIST                          R33 R34 1 [1]
      265 CALL                             R31 2 1
      266 GETUPVAL                         R32 0
      267 GETTABLEKS                       R32 R32 K45 ["useEffect"]
      269 NEWCLOSURE                       R33 P7
      270 CAPTURE                          VAL R5
      271 CAPTURE                          UPVAL U8
      272 CAPTURE                          VAL R18
      273 CAPTURE                          UPVAL U11
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R4
      276 CAPTURE                          VAL R16
      277 NEWTABLE                         R34 0 4
      279 GETTABLEKS                       R35 R4 K46 ["setNodeSize"]
      281 GETTABLEKS                       R36 R18 K47 ["observeAbsoluteSize"]
      283 MOVE                             R37 R5
      284 GETUPVAL                         R39 11
      285 JUMPIFNOT                        R39 ; [+2]
      286 MOVE                             R38 R13
      287 JUMP                             ; [+1]
      288 MOVE                             R38 R16
      289 SETLIST                          R34 R35 4 [1]
      291 CALL                             R32 2 0
      292 GETUPVAL                         R32 0
      293 GETTABLEKS                       R32 R32 K26 ["useMemo"]
      295 NEWCLOSURE                       R33 P8
      296 CAPTURE                          VAL R4
      297 CAPTURE                          VAL R5
      298 CAPTURE                          UPVAL U12
      299 NEWTABLE                         R34 0 2
      301 GETTABLEKS                       R35 R4 K48 ["observeFadeByNodeId"]
      303 MOVE                             R36 R5
      304 SETLIST                          R34 R35 2 [1]
      306 CALL                             R32 2 1
      307 GETUPVAL                         R33 0
      308 GETTABLEKS                       R33 R33 K26 ["useMemo"]
      310 NEWCLOSURE                       R34 P9
      311 CAPTURE                          VAL R0
      312 NEWTABLE                         R35 0 1
      314 GETTABLEKS                       R36 R0 K49 ["Collapsed"]
      316 SETLIST                          R35 R36 1 [1]
      318 CALL                             R33 2 1
      319 GETUPVAL                         R34 0
      320 GETTABLEKS                       R34 R34 K39 ["useCallback"]
      322 NEWCLOSURE                       R35 P10
      323 CAPTURE                          VAL R5
      324 CAPTURE                          VAL R4
      325 CAPTURE                          VAL R0
      326 NEWTABLE                         R36 0 3
      328 GETTABLEKS                       R37 R4 K50 ["setCollapsed"]
      330 MOVE                             R38 R5
      331 GETTABLEKS                       R39 R0 K49 ["Collapsed"]
      333 SETLIST                          R36 R37 3 [1]
      335 CALL                             R34 2 1
      336 GETTABLEKS                       R35 R0 K51 ["text"]
      338 JUMPIF                           R35 ; [+6]
      339 GETTABLEKS                       R35 R0 K4 ["GraphPayload"]
      341 GETTABLEKS                       R35 R35 K52 ["name"]
      343 JUMPIF                           R35 ; [+1]
      344 LOADK                            R35 K53 [""]
      345 GETUPVAL                         R36 0
      346 GETTABLEKS                       R36 R36 K39 ["useCallback"]
      348 NEWCLOSURE                       R37 P11
      349 CAPTURE                          UPVAL U13
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R23
      352 CAPTURE                          VAL R5
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R4
      355 NEWTABLE                         R38 0 6
      357 MOVE                             R39 R5
      358 GETTABLEKS                       R40 R23 K43 ["disable"]
      360 GETTABLEKS                       R41 R0 K6 ["IsParameterNode"]
      362 GETTABLEKS                       R42 R0 K4 ["GraphPayload"]
      364 GETTABLEKS                       R42 R42 K52 ["name"]
      366 GETTABLEKS                       R43 R4 K54 ["renameParameter"]
      368 GETTABLEKS                       R44 R4 K55 ["renameNode"]
      370 SETLIST                          R38 R39 6 [1]
      372 CALL                             R36 2 1
      373 MOVE                             R37 R2
      374 CALL                             R37 0 1
      375 GETUPVAL                         R38 0
      376 GETTABLEKS                       R38 R38 K26 ["useMemo"]
      378 DUPCLOSURE                       R39 K56 [PROTO_14]
      379 CAPTURE                          UPVAL U8
      380 NEWTABLE                         R40 0 0
      382 CALL                             R38 2 2
      383 GETUPVAL                         R40 14
      384 JUMPIFNOT                        R40 ; [+14]
      385 GETUPVAL                         R40 0
      386 GETTABLEKS                       R40 R40 K45 ["useEffect"]
      388 NEWCLOSURE                       R41 P13
      389 CAPTURE                          UPVAL U8
      390 CAPTURE                          VAL R38
      391 CAPTURE                          VAL R35
      392 NEWTABLE                         R42 0 2
      394 MOVE                             R43 R38
      395 MOVE                             R44 R35
      396 SETLIST                          R42 R43 2 [1]
      398 CALL                             R40 2 0
      399 GETUPVAL                         R40 9
      400 GETTABLEKS                       R40 R40 K28 ["useSignalBinding"]
      402 MOVE                             R41 R32
      403 CALL                             R40 1 1
      404 GETUPVAL                         R41 0
      405 GETTABLEKS                       R41 R41 K26 ["useMemo"]
      407 NEWCLOSURE                       R42 P14
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R0
      410 NEWTABLE                         R43 0 3
      412 GETTABLEKS                       R44 R0 K49 ["Collapsed"]
      414 MOVE                             R45 R6
      415 GETTABLEKS                       R46 R0 K57 ["Selected"]
      417 SETLIST                          R43 R44 3 [1]
      419 CALL                             R41 2 1
      420 GETUPVAL                         R42 0
      421 GETTABLEKS                       R42 R42 K26 ["useMemo"]
      423 NEWCLOSURE                       R43 P15
      424 CAPTURE                          VAL R41
      425 NEWTABLE                         R44 0 1
      427 MOVE                             R45 R41
      428 SETLIST                          R44 R45 1 [1]
      430 CALL                             R42 2 1
      431 GETUPVAL                         R43 0
      432 GETTABLEKS                       R43 R43 K58 ["createElement"]
      434 GETUPVAL                         R44 7
      435 GETTABLEKS                       R44 R44 K59 ["View"]
      437 DUPTABLE                         R45 K66 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      438 LOADK                            R46 K67 ["auto-y"]
      439 SETTABLEKS                       R46 R45 K60 ["tag"]
      441 GETUPVAL                         R47 11
      442 JUMPIFNOT                        R47 ; [+5]
      443 DUPCLOSURE                       R48 K68 [PROTO_19]
      444 NAMECALL                         R46 R15 K69 ["map"]
      446 CALL                             R46 2 1
      447 JUMP                             ; [+5]
      448 GETIMPORT                        R46 K72 [UDim2.fromOffset]
      450 MOVE                             R47 R16
      451 LOADN                            R48 0
      452 CALL                             R46 2 1
      453 SETTABLEKS                       R46 R45 K61 ["Size"]
      455 GETTABLEKS                       R46 R0 K62 ["LayoutOrder"]
      457 SETTABLEKS                       R46 R45 K62 ["LayoutOrder"]
      459 GETTABLEKS                       R46 R0 K63 ["ZIndex"]
      461 SETTABLEKS                       R46 R45 K63 ["ZIndex"]
      463 SETTABLEKS                       R19 R45 K32 ["Position"]
      465 LOADN                            R46 1
      466 SETTABLEKS                       R46 R45 K64 ["BackgroundTransparency"]
      468 LOADN                            R46 0
      469 SETTABLEKS                       R46 R45 K65 ["BorderSizePixel"]
      471 DUPTABLE                         R46 K75 [{"UIScale", "ComponentContext"}]
      472 GETUPVAL                         R47 0
      473 GETTABLEKS                       R47 R47 K58 ["createElement"]
      475 LOADK                            R48 K73 ["UIScale"]
      476 DUPTABLE                         R49 K77 [{"Scale"}]
      477 SETTABLEKS                       R20 R49 K76 ["Scale"]
      479 CALL                             R47 2 1
      480 SETTABLEKS                       R47 R46 K73 ["UIScale"]
      482 GETUPVAL                         R47 0
      483 GETTABLEKS                       R47 R47 K58 ["createElement"]
      485 GETUPVAL                         R48 15
      486 GETTABLEKS                       R48 R48 K78 ["Provider"]
      488 DUPTABLE                         R49 K80 [{"absoluteSizeHook"}]
      489 SETTABLEKS                       R18 R49 K79 ["absoluteSizeHook"]
      491 DUPTABLE                         R50 K84 [{"Node", "DebugMarker", "DragDetector"}]
      492 GETUPVAL                         R51 0
      493 GETTABLEKS                       R51 R51 K58 ["createElement"]
      495 GETUPVAL                         R52 7
      496 GETTABLEKS                       R52 R52 K59 ["View"]
      498 DUPTABLE                         R53 K86 [{"tag", "Size", "ref", "ZIndex"}]
      499 SETTABLEKS                       R42 R53 K60 ["tag"]
      501 GETUPVAL                         R55 11
      502 JUMPIFNOT                        R55 ; [+5]
      503 DUPCLOSURE                       R56 K87 [PROTO_20]
      504 NAMECALL                         R54 R15 K69 ["map"]
      506 CALL                             R54 2 1
      507 JUMP                             ; [+5]
      508 GETIMPORT                        R54 K72 [UDim2.fromOffset]
      510 MOVE                             R55 R16
      511 LOADN                            R56 0
      512 CALL                             R54 2 1
      513 SETTABLEKS                       R54 R53 K61 ["Size"]
      515 GETTABLEKS                       R54 R18 K88 ["setFrame"]
      517 SETTABLEKS                       R54 R53 K85 ["ref"]
      519 LOADN                            R54 1
      520 SETTABLEKS                       R54 R53 K63 ["ZIndex"]
      522 DUPTABLE                         R54 K92 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent"}]
      523 GETUPVAL                         R55 0
      524 GETTABLEKS                       R55 R55 K58 ["createElement"]
      526 LOADK                            R56 K93 ["Folder"]
      527 NEWTABLE                         R57 0 0
      529 DUPTABLE                         R58 K95 [{"Cover"}]
      530 GETUPVAL                         R59 0
      531 GETTABLEKS                       R59 R59 K58 ["createElement"]
      533 GETUPVAL                         R60 7
      534 GETTABLEKS                       R60 R60 K59 ["View"]
      536 DUPTABLE                         R61 K98 [{"tag", "Size", "GroupTransparency", "ZIndex", "testId"}]
      537 SETTABLEKS                       R41 R61 K60 ["tag"]
      539 GETIMPORT                        R62 K100 [UDim2.fromScale]
      541 LOADN                            R63 1
      542 LOADN                            R64 1
      543 CALL                             R62 2 1
      544 SETTABLEKS                       R62 R61 K61 ["Size"]
      546 SETTABLEKS                       R40 R61 K96 ["GroupTransparency"]
      548 LOADN                            R62 2
      549 SETTABLEKS                       R62 R61 K63 ["ZIndex"]
      551 LOADK                            R62 K101 ["CompositorNodeCover"]
      552 SETTABLEKS                       R62 R61 K97 ["testId"]
      554 CALL                             R59 2 1
      555 SETTABLEKS                       R59 R58 K94 ["Cover"]
      557 CALL                             R55 3 1
      558 SETTABLEKS                       R55 R54 K89 ["CoverContainer"]
      560 GETUPVAL                         R55 0
      561 GETTABLEKS                       R55 R55 K58 ["createElement"]
      563 GETUPVAL                         R56 7
      564 GETTABLEKS                       R56 R56 K59 ["View"]
      566 DUPTABLE                         R57 K103 [{"tag", "backgroundStyle", "LayoutOrder"}]
      567 NEWTABLE                         R58 4 0
      569 LOADB                            R59 1
      570 SETTABLEKS                       R59 R58 K104 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      572 NOT                              R59 R6
      573 JUMPIFNOT                        R59 ; [+1]
      574 NOT                              R59 R7
      575 SETTABLEKS                       R59 R58 K105 ["radius-small bg-shift-200"]
      577 MOVE                             R59 R6
      578 JUMPIFNOT                        R59 ; [+3]
      579 GETTABLEKS                       R60 R0 K49 ["Collapsed"]
      581 NOT                              R59 R60
      582 SETTABLEKS                       R59 R58 K106 ["radius-small"]
      584 MOVE                             R59 R6
      585 JUMPIFNOT                        R59 ; [+2]
      586 GETTABLEKS                       R59 R0 K49 ["Collapsed"]
      588 SETTABLEKS                       R59 R58 K107 ["radius-large"]
      590 SETTABLEKS                       R58 R57 K60 ["tag"]
      592 JUMPIFNOT                        R6 ; [+2]
      593 MOVE                             R58 R11
      594 JUMP                             ; [+4]
      595 JUMPIFNOT                        R7 ; [+2]
      596 MOVE                             R58 R12
      597 JUMP                             ; [+1]
      598 LOADNIL                          R58
      599 SETTABLEKS                       R58 R57 K102 ["backgroundStyle"]
      601 SETTABLEKS                       R37 R57 K62 ["LayoutOrder"]
      603 DUPTABLE                         R58 K112 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      604 GETTABLEKS                       R60 R0 K113 ["Collapsible"]
      606 JUMPIFEQKB                       R60 FALSE ; [+45]
      608 GETUPVAL                         R59 0
      609 GETTABLEKS                       R59 R59 K58 ["createElement"]
      611 GETUPVAL                         R60 7
      612 GETTABLEKS                       R60 R60 K114 ["Button"]
      614 DUPTABLE                         R61 K120 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      615 SETTABLEKS                       R33 R61 K115 ["icon"]
      617 GETUPVAL                         R62 7
      618 GETTABLEKS                       R62 R62 K12 ["Enums"]
      620 GETTABLEKS                       R62 R62 K121 ["ButtonVariant"]
      622 GETTABLEKS                       R62 R62 K122 ["Text"]
      624 SETTABLEKS                       R62 R61 K116 ["variant"]
      626 SETTABLEKS                       R34 R61 K117 ["onActivated"]
      628 GETUPVAL                         R62 7
      629 GETTABLEKS                       R62 R62 K12 ["Enums"]
      631 GETTABLEKS                       R62 R62 K123 ["InputSize"]
      633 GETTABLEKS                       R62 R62 K124 ["XSmall"]
      635 SETTABLEKS                       R62 R61 K118 ["size"]
      637 MOVE                             R62 R2
      638 CALL                             R62 0 1
      639 SETTABLEKS                       R62 R61 K62 ["LayoutOrder"]
      641 GETUPVAL                         R62 7
      642 GETTABLEKS                       R62 R62 K12 ["Enums"]
      644 GETTABLEKS                       R62 R62 K125 ["FillBehavior"]
      646 GETTABLEKS                       R62 R62 K126 ["Fit"]
      648 SETTABLEKS                       R62 R61 K119 ["fillBehavior"]
      650 CALL                             R59 2 1
      651 JUMP                             ; [+1]
      652 LOADNIL                          R59
      653 SETTABLEKS                       R59 R58 K108 ["ToggleButton"]
      655 GETUPVAL                         R59 0
      656 GETTABLEKS                       R59 R59 K58 ["createElement"]
      658 GETUPVAL                         R60 7
      659 GETTABLEKS                       R60 R60 K122 ["Text"]
      661 DUPTABLE                         R61 K129 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      662 NEWTABLE                         R62 2 0
      664 LOADB                            R63 1
      665 SETTABLEKS                       R63 R62 K130 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      667 GETTABLEKS                       R64 R0 K113 ["Collapsible"]
      669 JUMPIFEQKB                       R64 FALSE ; [+2]
      671 LOADB                            R63 0 +1
      672 LOADB                            R63 1
      673 SETTABLEKS                       R63 R62 K131 ["padding-left-small"]
      675 SETTABLEKS                       R62 R61 K60 ["tag"]
      677 SETTABLEKS                       R35 R61 K122 ["Text"]
      679 LOADB                            R62 1
      680 SETTABLEKS                       R62 R61 K127 ["RichText"]
      682 MOVE                             R62 R2
      683 CALL                             R62 0 1
      684 SETTABLEKS                       R62 R61 K62 ["LayoutOrder"]
      686 GETTABLEKS                       R63 R23 K40 ["enabled"]
      688 NOT                              R62 R63
      689 SETTABLEKS                       R62 R61 K128 ["Visible"]
      691 LOADK                            R62 K132 ["CompositorNode-Title"]
      692 SETTABLEKS                       R62 R61 K97 ["testId"]
      694 CALL                             R59 2 1
      695 SETTABLEKS                       R59 R58 K109 ["Title"]
      697 GETUPVAL                         R59 0
      698 GETTABLEKS                       R59 R59 K58 ["createElement"]
      700 GETUPVAL                         R60 7
      701 GETTABLEKS                       R60 R60 K133 ["TextInput"]
      703 DUPTABLE                         R61 K139 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      704 NEWTABLE                         R62 1 0
      706 LOADB                            R63 1
      707 SETTABLEKS                       R63 R62 K130 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      709 SETTABLEKS                       R62 R61 K60 ["tag"]
      711 SETTABLEKS                       R21 R61 K51 ["text"]
      713 MOVE                             R62 R2
      714 CALL                             R62 0 1
      715 SETTABLEKS                       R62 R61 K62 ["LayoutOrder"]
      717 SETTABLEKS                       R22 R61 K134 ["onChanged"]
      719 LOADK                            R62 K53 [""]
      720 SETTABLEKS                       R62 R61 K135 ["label"]
      722 GETUPVAL                         R62 7
      723 GETTABLEKS                       R62 R62 K12 ["Enums"]
      725 GETTABLEKS                       R62 R62 K123 ["InputSize"]
      727 GETTABLEKS                       R62 R62 K124 ["XSmall"]
      729 SETTABLEKS                       R62 R61 K118 ["size"]
      731 SETTABLEKS                       R24 R61 K136 ["textBoxRef"]
      733 SETTABLEKS                       R36 R61 K137 ["onFocusLost"]
      735 SETTABLEKS                       R24 R61 K85 ["ref"]
      737 GETIMPORT                        R62 K142 [UDim.new]
      739 LOADN                            R63 0
      740 LOADN                            R64 100
      741 CALL                             R62 2 1
      742 SETTABLEKS                       R62 R61 K138 ["width"]
      744 GETTABLEKS                       R62 R23 K40 ["enabled"]
      746 SETTABLEKS                       R62 R61 K128 ["Visible"]
      748 CALL                             R59 2 1
      749 SETTABLEKS                       R59 R58 K110 ["TitleInput"]
      751 GETUPVAL                         R59 0
      752 GETTABLEKS                       R59 R59 K58 ["createElement"]
      754 LOADK                            R60 K93 ["Folder"]
      755 NEWTABLE                         R61 0 0
      757 GETTABLEKS                       R62 R0 K143 ["HeaderChildren"]
      759 CALL                             R59 3 1
      760 SETTABLEKS                       R59 R58 K111 ["Children"]
      762 CALL                             R55 3 1
      763 SETTABLEKS                       R55 R54 K90 ["CompositorNodeHeader"]
      765 GETUPVAL                         R56 0
      766 GETTABLEKS                       R56 R56 K111 ["Children"]
      768 GETTABLEKS                       R56 R56 K144 ["count"]
      770 GETTABLEKS                       R57 R0 K145 ["children"]
      772 CALL                             R56 1 1
      773 LOADN                            R57 0
      774 JUMPIFNOTLT                      R57 R56 ; [+94]
      776 GETUPVAL                         R55 0
      777 GETTABLEKS                       R55 R55 K58 ["createElement"]
      779 GETUPVAL                         R56 7
      780 GETTABLEKS                       R56 R56 K59 ["View"]
      782 DUPTABLE                         R57 K146 [{"tag", "LayoutOrder"}]
      783 LOADK                            R58 K147 ["size-full-700 auto-y"]
      784 SETTABLEKS                       R58 R57 K60 ["tag"]
      786 MOVE                             R58 R2
      787 CALL                             R58 0 1
      788 SETTABLEKS                       R58 R57 K62 ["LayoutOrder"]
      790 DUPTABLE                         R58 K150 [{"Contents", "ResizeBars"}]
      791 GETUPVAL                         R59 0
      792 GETTABLEKS                       R59 R59 K58 ["createElement"]
      794 GETUPVAL                         R60 7
      795 GETTABLEKS                       R60 R60 K59 ["View"]
      797 DUPTABLE                         R61 K151 [{"tag", "ZIndex"}]
      798 LOADK                            R62 K152 ["padding-y-xsmall size-full-0 auto-y col radius-small"]
      799 SETTABLEKS                       R62 R61 K60 ["tag"]
      801 LOADN                            R62 1
      802 SETTABLEKS                       R62 R61 K63 ["ZIndex"]
      804 DUPTABLE                         R62 K154 [{"NodeProperties"}]
      805 GETUPVAL                         R63 0
      806 GETTABLEKS                       R63 R63 K58 ["createElement"]
      808 GETUPVAL                         R64 0
      809 GETTABLEKS                       R64 R64 K155 ["Fragment"]
      811 NEWTABLE                         R65 0 0
      813 GETTABLEKS                       R66 R0 K145 ["children"]
      815 CALL                             R63 3 1
      816 SETTABLEKS                       R63 R62 K153 ["NodeProperties"]
      818 CALL                             R59 3 1
      819 SETTABLEKS                       R59 R58 K148 ["Contents"]
      821 JUMPIF                           R6 ; [+42]
      822 GETUPVAL                         R59 0
      823 GETTABLEKS                       R59 R59 K58 ["createElement"]
      825 GETUPVAL                         R60 16
      826 DUPTABLE                         R61 K160 [{"tag", "DEPRECATED_nodeWidth", "nodeWidthBinding", "OnResized", "Style", "ZIndex"}]
      827 LOADK                            R62 K106 ["radius-small"]
      828 SETTABLEKS                       R62 R61 K60 ["tag"]
      830 SETTABLEKS                       R16 R61 K156 ["DEPRECATED_nodeWidth"]
      832 SETTABLEKS                       R15 R61 K157 ["nodeWidthBinding"]
      834 GETUPVAL                         R63 11
      835 JUMPIFNOT                        R63 ; [+2]
      836 MOVE                             R62 R14
      837 JUMP                             ; [+1]
      838 MOVE                             R62 R31
      839 SETTABLEKS                       R62 R61 K158 ["OnResized"]
      841 GETTABLEKS                       R63 R0 K57 ["Selected"]
      843 JUMPIFNOT                        R63 ; [+7]
      844 GETTABLEKS                       R62 R9 K15 ["Color"]
      846 GETTABLEKS                       R62 R62 K161 ["System"]
      848 GETTABLEKS                       R62 R62 K162 ["Neutral"]
      850 JUMP                             ; [+6]
      851 GETTABLEKS                       R62 R9 K15 ["Color"]
      853 GETTABLEKS                       R62 R62 K163 ["Stroke"]
      855 GETTABLEKS                       R62 R62 K164 ["Default"]
      857 SETTABLEKS                       R62 R61 K159 ["Style"]
      859 LOADN                            R62 2
      860 SETTABLEKS                       R62 R61 K63 ["ZIndex"]
      862 CALL                             R59 2 1
      863 JUMP                             ; [+1]
      864 LOADNIL                          R59
      865 SETTABLEKS                       R59 R58 K149 ["ResizeBars"]
      867 CALL                             R55 3 1
      868 JUMP                             ; [+1]
      869 LOADNIL                          R55
      870 SETTABLEKS                       R55 R54 K91 ["CompositorNodeContent"]
      872 CALL                             R51 3 1
      873 SETTABLEKS                       R51 R50 K81 ["Node"]
      875 GETUPVAL                         R52 14
      876 JUMPIFNOT                        R52 ; [+21]
      877 GETUPVAL                         R51 0
      878 GETTABLEKS                       R51 R51 K58 ["createElement"]
      880 GETUPVAL                         R52 7
      881 GETTABLEKS                       R52 R52 K59 ["View"]
      883 DUPTABLE                         R53 K165 [{"tag", "testId", "LayoutOrder", "ref"}]
      884 LOADK                            R54 K166 ["size-full"]
      885 SETTABLEKS                       R54 R53 K60 ["tag"]
      887 LOADK                            R54 K167 ["CompositorNode-DebugMarker"]
      888 SETTABLEKS                       R54 R53 K97 ["testId"]
      890 MOVE                             R54 R2
      891 CALL                             R54 0 1
      892 SETTABLEKS                       R54 R53 K62 ["LayoutOrder"]
      894 SETTABLEKS                       R39 R53 K85 ["ref"]
      896 CALL                             R51 2 1
      897 JUMP                             ; [+1]
      898 LOADNIL                          R51
      899 SETTABLEKS                       R51 R50 K82 ["DebugMarker"]
      901 GETUPVAL                         R51 0
      902 GETTABLEKS                       R51 R51 K58 ["createElement"]
      904 LOADK                            R52 K168 ["UIDragDetector"]
      905 NEWTABLE                         R53 8 0
      907 GETIMPORT                        R54 K172 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      909 SETTABLEKS                       R54 R53 K173 ["DragStyle"]
      911 GETIMPORT                        R54 K176 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      913 SETTABLEKS                       R54 R53 K177 ["ResponseStyle"]
      915 GETTABLEKS                       R54 R3 K178 ["getViewport"]
      917 CALL                             R54 0 1
      918 SETTABLEKS                       R54 R53 K179 ["ReferenceUIInstance"]
      920 GETUPVAL                         R54 0
      921 GETTABLEKS                       R54 R54 K180 ["Event"]
      923 GETTABLEKS                       R54 R54 K181 ["DragStart"]
      925 SETTABLE                         R28 R53 R54
      926 GETUPVAL                         R54 0
      927 GETTABLEKS                       R54 R54 K180 ["Event"]
      929 GETTABLEKS                       R54 R54 K182 ["DragContinue"]
      931 SETTABLE                         R29 R53 R54
      932 GETUPVAL                         R54 0
      933 GETTABLEKS                       R54 R54 K180 ["Event"]
      935 GETTABLEKS                       R54 R54 K183 ["DragEnd"]
      937 SETTABLE                         R30 R53 R54
      938 CALL                             R51 2 1
      939 SETTABLEKS                       R51 R50 K83 ["DragDetector"]
      941 CALL                             R47 3 1
      942 SETTABLEKS                       R47 R46 K74 ["ComponentContext"]
      944 CALL                             R43 3 -1
      945 RETURN                           R43 -1

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
       28 GETTABLEKS                       R5 R0 K9 ["Flags"]
       30 GETTABLEKS                       R5 R5 K10 ["FFlagAnimGraphUI_PerfFixes_7123"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["Foundation"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Components"]
       44 GETTABLEKS                       R7 R7 K14 ["GraphContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["Graphing"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Parent"]
       58 GETTABLEKS                       R9 R9 K16 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Parent"]
       65 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K18 ["ResizeBars"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K11 ["Parent"]
       79 GETTABLEKS                       R12 R12 K19 ["Signals"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K11 ["Parent"]
       86 GETTABLEKS                       R13 R13 K20 ["SignalsReact"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K11 ["Parent"]
       93 GETTABLEKS                       R14 R14 K21 ["SignalsUtils"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K11 ["Parent"]
      100 GETTABLEKS                       R15 R15 K22 ["TestLoader"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K13 ["Components"]
      107 GETTABLEKS                       R16 R16 K23 ["ViewportRectContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K24 ["Util"]
      114 GETTABLEKS                       R17 R17 K25 ["sanitizeParameterNames"]
      116 CALL                             R16 1 1
      117 GETIMPORT                        R17 K5 [require]
      119 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      121 GETTABLEKS                       R18 R18 K27 ["useAbsoluteSize"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K5 [require]
      126 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      128 GETTABLEKS                       R19 R19 K28 ["useFoundationStudioTheme"]
      130 CALL                             R18 1 1
      131 GETTABLEKS                       R19 R14 K29 ["isCli"]
      133 CALL                             R19 0 1
      134 JUMPIF                           R19 ; [+3]
      135 GETTABLEKS                       R19 R14 K30 ["isFTF"]
      137 CALL                             R19 0 1
      138 DUPCLOSURE                       R20 K31 [PROTO_21]
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R10
      156 RETURN                           R20 1
