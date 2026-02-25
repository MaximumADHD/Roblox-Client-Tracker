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
        0 GETIMPORT                        R2 K2 [Vector2.zero]
        2 GETTABLEKS                       R4 R0 K3 ["Parent"]
        4 JUMPIFNOT                        R4 ; [+5]
        5 GETTABLEKS                       R4 R0 K3 ["Parent"]
        7 GETTABLEKS                       R3 R4 K3 ["Parent"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 JUMPIFNOT                        R3 ; [+13]
       12 LOADK                            R6 K4 ["GuiObject"]
       13 NAMECALL                         R4 R3 K5 ["IsA"]
       15 CALL                             R4 2 1
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETTABLEKS                       R4 R3 K6 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R3 K7 ["AbsoluteSize"]
       21 GETTABLEKS                       R7 R3 K8 ["AnchorPoint"]
       23 MUL                              R5 R6 R7
       24 ADD                              R2 R4 R5
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K9 ["absToView"]
       28 MOVE                             R6 R1
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K9 ["absToView"]
       33 MOVE                             R7 R2
       34 CALL                             R6 1 1
       35 SUB                              R4 R5 R6
       36 GETUPVAL                         R5 1
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R5 R6 K10 ["OnDragStart"]
       42 JUMPIFNOT                        R5 ; [+26]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K9 ["absToView"]
       46 MOVE                             R7 R1
       47 CALL                             R6 1 1
       48 SUB                              R5 R6 R4
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K10 ["OnDragStart"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K11 ["viewToPlot"]
       55 MOVE                             R8 R5
       56 CALL                             R7 1 1
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R9 R10 K12 ["GraphPayload"]
       60 JUMPIFNOT                        R9 ; [+6]
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R9 R10 K12 ["GraphPayload"]
       64 GETTABLEKS                       R8 R9 K13 ["id"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R8
       68 CALL                             R6 2 0
       69 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnDragMoved"]
        3 JUMPIFNOT                        R2 ; [+27]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["absToView"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 SUB                              R2 R3 R4
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["OnDragMoved"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K2 ["viewToPlot"]
       17 MOVE                             R5 R2
       18 CALL                             R4 1 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K3 ["GraphPayload"]
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K3 ["GraphPayload"]
       26 GETTABLEKS                       R5 R6 K4 ["id"]
       28 JUMPIF                           R5 ; [+1]
       29 LOADNIL                          R5
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnDragEnded"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OnDragEnded"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setNodeSizeAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GraphPayload"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["GraphPayload"]
        7 GETTABLEKS                       R0 R1 K1 ["id"]
        9 JUMPIFNOTEQKNIL                  R0 ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["current"]
       16 GETTABLEKS                       R2 R3 K3 ["X"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K2 ["current"]
       21 GETTABLEKS                       R3 R4 K4 ["Y"]
       23 DIV                              R1 R2 R3
       24 JUMPIFNOTEQ                      R1 R1 ; [+3]
       26 JUMPIFNOTEQKN                    R1 K5 [0] ; [+3]
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 GETIMPORT                        R2 K8 [Vector2.new]
       32 GETUPVAL                         R3 2
       33 GETUPVAL                         R6 2
       34 DIV                              R5 R6 R1
       35 FASTCALL1                        MATH_ROUND R5 ; [+2]
       36 GETIMPORT                        R4 K11 [math.round]
       38 CALL                             R4 1 1
       39 CALL                             R2 2 1
       40 GETIMPORT                        R3 K14 [task.spawn]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CALL                             R3 1 0
       47 LOADNIL                          R3
       48 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setCollapsedAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["Collapsed"]
       11 NOT                              R2 R3
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GraphPayload"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["GraphPayload"]
        7 GETTABLEKS                       R0 R1 K1 ["id"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K4 [task.spawn]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 GETTABLEKS                       R0 R1 K2 ["focus"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["renameNodeAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GraphPayload"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GraphPayload"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETIMPORT                        R0 K3 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K4 ["disable"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADK                            R2 K0 ["DisplayName"]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R0 R0 K1 ["SetAttribute"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_14:
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
       25 GETTABLEKS                       R5 R0 K4 ["IsParameterNode"]
       27 JUMPIF                           R5 ; [+14]
       28 GETTABLEKS                       R5 R0 K5 ["GraphPayload"]
       30 JUMPIFNOT                        R5 ; [+11]
       31 GETTABLEKS                       R7 R0 K5 ["GraphPayload"]
       33 GETTABLEKS                       R6 R7 K6 ["className"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R7 R8 K7 ["PARAMETER_NODE_CLASSNAME"]
       38 JUMPIFEQ                         R6 R7 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 GETTABLEKS                       R6 R0 K8 ["IsGeneric"]
       44 GETUPVAL                         R7 6
       45 CALL                             R7 0 1
       46 GETUPVAL                         R10 7
       47 GETTABLEKS                       R9 R10 K9 ["Hooks"]
       49 GETTABLEKS                       R8 R9 K10 ["useTokens"]
       51 CALL                             R8 0 1
       52 GETUPVAL                         R13 7
       53 GETTABLEKS                       R12 R13 K11 ["Enums"]
       55 GETTABLEKS                       R11 R12 K12 ["Theme"]
       57 GETTABLEKS                       R10 R11 K13 ["Dark"]
       59 JUMPIFNOTEQ                      R7 R10 ; [+10]
       61 GETTABLEKS                       R12 R8 K14 ["Color"]
       63 GETTABLEKS                       R11 R12 K15 ["Extended"]
       65 GETTABLEKS                       R10 R11 K16 ["Green"]
       67 GETTABLEKS                       R9 R10 K17 ["Green_1300"]
       69 JUMP                             ; [+8]
       70 GETTABLEKS                       R12 R8 K14 ["Color"]
       72 GETTABLEKS                       R11 R12 K15 ["Extended"]
       74 GETTABLEKS                       R10 R11 K16 ["Green"]
       76 GETTABLEKS                       R9 R10 K18 ["Green_100"]
       78 GETUPVAL                         R12 7
       79 GETTABLEKS                       R11 R12 K9 ["Hooks"]
       81 GETTABLEKS                       R10 R11 K19 ["useCumulativeBackground"]
       83 MOVE                             R11 R9
       84 GETTABLEKS                       R14 R8 K14 ["Color"]
       86 GETTABLEKS                       R13 R14 K20 ["Shift"]
       88 GETTABLEKS                       R12 R13 K21 ["Shift_100"]
       90 CALL                             R10 2 1
       91 GETUPVAL                         R13 7
       92 GETTABLEKS                       R12 R13 K9 ["Hooks"]
       94 GETTABLEKS                       R11 R12 K19 ["useCumulativeBackground"]
       96 GETTABLEKS                       R15 R8 K14 ["Color"]
       98 GETTABLEKS                       R14 R15 K15 ["Extended"]
      100 GETTABLEKS                       R13 R14 K22 ["Purple"]
      102 GETTABLEKS                       R12 R13 K23 ["Purple_800"]
      104 GETTABLEKS                       R15 R8 K14 ["Color"]
      106 GETTABLEKS                       R14 R15 K20 ["Shift"]
      108 GETTABLEKS                       R13 R14 K24 ["Shift_200"]
      110 CALL                             R11 2 1
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R12 R13 K25 ["useState"]
      114 GETIMPORT                        R13 K28 [Vector2.zero]
      116 CALL                             R12 1 2
      117 GETUPVAL                         R15 0
      118 GETTABLEKS                       R14 R15 K25 ["useState"]
      120 GETUPVAL                         R16 5
      121 GETTABLEKS                       R15 R16 K29 ["CHILD_WIDTH"]
      123 CALL                             R14 1 2
      124 GETUPVAL                         R16 8
      125 CALL                             R16 0 1
      126 GETUPVAL                         R18 0
      127 GETTABLEKS                       R17 R18 K30 ["useRef"]
      129 GETTABLEKS                       R18 R16 K31 ["absoluteSize"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R16 K31 ["absoluteSize"]
      134 SETTABLEKS                       R18 R17 K32 ["current"]
      136 GETTABLEKS                       R18 R3 K33 ["plotToView"]
      138 GETTABLEKS                       R19 R0 K34 ["Position"]
      140 CALL                             R18 1 1
      141 GETUPVAL                         R20 0
      142 GETTABLEKS                       R19 R20 K35 ["useMemo"]
      144 NEWCLOSURE                       R20 P0
      145 CAPTURE                          VAL R18
      146 NEWTABLE                         R21 0 1
      148 MOVE                             R22 R18
      149 SETLIST                          R21 R22 1 [1]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R21 0
      153 GETTABLEKS                       R20 R21 K36 ["useCallback"]
      155 NEWCLOSURE                       R21 P1
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R0
      159 NEWTABLE                         R22 0 4
      161 MOVE                             R23 R3
      162 MOVE                             R24 R13
      163 GETTABLEKS                       R25 R0 K37 ["OnDragStart"]
      165 GETTABLEKS                       R26 R0 K5 ["GraphPayload"]
      167 SETLIST                          R22 R23 4 [1]
      169 CALL                             R20 2 1
      170 GETUPVAL                         R22 0
      171 GETTABLEKS                       R21 R22 K36 ["useCallback"]
      173 NEWCLOSURE                       R22 P2
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R12
      177 NEWTABLE                         R23 0 4
      179 MOVE                             R24 R3
      180 MOVE                             R25 R12
      181 GETTABLEKS                       R26 R0 K38 ["OnDragMoved"]
      183 GETTABLEKS                       R27 R0 K5 ["GraphPayload"]
      185 SETLIST                          R23 R24 4 [1]
      187 CALL                             R21 2 1
      188 GETUPVAL                         R23 0
      189 GETTABLEKS                       R22 R23 K36 ["useCallback"]
      191 NEWCLOSURE                       R23 P3
      192 CAPTURE                          VAL R0
      193 NEWTABLE                         R24 0 1
      195 GETTABLEKS                       R25 R0 K39 ["OnDragEnded"]
      197 SETLIST                          R24 R25 1 [1]
      199 CALL                             R22 2 1
      200 GETUPVAL                         R24 0
      201 GETTABLEKS                       R23 R24 K36 ["useCallback"]
      203 NEWCLOSURE                       R24 P4
      204 CAPTURE                          VAL R15
      205 NEWTABLE                         R25 0 5
      207 MOVE                             R26 R15
      208 GETTABLEKS                       R27 R0 K34 ["Position"]
      210 MOVE                             R28 R3
      211 GETTABLEKS                       R29 R0 K5 ["GraphPayload"]
      213 GETTABLEKS                       R30 R0 K38 ["OnDragMoved"]
      215 SETLIST                          R25 R26 5 [1]
      217 CALL                             R23 2 1
      218 NOT                              R24 R5
      219 JUMPIFNOT                        R24 ; [+11]
      220 GETTABLEKS                       R24 R0 K5 ["GraphPayload"]
      222 JUMPIFNOT                        R24 ; [+8]
      223 GETTABLEKS                       R26 R0 K5 ["GraphPayload"]
      225 GETTABLEKS                       R25 R26 K40 ["weight"]
      227 JUMPIFEQKN                       R25 K41 [0] ; [+2]
      229 LOADB                            R24 0 +1
      230 LOADB                            R24 1
      231 GETUPVAL                         R26 0
      232 GETTABLEKS                       R25 R26 K42 ["useEffect"]
      234 NEWCLOSURE                       R26 P5
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R17
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R4
      239 NEWTABLE                         R27 0 5
      241 GETTABLEKS                       R28 R4 K43 ["setNodeSizeAsync"]
      243 GETTABLEKS                       R29 R0 K5 ["GraphPayload"]
      245 GETTABLEKS                       R30 R17 K32 ["current"]
      247 GETTABLEKS                       R31 R1 K44 ["zoomRatio"]
      249 MOVE                             R32 R14
      250 SETLIST                          R27 R28 5 [1]
      252 CALL                             R25 2 0
      253 GETUPVAL                         R26 0
      254 GETTABLEKS                       R25 R26 K35 ["useMemo"]
      256 NEWCLOSURE                       R26 P6
      257 CAPTURE                          VAL R0
      258 NEWTABLE                         R27 0 1
      260 GETTABLEKS                       R28 R0 K45 ["Collapsed"]
      262 SETLIST                          R27 R28 1 [1]
      264 CALL                             R25 2 1
      265 GETUPVAL                         R27 0
      266 GETTABLEKS                       R26 R27 K36 ["useCallback"]
      268 NEWCLOSURE                       R27 P7
      269 CAPTURE                          VAL R0
      270 CAPTURE                          VAL R4
      271 NEWTABLE                         R28 0 3
      273 GETTABLEKS                       R29 R4 K46 ["setCollapsedAsync"]
      275 GETTABLEKS                       R30 R0 K5 ["GraphPayload"]
      277 GETTABLEKS                       R31 R0 K45 ["Collapsed"]
      279 SETLIST                          R28 R29 3 [1]
      281 CALL                             R26 2 1
      282 GETUPVAL                         R28 2
      283 GETTABLEKS                       R27 R28 K47 ["useToggleState"]
      285 LOADB                            R28 0
      286 CALL                             R27 1 1
      287 GETUPVAL                         R29 0
      288 GETTABLEKS                       R28 R29 K30 ["useRef"]
      290 LOADNIL                          R29
      291 CALL                             R28 1 1
      292 GETUPVAL                         R30 0
      293 GETTABLEKS                       R29 R30 K25 ["useState"]
      295 GETTABLEKS                       R31 R0 K5 ["GraphPayload"]
      297 GETTABLEKS                       R30 R31 K48 ["name"]
      299 JUMPIF                           R30 ; [+2]
      300 GETTABLEKS                       R30 R0 K49 ["text"]
      302 CALL                             R29 1 2
      303 GETTABLEKS                       R31 R0 K49 ["text"]
      305 JUMPIF                           R31 ; [+4]
      306 GETTABLEKS                       R32 R0 K5 ["GraphPayload"]
      308 GETTABLEKS                       R31 R32 K48 ["name"]
      310 GETUPVAL                         R33 0
      311 GETTABLEKS                       R32 R33 K36 ["useCallback"]
      313 NEWCLOSURE                       R33 P8
      314 CAPTURE                          VAL R27
      315 CAPTURE                          VAL R28
      316 NEWTABLE                         R34 0 2
      318 GETTABLEKS                       R35 R27 K50 ["enable"]
      320 MOVE                             R36 R28
      321 SETLIST                          R34 R35 2 [1]
      323 CALL                             R32 2 1
      324 GETUPVAL                         R34 0
      325 GETTABLEKS                       R33 R34 K36 ["useCallback"]
      327 NEWCLOSURE                       R34 P9
      328 CAPTURE                          VAL R0
      329 CAPTURE                          VAL R29
      330 CAPTURE                          VAL R4
      331 CAPTURE                          VAL R27
      332 NEWTABLE                         R35 0 3
      334 MOVE                             R36 R29
      335 GETTABLEKS                       R37 R27 K51 ["disable"]
      337 GETTABLEKS                       R38 R4 K52 ["renameNodeAsync"]
      339 SETLIST                          R35 R36 3 [1]
      341 CALL                             R33 2 1
      342 MOVE                             R34 R2
      343 CALL                             R34 0 1
      344 GETUPVAL                         R36 0
      345 GETTABLEKS                       R35 R36 K25 ["useState"]
      347 LOADNIL                          R36
      348 CALL                             R35 1 2
      349 GETUPVAL                         R38 0
      350 GETTABLEKS                       R37 R38 K42 ["useEffect"]
      352 NEWCLOSURE                       R38 P10
      353 CAPTURE                          VAL R35
      354 CAPTURE                          VAL R31
      355 NEWTABLE                         R39 0 2
      357 MOVE                             R40 R35
      358 MOVE                             R41 R31
      359 SETLIST                          R39 R40 2 [1]
      361 CALL                             R37 2 0
      362 GETUPVAL                         R38 0
      363 GETTABLEKS                       R37 R38 K53 ["createElement"]
      365 GETUPVAL                         R39 7
      366 GETTABLEKS                       R38 R39 K54 ["View"]
      368 DUPTABLE                         R39 K59 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position"}]
      369 LOADK                            R40 K60 ["auto-y"]
      370 SETTABLEKS                       R40 R39 K55 ["tag"]
      372 GETIMPORT                        R40 K63 [UDim2.fromOffset]
      374 MOVE                             R41 R14
      375 LOADN                            R42 0
      376 CALL                             R40 2 1
      377 SETTABLEKS                       R40 R39 K56 ["Size"]
      379 GETTABLEKS                       R40 R0 K57 ["LayoutOrder"]
      381 SETTABLEKS                       R40 R39 K57 ["LayoutOrder"]
      383 GETTABLEKS                       R40 R0 K58 ["ZIndex"]
      385 SETTABLEKS                       R40 R39 K58 ["ZIndex"]
      387 SETTABLEKS                       R19 R39 K34 ["Position"]
      389 DUPTABLE                         R40 K68 [{"UIScale", "Node", "DebugMarker", "DragDetector"}]
      390 GETUPVAL                         R42 0
      391 GETTABLEKS                       R41 R42 K53 ["createElement"]
      393 LOADK                            R42 K64 ["UIScale"]
      394 DUPTABLE                         R43 K70 [{"Scale"}]
      395 GETTABLEKS                       R44 R1 K44 ["zoomRatio"]
      397 SETTABLEKS                       R44 R43 K69 ["Scale"]
      399 CALL                             R41 2 1
      400 SETTABLEKS                       R41 R40 K64 ["UIScale"]
      402 GETUPVAL                         R42 0
      403 GETTABLEKS                       R41 R42 K53 ["createElement"]
      405 GETUPVAL                         R43 7
      406 GETTABLEKS                       R42 R43 K54 ["View"]
      408 DUPTABLE                         R43 K72 [{"tag", "Size", "ref", "ZIndex"}]
      409 NEWTABLE                         R44 8 0
      411 LOADB                            R45 1
      412 SETTABLEKS                       R45 R44 K73 ["CompositorNode"]
      414 LOADB                            R45 1
      415 SETTABLEKS                       R45 R44 K74 ["col auto-y bg-surface-200"]
      417 NOT                              R45 R5
      418 SETTABLEKS                       R45 R44 K75 ["radius-small gap-xsmall"]
      420 MOVE                             R45 R5
      421 JUMPIFNOT                        R45 ; [+3]
      422 GETTABLEKS                       R46 R0 K45 ["Collapsed"]
      424 NOT                              R45 R46
      425 SETTABLEKS                       R45 R44 K76 ["radius-small"]
      427 SETTABLEKS                       R5 R44 K77 ["gap-none"]
      429 MOVE                             R45 R5
      430 JUMPIFNOT                        R45 ; [+2]
      431 GETTABLEKS                       R45 R0 K45 ["Collapsed"]
      433 SETTABLEKS                       R45 R44 K78 ["radius-large"]
      435 GETTABLEKS                       R46 R0 K79 ["Selected"]
      437 NOT                              R45 R46
      438 SETTABLEKS                       R45 R44 K80 ["stroke-standard stroke-default"]
      440 GETTABLEKS                       R45 R0 K79 ["Selected"]
      442 SETTABLEKS                       R45 R44 K81 ["stroke-standard stroke-system-neutral"]
      444 SETTABLEKS                       R44 R43 K55 ["tag"]
      446 GETIMPORT                        R44 K63 [UDim2.fromOffset]
      448 MOVE                             R45 R14
      449 LOADN                            R46 0
      450 CALL                             R44 2 1
      451 SETTABLEKS                       R44 R43 K56 ["Size"]
      453 GETTABLEKS                       R44 R16 K82 ["setFrame"]
      455 SETTABLEKS                       R44 R43 K71 ["ref"]
      457 LOADN                            R44 1
      458 SETTABLEKS                       R44 R43 K58 ["ZIndex"]
      460 DUPTABLE                         R44 K85 [{"CompositorNodeHeader", "CompositorNodeContent"}]
      461 GETUPVAL                         R46 0
      462 GETTABLEKS                       R45 R46 K53 ["createElement"]
      464 GETUPVAL                         R47 7
      465 GETTABLEKS                       R46 R47 K54 ["View"]
      467 DUPTABLE                         R47 K87 [{"tag", "backgroundStyle", "LayoutOrder"}]
      468 NEWTABLE                         R48 4 0
      470 LOADB                            R49 1
      471 SETTABLEKS                       R49 R48 K88 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      473 NOT                              R49 R5
      474 JUMPIFNOT                        R49 ; [+1]
      475 NOT                              R49 R6
      476 SETTABLEKS                       R49 R48 K89 ["radius-small bg-shift-200"]
      478 MOVE                             R49 R5
      479 JUMPIFNOT                        R49 ; [+3]
      480 GETTABLEKS                       R50 R0 K45 ["Collapsed"]
      482 NOT                              R49 R50
      483 SETTABLEKS                       R49 R48 K76 ["radius-small"]
      485 MOVE                             R49 R5
      486 JUMPIFNOT                        R49 ; [+2]
      487 GETTABLEKS                       R49 R0 K45 ["Collapsed"]
      489 SETTABLEKS                       R49 R48 K78 ["radius-large"]
      491 SETTABLEKS                       R48 R47 K55 ["tag"]
      493 JUMPIFNOT                        R5 ; [+2]
      494 MOVE                             R48 R10
      495 JUMP                             ; [+4]
      496 JUMPIFNOT                        R6 ; [+2]
      497 MOVE                             R48 R11
      498 JUMP                             ; [+1]
      499 LOADNIL                          R48
      500 SETTABLEKS                       R48 R47 K86 ["backgroundStyle"]
      502 SETTABLEKS                       R34 R47 K57 ["LayoutOrder"]
      504 DUPTABLE                         R48 K94 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      505 GETTABLEKS                       R50 R0 K95 ["Collapsible"]
      507 JUMPIFEQKB                       R50 FALSE ; [+45]
      509 GETUPVAL                         R50 0
      510 GETTABLEKS                       R49 R50 K53 ["createElement"]
      512 GETUPVAL                         R51 7
      513 GETTABLEKS                       R50 R51 K96 ["Button"]
      515 DUPTABLE                         R51 K102 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      516 SETTABLEKS                       R25 R51 K97 ["icon"]
      518 GETUPVAL                         R55 7
      519 GETTABLEKS                       R54 R55 K11 ["Enums"]
      521 GETTABLEKS                       R53 R54 K103 ["ButtonVariant"]
      523 GETTABLEKS                       R52 R53 K104 ["Text"]
      525 SETTABLEKS                       R52 R51 K98 ["variant"]
      527 SETTABLEKS                       R26 R51 K99 ["onActivated"]
      529 GETUPVAL                         R55 7
      530 GETTABLEKS                       R54 R55 K11 ["Enums"]
      532 GETTABLEKS                       R53 R54 K105 ["InputSize"]
      534 GETTABLEKS                       R52 R53 K106 ["XSmall"]
      536 SETTABLEKS                       R52 R51 K100 ["size"]
      538 MOVE                             R52 R2
      539 CALL                             R52 0 1
      540 SETTABLEKS                       R52 R51 K57 ["LayoutOrder"]
      542 GETUPVAL                         R55 7
      543 GETTABLEKS                       R54 R55 K11 ["Enums"]
      545 GETTABLEKS                       R53 R54 K107 ["FillBehavior"]
      547 GETTABLEKS                       R52 R53 K108 ["Fit"]
      549 SETTABLEKS                       R52 R51 K101 ["fillBehavior"]
      551 CALL                             R49 2 1
      552 JUMP                             ; [+1]
      553 LOADNIL                          R49
      554 SETTABLEKS                       R49 R48 K90 ["ToggleButton"]
      556 GETUPVAL                         R50 0
      557 GETTABLEKS                       R49 R50 K53 ["createElement"]
      559 GETUPVAL                         R51 7
      560 GETTABLEKS                       R50 R51 K104 ["Text"]
      562 DUPTABLE                         R51 K111 [{"tag", "Text", "LayoutOrder", "onActivated", "Visible", "testId"}]
      563 NEWTABLE                         R52 4 0
      565 LOADB                            R53 1
      566 SETTABLEKS                       R53 R52 K112 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      568 SETTABLEKS                       R24 R52 K113 ["content-inverse-muted"]
      570 GETTABLEKS                       R54 R0 K95 ["Collapsible"]
      572 JUMPIFEQKB                       R54 FALSE ; [+2]
      574 LOADB                            R53 0 +1
      575 LOADB                            R53 1
      576 SETTABLEKS                       R53 R52 K114 ["padding-left-small"]
      578 SETTABLEKS                       R52 R51 K55 ["tag"]
      580 SETTABLEKS                       R31 R51 K104 ["Text"]
      582 MOVE                             R52 R2
      583 CALL                             R52 0 1
      584 SETTABLEKS                       R52 R51 K57 ["LayoutOrder"]
      586 GETTABLEKS                       R53 R0 K4 ["IsParameterNode"]
      588 JUMPIFNOT                        R53 ; [+2]
      589 LOADNIL                          R52
      590 JUMP                             ; [+1]
      591 MOVE                             R52 R32
      592 SETTABLEKS                       R52 R51 K99 ["onActivated"]
      594 GETTABLEKS                       R53 R27 K115 ["enabled"]
      596 NOT                              R52 R53
      597 SETTABLEKS                       R52 R51 K109 ["Visible"]
      599 LOADK                            R52 K116 ["CompositorNode-Title"]
      600 SETTABLEKS                       R52 R51 K110 ["testId"]
      602 CALL                             R49 2 1
      603 SETTABLEKS                       R49 R48 K91 ["Title"]
      605 GETTABLEKS                       R50 R0 K4 ["IsParameterNode"]
      607 JUMPIF                           R50 ; [+55]
      608 GETUPVAL                         R50 0
      609 GETTABLEKS                       R49 R50 K53 ["createElement"]
      611 GETUPVAL                         R51 7
      612 GETTABLEKS                       R50 R51 K117 ["TextInput"]
      614 DUPTABLE                         R51 K123 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      615 NEWTABLE                         R52 2 0
      617 LOADB                            R53 1
      618 SETTABLEKS                       R53 R52 K112 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      620 SETTABLEKS                       R24 R52 K113 ["content-inverse-muted"]
      622 SETTABLEKS                       R52 R51 K55 ["tag"]
      624 SETTABLEKS                       R29 R51 K49 ["text"]
      626 MOVE                             R52 R2
      627 CALL                             R52 0 1
      628 SETTABLEKS                       R52 R51 K57 ["LayoutOrder"]
      630 SETTABLEKS                       R30 R51 K118 ["onChanged"]
      632 LOADK                            R52 K124 [""]
      633 SETTABLEKS                       R52 R51 K119 ["label"]
      635 GETUPVAL                         R55 7
      636 GETTABLEKS                       R54 R55 K11 ["Enums"]
      638 GETTABLEKS                       R53 R54 K105 ["InputSize"]
      640 GETTABLEKS                       R52 R53 K106 ["XSmall"]
      642 SETTABLEKS                       R52 R51 K100 ["size"]
      644 SETTABLEKS                       R28 R51 K120 ["textBoxRef"]
      646 SETTABLEKS                       R33 R51 K121 ["onFocusLost"]
      648 SETTABLEKS                       R28 R51 K71 ["ref"]
      650 GETIMPORT                        R52 K127 [UDim.new]
      652 LOADN                            R53 0
      653 LOADN                            R54 100
      654 CALL                             R52 2 1
      655 SETTABLEKS                       R52 R51 K122 ["width"]
      657 GETTABLEKS                       R52 R27 K115 ["enabled"]
      659 SETTABLEKS                       R52 R51 K109 ["Visible"]
      661 CALL                             R49 2 1
      662 JUMP                             ; [+1]
      663 LOADNIL                          R49
      664 SETTABLEKS                       R49 R48 K92 ["TitleInput"]
      666 GETUPVAL                         R50 0
      667 GETTABLEKS                       R49 R50 K53 ["createElement"]
      669 LOADK                            R50 K128 ["Folder"]
      670 NEWTABLE                         R51 0 0
      672 GETTABLEKS                       R52 R0 K129 ["HeaderChildren"]
      674 CALL                             R49 3 1
      675 SETTABLEKS                       R49 R48 K93 ["Children"]
      677 CALL                             R45 3 1
      678 SETTABLEKS                       R45 R44 K83 ["CompositorNodeHeader"]
      680 GETTABLEKS                       R46 R0 K130 ["children"]
      682 JUMPIFNOT                        R46 ; [+68]
      683 GETIMPORT                        R46 K132 [next]
      685 GETTABLEKS                       R47 R0 K130 ["children"]
      687 CALL                             R46 1 1
      688 JUMPIFNOT                        R46 ; [+62]
      689 GETUPVAL                         R46 0
      690 GETTABLEKS                       R45 R46 K53 ["createElement"]
      692 GETUPVAL                         R47 7
      693 GETTABLEKS                       R46 R47 K54 ["View"]
      695 DUPTABLE                         R47 K133 [{"tag", "LayoutOrder"}]
      696 LOADK                            R48 K134 ["size-full-700 auto-y"]
      697 SETTABLEKS                       R48 R47 K55 ["tag"]
      699 MOVE                             R48 R2
      700 CALL                             R48 0 1
      701 SETTABLEKS                       R48 R47 K57 ["LayoutOrder"]
      703 DUPTABLE                         R48 K137 [{"Contents", "ResizeBars"}]
      704 GETUPVAL                         R50 0
      705 GETTABLEKS                       R49 R50 K53 ["createElement"]
      707 GETUPVAL                         R51 7
      708 GETTABLEKS                       R50 R51 K54 ["View"]
      710 DUPTABLE                         R51 K138 [{"tag", "ZIndex"}]
      711 LOADK                            R52 K139 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      712 SETTABLEKS                       R52 R51 K55 ["tag"]
      714 LOADN                            R52 1
      715 SETTABLEKS                       R52 R51 K58 ["ZIndex"]
      717 DUPTABLE                         R52 K141 [{"NodeProperties"}]
      718 GETUPVAL                         R54 0
      719 GETTABLEKS                       R53 R54 K53 ["createElement"]
      721 GETUPVAL                         R55 0
      722 GETTABLEKS                       R54 R55 K142 ["Fragment"]
      724 NEWTABLE                         R55 0 0
      726 GETTABLEKS                       R56 R0 K130 ["children"]
      728 CALL                             R53 3 1
      729 SETTABLEKS                       R53 R52 K140 ["NodeProperties"]
      731 CALL                             R49 3 1
      732 SETTABLEKS                       R49 R48 K135 ["Contents"]
      734 GETUPVAL                         R50 0
      735 GETTABLEKS                       R49 R50 K53 ["createElement"]
      737 GETUPVAL                         R50 9
      738 DUPTABLE                         R51 K145 [{"nodeWidth", "OnResized", "ZIndex"}]
      739 SETTABLEKS                       R14 R51 K143 ["nodeWidth"]
      741 SETTABLEKS                       R23 R51 K144 ["OnResized"]
      743 LOADN                            R52 2
      744 SETTABLEKS                       R52 R51 K58 ["ZIndex"]
      746 CALL                             R49 2 1
      747 SETTABLEKS                       R49 R48 K136 ["ResizeBars"]
      749 CALL                             R45 3 1
      750 JUMP                             ; [+1]
      751 LOADNIL                          R45
      752 SETTABLEKS                       R45 R44 K84 ["CompositorNodeContent"]
      754 CALL                             R41 3 1
      755 SETTABLEKS                       R41 R40 K65 ["Node"]
      757 GETUPVAL                         R42 0
      758 GETTABLEKS                       R41 R42 K53 ["createElement"]
      760 GETUPVAL                         R43 7
      761 GETTABLEKS                       R42 R43 K54 ["View"]
      763 DUPTABLE                         R43 K146 [{"tag", "testId", "LayoutOrder", "ref"}]
      764 LOADK                            R44 K147 ["size-full"]
      765 SETTABLEKS                       R44 R43 K55 ["tag"]
      767 LOADK                            R44 K148 ["CompositorNode-DebugMarker"]
      768 SETTABLEKS                       R44 R43 K110 ["testId"]
      770 MOVE                             R44 R2
      771 CALL                             R44 0 1
      772 SETTABLEKS                       R44 R43 K57 ["LayoutOrder"]
      774 SETTABLEKS                       R36 R43 K71 ["ref"]
      776 CALL                             R41 2 1
      777 SETTABLEKS                       R41 R40 K66 ["DebugMarker"]
      779 GETUPVAL                         R42 0
      780 GETTABLEKS                       R41 R42 K53 ["createElement"]
      782 LOADK                            R42 K149 ["UIDragDetector"]
      783 NEWTABLE                         R43 8 0
      785 GETIMPORT                        R44 K153 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      787 SETTABLEKS                       R44 R43 K154 ["DragStyle"]
      789 GETTABLEKS                       R44 R3 K155 ["getViewport"]
      791 CALL                             R44 0 1
      792 SETTABLEKS                       R44 R43 K156 ["ReferenceUIInstance"]
      794 GETUPVAL                         R46 0
      795 GETTABLEKS                       R45 R46 K157 ["Event"]
      797 GETTABLEKS                       R44 R45 K158 ["DragStart"]
      799 SETTABLE                         R20 R43 R44
      800 GETUPVAL                         R46 0
      801 GETTABLEKS                       R45 R46 K157 ["Event"]
      803 GETTABLEKS                       R44 R45 K159 ["DragContinue"]
      805 SETTABLE                         R21 R43 R44
      806 GETUPVAL                         R46 0
      807 GETTABLEKS                       R45 R46 K157 ["Event"]
      809 GETTABLEKS                       R44 R45 K160 ["DragEnd"]
      811 SETTABLE                         R22 R43 R44
      812 CALL                             R41 2 1
      813 SETTABLEKS                       R41 R40 K67 ["DragDetector"]
      815 CALL                             R37 3 -1
      816 RETURN                           R37 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K12 ["NativeGraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["NodeViewTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R8 K14 ["React"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K8 ["Parent"]
       51 GETTABLEKS                       R8 R9 K15 ["ReactUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K16 ["Components"]
       58 GETTABLEKS                       R10 R11 K17 ["NodeView"]
       60 GETTABLEKS                       R9 R10 K18 ["ResizeBars"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Contexts"]
       67 GETTABLEKS                       R10 R11 K19 ["ViewportRectContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K21 ["useAbsoluteSize"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K20 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K22 ["useFoundationStudioTheme"]
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K23 [PROTO_14]
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R8
       95 RETURN                           R12 1
