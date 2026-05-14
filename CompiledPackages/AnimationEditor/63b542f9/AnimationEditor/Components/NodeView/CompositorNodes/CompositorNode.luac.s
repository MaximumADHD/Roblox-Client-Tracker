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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setNodeSizeAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

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
       27 GETIMPORT                        R3 K6 [Vector2.new]
       29 GETUPVAL                         R4 1
       30 GETUPVAL                         R7 1
       31 DIV                              R6 R7 R2
       32 FASTCALL1                        MATH_ROUND R6 ; [+2]
       33 GETIMPORT                        R5 K9 [math.round]
       35 CALL                             R5 1 1
       36 CALL                             R3 2 1
       37 GETIMPORT                        R4 K12 [task.spawn]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R3
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADN                            R2 1
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K2 [math.map]
        9 MOVE                             R3 R1
       10 LOADN                            R4 0
       11 LOADN                            R5 1
       12 LOADK                            R6 K3 [0.5]
       13 LOADN                            R7 1
       14 CALL                             R2 5 -1
       15 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["setCollapsedAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Collapsed"]
        7 NOT                              R2 R3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETIMPORT                        R0 K2 [task.spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IsParameterNode"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["GraphPayload"]
        7 GETTABLEKS                       R0 R0 K2 ["name"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K3 ["renameParameterAsync"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["GraphPayload"]
       16 GETTABLEKS                       R1 R1 K2 ["name"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 CALL                             R0 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K4 ["renameNodeAsync"]
       25 GETUPVAL                         R1 3
       26 GETUPVAL                         R2 2
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["santizeParameterNames"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["disable"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 3
       13 JUMPIFNOT                        R1 ; [+2]
       14 JUMPIFNOTEQKNIL                  R0 ; [+2]
       16 RETURN                           R0 0
       17 GETIMPORT                        R1 K5 [task.spawn]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

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
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["Selected"]
       21 SETTABLEKS                       R1 R0 K6 ["stroke-system-neutral"]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K5 ["Selected"]
       26 NOT                              R1 R2
       27 SETTABLEKS                       R1 R0 K7 ["stroke-default"]
       29 RETURN                           R0 1

PROTO_20:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K3 ["CompositorNode"]
        7 RETURN                           R0 1

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
      121 GETTABLEKS                       R13 R13 K26 ["useState"]
      123 GETUPVAL                         R14 5
      124 GETTABLEKS                       R14 R14 K27 ["CHILD_WIDTH"]
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
      263 GETTABLEKS                       R32 R4 K44 ["setNodeSizeAsync"]
      265 GETTABLEKS                       R33 R15 K45 ["observeAbsoluteSize"]
      267 MOVE                             R34 R5
      268 MOVE                             R35 R13
      269 SETLIST                          R31 R32 4 [1]
      271 CALL                             R29 2 0
      272 GETUPVAL                         R29 11
      273 GETTABLEKS                       R29 R29 K46 ["useObserveNodeWeight"]
      275 MOVE                             R30 R5
      276 CALL                             R29 1 1
      277 GETUPVAL                         R30 0
      278 GETTABLEKS                       R30 R30 K47 ["useMemo"]
      280 NEWCLOSURE                       R31 P7
      281 CAPTURE                          UPVAL U12
      282 CAPTURE                          VAL R29
      283 NEWTABLE                         R32 0 1
      285 MOVE                             R33 R29
      286 SETLIST                          R32 R33 1 [1]
      288 CALL                             R30 2 1
      289 GETUPVAL                         R31 0
      290 GETTABLEKS                       R31 R31 K47 ["useMemo"]
      292 NEWCLOSURE                       R32 P8
      293 CAPTURE                          VAL R0
      294 NEWTABLE                         R33 0 1
      296 GETTABLEKS                       R34 R0 K48 ["Collapsed"]
      298 SETLIST                          R33 R34 1 [1]
      300 CALL                             R31 2 1
      301 GETUPVAL                         R32 0
      302 GETTABLEKS                       R32 R32 K37 ["useCallback"]
      304 NEWCLOSURE                       R33 P9
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R4
      307 CAPTURE                          VAL R0
      308 NEWTABLE                         R34 0 3
      310 GETTABLEKS                       R35 R4 K49 ["setCollapsedAsync"]
      312 MOVE                             R36 R5
      313 GETTABLEKS                       R37 R0 K48 ["Collapsed"]
      315 SETLIST                          R34 R35 3 [1]
      317 CALL                             R32 2 1
      318 GETTABLEKS                       R33 R0 K50 ["text"]
      320 JUMPIF                           R33 ; [+6]
      321 GETTABLEKS                       R33 R0 K4 ["GraphPayload"]
      323 GETTABLEKS                       R33 R33 K51 ["name"]
      325 JUMPIF                           R33 ; [+1]
      326 LOADK                            R33 K52 [""]
      327 GETUPVAL                         R34 0
      328 GETTABLEKS                       R34 R34 K37 ["useCallback"]
      330 NEWCLOSURE                       R35 P10
      331 CAPTURE                          UPVAL U13
      332 CAPTURE                          VAL R18
      333 CAPTURE                          VAL R20
      334 CAPTURE                          VAL R5
      335 CAPTURE                          VAL R0
      336 CAPTURE                          VAL R4
      337 NEWTABLE                         R36 0 6
      339 MOVE                             R37 R5
      340 GETTABLEKS                       R38 R20 K41 ["disable"]
      342 GETTABLEKS                       R39 R0 K6 ["IsParameterNode"]
      344 GETTABLEKS                       R40 R0 K4 ["GraphPayload"]
      346 GETTABLEKS                       R40 R40 K51 ["name"]
      348 GETTABLEKS                       R41 R4 K53 ["renameParameterAsync"]
      350 GETTABLEKS                       R42 R4 K54 ["renameNodeAsync"]
      352 SETLIST                          R36 R37 6 [1]
      354 CALL                             R34 2 1
      355 MOVE                             R35 R2
      356 CALL                             R35 0 1
      357 GETUPVAL                         R36 0
      358 GETTABLEKS                       R36 R36 K47 ["useMemo"]
      360 DUPCLOSURE                       R37 K55 [PROTO_16]
      361 CAPTURE                          UPVAL U10
      362 NEWTABLE                         R38 0 0
      364 CALL                             R36 2 2
      365 GETUPVAL                         R38 14
      366 JUMPIFNOT                        R38 ; [+14]
      367 GETUPVAL                         R38 0
      368 GETTABLEKS                       R38 R38 K43 ["useEffect"]
      370 NEWCLOSURE                       R39 P12
      371 CAPTURE                          UPVAL U10
      372 CAPTURE                          VAL R36
      373 CAPTURE                          VAL R33
      374 NEWTABLE                         R40 0 2
      376 MOVE                             R41 R36
      377 MOVE                             R42 R33
      378 SETLIST                          R40 R41 2 [1]
      380 CALL                             R38 2 0
      381 GETUPVAL                         R38 9
      382 GETTABLEKS                       R38 R38 K30 ["useSignalBinding"]
      384 MOVE                             R39 R30
      385 CALL                             R38 1 1
      386 GETUPVAL                         R39 0
      387 GETTABLEKS                       R39 R39 K47 ["useMemo"]
      389 NEWCLOSURE                       R40 P13
      390 CAPTURE                          VAL R6
      391 CAPTURE                          VAL R0
      392 NEWTABLE                         R41 0 3
      394 GETTABLEKS                       R42 R0 K48 ["Collapsed"]
      396 MOVE                             R43 R6
      397 GETTABLEKS                       R44 R0 K56 ["Selected"]
      399 SETLIST                          R41 R42 3 [1]
      401 CALL                             R39 2 1
      402 GETUPVAL                         R40 0
      403 GETTABLEKS                       R40 R40 K47 ["useMemo"]
      405 NEWCLOSURE                       R41 P14
      406 CAPTURE                          VAL R39
      407 NEWTABLE                         R42 0 1
      409 MOVE                             R43 R39
      410 SETLIST                          R42 R43 1 [1]
      412 CALL                             R40 2 1
      413 GETUPVAL                         R41 0
      414 GETTABLEKS                       R41 R41 K57 ["createElement"]
      416 GETUPVAL                         R42 7
      417 GETTABLEKS                       R42 R42 K58 ["View"]
      419 DUPTABLE                         R43 K65 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position", "BackgroundTransparency", "BorderSizePixel"}]
      420 LOADK                            R44 K66 ["auto-y"]
      421 SETTABLEKS                       R44 R43 K59 ["tag"]
      423 GETIMPORT                        R44 K69 [UDim2.fromOffset]
      425 MOVE                             R45 R13
      426 LOADN                            R46 0
      427 CALL                             R44 2 1
      428 SETTABLEKS                       R44 R43 K60 ["Size"]
      430 GETTABLEKS                       R44 R0 K61 ["LayoutOrder"]
      432 SETTABLEKS                       R44 R43 K61 ["LayoutOrder"]
      434 GETTABLEKS                       R44 R0 K62 ["ZIndex"]
      436 SETTABLEKS                       R44 R43 K62 ["ZIndex"]
      438 SETTABLEKS                       R16 R43 K29 ["Position"]
      440 LOADN                            R44 1
      441 SETTABLEKS                       R44 R43 K63 ["BackgroundTransparency"]
      443 LOADN                            R44 0
      444 SETTABLEKS                       R44 R43 K64 ["BorderSizePixel"]
      446 DUPTABLE                         R44 K72 [{"UIScale", "ComponentContext"}]
      447 GETUPVAL                         R45 0
      448 GETTABLEKS                       R45 R45 K57 ["createElement"]
      450 LOADK                            R46 K70 ["UIScale"]
      451 DUPTABLE                         R47 K74 [{"Scale"}]
      452 SETTABLEKS                       R17 R47 K73 ["Scale"]
      454 CALL                             R45 2 1
      455 SETTABLEKS                       R45 R44 K70 ["UIScale"]
      457 GETUPVAL                         R45 0
      458 GETTABLEKS                       R45 R45 K57 ["createElement"]
      460 GETUPVAL                         R46 15
      461 GETTABLEKS                       R46 R46 K75 ["Provider"]
      463 DUPTABLE                         R47 K77 [{"absoluteSizeHook"}]
      464 SETTABLEKS                       R15 R47 K76 ["absoluteSizeHook"]
      466 DUPTABLE                         R48 K81 [{"Node", "DebugMarker", "DragDetector"}]
      467 GETUPVAL                         R49 0
      468 GETTABLEKS                       R49 R49 K57 ["createElement"]
      470 GETUPVAL                         R50 7
      471 GETTABLEKS                       R50 R50 K58 ["View"]
      473 DUPTABLE                         R51 K83 [{"tag", "Size", "ref", "ZIndex"}]
      474 SETTABLEKS                       R40 R51 K59 ["tag"]
      476 GETIMPORT                        R52 K69 [UDim2.fromOffset]
      478 MOVE                             R53 R13
      479 LOADN                            R54 0
      480 CALL                             R52 2 1
      481 SETTABLEKS                       R52 R51 K60 ["Size"]
      483 GETTABLEKS                       R52 R15 K84 ["setFrame"]
      485 SETTABLEKS                       R52 R51 K82 ["ref"]
      487 LOADN                            R52 1
      488 SETTABLEKS                       R52 R51 K62 ["ZIndex"]
      490 DUPTABLE                         R52 K88 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent"}]
      491 GETUPVAL                         R53 0
      492 GETTABLEKS                       R53 R53 K57 ["createElement"]
      494 LOADK                            R54 K89 ["Folder"]
      495 NEWTABLE                         R55 0 0
      497 DUPTABLE                         R56 K91 [{"Cover"}]
      498 GETUPVAL                         R57 0
      499 GETTABLEKS                       R57 R57 K57 ["createElement"]
      501 GETUPVAL                         R58 7
      502 GETTABLEKS                       R58 R58 K58 ["View"]
      504 DUPTABLE                         R59 K93 [{"tag", "Size", "GroupTransparency", "ZIndex"}]
      505 SETTABLEKS                       R39 R59 K59 ["tag"]
      507 GETIMPORT                        R60 K95 [UDim2.fromScale]
      509 LOADN                            R61 1
      510 LOADN                            R62 1
      511 CALL                             R60 2 1
      512 SETTABLEKS                       R60 R59 K60 ["Size"]
      514 SETTABLEKS                       R38 R59 K92 ["GroupTransparency"]
      516 LOADN                            R60 2
      517 SETTABLEKS                       R60 R59 K62 ["ZIndex"]
      519 CALL                             R57 2 1
      520 SETTABLEKS                       R57 R56 K90 ["Cover"]
      522 CALL                             R53 3 1
      523 SETTABLEKS                       R53 R52 K85 ["CoverContainer"]
      525 GETUPVAL                         R53 0
      526 GETTABLEKS                       R53 R53 K57 ["createElement"]
      528 GETUPVAL                         R54 7
      529 GETTABLEKS                       R54 R54 K58 ["View"]
      531 DUPTABLE                         R55 K97 [{"tag", "backgroundStyle", "LayoutOrder"}]
      532 NEWTABLE                         R56 4 0
      534 LOADB                            R57 1
      535 SETTABLEKS                       R57 R56 K98 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      537 NOT                              R57 R6
      538 JUMPIFNOT                        R57 ; [+1]
      539 NOT                              R57 R7
      540 SETTABLEKS                       R57 R56 K99 ["radius-small bg-shift-200"]
      542 MOVE                             R57 R6
      543 JUMPIFNOT                        R57 ; [+3]
      544 GETTABLEKS                       R58 R0 K48 ["Collapsed"]
      546 NOT                              R57 R58
      547 SETTABLEKS                       R57 R56 K100 ["radius-small"]
      549 MOVE                             R57 R6
      550 JUMPIFNOT                        R57 ; [+2]
      551 GETTABLEKS                       R57 R0 K48 ["Collapsed"]
      553 SETTABLEKS                       R57 R56 K101 ["radius-large"]
      555 SETTABLEKS                       R56 R55 K59 ["tag"]
      557 JUMPIFNOT                        R6 ; [+2]
      558 MOVE                             R56 R11
      559 JUMP                             ; [+4]
      560 JUMPIFNOT                        R7 ; [+2]
      561 MOVE                             R56 R12
      562 JUMP                             ; [+1]
      563 LOADNIL                          R56
      564 SETTABLEKS                       R56 R55 K96 ["backgroundStyle"]
      566 SETTABLEKS                       R35 R55 K61 ["LayoutOrder"]
      568 DUPTABLE                         R56 K106 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      569 GETTABLEKS                       R58 R0 K107 ["Collapsible"]
      571 JUMPIFEQKB                       R58 FALSE ; [+45]
      573 GETUPVAL                         R57 0
      574 GETTABLEKS                       R57 R57 K57 ["createElement"]
      576 GETUPVAL                         R58 7
      577 GETTABLEKS                       R58 R58 K108 ["Button"]
      579 DUPTABLE                         R59 K114 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      580 SETTABLEKS                       R31 R59 K109 ["icon"]
      582 GETUPVAL                         R60 7
      583 GETTABLEKS                       R60 R60 K12 ["Enums"]
      585 GETTABLEKS                       R60 R60 K115 ["ButtonVariant"]
      587 GETTABLEKS                       R60 R60 K116 ["Text"]
      589 SETTABLEKS                       R60 R59 K110 ["variant"]
      591 SETTABLEKS                       R32 R59 K111 ["onActivated"]
      593 GETUPVAL                         R60 7
      594 GETTABLEKS                       R60 R60 K12 ["Enums"]
      596 GETTABLEKS                       R60 R60 K117 ["InputSize"]
      598 GETTABLEKS                       R60 R60 K118 ["XSmall"]
      600 SETTABLEKS                       R60 R59 K112 ["size"]
      602 MOVE                             R60 R2
      603 CALL                             R60 0 1
      604 SETTABLEKS                       R60 R59 K61 ["LayoutOrder"]
      606 GETUPVAL                         R60 7
      607 GETTABLEKS                       R60 R60 K12 ["Enums"]
      609 GETTABLEKS                       R60 R60 K119 ["FillBehavior"]
      611 GETTABLEKS                       R60 R60 K120 ["Fit"]
      613 SETTABLEKS                       R60 R59 K113 ["fillBehavior"]
      615 CALL                             R57 2 1
      616 JUMP                             ; [+1]
      617 LOADNIL                          R57
      618 SETTABLEKS                       R57 R56 K102 ["ToggleButton"]
      620 GETUPVAL                         R57 0
      621 GETTABLEKS                       R57 R57 K57 ["createElement"]
      623 GETUPVAL                         R58 7
      624 GETTABLEKS                       R58 R58 K116 ["Text"]
      626 DUPTABLE                         R59 K124 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      627 NEWTABLE                         R60 2 0
      629 LOADB                            R61 1
      630 SETTABLEKS                       R61 R60 K125 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      632 GETTABLEKS                       R62 R0 K107 ["Collapsible"]
      634 JUMPIFEQKB                       R62 FALSE ; [+2]
      636 LOADB                            R61 0 +1
      637 LOADB                            R61 1
      638 SETTABLEKS                       R61 R60 K126 ["padding-left-small"]
      640 SETTABLEKS                       R60 R59 K59 ["tag"]
      642 SETTABLEKS                       R33 R59 K116 ["Text"]
      644 LOADB                            R60 1
      645 SETTABLEKS                       R60 R59 K121 ["RichText"]
      647 MOVE                             R60 R2
      648 CALL                             R60 0 1
      649 SETTABLEKS                       R60 R59 K61 ["LayoutOrder"]
      651 GETTABLEKS                       R61 R20 K38 ["enabled"]
      653 NOT                              R60 R61
      654 SETTABLEKS                       R60 R59 K122 ["Visible"]
      656 LOADK                            R60 K127 ["CompositorNode-Title"]
      657 SETTABLEKS                       R60 R59 K123 ["testId"]
      659 CALL                             R57 2 1
      660 SETTABLEKS                       R57 R56 K103 ["Title"]
      662 GETUPVAL                         R57 0
      663 GETTABLEKS                       R57 R57 K57 ["createElement"]
      665 GETUPVAL                         R58 7
      666 GETTABLEKS                       R58 R58 K128 ["TextInput"]
      668 DUPTABLE                         R59 K134 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      669 NEWTABLE                         R60 1 0
      671 LOADB                            R61 1
      672 SETTABLEKS                       R61 R60 K125 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      674 SETTABLEKS                       R60 R59 K59 ["tag"]
      676 SETTABLEKS                       R18 R59 K50 ["text"]
      678 MOVE                             R60 R2
      679 CALL                             R60 0 1
      680 SETTABLEKS                       R60 R59 K61 ["LayoutOrder"]
      682 SETTABLEKS                       R19 R59 K129 ["onChanged"]
      684 LOADK                            R60 K52 [""]
      685 SETTABLEKS                       R60 R59 K130 ["label"]
      687 GETUPVAL                         R60 7
      688 GETTABLEKS                       R60 R60 K12 ["Enums"]
      690 GETTABLEKS                       R60 R60 K117 ["InputSize"]
      692 GETTABLEKS                       R60 R60 K118 ["XSmall"]
      694 SETTABLEKS                       R60 R59 K112 ["size"]
      696 SETTABLEKS                       R21 R59 K131 ["textBoxRef"]
      698 SETTABLEKS                       R34 R59 K132 ["onFocusLost"]
      700 SETTABLEKS                       R21 R59 K82 ["ref"]
      702 GETIMPORT                        R60 K137 [UDim.new]
      704 LOADN                            R61 0
      705 LOADN                            R62 100
      706 CALL                             R60 2 1
      707 SETTABLEKS                       R60 R59 K133 ["width"]
      709 GETTABLEKS                       R60 R20 K38 ["enabled"]
      711 SETTABLEKS                       R60 R59 K122 ["Visible"]
      713 CALL                             R57 2 1
      714 SETTABLEKS                       R57 R56 K104 ["TitleInput"]
      716 GETUPVAL                         R57 0
      717 GETTABLEKS                       R57 R57 K57 ["createElement"]
      719 LOADK                            R58 K89 ["Folder"]
      720 NEWTABLE                         R59 0 0
      722 GETTABLEKS                       R60 R0 K138 ["HeaderChildren"]
      724 CALL                             R57 3 1
      725 SETTABLEKS                       R57 R56 K105 ["Children"]
      727 CALL                             R53 3 1
      728 SETTABLEKS                       R53 R52 K86 ["CompositorNodeHeader"]
      730 GETTABLEKS                       R54 R0 K139 ["children"]
      732 JUMPIFNOT                        R54 ; [+92]
      733 GETIMPORT                        R54 K141 [next]
      735 GETTABLEKS                       R55 R0 K139 ["children"]
      737 CALL                             R54 1 1
      738 JUMPIFNOT                        R54 ; [+86]
      739 GETUPVAL                         R53 0
      740 GETTABLEKS                       R53 R53 K57 ["createElement"]
      742 GETUPVAL                         R54 7
      743 GETTABLEKS                       R54 R54 K58 ["View"]
      745 DUPTABLE                         R55 K142 [{"tag", "LayoutOrder"}]
      746 LOADK                            R56 K143 ["size-full-700 auto-y"]
      747 SETTABLEKS                       R56 R55 K59 ["tag"]
      749 MOVE                             R56 R2
      750 CALL                             R56 0 1
      751 SETTABLEKS                       R56 R55 K61 ["LayoutOrder"]
      753 DUPTABLE                         R56 K146 [{"Contents", "ResizeBars"}]
      754 GETUPVAL                         R57 0
      755 GETTABLEKS                       R57 R57 K57 ["createElement"]
      757 GETUPVAL                         R58 7
      758 GETTABLEKS                       R58 R58 K58 ["View"]
      760 DUPTABLE                         R59 K147 [{"tag", "ZIndex"}]
      761 LOADK                            R60 K148 ["padding-y-xsmall size-full-0 auto-y col radius-small"]
      762 SETTABLEKS                       R60 R59 K59 ["tag"]
      764 LOADN                            R60 1
      765 SETTABLEKS                       R60 R59 K62 ["ZIndex"]
      767 DUPTABLE                         R60 K150 [{"NodeProperties"}]
      768 GETUPVAL                         R61 0
      769 GETTABLEKS                       R61 R61 K57 ["createElement"]
      771 GETUPVAL                         R62 0
      772 GETTABLEKS                       R62 R62 K151 ["Fragment"]
      774 NEWTABLE                         R63 0 0
      776 GETTABLEKS                       R64 R0 K139 ["children"]
      778 CALL                             R61 3 1
      779 SETTABLEKS                       R61 R60 K149 ["NodeProperties"]
      781 CALL                             R57 3 1
      782 SETTABLEKS                       R57 R56 K144 ["Contents"]
      784 JUMPIF                           R6 ; [+35]
      785 GETUPVAL                         R57 0
      786 GETTABLEKS                       R57 R57 K57 ["createElement"]
      788 GETUPVAL                         R58 16
      789 DUPTABLE                         R59 K155 [{"tag", "nodeWidth", "OnResized", "Style", "ZIndex"}]
      790 LOADK                            R60 K100 ["radius-small"]
      791 SETTABLEKS                       R60 R59 K59 ["tag"]
      793 SETTABLEKS                       R13 R59 K152 ["nodeWidth"]
      795 SETTABLEKS                       R28 R59 K153 ["OnResized"]
      797 GETTABLEKS                       R61 R0 K56 ["Selected"]
      799 JUMPIFNOT                        R61 ; [+7]
      800 GETTABLEKS                       R60 R9 K15 ["Color"]
      802 GETTABLEKS                       R60 R60 K156 ["System"]
      804 GETTABLEKS                       R60 R60 K157 ["Neutral"]
      806 JUMP                             ; [+6]
      807 GETTABLEKS                       R60 R9 K15 ["Color"]
      809 GETTABLEKS                       R60 R60 K158 ["Stroke"]
      811 GETTABLEKS                       R60 R60 K159 ["Default"]
      813 SETTABLEKS                       R60 R59 K154 ["Style"]
      815 LOADN                            R60 2
      816 SETTABLEKS                       R60 R59 K62 ["ZIndex"]
      818 CALL                             R57 2 1
      819 JUMP                             ; [+1]
      820 LOADNIL                          R57
      821 SETTABLEKS                       R57 R56 K145 ["ResizeBars"]
      823 CALL                             R53 3 1
      824 JUMP                             ; [+1]
      825 LOADNIL                          R53
      826 SETTABLEKS                       R53 R52 K87 ["CompositorNodeContent"]
      828 CALL                             R49 3 1
      829 SETTABLEKS                       R49 R48 K78 ["Node"]
      831 GETUPVAL                         R50 14
      832 JUMPIFNOT                        R50 ; [+21]
      833 GETUPVAL                         R49 0
      834 GETTABLEKS                       R49 R49 K57 ["createElement"]
      836 GETUPVAL                         R50 7
      837 GETTABLEKS                       R50 R50 K58 ["View"]
      839 DUPTABLE                         R51 K160 [{"tag", "testId", "LayoutOrder", "ref"}]
      840 LOADK                            R52 K161 ["size-full"]
      841 SETTABLEKS                       R52 R51 K59 ["tag"]
      843 LOADK                            R52 K162 ["CompositorNode-DebugMarker"]
      844 SETTABLEKS                       R52 R51 K123 ["testId"]
      846 MOVE                             R52 R2
      847 CALL                             R52 0 1
      848 SETTABLEKS                       R52 R51 K61 ["LayoutOrder"]
      850 SETTABLEKS                       R37 R51 K82 ["ref"]
      852 CALL                             R49 2 1
      853 JUMP                             ; [+1]
      854 LOADNIL                          R49
      855 SETTABLEKS                       R49 R48 K79 ["DebugMarker"]
      857 GETUPVAL                         R49 0
      858 GETTABLEKS                       R49 R49 K57 ["createElement"]
      860 LOADK                            R50 K163 ["UIDragDetector"]
      861 NEWTABLE                         R51 8 0
      863 GETIMPORT                        R52 K167 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      865 SETTABLEKS                       R52 R51 K168 ["DragStyle"]
      867 GETIMPORT                        R52 K171 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      869 SETTABLEKS                       R52 R51 K172 ["ResponseStyle"]
      871 GETTABLEKS                       R52 R3 K173 ["getViewport"]
      873 CALL                             R52 0 1
      874 SETTABLEKS                       R52 R51 K174 ["ReferenceUIInstance"]
      876 GETUPVAL                         R52 0
      877 GETTABLEKS                       R52 R52 K175 ["Event"]
      879 GETTABLEKS                       R52 R52 K176 ["DragStart"]
      881 SETTABLE                         R25 R51 R52
      882 GETUPVAL                         R52 0
      883 GETTABLEKS                       R52 R52 K175 ["Event"]
      885 GETTABLEKS                       R52 R52 K177 ["DragContinue"]
      887 SETTABLE                         R26 R51 R52
      888 GETUPVAL                         R52 0
      889 GETTABLEKS                       R52 R52 K175 ["Event"]
      891 GETTABLEKS                       R52 R52 K178 ["DragEnd"]
      893 SETTABLE                         R27 R51 R52
      894 CALL                             R49 2 1
      895 SETTABLEKS                       R49 R48 K80 ["DragDetector"]
      897 CALL                             R45 3 1
      898 SETTABLEKS                       R45 R44 K71 ["ComponentContext"]
      900 CALL                             R41 3 -1
      901 RETURN                           R41 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R2 K9 ["CompositorNodeComponentContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["NodeView"]
       24 GETTABLEKS                       R3 R3 K8 ["CompositorNodes"]
       26 GETTABLEKS                       R3 R3 K10 ["CompositorStateUtils"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Parent"]
       40 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Parent"]
       47 GETTABLEKS                       R6 R6 K15 ["Graphing"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K16 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K17 ["NativeGraphContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K16 ["Contexts"]
       61 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       63 GETTABLEKS                       R8 R8 K18 ["NativeGraphUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K13 ["Parent"]
       75 GETTABLEKS                       R10 R10 K20 ["React"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K13 ["Parent"]
       82 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K6 ["Components"]
       89 GETTABLEKS                       R12 R12 K7 ["NodeView"]
       91 GETTABLEKS                       R12 R12 K22 ["ResizeBars"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K11 ["Util"]
       98 GETTABLEKS                       R13 R13 K23 ["Signals"]
      100 GETTABLEKS                       R13 R13 K24 ["Experimental"]
      102 GETTABLEKS                       R13 R13 K25 ["SignalExperimentalUtils"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K13 ["Parent"]
      109 GETTABLEKS                       R14 R14 K23 ["Signals"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R15 R0 K13 ["Parent"]
      116 GETTABLEKS                       R15 R15 K26 ["SignalsReact"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R16 R0 K13 ["Parent"]
      123 GETTABLEKS                       R16 R16 K27 ["TestLoader"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R17 R0 K16 ["Contexts"]
      130 GETTABLEKS                       R17 R17 K28 ["ViewportRectContext"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R18 R0 K29 ["Hooks"]
      137 GETTABLEKS                       R18 R18 K30 ["useAbsoluteSize"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      144 GETTABLEKS                       R19 R19 K31 ["useFoundationStudioTheme"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R19 R15 K32 ["isCli"]
      149 CALL                             R19 0 1
      150 JUMPIF                           R19 ; [+3]
      151 GETTABLEKS                       R19 R15 K33 ["isFTF"]
      153 CALL                             R19 0 1
      154 DUPCLOSURE                       R20 K34 [PROTO_21]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R11
      172 RETURN                           R20 1
