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
        5 LOADN                            R2 0
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K2 [math.map]
        9 MOVE                             R3 R1
       10 LOADN                            R4 0
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 LOADK                            R7 K3 [0.5]
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
      386 GETTABLEKS                       R39 R40 K10 ["useSignalState"]
      388 MOVE                             R40 R31
      389 CALL                             R39 1 1
      390 GETUPVAL                         R41 0
      391 GETTABLEKS                       R40 R41 K56 ["createElement"]
      393 GETUPVAL                         R42 8
      394 GETTABLEKS                       R41 R42 K57 ["View"]
      396 DUPTABLE                         R42 K63 [{"tag", "GroupTransparency", "Size", "LayoutOrder", "ZIndex", "Position"}]
      397 LOADK                            R43 K64 ["auto-y"]
      398 SETTABLEKS                       R43 R42 K58 ["tag"]
      400 LOADN                            R44 0
      401 JUMPIFNOTLT                      R44 R39 ; [+3]
      403 MOVE                             R43 R39
      404 JUMP                             ; [+1]
      405 LOADNIL                          R43
      406 SETTABLEKS                       R43 R42 K59 ["GroupTransparency"]
      408 GETIMPORT                        R43 K67 [UDim2.fromOffset]
      410 ADDK                             R44 R14 K68 [10]
      411 LOADN                            R45 0
      412 CALL                             R43 2 1
      413 SETTABLEKS                       R43 R42 K60 ["Size"]
      415 GETTABLEKS                       R43 R0 K61 ["LayoutOrder"]
      417 SETTABLEKS                       R43 R42 K61 ["LayoutOrder"]
      419 GETTABLEKS                       R43 R0 K62 ["ZIndex"]
      421 SETTABLEKS                       R43 R42 K62 ["ZIndex"]
      423 GETIMPORT                        R44 K67 [UDim2.fromOffset]
      425 LOADN                            R45 251
      426 LOADN                            R46 251
      427 CALL                             R44 2 1
      428 ADD                              R43 R18 R44
      429 SETTABLEKS                       R43 R42 K31 ["Position"]
      431 DUPTABLE                         R43 K74 [{"UIPadding", "UIScale", "Node", "DebugMarker", "DragDetector"}]
      432 GETUPVAL                         R45 0
      433 GETTABLEKS                       R44 R45 K56 ["createElement"]
      435 LOADK                            R45 K69 ["UIPadding"]
      436 DUPTABLE                         R46 K79 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      437 GETIMPORT                        R47 K82 [UDim.new]
      439 LOADN                            R48 0
      440 LOADN                            R49 5
      441 CALL                             R47 2 1
      442 SETTABLEKS                       R47 R46 K75 ["PaddingTop"]
      444 GETIMPORT                        R47 K82 [UDim.new]
      446 LOADN                            R48 0
      447 LOADN                            R49 5
      448 CALL                             R47 2 1
      449 SETTABLEKS                       R47 R46 K76 ["PaddingBottom"]
      451 GETIMPORT                        R47 K82 [UDim.new]
      453 LOADN                            R48 0
      454 LOADN                            R49 5
      455 CALL                             R47 2 1
      456 SETTABLEKS                       R47 R46 K77 ["PaddingLeft"]
      458 GETIMPORT                        R47 K82 [UDim.new]
      460 LOADN                            R48 0
      461 LOADN                            R49 5
      462 CALL                             R47 2 1
      463 SETTABLEKS                       R47 R46 K78 ["PaddingRight"]
      465 CALL                             R44 2 1
      466 SETTABLEKS                       R44 R43 K69 ["UIPadding"]
      468 GETUPVAL                         R45 0
      469 GETTABLEKS                       R44 R45 K56 ["createElement"]
      471 LOADK                            R45 K70 ["UIScale"]
      472 DUPTABLE                         R46 K84 [{"Scale"}]
      473 SETTABLEKS                       R8 R46 K83 ["Scale"]
      475 CALL                             R44 2 1
      476 SETTABLEKS                       R44 R43 K70 ["UIScale"]
      478 GETUPVAL                         R45 0
      479 GETTABLEKS                       R44 R45 K56 ["createElement"]
      481 GETUPVAL                         R46 8
      482 GETTABLEKS                       R45 R46 K57 ["View"]
      484 DUPTABLE                         R46 K86 [{"tag", "Size", "ref", "ZIndex"}]
      485 NEWTABLE                         R47 8 0
      487 LOADB                            R48 1
      488 SETTABLEKS                       R48 R47 K87 ["CompositorNode"]
      490 LOADB                            R48 1
      491 SETTABLEKS                       R48 R47 K88 ["col auto-y bg-surface-200"]
      493 NOT                              R48 R6
      494 SETTABLEKS                       R48 R47 K89 ["radius-small gap-xsmall"]
      496 MOVE                             R48 R6
      497 JUMPIFNOT                        R48 ; [+3]
      498 GETTABLEKS                       R49 R0 K48 ["Collapsed"]
      500 NOT                              R48 R49
      501 SETTABLEKS                       R48 R47 K90 ["radius-small"]
      503 SETTABLEKS                       R6 R47 K91 ["gap-none"]
      505 MOVE                             R48 R6
      506 JUMPIFNOT                        R48 ; [+2]
      507 GETTABLEKS                       R48 R0 K48 ["Collapsed"]
      509 SETTABLEKS                       R48 R47 K92 ["radius-large"]
      511 GETTABLEKS                       R49 R0 K93 ["Selected"]
      513 NOT                              R48 R49
      514 SETTABLEKS                       R48 R47 K94 ["stroke-standard stroke-default"]
      516 GETTABLEKS                       R48 R0 K93 ["Selected"]
      518 SETTABLEKS                       R48 R47 K95 ["stroke-standard stroke-system-neutral"]
      520 SETTABLEKS                       R47 R46 K58 ["tag"]
      522 GETIMPORT                        R47 K67 [UDim2.fromOffset]
      524 MOVE                             R48 R14
      525 LOADN                            R49 0
      526 CALL                             R47 2 1
      527 SETTABLEKS                       R47 R46 K60 ["Size"]
      529 GETTABLEKS                       R47 R16 K96 ["setFrame"]
      531 SETTABLEKS                       R47 R46 K85 ["ref"]
      533 LOADN                            R47 1
      534 SETTABLEKS                       R47 R46 K62 ["ZIndex"]
      536 DUPTABLE                         R47 K99 [{"CompositorNodeHeader", "CompositorNodeContent"}]
      537 GETUPVAL                         R49 0
      538 GETTABLEKS                       R48 R49 K56 ["createElement"]
      540 GETUPVAL                         R50 8
      541 GETTABLEKS                       R49 R50 K57 ["View"]
      543 DUPTABLE                         R50 K101 [{"tag", "backgroundStyle", "LayoutOrder"}]
      544 NEWTABLE                         R51 4 0
      546 LOADB                            R52 1
      547 SETTABLEKS                       R52 R51 K102 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      549 NOT                              R52 R6
      550 JUMPIFNOT                        R52 ; [+1]
      551 NOT                              R52 R7
      552 SETTABLEKS                       R52 R51 K103 ["radius-small bg-shift-200"]
      554 MOVE                             R52 R6
      555 JUMPIFNOT                        R52 ; [+3]
      556 GETTABLEKS                       R53 R0 K48 ["Collapsed"]
      558 NOT                              R52 R53
      559 SETTABLEKS                       R52 R51 K90 ["radius-small"]
      561 MOVE                             R52 R6
      562 JUMPIFNOT                        R52 ; [+2]
      563 GETTABLEKS                       R52 R0 K48 ["Collapsed"]
      565 SETTABLEKS                       R52 R51 K92 ["radius-large"]
      567 SETTABLEKS                       R51 R50 K58 ["tag"]
      569 JUMPIFNOT                        R6 ; [+2]
      570 MOVE                             R51 R12
      571 JUMP                             ; [+4]
      572 JUMPIFNOT                        R7 ; [+2]
      573 MOVE                             R51 R13
      574 JUMP                             ; [+1]
      575 LOADNIL                          R51
      576 SETTABLEKS                       R51 R50 K100 ["backgroundStyle"]
      578 SETTABLEKS                       R36 R50 K61 ["LayoutOrder"]
      580 DUPTABLE                         R51 K108 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      581 GETTABLEKS                       R53 R0 K109 ["Collapsible"]
      583 JUMPIFEQKB                       R53 FALSE ; [+45]
      585 GETUPVAL                         R53 0
      586 GETTABLEKS                       R52 R53 K56 ["createElement"]
      588 GETUPVAL                         R54 8
      589 GETTABLEKS                       R53 R54 K110 ["Button"]
      591 DUPTABLE                         R54 K116 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      592 SETTABLEKS                       R32 R54 K111 ["icon"]
      594 GETUPVAL                         R58 8
      595 GETTABLEKS                       R57 R58 K14 ["Enums"]
      597 GETTABLEKS                       R56 R57 K117 ["ButtonVariant"]
      599 GETTABLEKS                       R55 R56 K118 ["Text"]
      601 SETTABLEKS                       R55 R54 K112 ["variant"]
      603 SETTABLEKS                       R33 R54 K113 ["onActivated"]
      605 GETUPVAL                         R58 8
      606 GETTABLEKS                       R57 R58 K14 ["Enums"]
      608 GETTABLEKS                       R56 R57 K119 ["InputSize"]
      610 GETTABLEKS                       R55 R56 K120 ["XSmall"]
      612 SETTABLEKS                       R55 R54 K114 ["size"]
      614 MOVE                             R55 R2
      615 CALL                             R55 0 1
      616 SETTABLEKS                       R55 R54 K61 ["LayoutOrder"]
      618 GETUPVAL                         R58 8
      619 GETTABLEKS                       R57 R58 K14 ["Enums"]
      621 GETTABLEKS                       R56 R57 K121 ["FillBehavior"]
      623 GETTABLEKS                       R55 R56 K122 ["Fit"]
      625 SETTABLEKS                       R55 R54 K115 ["fillBehavior"]
      627 CALL                             R52 2 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R52
      630 SETTABLEKS                       R52 R51 K104 ["ToggleButton"]
      632 GETUPVAL                         R53 0
      633 GETTABLEKS                       R52 R53 K56 ["createElement"]
      635 GETUPVAL                         R54 8
      636 GETTABLEKS                       R53 R54 K118 ["Text"]
      638 DUPTABLE                         R54 K126 [{"tag", "Text", "RichText", "LayoutOrder", "Visible", "testId"}]
      639 NEWTABLE                         R55 2 0
      641 LOADB                            R56 1
      642 SETTABLEKS                       R56 R55 K127 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      644 GETTABLEKS                       R57 R0 K109 ["Collapsible"]
      646 JUMPIFEQKB                       R57 FALSE ; [+2]
      648 LOADB                            R56 0 +1
      649 LOADB                            R56 1
      650 SETTABLEKS                       R56 R55 K128 ["padding-left-small"]
      652 SETTABLEKS                       R55 R54 K58 ["tag"]
      654 SETTABLEKS                       R34 R54 K118 ["Text"]
      656 LOADB                            R55 1
      657 SETTABLEKS                       R55 R54 K123 ["RichText"]
      659 MOVE                             R55 R2
      660 CALL                             R55 0 1
      661 SETTABLEKS                       R55 R54 K61 ["LayoutOrder"]
      663 GETTABLEKS                       R56 R21 K39 ["enabled"]
      665 NOT                              R55 R56
      666 SETTABLEKS                       R55 R54 K124 ["Visible"]
      668 LOADK                            R55 K129 ["CompositorNode-Title"]
      669 SETTABLEKS                       R55 R54 K125 ["testId"]
      671 CALL                             R52 2 1
      672 SETTABLEKS                       R52 R51 K105 ["Title"]
      674 GETUPVAL                         R53 0
      675 GETTABLEKS                       R52 R53 K56 ["createElement"]
      677 GETUPVAL                         R54 8
      678 GETTABLEKS                       R53 R54 K130 ["TextInput"]
      680 DUPTABLE                         R54 K136 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      681 NEWTABLE                         R55 1 0
      683 LOADB                            R56 1
      684 SETTABLEKS                       R56 R55 K127 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      686 SETTABLEKS                       R55 R54 K58 ["tag"]
      688 SETTABLEKS                       R19 R54 K50 ["text"]
      690 MOVE                             R55 R2
      691 CALL                             R55 0 1
      692 SETTABLEKS                       R55 R54 K61 ["LayoutOrder"]
      694 SETTABLEKS                       R20 R54 K131 ["onChanged"]
      696 LOADK                            R55 K52 [""]
      697 SETTABLEKS                       R55 R54 K132 ["label"]
      699 GETUPVAL                         R58 8
      700 GETTABLEKS                       R57 R58 K14 ["Enums"]
      702 GETTABLEKS                       R56 R57 K119 ["InputSize"]
      704 GETTABLEKS                       R55 R56 K120 ["XSmall"]
      706 SETTABLEKS                       R55 R54 K114 ["size"]
      708 SETTABLEKS                       R22 R54 K133 ["textBoxRef"]
      710 SETTABLEKS                       R35 R54 K134 ["onFocusLost"]
      712 SETTABLEKS                       R22 R54 K85 ["ref"]
      714 GETIMPORT                        R55 K82 [UDim.new]
      716 LOADN                            R56 0
      717 LOADN                            R57 100
      718 CALL                             R55 2 1
      719 SETTABLEKS                       R55 R54 K135 ["width"]
      721 GETTABLEKS                       R55 R21 K39 ["enabled"]
      723 SETTABLEKS                       R55 R54 K124 ["Visible"]
      725 CALL                             R52 2 1
      726 SETTABLEKS                       R52 R51 K106 ["TitleInput"]
      728 GETUPVAL                         R53 0
      729 GETTABLEKS                       R52 R53 K56 ["createElement"]
      731 LOADK                            R53 K137 ["Folder"]
      732 NEWTABLE                         R54 0 0
      734 GETTABLEKS                       R55 R0 K138 ["HeaderChildren"]
      736 CALL                             R52 3 1
      737 SETTABLEKS                       R52 R51 K107 ["Children"]
      739 CALL                             R48 3 1
      740 SETTABLEKS                       R48 R47 K97 ["CompositorNodeHeader"]
      742 GETTABLEKS                       R49 R0 K139 ["children"]
      744 JUMPIFNOT                        R49 ; [+68]
      745 GETIMPORT                        R49 K141 [next]
      747 GETTABLEKS                       R50 R0 K139 ["children"]
      749 CALL                             R49 1 1
      750 JUMPIFNOT                        R49 ; [+62]
      751 GETUPVAL                         R49 0
      752 GETTABLEKS                       R48 R49 K56 ["createElement"]
      754 GETUPVAL                         R50 8
      755 GETTABLEKS                       R49 R50 K57 ["View"]
      757 DUPTABLE                         R50 K142 [{"tag", "LayoutOrder"}]
      758 LOADK                            R51 K143 ["size-full-700 auto-y"]
      759 SETTABLEKS                       R51 R50 K58 ["tag"]
      761 MOVE                             R51 R2
      762 CALL                             R51 0 1
      763 SETTABLEKS                       R51 R50 K61 ["LayoutOrder"]
      765 DUPTABLE                         R51 K146 [{"Contents", "ResizeBars"}]
      766 GETUPVAL                         R53 0
      767 GETTABLEKS                       R52 R53 K56 ["createElement"]
      769 GETUPVAL                         R54 8
      770 GETTABLEKS                       R53 R54 K57 ["View"]
      772 DUPTABLE                         R54 K147 [{"tag", "ZIndex"}]
      773 LOADK                            R55 K148 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      774 SETTABLEKS                       R55 R54 K58 ["tag"]
      776 LOADN                            R55 1
      777 SETTABLEKS                       R55 R54 K62 ["ZIndex"]
      779 DUPTABLE                         R55 K150 [{"NodeProperties"}]
      780 GETUPVAL                         R57 0
      781 GETTABLEKS                       R56 R57 K56 ["createElement"]
      783 GETUPVAL                         R58 0
      784 GETTABLEKS                       R57 R58 K151 ["Fragment"]
      786 NEWTABLE                         R58 0 0
      788 GETTABLEKS                       R59 R0 K139 ["children"]
      790 CALL                             R56 3 1
      791 SETTABLEKS                       R56 R55 K149 ["NodeProperties"]
      793 CALL                             R52 3 1
      794 SETTABLEKS                       R52 R51 K144 ["Contents"]
      796 GETUPVAL                         R53 0
      797 GETTABLEKS                       R52 R53 K56 ["createElement"]
      799 GETUPVAL                         R53 15
      800 DUPTABLE                         R54 K154 [{"nodeWidth", "OnResized", "ZIndex"}]
      801 SETTABLEKS                       R14 R54 K152 ["nodeWidth"]
      803 SETTABLEKS                       R29 R54 K153 ["OnResized"]
      805 LOADN                            R55 2
      806 SETTABLEKS                       R55 R54 K62 ["ZIndex"]
      808 CALL                             R52 2 1
      809 SETTABLEKS                       R52 R51 K145 ["ResizeBars"]
      811 CALL                             R48 3 1
      812 JUMP                             ; [+1]
      813 LOADNIL                          R48
      814 SETTABLEKS                       R48 R47 K98 ["CompositorNodeContent"]
      816 CALL                             R44 3 1
      817 SETTABLEKS                       R44 R43 K71 ["Node"]
      819 GETUPVAL                         R45 14
      820 JUMPIFNOT                        R45 ; [+21]
      821 GETUPVAL                         R45 0
      822 GETTABLEKS                       R44 R45 K56 ["createElement"]
      824 GETUPVAL                         R46 8
      825 GETTABLEKS                       R45 R46 K57 ["View"]
      827 DUPTABLE                         R46 K155 [{"tag", "testId", "LayoutOrder", "ref"}]
      828 LOADK                            R47 K156 ["size-full"]
      829 SETTABLEKS                       R47 R46 K58 ["tag"]
      831 LOADK                            R47 K157 ["CompositorNode-DebugMarker"]
      832 SETTABLEKS                       R47 R46 K125 ["testId"]
      834 MOVE                             R47 R2
      835 CALL                             R47 0 1
      836 SETTABLEKS                       R47 R46 K61 ["LayoutOrder"]
      838 SETTABLEKS                       R38 R46 K85 ["ref"]
      840 CALL                             R44 2 1
      841 JUMP                             ; [+1]
      842 LOADNIL                          R44
      843 SETTABLEKS                       R44 R43 K72 ["DebugMarker"]
      845 GETUPVAL                         R45 0
      846 GETTABLEKS                       R44 R45 K56 ["createElement"]
      848 LOADK                            R45 K158 ["UIDragDetector"]
      849 NEWTABLE                         R46 8 0
      851 GETIMPORT                        R47 K162 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      853 SETTABLEKS                       R47 R46 K163 ["DragStyle"]
      855 GETIMPORT                        R47 K166 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      857 SETTABLEKS                       R47 R46 K167 ["ResponseStyle"]
      859 GETTABLEKS                       R47 R3 K168 ["getViewport"]
      861 CALL                             R47 0 1
      862 SETTABLEKS                       R47 R46 K169 ["ReferenceUIInstance"]
      864 GETUPVAL                         R49 0
      865 GETTABLEKS                       R48 R49 K170 ["Event"]
      867 GETTABLEKS                       R47 R48 K171 ["DragStart"]
      869 SETTABLE                         R26 R46 R47
      870 GETUPVAL                         R49 0
      871 GETTABLEKS                       R48 R49 K170 ["Event"]
      873 GETTABLEKS                       R47 R48 K172 ["DragContinue"]
      875 SETTABLE                         R27 R46 R47
      876 GETUPVAL                         R49 0
      877 GETTABLEKS                       R48 R49 K170 ["Event"]
      879 GETTABLEKS                       R47 R48 K173 ["DragEnd"]
      881 SETTABLE                         R28 R46 R47
      882 CALL                             R44 2 1
      883 SETTABLEKS                       R44 R43 K73 ["DragDetector"]
      885 CALL                             R40 3 -1
      886 RETURN                           R40 -1

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
       15 GETTABLEKS                       R2 R3 K9 ["CompositorStateUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R4 K11 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R5 K13 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["Graphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K16 ["NativeGraphContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K15 ["Contexts"]
       50 GETTABLEKS                       R8 R9 K16 ["NativeGraphContext"]
       52 GETTABLEKS                       R7 R8 K17 ["NativeGraphUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K18 ["NodeViewTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K12 ["Parent"]
       64 GETTABLEKS                       R9 R10 K19 ["React"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K12 ["Parent"]
       71 GETTABLEKS                       R10 R11 K20 ["ReactUtils"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R13 R0 K6 ["Components"]
       78 GETTABLEKS                       R12 R13 K7 ["NodeView"]
       80 GETTABLEKS                       R11 R12 K21 ["ResizeBars"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R15 R0 K10 ["Util"]
       87 GETTABLEKS                       R14 R15 K22 ["Signals"]
       89 GETTABLEKS                       R13 R14 K23 ["Experimental"]
       91 GETTABLEKS                       R12 R13 K24 ["SignalExperimentalUtils"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R14 R0 K12 ["Parent"]
       98 GETTABLEKS                       R13 R14 K22 ["Signals"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R15 R0 K12 ["Parent"]
      105 GETTABLEKS                       R14 R15 K25 ["SignalsReact"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R16 R0 K12 ["Parent"]
      112 GETTABLEKS                       R15 R16 K26 ["TestLoader"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R17 R0 K15 ["Contexts"]
      119 GETTABLEKS                       R16 R17 K27 ["ViewportRectContext"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R18 R0 K28 ["Hooks"]
      126 GETTABLEKS                       R17 R18 K29 ["useAbsoluteSize"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R19 R0 K28 ["Hooks"]
      133 GETTABLEKS                       R18 R19 K30 ["useFoundationStudioTheme"]
      135 CALL                             R17 1 1
      136 GETTABLEKS                       R18 R14 K31 ["isCli"]
      138 CALL                             R18 0 1
      139 JUMPIF                           R18 ; [+3]
      140 GETTABLEKS                       R18 R14 K32 ["isFTF"]
      142 CALL                             R18 0 1
      143 DUPCLOSURE                       R19 K33 [PROTO_19]
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R10
      160 RETURN                           R19 1
