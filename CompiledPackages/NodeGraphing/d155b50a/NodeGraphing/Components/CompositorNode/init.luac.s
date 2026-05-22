PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Position"]
        5 CALL                             R1 1 1
        6 GETIMPORT                        R2 K4 [UDim2.fromScale]
        8 GETTABLEKS                       R3 R1 K5 ["X"]
       10 GETTABLEKS                       R4 R1 K6 ["Y"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
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
       27 GETIMPORT                        R3 K6 [Vector2.new]
       29 GETUPVAL                         R4 1
       30 GETUPVAL                         R7 1
       31 DIV                              R6 R7 R2
       32 FASTCALL1                        MATH_ROUND R6 ; [+2]
       33 GETIMPORT                        R5 K9 [math.round]
       35 CALL                             R5 1 1
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K10 ["setNodeSize"]
       40 GETUPVAL                         R5 3
       41 MOVE                             R6 R3
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U0
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_8:
        0 LOADN                            R0 1
        1 RETURN                           R0 1

PROTO_9:
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
       13 GETTABLEKS                       R0 R0 K1 ["createComputed"]
       15 DUPCLOSURE                       R1 K2 [PROTO_8]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 LOADK                            R4 K0 ["DisplayName"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R2 R1 K1 ["SetAttribute"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

PROTO_18:
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
      121 GETTABLEKS                       R13 R13 K26 ["useState"]
      123 GETUPVAL                         R14 5
      124 GETTABLEKS                       R14 R14 K27 ["NODE_VIEW_CHILD_WIDTH"]
      126 CALL                             R13 1 2
      127 GETUPVAL                         R15 8
      128 CALL                             R15 0 1
      129 GETUPVAL                         R16 3
      130 GETTABLEKS                       R16 R16 K28 ["useViewportBinding"]
      132 NEWCLOSURE                       R17 P0
      133 CAPTURE                          VAL R0
      134 NEWTABLE                         R18 0 1
      136 GETTABLEKS                       R19 R0 K29 ["Position"]
      138 SETLIST                          R18 R19 1 [1]
      140 CALL                             R16 2 1
      141 GETUPVAL                         R17 9
      142 GETTABLEKS                       R17 R17 K30 ["useSignalBinding"]
      144 GETTABLEKS                       R18 R1 K31 ["observeZoomRatio"]
      146 CALL                             R17 1 1
      147 GETUPVAL                         R18 0
      148 GETTABLEKS                       R18 R18 K32 ["useBinding"]
      150 GETTABLEKS                       R19 R0 K33 ["editName"]
      152 CALL                             R18 1 2
      153 GETUPVAL                         R20 2
      154 GETTABLEKS                       R20 R20 K34 ["useToggleState"]
      156 LOADB                            R21 0
      157 CALL                             R20 1 1
      158 GETUPVAL                         R21 0
      159 GETTABLEKS                       R21 R21 K35 ["useRef"]
      161 LOADNIL                          R22
      162 CALL                             R21 1 1
      163 GETUPVAL                         R22 2
      164 GETTABLEKS                       R22 R22 K36 ["useEventCallback"]
      166 NEWCLOSURE                       R23 P1
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R21
      171 CALL                             R22 1 1
      172 GETUPVAL                         R23 0
      173 GETTABLEKS                       R23 R23 K35 ["useRef"]
      175 LOADNIL                          R24
      176 CALL                             R23 1 1
      177 GETUPVAL                         R24 0
      178 GETTABLEKS                       R24 R24 K35 ["useRef"]
      180 LOADN                            R25 0
      181 CALL                             R24 1 1
      182 GETUPVAL                         R25 0
      183 GETTABLEKS                       R25 R25 K37 ["useCallback"]
      185 NEWCLOSURE                       R26 P2
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R3
      192 NEWTABLE                         R27 0 4
      194 MOVE                             R28 R3
      195 GETTABLEKS                       R29 R20 K38 ["enabled"]
      197 GETTABLEKS                       R30 R0 K39 ["OnDragStart"]
      199 MOVE                             R31 R22
      200 SETLIST                          R27 R28 4 [1]
      202 CALL                             R25 2 1
      203 GETUPVAL                         R26 0
      204 GETTABLEKS                       R26 R26 K37 ["useCallback"]
      206 NEWCLOSURE                       R27 P3
      207 CAPTURE                          VAL R23
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R20
      211 NEWTABLE                         R28 0 5
      213 MOVE                             R29 R3
      214 MOVE                             R30 R23
      215 GETTABLEKS                       R31 R0 K40 ["OnDragMoved"]
      217 MOVE                             R32 R5
      218 GETTABLEKS                       R33 R20 K41 ["disable"]
      220 SETLIST                          R28 R29 5 [1]
      222 CALL                             R26 2 1
      223 GETUPVAL                         R27 0
      224 GETTABLEKS                       R27 R27 K37 ["useCallback"]
      226 NEWCLOSURE                       R28 P4
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R3
      231 NEWTABLE                         R29 0 4
      233 MOVE                             R30 R3
      234 MOVE                             R31 R23
      235 GETTABLEKS                       R32 R0 K42 ["OnDragEnded"]
      237 MOVE                             R33 R5
      238 SETLIST                          R29 R30 4 [1]
      240 CALL                             R27 2 1
      241 GETUPVAL                         R28 0
      242 GETTABLEKS                       R28 R28 K37 ["useCallback"]
      244 NEWCLOSURE                       R29 P5
      245 CAPTURE                          VAL R14
      246 NEWTABLE                         R30 0 1
      248 MOVE                             R31 R14
      249 SETLIST                          R30 R31 1 [1]
      251 CALL                             R28 2 1
      252 GETUPVAL                         R29 0
      253 GETTABLEKS                       R29 R29 K43 ["useEffect"]
      255 NEWCLOSURE                       R30 P6
      256 CAPTURE                          VAL R5
      257 CAPTURE                          UPVAL U10
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R13
      260 CAPTURE                          VAL R4
      261 NEWTABLE                         R31 0 4
      263 GETTABLEKS                       R32 R4 K44 ["setNodeSize"]
      265 GETTABLEKS                       R33 R15 K45 ["observeAbsoluteSize"]
      267 MOVE                             R34 R5
      268 MOVE                             R35 R13
      269 SETLIST                          R31 R32 4 [1]
      271 CALL                             R29 2 0
      272 GETUPVAL                         R29 0
      273 GETTABLEKS                       R29 R29 K46 ["useMemo"]
      275 NEWCLOSURE                       R30 P7
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R5
      278 CAPTURE                          UPVAL U11
      279 NEWTABLE                         R31 0 2
      281 GETTABLEKS                       R32 R4 K47 ["observeFadeByNodeId"]
      283 MOVE                             R33 R5
      284 SETLIST                          R31 R32 2 [1]
      286 CALL                             R29 2 1
      287 GETUPVAL                         R30 0
      288 GETTABLEKS                       R30 R30 K46 ["useMemo"]
      290 NEWCLOSURE                       R31 P8
      291 CAPTURE                          VAL R0
      292 NEWTABLE                         R32 0 1
      294 GETTABLEKS                       R33 R0 K48 ["Collapsed"]
      296 SETLIST                          R32 R33 1 [1]
      298 CALL                             R30 2 1
      299 GETUPVAL                         R31 0
      300 GETTABLEKS                       R31 R31 K37 ["useCallback"]
      302 NEWCLOSURE                       R32 P9
      303 CAPTURE                          VAL R5
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R0
      306 NEWTABLE                         R33 0 3
      308 GETTABLEKS                       R34 R4 K49 ["setCollapsed"]
      310 MOVE                             R35 R5
      311 GETTABLEKS                       R36 R0 K48 ["Collapsed"]
      313 SETLIST                          R33 R34 3 [1]
      315 CALL                             R31 2 1
      316 GETTABLEKS                       R32 R0 K50 ["text"]
      318 JUMPIF                           R32 ; [+6]
      319 GETTABLEKS                       R32 R0 K4 ["GraphPayload"]
      321 GETTABLEKS                       R32 R32 K51 ["name"]
      323 JUMPIF                           R32 ; [+1]
      324 LOADK                            R32 K52 [""]
      325 GETUPVAL                         R33 0
      326 GETTABLEKS                       R33 R33 K37 ["useCallback"]
      328 NEWCLOSURE                       R34 P10
      329 CAPTURE                          UPVAL U12
      330 CAPTURE                          VAL R18
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R5
      333 CAPTURE                          VAL R0
      334 CAPTURE                          VAL R4
      335 NEWTABLE                         R35 0 6
      337 MOVE                             R36 R5
      338 GETTABLEKS                       R37 R20 K41 ["disable"]
      340 GETTABLEKS                       R38 R0 K6 ["IsParameterNode"]
      342 GETTABLEKS                       R39 R0 K4 ["GraphPayload"]
      344 GETTABLEKS                       R39 R39 K51 ["name"]
      346 GETTABLEKS                       R40 R4 K53 ["renameParameter"]
      348 GETTABLEKS                       R41 R4 K54 ["renameNode"]
      350 SETLIST                          R35 R36 6 [1]
      352 CALL                             R33 2 1
      353 MOVE                             R34 R2
      354 CALL                             R34 0 1
      355 GETUPVAL                         R35 0
      356 GETTABLEKS                       R35 R35 K46 ["useMemo"]
      358 DUPCLOSURE                       R36 K55 [PROTO_13]
      359 CAPTURE                          UPVAL U10
      360 NEWTABLE                         R37 0 0
      362 CALL                             R35 2 2
      363 GETUPVAL                         R37 13
      364 JUMPIFNOT                        R37 ; [+14]
      365 GETUPVAL                         R37 0
      366 GETTABLEKS                       R37 R37 K43 ["useEffect"]
      368 NEWCLOSURE                       R38 P12
      369 CAPTURE                          UPVAL U10
      370 CAPTURE                          VAL R35
      371 CAPTURE                          VAL R32
      372 NEWTABLE                         R39 0 2
      374 MOVE                             R40 R35
      375 MOVE                             R41 R32
      376 SETLIST                          R39 R40 2 [1]
      378 CALL                             R37 2 0
      379 GETUPVAL                         R37 9
      380 GETTABLEKS                       R37 R37 K30 ["useSignalBinding"]
      382 MOVE                             R38 R29
      383 CALL                             R37 1 1
      384 GETUPVAL                         R38 0
      385 GETTABLEKS                       R38 R38 K46 ["useMemo"]
      387 NEWCLOSURE                       R39 P13
      388 CAPTURE                          VAL R6
      389 CAPTURE                          VAL R0
      390 NEWTABLE                         R40 0 3
      392 GETTABLEKS                       R41 R0 K48 ["Collapsed"]
      394 MOVE                             R42 R6
      395 GETTABLEKS                       R43 R0 K56 ["Selected"]
      397 SETLIST                          R40 R41 3 [1]
      399 CALL                             R38 2 1
      400 GETUPVAL                         R39 0
      401 GETTABLEKS                       R39 R39 K46 ["useMemo"]
      403 NEWCLOSURE                       R40 P14
      404 CAPTURE                          VAL R38
      405 NEWTABLE                         R41 0 1
      407 MOVE                             R42 R38
      408 SETLIST                          R41 R42 1 [1]
      410 CALL                             R39 2 1
      411 GETUPVAL                         R40 0
      412 GETTABLEKS                       R40 R40 K57 ["createElement"]
      414 GETUPVAL                         R41 7
      415 GETTABLEKS                       R41 R41 K58 ["View"]
      417 DUPTABLE                         R42 K65 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      418 LOADK                            R43 K66 ["auto-y"]
      419 SETTABLEKS                       R43 R42 K59 ["tag"]
      421 GETIMPORT                        R43 K69 [UDim2.fromOffset]
      423 MOVE                             R44 R13
      424 LOADN                            R45 0
      425 CALL                             R43 2 1
      426 SETTABLEKS                       R43 R42 K60 ["Size"]
      428 GETTABLEKS                       R43 R0 K61 ["LayoutOrder"]
      430 SETTABLEKS                       R43 R42 K61 ["LayoutOrder"]
      432 GETTABLEKS                       R43 R0 K62 ["ZIndex"]
      434 SETTABLEKS                       R43 R42 K62 ["ZIndex"]
      436 SETTABLEKS                       R16 R42 K29 ["Position"]
      438 LOADN                            R43 1
      439 SETTABLEKS                       R43 R42 K63 ["BackgroundTransparency"]
      441 LOADN                            R43 0
      442 SETTABLEKS                       R43 R42 K64 ["BorderSizePixel"]
      444 DUPTABLE                         R43 K72 [{"UIScale", "ComponentContext"}]
      445 GETUPVAL                         R44 0
      446 GETTABLEKS                       R44 R44 K57 ["createElement"]
      448 LOADK                            R45 K70 ["UIScale"]
      449 DUPTABLE                         R46 K74 [{"Scale"}]
      450 SETTABLEKS                       R17 R46 K73 ["Scale"]
      452 CALL                             R44 2 1
      453 SETTABLEKS                       R44 R43 K70 ["UIScale"]
      455 GETUPVAL                         R44 0
      456 GETTABLEKS                       R44 R44 K57 ["createElement"]
      458 GETUPVAL                         R45 14
      459 GETTABLEKS                       R45 R45 K75 ["Provider"]
      461 DUPTABLE                         R46 K77 [{"absoluteSizeHook"}]
      462 SETTABLEKS                       R15 R46 K76 ["absoluteSizeHook"]
      464 DUPTABLE                         R47 K81 [{"Node", "DebugMarker", "DragDetector"}]
      465 GETUPVAL                         R48 0
      466 GETTABLEKS                       R48 R48 K57 ["createElement"]
      468 GETUPVAL                         R49 7
      469 GETTABLEKS                       R49 R49 K58 ["View"]
      471 DUPTABLE                         R50 K83 [{"tag", "Size", "ref", "ZIndex"}]
      472 SETTABLEKS                       R39 R50 K59 ["tag"]
      474 GETIMPORT                        R51 K69 [UDim2.fromOffset]
      476 MOVE                             R52 R13
      477 LOADN                            R53 0
      478 CALL                             R51 2 1
      479 SETTABLEKS                       R51 R50 K60 ["Size"]
      481 GETTABLEKS                       R51 R15 K84 ["setFrame"]
      483 SETTABLEKS                       R51 R50 K82 ["ref"]
      485 LOADN                            R51 1
      486 SETTABLEKS                       R51 R50 K62 ["ZIndex"]
      488 DUPTABLE                         R51 K88 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent"}]
      489 GETUPVAL                         R52 0
      490 GETTABLEKS                       R52 R52 K57 ["createElement"]
      492 LOADK                            R53 K89 ["Folder"]
      493 NEWTABLE                         R54 0 0
      495 DUPTABLE                         R55 K91 [{"Cover"}]
      496 GETUPVAL                         R56 0
      497 GETTABLEKS                       R56 R56 K57 ["createElement"]
      499 GETUPVAL                         R57 7
      500 GETTABLEKS                       R57 R57 K58 ["View"]
      502 DUPTABLE                         R58 K94 [{"tag", "Size", "GroupTransparency", "ZIndex", "testId"}]
      503 SETTABLEKS                       R38 R58 K59 ["tag"]
      505 GETIMPORT                        R59 K96 [UDim2.fromScale]
      507 LOADN                            R60 1
      508 LOADN                            R61 1
      509 CALL                             R59 2 1
      510 SETTABLEKS                       R59 R58 K60 ["Size"]
      512 SETTABLEKS                       R37 R58 K92 ["GroupTransparency"]
      514 LOADN                            R59 2
      515 SETTABLEKS                       R59 R58 K62 ["ZIndex"]
      517 LOADK                            R59 K97 ["CompositorNodeCover"]
      518 SETTABLEKS                       R59 R58 K93 ["testId"]
      520 CALL                             R56 2 1
      521 SETTABLEKS                       R56 R55 K90 ["Cover"]
      523 CALL                             R52 3 1
      524 SETTABLEKS                       R52 R51 K85 ["CoverContainer"]
      526 GETUPVAL                         R52 0
      527 GETTABLEKS                       R52 R52 K57 ["createElement"]
      529 GETUPVAL                         R53 7
      530 GETTABLEKS                       R53 R53 K58 ["View"]
      532 DUPTABLE                         R54 K99 [{"tag", "backgroundStyle", "LayoutOrder"}]
      533 NEWTABLE                         R55 4 0
      535 LOADB                            R56 1
      536 SETTABLEKS                       R56 R55 K100 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      538 NOT                              R56 R6
      539 JUMPIFNOT                        R56 ; [+1]
      540 NOT                              R56 R7
      541 SETTABLEKS                       R56 R55 K101 ["radius-small bg-shift-200"]
      543 MOVE                             R56 R6
      544 JUMPIFNOT                        R56 ; [+3]
      545 GETTABLEKS                       R57 R0 K48 ["Collapsed"]
      547 NOT                              R56 R57
      548 SETTABLEKS                       R56 R55 K102 ["radius-small"]
      550 MOVE                             R56 R6
      551 JUMPIFNOT                        R56 ; [+2]
      552 GETTABLEKS                       R56 R0 K48 ["Collapsed"]
      554 SETTABLEKS                       R56 R55 K103 ["radius-large"]
      556 SETTABLEKS                       R55 R54 K59 ["tag"]
      558 JUMPIFNOT                        R6 ; [+2]
      559 MOVE                             R55 R11
      560 JUMP                             ; [+4]
      561 JUMPIFNOT                        R7 ; [+2]
      562 MOVE                             R55 R12
      563 JUMP                             ; [+1]
      564 LOADNIL                          R55
      565 SETTABLEKS                       R55 R54 K98 ["backgroundStyle"]
      567 SETTABLEKS                       R34 R54 K61 ["LayoutOrder"]
      569 DUPTABLE                         R55 K108 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      570 GETTABLEKS                       R57 R0 K109 ["Collapsible"]
      572 JUMPIFEQKB                       R57 FALSE ; [+45]
      574 GETUPVAL                         R56 0
      575 GETTABLEKS                       R56 R56 K57 ["createElement"]
      577 GETUPVAL                         R57 7
      578 GETTABLEKS                       R57 R57 K110 ["Button"]
      580 DUPTABLE                         R58 K116 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      581 SETTABLEKS                       R30 R58 K111 ["icon"]
      583 GETUPVAL                         R59 7
      584 GETTABLEKS                       R59 R59 K12 ["Enums"]
      586 GETTABLEKS                       R59 R59 K117 ["ButtonVariant"]
      588 GETTABLEKS                       R59 R59 K118 ["Text"]
      590 SETTABLEKS                       R59 R58 K112 ["variant"]
      592 SETTABLEKS                       R31 R58 K113 ["onActivated"]
      594 GETUPVAL                         R59 7
      595 GETTABLEKS                       R59 R59 K12 ["Enums"]
      597 GETTABLEKS                       R59 R59 K119 ["InputSize"]
      599 GETTABLEKS                       R59 R59 K120 ["XSmall"]
      601 SETTABLEKS                       R59 R58 K114 ["size"]
      603 MOVE                             R59 R2
      604 CALL                             R59 0 1
      605 SETTABLEKS                       R59 R58 K61 ["LayoutOrder"]
      607 GETUPVAL                         R59 7
      608 GETTABLEKS                       R59 R59 K12 ["Enums"]
      610 GETTABLEKS                       R59 R59 K121 ["FillBehavior"]
      612 GETTABLEKS                       R59 R59 K122 ["Fit"]
      614 SETTABLEKS                       R59 R58 K115 ["fillBehavior"]
      616 CALL                             R56 2 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R56
      619 SETTABLEKS                       R56 R55 K104 ["ToggleButton"]
      621 GETUPVAL                         R56 0
      622 GETTABLEKS                       R56 R56 K57 ["createElement"]
      624 GETUPVAL                         R57 7
      625 GETTABLEKS                       R57 R57 K118 ["Text"]
      627 DUPTABLE                         R58 K125 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      628 NEWTABLE                         R59 2 0
      630 LOADB                            R60 1
      631 SETTABLEKS                       R60 R59 K126 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      633 GETTABLEKS                       R61 R0 K109 ["Collapsible"]
      635 JUMPIFEQKB                       R61 FALSE ; [+2]
      637 LOADB                            R60 0 +1
      638 LOADB                            R60 1
      639 SETTABLEKS                       R60 R59 K127 ["padding-left-small"]
      641 SETTABLEKS                       R59 R58 K59 ["tag"]
      643 SETTABLEKS                       R32 R58 K118 ["Text"]
      645 LOADB                            R59 1
      646 SETTABLEKS                       R59 R58 K123 ["RichText"]
      648 MOVE                             R59 R2
      649 CALL                             R59 0 1
      650 SETTABLEKS                       R59 R58 K61 ["LayoutOrder"]
      652 GETTABLEKS                       R60 R20 K38 ["enabled"]
      654 NOT                              R59 R60
      655 SETTABLEKS                       R59 R58 K124 ["Visible"]
      657 LOADK                            R59 K128 ["CompositorNode-Title"]
      658 SETTABLEKS                       R59 R58 K93 ["testId"]
      660 CALL                             R56 2 1
      661 SETTABLEKS                       R56 R55 K105 ["Title"]
      663 GETUPVAL                         R56 0
      664 GETTABLEKS                       R56 R56 K57 ["createElement"]
      666 GETUPVAL                         R57 7
      667 GETTABLEKS                       R57 R57 K129 ["TextInput"]
      669 DUPTABLE                         R58 K135 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      670 NEWTABLE                         R59 1 0
      672 LOADB                            R60 1
      673 SETTABLEKS                       R60 R59 K126 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      675 SETTABLEKS                       R59 R58 K59 ["tag"]
      677 SETTABLEKS                       R18 R58 K50 ["text"]
      679 MOVE                             R59 R2
      680 CALL                             R59 0 1
      681 SETTABLEKS                       R59 R58 K61 ["LayoutOrder"]
      683 SETTABLEKS                       R19 R58 K130 ["onChanged"]
      685 LOADK                            R59 K52 [""]
      686 SETTABLEKS                       R59 R58 K131 ["label"]
      688 GETUPVAL                         R59 7
      689 GETTABLEKS                       R59 R59 K12 ["Enums"]
      691 GETTABLEKS                       R59 R59 K119 ["InputSize"]
      693 GETTABLEKS                       R59 R59 K120 ["XSmall"]
      695 SETTABLEKS                       R59 R58 K114 ["size"]
      697 SETTABLEKS                       R21 R58 K132 ["textBoxRef"]
      699 SETTABLEKS                       R33 R58 K133 ["onFocusLost"]
      701 SETTABLEKS                       R21 R58 K82 ["ref"]
      703 GETIMPORT                        R59 K138 [UDim.new]
      705 LOADN                            R60 0
      706 LOADN                            R61 100
      707 CALL                             R59 2 1
      708 SETTABLEKS                       R59 R58 K134 ["width"]
      710 GETTABLEKS                       R59 R20 K38 ["enabled"]
      712 SETTABLEKS                       R59 R58 K124 ["Visible"]
      714 CALL                             R56 2 1
      715 SETTABLEKS                       R56 R55 K106 ["TitleInput"]
      717 GETUPVAL                         R56 0
      718 GETTABLEKS                       R56 R56 K57 ["createElement"]
      720 LOADK                            R57 K89 ["Folder"]
      721 NEWTABLE                         R58 0 0
      723 GETTABLEKS                       R59 R0 K139 ["HeaderChildren"]
      725 CALL                             R56 3 1
      726 SETTABLEKS                       R56 R55 K107 ["Children"]
      728 CALL                             R52 3 1
      729 SETTABLEKS                       R52 R51 K86 ["CompositorNodeHeader"]
      731 GETUPVAL                         R53 0
      732 GETTABLEKS                       R53 R53 K107 ["Children"]
      734 GETTABLEKS                       R53 R53 K140 ["count"]
      736 GETTABLEKS                       R54 R0 K141 ["children"]
      738 CALL                             R53 1 1
      739 LOADN                            R54 0
      740 JUMPIFNOTLT                      R54 R53 ; [+87]
      742 GETUPVAL                         R52 0
      743 GETTABLEKS                       R52 R52 K57 ["createElement"]
      745 GETUPVAL                         R53 7
      746 GETTABLEKS                       R53 R53 K58 ["View"]
      748 DUPTABLE                         R54 K142 [{"tag", "LayoutOrder"}]
      749 LOADK                            R55 K143 ["size-full-700 auto-y"]
      750 SETTABLEKS                       R55 R54 K59 ["tag"]
      752 MOVE                             R55 R2
      753 CALL                             R55 0 1
      754 SETTABLEKS                       R55 R54 K61 ["LayoutOrder"]
      756 DUPTABLE                         R55 K146 [{"Contents", "ResizeBars"}]
      757 GETUPVAL                         R56 0
      758 GETTABLEKS                       R56 R56 K57 ["createElement"]
      760 GETUPVAL                         R57 7
      761 GETTABLEKS                       R57 R57 K58 ["View"]
      763 DUPTABLE                         R58 K147 [{"tag", "ZIndex"}]
      764 LOADK                            R59 K148 ["padding-y-xsmall size-full-0 auto-y col radius-small"]
      765 SETTABLEKS                       R59 R58 K59 ["tag"]
      767 LOADN                            R59 1
      768 SETTABLEKS                       R59 R58 K62 ["ZIndex"]
      770 DUPTABLE                         R59 K150 [{"NodeProperties"}]
      771 GETUPVAL                         R60 0
      772 GETTABLEKS                       R60 R60 K57 ["createElement"]
      774 GETUPVAL                         R61 0
      775 GETTABLEKS                       R61 R61 K151 ["Fragment"]
      777 NEWTABLE                         R62 0 0
      779 GETTABLEKS                       R63 R0 K141 ["children"]
      781 CALL                             R60 3 1
      782 SETTABLEKS                       R60 R59 K149 ["NodeProperties"]
      784 CALL                             R56 3 1
      785 SETTABLEKS                       R56 R55 K144 ["Contents"]
      787 JUMPIF                           R6 ; [+35]
      788 GETUPVAL                         R56 0
      789 GETTABLEKS                       R56 R56 K57 ["createElement"]
      791 GETUPVAL                         R57 15
      792 DUPTABLE                         R58 K155 [{"tag", "nodeWidth", "OnResized", "Style", "ZIndex"}]
      793 LOADK                            R59 K102 ["radius-small"]
      794 SETTABLEKS                       R59 R58 K59 ["tag"]
      796 SETTABLEKS                       R13 R58 K152 ["nodeWidth"]
      798 SETTABLEKS                       R28 R58 K153 ["OnResized"]
      800 GETTABLEKS                       R60 R0 K56 ["Selected"]
      802 JUMPIFNOT                        R60 ; [+7]
      803 GETTABLEKS                       R59 R9 K15 ["Color"]
      805 GETTABLEKS                       R59 R59 K156 ["System"]
      807 GETTABLEKS                       R59 R59 K157 ["Neutral"]
      809 JUMP                             ; [+6]
      810 GETTABLEKS                       R59 R9 K15 ["Color"]
      812 GETTABLEKS                       R59 R59 K158 ["Stroke"]
      814 GETTABLEKS                       R59 R59 K159 ["Default"]
      816 SETTABLEKS                       R59 R58 K154 ["Style"]
      818 LOADN                            R59 2
      819 SETTABLEKS                       R59 R58 K62 ["ZIndex"]
      821 CALL                             R56 2 1
      822 JUMP                             ; [+1]
      823 LOADNIL                          R56
      824 SETTABLEKS                       R56 R55 K145 ["ResizeBars"]
      826 CALL                             R52 3 1
      827 JUMP                             ; [+1]
      828 LOADNIL                          R52
      829 SETTABLEKS                       R52 R51 K87 ["CompositorNodeContent"]
      831 CALL                             R48 3 1
      832 SETTABLEKS                       R48 R47 K78 ["Node"]
      834 GETUPVAL                         R49 13
      835 JUMPIFNOT                        R49 ; [+21]
      836 GETUPVAL                         R48 0
      837 GETTABLEKS                       R48 R48 K57 ["createElement"]
      839 GETUPVAL                         R49 7
      840 GETTABLEKS                       R49 R49 K58 ["View"]
      842 DUPTABLE                         R50 K160 [{"tag", "testId", "LayoutOrder", "ref"}]
      843 LOADK                            R51 K161 ["size-full"]
      844 SETTABLEKS                       R51 R50 K59 ["tag"]
      846 LOADK                            R51 K162 ["CompositorNode-DebugMarker"]
      847 SETTABLEKS                       R51 R50 K93 ["testId"]
      849 MOVE                             R51 R2
      850 CALL                             R51 0 1
      851 SETTABLEKS                       R51 R50 K61 ["LayoutOrder"]
      853 SETTABLEKS                       R36 R50 K82 ["ref"]
      855 CALL                             R48 2 1
      856 JUMP                             ; [+1]
      857 LOADNIL                          R48
      858 SETTABLEKS                       R48 R47 K79 ["DebugMarker"]
      860 GETUPVAL                         R48 0
      861 GETTABLEKS                       R48 R48 K57 ["createElement"]
      863 LOADK                            R49 K163 ["UIDragDetector"]
      864 NEWTABLE                         R50 8 0
      866 GETIMPORT                        R51 K167 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      868 SETTABLEKS                       R51 R50 K168 ["DragStyle"]
      870 GETIMPORT                        R51 K171 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      872 SETTABLEKS                       R51 R50 K172 ["ResponseStyle"]
      874 GETTABLEKS                       R51 R3 K173 ["getViewport"]
      876 CALL                             R51 0 1
      877 SETTABLEKS                       R51 R50 K174 ["ReferenceUIInstance"]
      879 GETUPVAL                         R51 0
      880 GETTABLEKS                       R51 R51 K175 ["Event"]
      882 GETTABLEKS                       R51 R51 K176 ["DragStart"]
      884 SETTABLE                         R25 R50 R51
      885 GETUPVAL                         R51 0
      886 GETTABLEKS                       R51 R51 K175 ["Event"]
      888 GETTABLEKS                       R51 R51 K177 ["DragContinue"]
      890 SETTABLE                         R26 R50 R51
      891 GETUPVAL                         R51 0
      892 GETTABLEKS                       R51 R51 K175 ["Event"]
      894 GETTABLEKS                       R51 R51 K178 ["DragEnd"]
      896 SETTABLE                         R27 R50 R51
      897 CALL                             R48 2 1
      898 SETTABLEKS                       R48 R47 K80 ["DragDetector"]
      900 CALL                             R44 3 1
      901 SETTABLEKS                       R44 R43 K71 ["ComponentContext"]
      903 CALL                             R40 3 -1
      904 RETURN                           R40 -1

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
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GraphContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["Graphing"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["React"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K9 ["Parent"]
       58 GETTABLEKS                       R9 R9 K15 ["ReactUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K16 ["ResizeBars"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Util"]
       72 GETTABLEKS                       R11 R11 K18 ["Signals"]
       74 GETTABLEKS                       R11 R11 K19 ["Experimental"]
       76 GETTABLEKS                       R11 R11 K20 ["SignalExperimentalUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K9 ["Parent"]
       83 GETTABLEKS                       R12 R12 K18 ["Signals"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K9 ["Parent"]
       90 GETTABLEKS                       R13 R13 K21 ["SignalsReact"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K9 ["Parent"]
       97 GETTABLEKS                       R14 R14 K22 ["TestLoader"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K11 ["Components"]
      104 GETTABLEKS                       R15 R15 K23 ["ViewportRectContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K17 ["Util"]
      111 GETTABLEKS                       R16 R16 K24 ["sanitizeParameterNames"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K26 ["useAbsoluteSize"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K27 ["useFoundationStudioTheme"]
      127 CALL                             R17 1 1
      128 GETTABLEKS                       R18 R13 K28 ["isCli"]
      130 CALL                             R18 0 1
      131 JUMPIF                           R18 ; [+3]
      132 GETTABLEKS                       R18 R13 K29 ["isFTF"]
      134 CALL                             R18 0 1
      135 DUPCLOSURE                       R19 K30 [PROTO_18]
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 RETURN                           R19 1
