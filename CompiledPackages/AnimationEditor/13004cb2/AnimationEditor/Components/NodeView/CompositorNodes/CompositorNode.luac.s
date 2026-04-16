PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETIMPORT                        R0 K2 [UDim2.fromScale]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K3 ["X"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K4 ["Y"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1
       12 GETIMPORT                        R0 K2 [UDim2.fromScale]
       14 LOADN                            R1 0
       15 LOADN                            R2 0
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["editName"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["enable"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K2 ["current"]
       16 GETTABLEKS                       R0 R1 K3 ["focus"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIF                           R2 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["enabled"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K0 ["current"]
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
       47 GETUPVAL                         R4 4
       48 GETTABLEKS                       R3 R4 K13 ["OnDragStart"]
       50 JUMPIFNOT                        R3 ; [+13]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R3 R4 K13 ["OnDragStart"]
       54 GETUPVAL                         R5 5
       55 GETTABLEKS                       R4 R5 K14 ["viewToPlot"]
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R5 R6 K15 ["absToView"]
       60 MOVE                             R6 R1
       61 CALL                             R5 1 -1
       62 CALL                             R4 -1 -1
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["OnDragMoved"]
        7 JUMPIFNOT                        R3 ; [+13]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["OnDragMoved"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K2 ["viewToPlot"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K3 ["absToView"]
       17 MOVE                             R6 R1
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 -1
       20 CALL                             R3 -1 0
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K4 ["disable"]
       24 CALL                             R3 0 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETTABLEKS                       R5 R2 K1 ["initialPosition"]
        6 SUB                              R4 R5 R1
        7 GETTABLEKS                       R3 R4 K2 ["Magnitude"]
        9 GETUPVAL                         R4 0
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K0 ["current"]
       13 LOADN                            R4 5
       14 JUMPIFNOTLT                      R4 R3 ; [+5]
       16 GETUPVAL                         R4 1
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K0 ["current"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K3 ["OnDragEnded"]
       23 JUMPIFNOT                        R4 ; [+13]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K3 ["OnDragEnded"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K4 ["viewToPlot"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K5 ["absToView"]
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
        1 GETTABLEKS                       R0 R1 K0 ["setNodeSizeAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeAbsoluteSize"]
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
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["createEffect"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setCollapsedAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["Collapsed"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["IsParameterNode"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["GraphPayload"]
        7 GETTABLEKS                       R0 R1 K2 ["name"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K3 ["renameParameterAsync"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
       16 GETTABLEKS                       R1 R2 K2 ["name"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 CALL                             R0 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K4 ["renameNodeAsync"]
       25 GETUPVAL                         R1 3
       26 GETUPVAL                         R2 2
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["santizeParameterNames"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["disable"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createEffect"]
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
       19 GETTABLEKS                       R1 R2 K5 ["Selected"]
       21 SETTABLEKS                       R1 R0 K6 ["stroke-system-neutral"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K5 ["Selected"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["useContext"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["CanvasContext"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["useContext"]
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R5 R6 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       27 JUMPIFNOT                        R6 ; [+5]
       28 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       30 GETTABLEKS                       R5 R6 K5 ["id"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 GETTABLEKS                       R6 R0 K6 ["IsParameterNode"]
       36 JUMPIF                           R6 ; [+14]
       37 GETTABLEKS                       R6 R0 K4 ["GraphPayload"]
       39 JUMPIFNOT                        R6 ; [+11]
       40 GETTABLEKS                       R8 R0 K4 ["GraphPayload"]
       42 GETTABLEKS                       R7 R8 K7 ["className"]
       44 GETUPVAL                         R9 5
       45 GETTABLEKS                       R8 R9 K8 ["PARAMETER_NODE_CLASSNAME"]
       47 JUMPIFEQ                         R7 R8 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 GETTABLEKS                       R7 R0 K9 ["IsGeneric"]
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R8 R9 K10 ["useSignalState"]
       56 GETTABLEKS                       R9 R1 K11 ["observeZoomRatio"]
       58 CALL                             R8 1 1
       59 GETUPVAL                         R9 7
       60 CALL                             R9 0 1
       61 GETUPVAL                         R12 8
       62 GETTABLEKS                       R11 R12 K12 ["Hooks"]
       64 GETTABLEKS                       R10 R11 K13 ["useTokens"]
       66 CALL                             R10 0 1
       67 GETUPVAL                         R15 8
       68 GETTABLEKS                       R14 R15 K14 ["Enums"]
       70 GETTABLEKS                       R13 R14 K15 ["Theme"]
       72 GETTABLEKS                       R12 R13 K16 ["Dark"]
       74 JUMPIFNOTEQ                      R9 R12 ; [+10]
       76 GETTABLEKS                       R14 R10 K17 ["Color"]
       78 GETTABLEKS                       R13 R14 K18 ["Extended"]
       80 GETTABLEKS                       R12 R13 K19 ["Green"]
       82 GETTABLEKS                       R11 R12 K20 ["Green_1300"]
       84 JUMP                             ; [+8]
       85 GETTABLEKS                       R14 R10 K17 ["Color"]
       87 GETTABLEKS                       R13 R14 K18 ["Extended"]
       89 GETTABLEKS                       R12 R13 K19 ["Green"]
       91 GETTABLEKS                       R11 R12 K21 ["Green_100"]
       93 GETUPVAL                         R14 8
       94 GETTABLEKS                       R13 R14 K12 ["Hooks"]
       96 GETTABLEKS                       R12 R13 K22 ["useCumulativeBackground"]
       98 MOVE                             R13 R11
       99 GETTABLEKS                       R16 R10 K17 ["Color"]
      101 GETTABLEKS                       R15 R16 K23 ["Shift"]
      103 GETTABLEKS                       R14 R15 K24 ["Shift_100"]
      105 CALL                             R12 2 1
      106 GETUPVAL                         R15 8
      107 GETTABLEKS                       R14 R15 K12 ["Hooks"]
      109 GETTABLEKS                       R13 R14 K22 ["useCumulativeBackground"]
      111 GETTABLEKS                       R17 R10 K17 ["Color"]
      113 GETTABLEKS                       R16 R17 K18 ["Extended"]
      115 GETTABLEKS                       R15 R16 K25 ["Purple"]
      117 GETTABLEKS                       R14 R15 K26 ["Purple_800"]
      119 GETTABLEKS                       R17 R10 K17 ["Color"]
      121 GETTABLEKS                       R16 R17 K23 ["Shift"]
      123 GETTABLEKS                       R15 R16 K27 ["Shift_200"]
      125 CALL                             R13 2 1
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R14 R15 K28 ["useState"]
      129 GETUPVAL                         R16 5
      130 GETTABLEKS                       R15 R16 K29 ["CHILD_WIDTH"]
      132 CALL                             R14 1 2
      133 GETUPVAL                         R16 9
      134 CALL                             R16 0 1
      135 GETTABLEKS                       R17 R3 K30 ["plotToView"]
      137 GETTABLEKS                       R18 R0 K31 ["Position"]
      139 CALL                             R17 1 1
      140 GETUPVAL                         R19 0
      141 GETTABLEKS                       R18 R19 K32 ["useMemo"]
      143 NEWCLOSURE                       R19 P0
      144 CAPTURE                          VAL R17
      145 NEWTABLE                         R20 0 1
      147 MOVE                             R21 R17
      148 SETLIST                          R20 R21 1 [1]
      150 CALL                             R18 2 1
      151 GETUPVAL                         R20 0
      152 GETTABLEKS                       R19 R20 K33 ["useBinding"]
      154 GETTABLEKS                       R20 R0 K34 ["editName"]
      156 CALL                             R19 1 2
      157 GETUPVAL                         R22 2
      158 GETTABLEKS                       R21 R22 K35 ["useToggleState"]
      160 LOADB                            R22 0
      161 CALL                             R21 1 1
      162 GETUPVAL                         R23 0
      163 GETTABLEKS                       R22 R23 K36 ["useRef"]
      165 LOADNIL                          R23
      166 CALL                             R22 1 1
      167 GETUPVAL                         R24 2
      168 GETTABLEKS                       R23 R24 K37 ["useEventCallback"]
      170 NEWCLOSURE                       R24 P1
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R22
      175 CALL                             R23 1 1
      176 GETUPVAL                         R25 0
      177 GETTABLEKS                       R24 R25 K36 ["useRef"]
      179 LOADNIL                          R25
      180 CALL                             R24 1 1
      181 GETUPVAL                         R26 0
      182 GETTABLEKS                       R25 R26 K36 ["useRef"]
      184 LOADN                            R26 0
      185 CALL                             R25 1 1
      186 GETUPVAL                         R27 0
      187 GETTABLEKS                       R26 R27 K38 ["useCallback"]
      189 NEWCLOSURE                       R27 P2
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R25
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R3
      196 NEWTABLE                         R28 0 4
      198 MOVE                             R29 R3
      199 GETTABLEKS                       R30 R21 K39 ["enabled"]
      201 GETTABLEKS                       R31 R0 K40 ["OnDragStart"]
      203 MOVE                             R32 R23
      204 SETLIST                          R28 R29 4 [1]
      206 CALL                             R26 2 1
      207 GETUPVAL                         R28 0
      208 GETTABLEKS                       R27 R28 K38 ["useCallback"]
      210 NEWCLOSURE                       R28 P3
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R21
      215 NEWTABLE                         R29 0 5
      217 MOVE                             R30 R3
      218 MOVE                             R31 R24
      219 GETTABLEKS                       R32 R0 K41 ["OnDragMoved"]
      221 MOVE                             R33 R5
      222 GETTABLEKS                       R34 R21 K42 ["disable"]
      224 SETLIST                          R29 R30 5 [1]
      226 CALL                             R27 2 1
      227 GETUPVAL                         R29 0
      228 GETTABLEKS                       R28 R29 K38 ["useCallback"]
      230 NEWCLOSURE                       R29 P4
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R25
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R3
      235 NEWTABLE                         R30 0 4
      237 MOVE                             R31 R3
      238 MOVE                             R32 R24
      239 GETTABLEKS                       R33 R0 K43 ["OnDragEnded"]
      241 MOVE                             R34 R5
      242 SETLIST                          R30 R31 4 [1]
      244 CALL                             R28 2 1
      245 GETUPVAL                         R30 0
      246 GETTABLEKS                       R29 R30 K38 ["useCallback"]
      248 NEWCLOSURE                       R30 P5
      249 CAPTURE                          VAL R15
      250 NEWTABLE                         R31 0 1
      252 MOVE                             R32 R15
      253 SETLIST                          R31 R32 1 [1]
      255 CALL                             R29 2 1
      256 GETUPVAL                         R31 0
      257 GETTABLEKS                       R30 R31 K44 ["useEffect"]
      259 NEWCLOSURE                       R31 P6
      260 CAPTURE                          VAL R5
      261 CAPTURE                          UPVAL U10
      262 CAPTURE                          VAL R16
      263 CAPTURE                          VAL R14
      264 CAPTURE                          VAL R4
      265 NEWTABLE                         R32 0 4
      267 GETTABLEKS                       R33 R4 K45 ["setNodeSizeAsync"]
      269 GETTABLEKS                       R34 R16 K46 ["observeAbsoluteSize"]
      271 MOVE                             R35 R5
      272 MOVE                             R36 R14
      273 SETLIST                          R32 R33 4 [1]
      275 CALL                             R30 2 0
      276 GETUPVAL                         R31 11
      277 GETTABLEKS                       R30 R31 K47 ["useObserveNodeWeight"]
      279 MOVE                             R31 R5
      280 CALL                             R30 1 1
      281 GETUPVAL                         R32 0
      282 GETTABLEKS                       R31 R32 K32 ["useMemo"]
      284 NEWCLOSURE                       R32 P7
      285 CAPTURE                          UPVAL U12
      286 CAPTURE                          VAL R30
      287 NEWTABLE                         R33 0 1
      289 MOVE                             R34 R30
      290 SETLIST                          R33 R34 1 [1]
      292 CALL                             R31 2 1
      293 GETUPVAL                         R33 0
      294 GETTABLEKS                       R32 R33 K32 ["useMemo"]
      296 NEWCLOSURE                       R33 P8
      297 CAPTURE                          VAL R0
      298 NEWTABLE                         R34 0 1
      300 GETTABLEKS                       R35 R0 K48 ["Collapsed"]
      302 SETLIST                          R34 R35 1 [1]
      304 CALL                             R32 2 1
      305 GETUPVAL                         R34 0
      306 GETTABLEKS                       R33 R34 K38 ["useCallback"]
      308 NEWCLOSURE                       R34 P9
      309 CAPTURE                          VAL R5
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R0
      312 NEWTABLE                         R35 0 3
      314 GETTABLEKS                       R36 R4 K49 ["setCollapsedAsync"]
      316 MOVE                             R37 R5
      317 GETTABLEKS                       R38 R0 K48 ["Collapsed"]
      319 SETLIST                          R35 R36 3 [1]
      321 CALL                             R33 2 1
      322 GETTABLEKS                       R34 R0 K50 ["text"]
      324 JUMPIF                           R34 ; [+6]
      325 GETTABLEKS                       R35 R0 K4 ["GraphPayload"]
      327 GETTABLEKS                       R34 R35 K51 ["name"]
      329 JUMPIF                           R34 ; [+1]
      330 LOADK                            R34 K52 [""]
      331 GETUPVAL                         R36 0
      332 GETTABLEKS                       R35 R36 K38 ["useCallback"]
      334 NEWCLOSURE                       R36 P10
      335 CAPTURE                          UPVAL U13
      336 CAPTURE                          VAL R19
      337 CAPTURE                          VAL R21
      338 CAPTURE                          VAL R5
      339 CAPTURE                          VAL R0
      340 CAPTURE                          VAL R4
      341 NEWTABLE                         R37 0 6
      343 MOVE                             R38 R5
      344 GETTABLEKS                       R39 R21 K42 ["disable"]
      346 GETTABLEKS                       R40 R0 K6 ["IsParameterNode"]
      348 GETTABLEKS                       R42 R0 K4 ["GraphPayload"]
      350 GETTABLEKS                       R41 R42 K51 ["name"]
      352 GETTABLEKS                       R42 R4 K53 ["renameParameterAsync"]
      354 GETTABLEKS                       R43 R4 K54 ["renameNodeAsync"]
      356 SETLIST                          R37 R38 6 [1]
      358 CALL                             R35 2 1
      359 MOVE                             R36 R2
      360 CALL                             R36 0 1
      361 GETUPVAL                         R38 0
      362 GETTABLEKS                       R37 R38 K32 ["useMemo"]
      364 DUPCLOSURE                       R38 K55 [PROTO_16]
      365 CAPTURE                          UPVAL U10
      366 NEWTABLE                         R39 0 0
      368 CALL                             R37 2 2
      369 GETUPVAL                         R39 14
      370 JUMPIFNOT                        R39 ; [+14]
      371 GETUPVAL                         R40 0
      372 GETTABLEKS                       R39 R40 K44 ["useEffect"]
      374 NEWCLOSURE                       R40 P12
      375 CAPTURE                          UPVAL U10
      376 CAPTURE                          VAL R37
      377 CAPTURE                          VAL R34
      378 NEWTABLE                         R41 0 2
      380 MOVE                             R42 R37
      381 MOVE                             R43 R34
      382 SETLIST                          R41 R42 2 [1]
      384 CALL                             R39 2 0
      385 GETUPVAL                         R40 6
      386 GETTABLEKS                       R39 R40 K56 ["useSignalBinding"]
      388 MOVE                             R40 R31
      389 CALL                             R39 1 1
      390 GETUPVAL                         R41 0
      391 GETTABLEKS                       R40 R41 K32 ["useMemo"]
      393 NEWCLOSURE                       R41 P13
      394 CAPTURE                          VAL R6
      395 CAPTURE                          VAL R0
      396 NEWTABLE                         R42 0 3
      398 GETTABLEKS                       R43 R0 K48 ["Collapsed"]
      400 MOVE                             R44 R6
      401 GETTABLEKS                       R45 R0 K57 ["Selected"]
      403 SETLIST                          R42 R43 3 [1]
      405 CALL                             R40 2 1
      406 GETUPVAL                         R42 0
      407 GETTABLEKS                       R41 R42 K32 ["useMemo"]
      409 NEWCLOSURE                       R42 P14
      410 CAPTURE                          VAL R40
      411 NEWTABLE                         R43 0 1
      413 MOVE                             R44 R40
      414 SETLIST                          R43 R44 1 [1]
      416 CALL                             R41 2 1
      417 GETUPVAL                         R43 0
      418 GETTABLEKS                       R42 R43 K58 ["createElement"]
      420 GETUPVAL                         R44 8
      421 GETTABLEKS                       R43 R44 K59 ["View"]
      423 DUPTABLE                         R44 K64 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position"}]
      424 LOADK                            R45 K65 ["auto-y"]
      425 SETTABLEKS                       R45 R44 K60 ["tag"]
      427 GETIMPORT                        R45 K68 [UDim2.fromOffset]
      429 MOVE                             R46 R14
      430 LOADN                            R47 0
      431 CALL                             R45 2 1
      432 SETTABLEKS                       R45 R44 K61 ["Size"]
      434 GETTABLEKS                       R45 R0 K62 ["LayoutOrder"]
      436 SETTABLEKS                       R45 R44 K62 ["LayoutOrder"]
      438 GETTABLEKS                       R45 R0 K63 ["ZIndex"]
      440 SETTABLEKS                       R45 R44 K63 ["ZIndex"]
      442 SETTABLEKS                       R18 R44 K31 ["Position"]
      444 DUPTABLE                         R45 K71 [{"UIScale", "ComponentContext"}]
      445 GETUPVAL                         R47 0
      446 GETTABLEKS                       R46 R47 K58 ["createElement"]
      448 LOADK                            R47 K69 ["UIScale"]
      449 DUPTABLE                         R48 K73 [{"Scale"}]
      450 SETTABLEKS                       R8 R48 K72 ["Scale"]
      452 CALL                             R46 2 1
      453 SETTABLEKS                       R46 R45 K69 ["UIScale"]
      455 GETUPVAL                         R47 0
      456 GETTABLEKS                       R46 R47 K58 ["createElement"]
      458 GETUPVAL                         R48 15
      459 GETTABLEKS                       R47 R48 K74 ["Provider"]
      461 DUPTABLE                         R48 K76 [{"absoluteSizeHook"}]
      462 SETTABLEKS                       R16 R48 K75 ["absoluteSizeHook"]
      464 DUPTABLE                         R49 K80 [{"Node", "DebugMarker", "DragDetector"}]
      465 GETUPVAL                         R51 0
      466 GETTABLEKS                       R50 R51 K58 ["createElement"]
      468 GETUPVAL                         R52 8
      469 GETTABLEKS                       R51 R52 K59 ["View"]
      471 DUPTABLE                         R52 K82 [{"tag", "Size", "ref", "ZIndex"}]
      472 SETTABLEKS                       R41 R52 K60 ["tag"]
      474 GETIMPORT                        R53 K68 [UDim2.fromOffset]
      476 MOVE                             R54 R14
      477 LOADN                            R55 0
      478 CALL                             R53 2 1
      479 SETTABLEKS                       R53 R52 K61 ["Size"]
      481 GETTABLEKS                       R53 R16 K83 ["setFrame"]
      483 SETTABLEKS                       R53 R52 K81 ["ref"]
      485 LOADN                            R53 1
      486 SETTABLEKS                       R53 R52 K63 ["ZIndex"]
      488 DUPTABLE                         R53 K87 [{"CoverContainer", "CompositorNodeHeader", "CompositorNodeContent"}]
      489 GETUPVAL                         R55 0
      490 GETTABLEKS                       R54 R55 K58 ["createElement"]
      492 LOADK                            R55 K88 ["Folder"]
      493 NEWTABLE                         R56 0 0
      495 DUPTABLE                         R57 K90 [{"Cover"}]
      496 GETUPVAL                         R59 0
      497 GETTABLEKS                       R58 R59 K58 ["createElement"]
      499 GETUPVAL                         R60 8
      500 GETTABLEKS                       R59 R60 K59 ["View"]
      502 DUPTABLE                         R60 K92 [{"tag", "Size", "GroupTransparency", "ZIndex"}]
      503 SETTABLEKS                       R40 R60 K60 ["tag"]
      505 GETIMPORT                        R61 K94 [UDim2.fromScale]
      507 LOADN                            R62 1
      508 LOADN                            R63 1
      509 CALL                             R61 2 1
      510 SETTABLEKS                       R61 R60 K61 ["Size"]
      512 SETTABLEKS                       R39 R60 K91 ["GroupTransparency"]
      514 LOADN                            R61 2
      515 SETTABLEKS                       R61 R60 K63 ["ZIndex"]
      517 CALL                             R58 2 1
      518 SETTABLEKS                       R58 R57 K89 ["Cover"]
      520 CALL                             R54 3 1
      521 SETTABLEKS                       R54 R53 K84 ["CoverContainer"]
      523 GETUPVAL                         R55 0
      524 GETTABLEKS                       R54 R55 K58 ["createElement"]
      526 GETUPVAL                         R56 8
      527 GETTABLEKS                       R55 R56 K59 ["View"]
      529 DUPTABLE                         R56 K96 [{"tag", "backgroundStyle", "LayoutOrder"}]
      530 NEWTABLE                         R57 4 0
      532 LOADB                            R58 1
      533 SETTABLEKS                       R58 R57 K97 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      535 NOT                              R58 R6
      536 JUMPIFNOT                        R58 ; [+1]
      537 NOT                              R58 R7
      538 SETTABLEKS                       R58 R57 K98 ["radius-small bg-shift-200"]
      540 MOVE                             R58 R6
      541 JUMPIFNOT                        R58 ; [+3]
      542 GETTABLEKS                       R59 R0 K48 ["Collapsed"]
      544 NOT                              R58 R59
      545 SETTABLEKS                       R58 R57 K99 ["radius-small"]
      547 MOVE                             R58 R6
      548 JUMPIFNOT                        R58 ; [+2]
      549 GETTABLEKS                       R58 R0 K48 ["Collapsed"]
      551 SETTABLEKS                       R58 R57 K100 ["radius-large"]
      553 SETTABLEKS                       R57 R56 K60 ["tag"]
      555 JUMPIFNOT                        R6 ; [+2]
      556 MOVE                             R57 R12
      557 JUMP                             ; [+4]
      558 JUMPIFNOT                        R7 ; [+2]
      559 MOVE                             R57 R13
      560 JUMP                             ; [+1]
      561 LOADNIL                          R57
      562 SETTABLEKS                       R57 R56 K95 ["backgroundStyle"]
      564 SETTABLEKS                       R36 R56 K62 ["LayoutOrder"]
      566 DUPTABLE                         R57 K105 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      567 GETTABLEKS                       R59 R0 K106 ["Collapsible"]
      569 JUMPIFEQKB                       R59 FALSE ; [+45]
      571 GETUPVAL                         R59 0
      572 GETTABLEKS                       R58 R59 K58 ["createElement"]
      574 GETUPVAL                         R60 8
      575 GETTABLEKS                       R59 R60 K107 ["Button"]
      577 DUPTABLE                         R60 K113 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      578 SETTABLEKS                       R32 R60 K108 ["icon"]
      580 GETUPVAL                         R64 8
      581 GETTABLEKS                       R63 R64 K14 ["Enums"]
      583 GETTABLEKS                       R62 R63 K114 ["ButtonVariant"]
      585 GETTABLEKS                       R61 R62 K115 ["Text"]
      587 SETTABLEKS                       R61 R60 K109 ["variant"]
      589 SETTABLEKS                       R33 R60 K110 ["onActivated"]
      591 GETUPVAL                         R64 8
      592 GETTABLEKS                       R63 R64 K14 ["Enums"]
      594 GETTABLEKS                       R62 R63 K116 ["InputSize"]
      596 GETTABLEKS                       R61 R62 K117 ["XSmall"]
      598 SETTABLEKS                       R61 R60 K111 ["size"]
      600 MOVE                             R61 R2
      601 CALL                             R61 0 1
      602 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      604 GETUPVAL                         R64 8
      605 GETTABLEKS                       R63 R64 K14 ["Enums"]
      607 GETTABLEKS                       R62 R63 K118 ["FillBehavior"]
      609 GETTABLEKS                       R61 R62 K119 ["Fit"]
      611 SETTABLEKS                       R61 R60 K112 ["fillBehavior"]
      613 CALL                             R58 2 1
      614 JUMP                             ; [+1]
      615 LOADNIL                          R58
      616 SETTABLEKS                       R58 R57 K101 ["ToggleButton"]
      618 GETUPVAL                         R59 0
      619 GETTABLEKS                       R58 R59 K58 ["createElement"]
      621 GETUPVAL                         R60 8
      622 GETTABLEKS                       R59 R60 K115 ["Text"]
      624 DUPTABLE                         R60 K123 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      625 NEWTABLE                         R61 2 0
      627 LOADB                            R62 1
      628 SETTABLEKS                       R62 R61 K124 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      630 GETTABLEKS                       R63 R0 K106 ["Collapsible"]
      632 JUMPIFEQKB                       R63 FALSE ; [+2]
      634 LOADB                            R62 0 +1
      635 LOADB                            R62 1
      636 SETTABLEKS                       R62 R61 K125 ["padding-left-small"]
      638 SETTABLEKS                       R61 R60 K60 ["tag"]
      640 SETTABLEKS                       R34 R60 K115 ["Text"]
      642 LOADB                            R61 1
      643 SETTABLEKS                       R61 R60 K120 ["RichText"]
      645 MOVE                             R61 R2
      646 CALL                             R61 0 1
      647 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      649 GETTABLEKS                       R62 R21 K39 ["enabled"]
      651 NOT                              R61 R62
      652 SETTABLEKS                       R61 R60 K121 ["Visible"]
      654 LOADK                            R61 K126 ["CompositorNode-Title"]
      655 SETTABLEKS                       R61 R60 K122 ["testId"]
      657 CALL                             R58 2 1
      658 SETTABLEKS                       R58 R57 K102 ["Title"]
      660 GETUPVAL                         R59 0
      661 GETTABLEKS                       R58 R59 K58 ["createElement"]
      663 GETUPVAL                         R60 8
      664 GETTABLEKS                       R59 R60 K127 ["TextInput"]
      666 DUPTABLE                         R60 K133 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      667 NEWTABLE                         R61 1 0
      669 LOADB                            R62 1
      670 SETTABLEKS                       R62 R61 K124 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      672 SETTABLEKS                       R61 R60 K60 ["tag"]
      674 SETTABLEKS                       R19 R60 K50 ["text"]
      676 MOVE                             R61 R2
      677 CALL                             R61 0 1
      678 SETTABLEKS                       R61 R60 K62 ["LayoutOrder"]
      680 SETTABLEKS                       R20 R60 K128 ["onChanged"]
      682 LOADK                            R61 K52 [""]
      683 SETTABLEKS                       R61 R60 K129 ["label"]
      685 GETUPVAL                         R64 8
      686 GETTABLEKS                       R63 R64 K14 ["Enums"]
      688 GETTABLEKS                       R62 R63 K116 ["InputSize"]
      690 GETTABLEKS                       R61 R62 K117 ["XSmall"]
      692 SETTABLEKS                       R61 R60 K111 ["size"]
      694 SETTABLEKS                       R22 R60 K130 ["textBoxRef"]
      696 SETTABLEKS                       R35 R60 K131 ["onFocusLost"]
      698 SETTABLEKS                       R22 R60 K81 ["ref"]
      700 GETIMPORT                        R61 K136 [UDim.new]
      702 LOADN                            R62 0
      703 LOADN                            R63 100
      704 CALL                             R61 2 1
      705 SETTABLEKS                       R61 R60 K132 ["width"]
      707 GETTABLEKS                       R61 R21 K39 ["enabled"]
      709 SETTABLEKS                       R61 R60 K121 ["Visible"]
      711 CALL                             R58 2 1
      712 SETTABLEKS                       R58 R57 K103 ["TitleInput"]
      714 GETUPVAL                         R59 0
      715 GETTABLEKS                       R58 R59 K58 ["createElement"]
      717 LOADK                            R59 K88 ["Folder"]
      718 NEWTABLE                         R60 0 0
      720 GETTABLEKS                       R61 R0 K137 ["HeaderChildren"]
      722 CALL                             R58 3 1
      723 SETTABLEKS                       R58 R57 K104 ["Children"]
      725 CALL                             R54 3 1
      726 SETTABLEKS                       R54 R53 K85 ["CompositorNodeHeader"]
      728 GETTABLEKS                       R55 R0 K138 ["children"]
      730 JUMPIFNOT                        R55 ; [+92]
      731 GETIMPORT                        R55 K140 [next]
      733 GETTABLEKS                       R56 R0 K138 ["children"]
      735 CALL                             R55 1 1
      736 JUMPIFNOT                        R55 ; [+86]
      737 GETUPVAL                         R55 0
      738 GETTABLEKS                       R54 R55 K58 ["createElement"]
      740 GETUPVAL                         R56 8
      741 GETTABLEKS                       R55 R56 K59 ["View"]
      743 DUPTABLE                         R56 K141 [{"tag", "LayoutOrder"}]
      744 LOADK                            R57 K142 ["size-full-700 auto-y"]
      745 SETTABLEKS                       R57 R56 K60 ["tag"]
      747 MOVE                             R57 R2
      748 CALL                             R57 0 1
      749 SETTABLEKS                       R57 R56 K62 ["LayoutOrder"]
      751 DUPTABLE                         R57 K145 [{"Contents", "ResizeBars"}]
      752 GETUPVAL                         R59 0
      753 GETTABLEKS                       R58 R59 K58 ["createElement"]
      755 GETUPVAL                         R60 8
      756 GETTABLEKS                       R59 R60 K59 ["View"]
      758 DUPTABLE                         R60 K146 [{"tag", "ZIndex"}]
      759 LOADK                            R61 K147 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      760 SETTABLEKS                       R61 R60 K60 ["tag"]
      762 LOADN                            R61 1
      763 SETTABLEKS                       R61 R60 K63 ["ZIndex"]
      765 DUPTABLE                         R61 K149 [{"NodeProperties"}]
      766 GETUPVAL                         R63 0
      767 GETTABLEKS                       R62 R63 K58 ["createElement"]
      769 GETUPVAL                         R64 0
      770 GETTABLEKS                       R63 R64 K150 ["Fragment"]
      772 NEWTABLE                         R64 0 0
      774 GETTABLEKS                       R65 R0 K138 ["children"]
      776 CALL                             R62 3 1
      777 SETTABLEKS                       R62 R61 K148 ["NodeProperties"]
      779 CALL                             R58 3 1
      780 SETTABLEKS                       R58 R57 K143 ["Contents"]
      782 JUMPIF                           R6 ; [+35]
      783 GETUPVAL                         R59 0
      784 GETTABLEKS                       R58 R59 K58 ["createElement"]
      786 GETUPVAL                         R59 16
      787 DUPTABLE                         R60 K154 [{"tag", "nodeWidth", "OnResized", "Style", "ZIndex"}]
      788 LOADK                            R61 K99 ["radius-small"]
      789 SETTABLEKS                       R61 R60 K60 ["tag"]
      791 SETTABLEKS                       R14 R60 K151 ["nodeWidth"]
      793 SETTABLEKS                       R29 R60 K152 ["OnResized"]
      795 GETTABLEKS                       R62 R0 K57 ["Selected"]
      797 JUMPIFNOT                        R62 ; [+7]
      798 GETTABLEKS                       R63 R10 K17 ["Color"]
      800 GETTABLEKS                       R62 R63 K155 ["System"]
      802 GETTABLEKS                       R61 R62 K156 ["Neutral"]
      804 JUMP                             ; [+6]
      805 GETTABLEKS                       R63 R10 K17 ["Color"]
      807 GETTABLEKS                       R62 R63 K157 ["Stroke"]
      809 GETTABLEKS                       R61 R62 K158 ["Default"]
      811 SETTABLEKS                       R61 R60 K153 ["Style"]
      813 LOADN                            R61 2
      814 SETTABLEKS                       R61 R60 K63 ["ZIndex"]
      816 CALL                             R58 2 1
      817 JUMP                             ; [+1]
      818 LOADNIL                          R58
      819 SETTABLEKS                       R58 R57 K144 ["ResizeBars"]
      821 CALL                             R54 3 1
      822 JUMP                             ; [+1]
      823 LOADNIL                          R54
      824 SETTABLEKS                       R54 R53 K86 ["CompositorNodeContent"]
      826 CALL                             R50 3 1
      827 SETTABLEKS                       R50 R49 K77 ["Node"]
      829 GETUPVAL                         R51 14
      830 JUMPIFNOT                        R51 ; [+21]
      831 GETUPVAL                         R51 0
      832 GETTABLEKS                       R50 R51 K58 ["createElement"]
      834 GETUPVAL                         R52 8
      835 GETTABLEKS                       R51 R52 K59 ["View"]
      837 DUPTABLE                         R52 K159 [{"tag", "testId", "LayoutOrder", "ref"}]
      838 LOADK                            R53 K160 ["size-full"]
      839 SETTABLEKS                       R53 R52 K60 ["tag"]
      841 LOADK                            R53 K161 ["CompositorNode-DebugMarker"]
      842 SETTABLEKS                       R53 R52 K122 ["testId"]
      844 MOVE                             R53 R2
      845 CALL                             R53 0 1
      846 SETTABLEKS                       R53 R52 K62 ["LayoutOrder"]
      848 SETTABLEKS                       R38 R52 K81 ["ref"]
      850 CALL                             R50 2 1
      851 JUMP                             ; [+1]
      852 LOADNIL                          R50
      853 SETTABLEKS                       R50 R49 K78 ["DebugMarker"]
      855 GETUPVAL                         R51 0
      856 GETTABLEKS                       R50 R51 K58 ["createElement"]
      858 LOADK                            R51 K162 ["UIDragDetector"]
      859 NEWTABLE                         R52 8 0
      861 GETIMPORT                        R53 K166 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      863 SETTABLEKS                       R53 R52 K167 ["DragStyle"]
      865 GETIMPORT                        R53 K170 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      867 SETTABLEKS                       R53 R52 K171 ["ResponseStyle"]
      869 GETTABLEKS                       R53 R3 K172 ["getViewport"]
      871 CALL                             R53 0 1
      872 SETTABLEKS                       R53 R52 K173 ["ReferenceUIInstance"]
      874 GETUPVAL                         R55 0
      875 GETTABLEKS                       R54 R55 K174 ["Event"]
      877 GETTABLEKS                       R53 R54 K175 ["DragStart"]
      879 SETTABLE                         R26 R52 R53
      880 GETUPVAL                         R55 0
      881 GETTABLEKS                       R54 R55 K174 ["Event"]
      883 GETTABLEKS                       R53 R54 K176 ["DragContinue"]
      885 SETTABLE                         R27 R52 R53
      886 GETUPVAL                         R55 0
      887 GETTABLEKS                       R54 R55 K174 ["Event"]
      889 GETTABLEKS                       R53 R54 K177 ["DragEnd"]
      891 SETTABLE                         R28 R52 R53
      892 CALL                             R50 2 1
      893 SETTABLEKS                       R50 R49 K79 ["DragDetector"]
      895 CALL                             R46 3 1
      896 SETTABLEKS                       R46 R45 K70 ["ComponentContext"]
      898 CALL                             R42 3 -1
      899 RETURN                           R42 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["NodeView"]
       13 GETTABLEKS                       R3 R4 K8 ["CompositorNodes"]
       15 GETTABLEKS                       R2 R3 K9 ["CompositorNodeComponentContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Components"]
       22 GETTABLEKS                       R5 R6 K7 ["NodeView"]
       24 GETTABLEKS                       R4 R5 K8 ["CompositorNodes"]
       26 GETTABLEKS                       R3 R4 K10 ["CompositorStateUtils"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Parent"]
       40 GETTABLEKS                       R5 R6 K14 ["Foundation"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Parent"]
       47 GETTABLEKS                       R6 R7 K15 ["Graphing"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Contexts"]
       54 GETTABLEKS                       R7 R8 K17 ["NativeGraphContext"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K16 ["Contexts"]
       61 GETTABLEKS                       R9 R10 K17 ["NativeGraphContext"]
       63 GETTABLEKS                       R8 R9 K18 ["NativeGraphUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K13 ["Parent"]
       75 GETTABLEKS                       R10 R11 K20 ["React"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R12 R0 K13 ["Parent"]
       82 GETTABLEKS                       R11 R12 K21 ["ReactUtils"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R14 R0 K6 ["Components"]
       89 GETTABLEKS                       R13 R14 K7 ["NodeView"]
       91 GETTABLEKS                       R12 R13 K22 ["ResizeBars"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R16 R0 K11 ["Util"]
       98 GETTABLEKS                       R15 R16 K23 ["Signals"]
      100 GETTABLEKS                       R14 R15 K24 ["Experimental"]
      102 GETTABLEKS                       R13 R14 K25 ["SignalExperimentalUtils"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R15 R0 K13 ["Parent"]
      109 GETTABLEKS                       R14 R15 K23 ["Signals"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R16 R0 K13 ["Parent"]
      116 GETTABLEKS                       R15 R16 K26 ["SignalsReact"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K13 ["Parent"]
      123 GETTABLEKS                       R16 R17 K27 ["TestLoader"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R18 R0 K16 ["Contexts"]
      130 GETTABLEKS                       R17 R18 K28 ["ViewportRectContext"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      137 GETTABLEKS                       R18 R19 K30 ["useAbsoluteSize"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R20 R0 K29 ["Hooks"]
      144 GETTABLEKS                       R19 R20 K31 ["useFoundationStudioTheme"]
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
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R11
      172 RETURN                           R20 1
