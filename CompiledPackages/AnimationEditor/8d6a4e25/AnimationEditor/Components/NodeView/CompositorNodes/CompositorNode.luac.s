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

PROTO_2:
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
       39 GETIMPORT                        R6 K12 [os.clock]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K13 ["current"]
       45 SUB                              R5 R6 R7
       46 LOADK                            R6 K14 [0.5]
       47 JUMPIFNOTLE                      R5 R6 ; [+3]
       49 GETUPVAL                         R5 3
       50 CALL                             R5 0 0
       51 GETUPVAL                         R5 2
       52 GETIMPORT                        R6 K12 [os.clock]
       54 CALL                             R6 0 1
       55 SETTABLEKS                       R6 R5 K13 ["current"]
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R5 R6 K15 ["OnDragStart"]
       60 JUMPIFNOT                        R5 ; [+26]
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R6 R7 K9 ["absToView"]
       64 MOVE                             R7 R1
       65 CALL                             R6 1 1
       66 SUB                              R5 R6 R4
       67 GETUPVAL                         R7 4
       68 GETTABLEKS                       R6 R7 K15 ["OnDragStart"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K16 ["viewToPlot"]
       73 MOVE                             R8 R5
       74 CALL                             R7 1 1
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R9 R10 K17 ["GraphPayload"]
       78 JUMPIFNOT                        R9 ; [+6]
       79 GETUPVAL                         R10 4
       80 GETTABLEKS                       R9 R10 K17 ["GraphPayload"]
       82 GETTABLEKS                       R8 R9 K18 ["id"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R8
       86 CALL                             R6 2 0
       87 RETURN                           R0 0

PROTO_3:
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
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R2 R3 K5 ["disable"]
       34 CALL                             R2 0 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnDragEnded"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OnDragEnded"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0

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

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Collapsed"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R0 K1 ["chevron-large-right"]
        5 RETURN                           R0 1
        6 LOADK                            R0 K2 ["chevron-large-down"]
        7 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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
      152 GETUPVAL                         R21 2
      153 GETTABLEKS                       R20 R21 K36 ["useToggleState"]
      155 LOADB                            R21 0
      156 CALL                             R20 1 1
      157 GETUPVAL                         R22 0
      158 GETTABLEKS                       R21 R22 K30 ["useRef"]
      160 LOADNIL                          R22
      161 CALL                             R21 1 1
      162 GETUPVAL                         R23 0
      163 GETTABLEKS                       R22 R23 K37 ["useCallback"]
      165 NEWCLOSURE                       R23 P1
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R21
      168 NEWTABLE                         R24 0 2
      170 GETTABLEKS                       R25 R20 K38 ["enable"]
      172 MOVE                             R26 R21
      173 SETLIST                          R24 R25 2 [1]
      175 CALL                             R22 2 1
      176 GETUPVAL                         R24 0
      177 GETTABLEKS                       R23 R24 K30 ["useRef"]
      179 LOADN                            R24 0
      180 CALL                             R23 1 1
      181 GETUPVAL                         R25 0
      182 GETTABLEKS                       R24 R25 K37 ["useCallback"]
      184 NEWCLOSURE                       R25 P2
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R0
      190 NEWTABLE                         R26 0 5
      192 MOVE                             R27 R3
      193 MOVE                             R28 R13
      194 GETTABLEKS                       R29 R0 K39 ["OnDragStart"]
      196 GETTABLEKS                       R30 R0 K5 ["GraphPayload"]
      198 MOVE                             R31 R22
      199 SETLIST                          R26 R27 5 [1]
      201 CALL                             R24 2 1
      202 GETUPVAL                         R26 0
      203 GETTABLEKS                       R25 R26 K37 ["useCallback"]
      205 NEWCLOSURE                       R26 P3
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R20
      210 NEWTABLE                         R27 0 5
      212 MOVE                             R28 R3
      213 MOVE                             R29 R12
      214 GETTABLEKS                       R30 R0 K40 ["OnDragMoved"]
      216 GETTABLEKS                       R31 R0 K5 ["GraphPayload"]
      218 GETTABLEKS                       R32 R20 K41 ["disable"]
      220 SETLIST                          R27 R28 5 [1]
      222 CALL                             R25 2 1
      223 GETUPVAL                         R27 0
      224 GETTABLEKS                       R26 R27 K37 ["useCallback"]
      226 NEWCLOSURE                       R27 P4
      227 CAPTURE                          VAL R0
      228 NEWTABLE                         R28 0 1
      230 GETTABLEKS                       R29 R0 K42 ["OnDragEnded"]
      232 SETLIST                          R28 R29 1 [1]
      234 CALL                             R26 2 1
      235 GETUPVAL                         R28 0
      236 GETTABLEKS                       R27 R28 K37 ["useCallback"]
      238 NEWCLOSURE                       R28 P5
      239 CAPTURE                          VAL R15
      240 NEWTABLE                         R29 0 5
      242 MOVE                             R30 R15
      243 GETTABLEKS                       R31 R0 K34 ["Position"]
      245 MOVE                             R32 R3
      246 GETTABLEKS                       R33 R0 K5 ["GraphPayload"]
      248 GETTABLEKS                       R34 R0 K40 ["OnDragMoved"]
      250 SETLIST                          R29 R30 5 [1]
      252 CALL                             R27 2 1
      253 GETUPVAL                         R29 9
      254 GETTABLEKS                       R28 R29 K43 ["useSignalState"]
      256 GETUPVAL                         R30 10
      257 GETTABLEKS                       R29 R30 K44 ["useObserveIsDisabled"]
      259 GETTABLEKS                       R31 R0 K5 ["GraphPayload"]
      261 GETTABLEKS                       R30 R31 K45 ["id"]
      263 CALL                             R29 1 -1
      264 CALL                             R28 -1 1
      265 GETUPVAL                         R30 0
      266 GETTABLEKS                       R29 R30 K46 ["useEffect"]
      268 NEWCLOSURE                       R30 P6
      269 CAPTURE                          VAL R0
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R4
      273 NEWTABLE                         R31 0 5
      275 GETTABLEKS                       R32 R4 K47 ["setNodeSizeAsync"]
      277 GETTABLEKS                       R33 R0 K5 ["GraphPayload"]
      279 GETTABLEKS                       R34 R17 K32 ["current"]
      281 GETTABLEKS                       R35 R1 K48 ["zoomRatio"]
      283 MOVE                             R36 R14
      284 SETLIST                          R31 R32 5 [1]
      286 CALL                             R29 2 0
      287 GETUPVAL                         R30 0
      288 GETTABLEKS                       R29 R30 K35 ["useMemo"]
      290 NEWCLOSURE                       R30 P7
      291 CAPTURE                          VAL R0
      292 NEWTABLE                         R31 0 1
      294 GETTABLEKS                       R32 R0 K49 ["Collapsed"]
      296 SETLIST                          R31 R32 1 [1]
      298 CALL                             R29 2 1
      299 GETUPVAL                         R31 0
      300 GETTABLEKS                       R30 R31 K37 ["useCallback"]
      302 NEWCLOSURE                       R31 P8
      303 CAPTURE                          VAL R0
      304 CAPTURE                          VAL R4
      305 NEWTABLE                         R32 0 3
      307 GETTABLEKS                       R33 R4 K50 ["setCollapsedAsync"]
      309 GETTABLEKS                       R34 R0 K5 ["GraphPayload"]
      311 GETTABLEKS                       R35 R0 K49 ["Collapsed"]
      313 SETLIST                          R32 R33 3 [1]
      315 CALL                             R30 2 1
      316 GETUPVAL                         R32 0
      317 GETTABLEKS                       R31 R32 K25 ["useState"]
      319 GETTABLEKS                       R33 R0 K5 ["GraphPayload"]
      321 GETTABLEKS                       R32 R33 K51 ["name"]
      323 JUMPIF                           R32 ; [+2]
      324 GETTABLEKS                       R32 R0 K52 ["text"]
      326 CALL                             R31 1 2
      327 GETTABLEKS                       R33 R0 K52 ["text"]
      329 JUMPIF                           R33 ; [+4]
      330 GETTABLEKS                       R34 R0 K5 ["GraphPayload"]
      332 GETTABLEKS                       R33 R34 K51 ["name"]
      334 GETUPVAL                         R35 0
      335 GETTABLEKS                       R34 R35 K37 ["useCallback"]
      337 NEWCLOSURE                       R35 P9
      338 CAPTURE                          VAL R0
      339 CAPTURE                          VAL R31
      340 CAPTURE                          VAL R4
      341 CAPTURE                          VAL R20
      342 NEWTABLE                         R36 0 3
      344 MOVE                             R37 R31
      345 GETTABLEKS                       R38 R20 K41 ["disable"]
      347 GETTABLEKS                       R39 R4 K53 ["renameNodeAsync"]
      349 SETLIST                          R36 R37 3 [1]
      351 CALL                             R34 2 1
      352 MOVE                             R35 R2
      353 CALL                             R35 0 1
      354 GETUPVAL                         R37 0
      355 GETTABLEKS                       R36 R37 K25 ["useState"]
      357 LOADNIL                          R37
      358 CALL                             R36 1 2
      359 GETUPVAL                         R39 0
      360 GETTABLEKS                       R38 R39 K46 ["useEffect"]
      362 NEWCLOSURE                       R39 P10
      363 CAPTURE                          VAL R36
      364 CAPTURE                          VAL R33
      365 NEWTABLE                         R40 0 2
      367 MOVE                             R41 R36
      368 MOVE                             R42 R33
      369 SETLIST                          R40 R41 2 [1]
      371 CALL                             R38 2 0
      372 GETUPVAL                         R39 0
      373 GETTABLEKS                       R38 R39 K54 ["createElement"]
      375 GETUPVAL                         R40 7
      376 GETTABLEKS                       R39 R40 K55 ["View"]
      378 DUPTABLE                         R40 K60 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position"}]
      379 LOADK                            R41 K61 ["auto-y"]
      380 SETTABLEKS                       R41 R40 K56 ["tag"]
      382 GETIMPORT                        R41 K64 [UDim2.fromOffset]
      384 MOVE                             R42 R14
      385 LOADN                            R43 0
      386 CALL                             R41 2 1
      387 SETTABLEKS                       R41 R40 K57 ["Size"]
      389 GETTABLEKS                       R41 R0 K58 ["LayoutOrder"]
      391 SETTABLEKS                       R41 R40 K58 ["LayoutOrder"]
      393 GETTABLEKS                       R41 R0 K59 ["ZIndex"]
      395 SETTABLEKS                       R41 R40 K59 ["ZIndex"]
      397 SETTABLEKS                       R19 R40 K34 ["Position"]
      399 DUPTABLE                         R41 K69 [{"UIScale", "Node", "DebugMarker", "DragDetector"}]
      400 GETUPVAL                         R43 0
      401 GETTABLEKS                       R42 R43 K54 ["createElement"]
      403 LOADK                            R43 K65 ["UIScale"]
      404 DUPTABLE                         R44 K71 [{"Scale"}]
      405 GETTABLEKS                       R45 R1 K48 ["zoomRatio"]
      407 SETTABLEKS                       R45 R44 K70 ["Scale"]
      409 CALL                             R42 2 1
      410 SETTABLEKS                       R42 R41 K65 ["UIScale"]
      412 GETUPVAL                         R43 0
      413 GETTABLEKS                       R42 R43 K54 ["createElement"]
      415 GETUPVAL                         R44 7
      416 GETTABLEKS                       R43 R44 K55 ["View"]
      418 DUPTABLE                         R44 K73 [{"tag", "Size", "ref", "ZIndex"}]
      419 NEWTABLE                         R45 8 0
      421 LOADB                            R46 1
      422 SETTABLEKS                       R46 R45 K74 ["CompositorNode"]
      424 LOADB                            R46 1
      425 SETTABLEKS                       R46 R45 K75 ["col auto-y bg-surface-200"]
      427 NOT                              R46 R5
      428 SETTABLEKS                       R46 R45 K76 ["radius-small gap-xsmall"]
      430 MOVE                             R46 R5
      431 JUMPIFNOT                        R46 ; [+3]
      432 GETTABLEKS                       R47 R0 K49 ["Collapsed"]
      434 NOT                              R46 R47
      435 SETTABLEKS                       R46 R45 K77 ["radius-small"]
      437 SETTABLEKS                       R5 R45 K78 ["gap-none"]
      439 MOVE                             R46 R5
      440 JUMPIFNOT                        R46 ; [+2]
      441 GETTABLEKS                       R46 R0 K49 ["Collapsed"]
      443 SETTABLEKS                       R46 R45 K79 ["radius-large"]
      445 GETTABLEKS                       R47 R0 K80 ["Selected"]
      447 NOT                              R46 R47
      448 SETTABLEKS                       R46 R45 K81 ["stroke-standard stroke-default"]
      450 GETTABLEKS                       R46 R0 K80 ["Selected"]
      452 SETTABLEKS                       R46 R45 K82 ["stroke-standard stroke-system-neutral"]
      454 SETTABLEKS                       R45 R44 K56 ["tag"]
      456 GETIMPORT                        R45 K64 [UDim2.fromOffset]
      458 MOVE                             R46 R14
      459 LOADN                            R47 0
      460 CALL                             R45 2 1
      461 SETTABLEKS                       R45 R44 K57 ["Size"]
      463 GETTABLEKS                       R45 R16 K83 ["setFrame"]
      465 SETTABLEKS                       R45 R44 K72 ["ref"]
      467 LOADN                            R45 1
      468 SETTABLEKS                       R45 R44 K59 ["ZIndex"]
      470 DUPTABLE                         R45 K86 [{"CompositorNodeHeader", "CompositorNodeContent"}]
      471 GETUPVAL                         R47 0
      472 GETTABLEKS                       R46 R47 K54 ["createElement"]
      474 GETUPVAL                         R48 7
      475 GETTABLEKS                       R47 R48 K55 ["View"]
      477 DUPTABLE                         R48 K88 [{"tag", "backgroundStyle", "LayoutOrder"}]
      478 NEWTABLE                         R49 4 0
      480 LOADB                            R50 1
      481 SETTABLEKS                       R50 R49 K89 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      483 NOT                              R50 R5
      484 JUMPIFNOT                        R50 ; [+1]
      485 NOT                              R50 R6
      486 SETTABLEKS                       R50 R49 K90 ["radius-small bg-shift-200"]
      488 MOVE                             R50 R5
      489 JUMPIFNOT                        R50 ; [+3]
      490 GETTABLEKS                       R51 R0 K49 ["Collapsed"]
      492 NOT                              R50 R51
      493 SETTABLEKS                       R50 R49 K77 ["radius-small"]
      495 MOVE                             R50 R5
      496 JUMPIFNOT                        R50 ; [+2]
      497 GETTABLEKS                       R50 R0 K49 ["Collapsed"]
      499 SETTABLEKS                       R50 R49 K79 ["radius-large"]
      501 SETTABLEKS                       R49 R48 K56 ["tag"]
      503 JUMPIFNOT                        R5 ; [+2]
      504 MOVE                             R49 R10
      505 JUMP                             ; [+4]
      506 JUMPIFNOT                        R6 ; [+2]
      507 MOVE                             R49 R11
      508 JUMP                             ; [+1]
      509 LOADNIL                          R49
      510 SETTABLEKS                       R49 R48 K87 ["backgroundStyle"]
      512 SETTABLEKS                       R35 R48 K58 ["LayoutOrder"]
      514 DUPTABLE                         R49 K95 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      515 GETTABLEKS                       R51 R0 K96 ["Collapsible"]
      517 JUMPIFEQKB                       R51 FALSE ; [+45]
      519 GETUPVAL                         R51 0
      520 GETTABLEKS                       R50 R51 K54 ["createElement"]
      522 GETUPVAL                         R52 7
      523 GETTABLEKS                       R51 R52 K97 ["Button"]
      525 DUPTABLE                         R52 K103 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      526 SETTABLEKS                       R29 R52 K98 ["icon"]
      528 GETUPVAL                         R56 7
      529 GETTABLEKS                       R55 R56 K11 ["Enums"]
      531 GETTABLEKS                       R54 R55 K104 ["ButtonVariant"]
      533 GETTABLEKS                       R53 R54 K105 ["Text"]
      535 SETTABLEKS                       R53 R52 K99 ["variant"]
      537 SETTABLEKS                       R30 R52 K100 ["onActivated"]
      539 GETUPVAL                         R56 7
      540 GETTABLEKS                       R55 R56 K11 ["Enums"]
      542 GETTABLEKS                       R54 R55 K106 ["InputSize"]
      544 GETTABLEKS                       R53 R54 K107 ["XSmall"]
      546 SETTABLEKS                       R53 R52 K101 ["size"]
      548 MOVE                             R53 R2
      549 CALL                             R53 0 1
      550 SETTABLEKS                       R53 R52 K58 ["LayoutOrder"]
      552 GETUPVAL                         R56 7
      553 GETTABLEKS                       R55 R56 K11 ["Enums"]
      555 GETTABLEKS                       R54 R55 K108 ["FillBehavior"]
      557 GETTABLEKS                       R53 R54 K109 ["Fit"]
      559 SETTABLEKS                       R53 R52 K102 ["fillBehavior"]
      561 CALL                             R50 2 1
      562 JUMP                             ; [+1]
      563 LOADNIL                          R50
      564 SETTABLEKS                       R50 R49 K91 ["ToggleButton"]
      566 GETUPVAL                         R51 0
      567 GETTABLEKS                       R50 R51 K54 ["createElement"]
      569 GETUPVAL                         R52 7
      570 GETTABLEKS                       R51 R52 K105 ["Text"]
      572 DUPTABLE                         R52 K112 [{"tag", "Text", "LayoutOrder", "Visible", "testId"}]
      573 NEWTABLE                         R53 4 0
      575 LOADB                            R54 1
      576 SETTABLEKS                       R54 R53 K113 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      578 SETTABLEKS                       R28 R53 K114 ["content-inverse-muted"]
      580 GETTABLEKS                       R55 R0 K96 ["Collapsible"]
      582 JUMPIFEQKB                       R55 FALSE ; [+2]
      584 LOADB                            R54 0 +1
      585 LOADB                            R54 1
      586 SETTABLEKS                       R54 R53 K115 ["padding-left-small"]
      588 SETTABLEKS                       R53 R52 K56 ["tag"]
      590 SETTABLEKS                       R33 R52 K105 ["Text"]
      592 MOVE                             R53 R2
      593 CALL                             R53 0 1
      594 SETTABLEKS                       R53 R52 K58 ["LayoutOrder"]
      596 GETTABLEKS                       R54 R20 K116 ["enabled"]
      598 NOT                              R53 R54
      599 SETTABLEKS                       R53 R52 K110 ["Visible"]
      601 LOADK                            R53 K117 ["CompositorNode-Title"]
      602 SETTABLEKS                       R53 R52 K111 ["testId"]
      604 CALL                             R50 2 1
      605 SETTABLEKS                       R50 R49 K92 ["Title"]
      607 GETTABLEKS                       R51 R0 K4 ["IsParameterNode"]
      609 JUMPIF                           R51 ; [+55]
      610 GETUPVAL                         R51 0
      611 GETTABLEKS                       R50 R51 K54 ["createElement"]
      613 GETUPVAL                         R52 7
      614 GETTABLEKS                       R51 R52 K118 ["TextInput"]
      616 DUPTABLE                         R52 K124 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      617 NEWTABLE                         R53 2 0
      619 LOADB                            R54 1
      620 SETTABLEKS                       R54 R53 K113 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      622 SETTABLEKS                       R28 R53 K114 ["content-inverse-muted"]
      624 SETTABLEKS                       R53 R52 K56 ["tag"]
      626 SETTABLEKS                       R31 R52 K52 ["text"]
      628 MOVE                             R53 R2
      629 CALL                             R53 0 1
      630 SETTABLEKS                       R53 R52 K58 ["LayoutOrder"]
      632 SETTABLEKS                       R32 R52 K119 ["onChanged"]
      634 LOADK                            R53 K125 [""]
      635 SETTABLEKS                       R53 R52 K120 ["label"]
      637 GETUPVAL                         R56 7
      638 GETTABLEKS                       R55 R56 K11 ["Enums"]
      640 GETTABLEKS                       R54 R55 K106 ["InputSize"]
      642 GETTABLEKS                       R53 R54 K107 ["XSmall"]
      644 SETTABLEKS                       R53 R52 K101 ["size"]
      646 SETTABLEKS                       R21 R52 K121 ["textBoxRef"]
      648 SETTABLEKS                       R34 R52 K122 ["onFocusLost"]
      650 SETTABLEKS                       R21 R52 K72 ["ref"]
      652 GETIMPORT                        R53 K128 [UDim.new]
      654 LOADN                            R54 0
      655 LOADN                            R55 100
      656 CALL                             R53 2 1
      657 SETTABLEKS                       R53 R52 K123 ["width"]
      659 GETTABLEKS                       R53 R20 K116 ["enabled"]
      661 SETTABLEKS                       R53 R52 K110 ["Visible"]
      663 CALL                             R50 2 1
      664 JUMP                             ; [+1]
      665 LOADNIL                          R50
      666 SETTABLEKS                       R50 R49 K93 ["TitleInput"]
      668 GETUPVAL                         R51 0
      669 GETTABLEKS                       R50 R51 K54 ["createElement"]
      671 LOADK                            R51 K129 ["Folder"]
      672 NEWTABLE                         R52 0 0
      674 GETTABLEKS                       R53 R0 K130 ["HeaderChildren"]
      676 CALL                             R50 3 1
      677 SETTABLEKS                       R50 R49 K94 ["Children"]
      679 CALL                             R46 3 1
      680 SETTABLEKS                       R46 R45 K84 ["CompositorNodeHeader"]
      682 GETTABLEKS                       R47 R0 K131 ["children"]
      684 JUMPIFNOT                        R47 ; [+68]
      685 GETIMPORT                        R47 K133 [next]
      687 GETTABLEKS                       R48 R0 K131 ["children"]
      689 CALL                             R47 1 1
      690 JUMPIFNOT                        R47 ; [+62]
      691 GETUPVAL                         R47 0
      692 GETTABLEKS                       R46 R47 K54 ["createElement"]
      694 GETUPVAL                         R48 7
      695 GETTABLEKS                       R47 R48 K55 ["View"]
      697 DUPTABLE                         R48 K134 [{"tag", "LayoutOrder"}]
      698 LOADK                            R49 K135 ["size-full-700 auto-y"]
      699 SETTABLEKS                       R49 R48 K56 ["tag"]
      701 MOVE                             R49 R2
      702 CALL                             R49 0 1
      703 SETTABLEKS                       R49 R48 K58 ["LayoutOrder"]
      705 DUPTABLE                         R49 K138 [{"Contents", "ResizeBars"}]
      706 GETUPVAL                         R51 0
      707 GETTABLEKS                       R50 R51 K54 ["createElement"]
      709 GETUPVAL                         R52 7
      710 GETTABLEKS                       R51 R52 K55 ["View"]
      712 DUPTABLE                         R52 K139 [{"tag", "ZIndex"}]
      713 LOADK                            R53 K140 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      714 SETTABLEKS                       R53 R52 K56 ["tag"]
      716 LOADN                            R53 1
      717 SETTABLEKS                       R53 R52 K59 ["ZIndex"]
      719 DUPTABLE                         R53 K142 [{"NodeProperties"}]
      720 GETUPVAL                         R55 0
      721 GETTABLEKS                       R54 R55 K54 ["createElement"]
      723 GETUPVAL                         R56 0
      724 GETTABLEKS                       R55 R56 K143 ["Fragment"]
      726 NEWTABLE                         R56 0 0
      728 GETTABLEKS                       R57 R0 K131 ["children"]
      730 CALL                             R54 3 1
      731 SETTABLEKS                       R54 R53 K141 ["NodeProperties"]
      733 CALL                             R50 3 1
      734 SETTABLEKS                       R50 R49 K136 ["Contents"]
      736 GETUPVAL                         R51 0
      737 GETTABLEKS                       R50 R51 K54 ["createElement"]
      739 GETUPVAL                         R51 11
      740 DUPTABLE                         R52 K146 [{"nodeWidth", "OnResized", "ZIndex"}]
      741 SETTABLEKS                       R14 R52 K144 ["nodeWidth"]
      743 SETTABLEKS                       R27 R52 K145 ["OnResized"]
      745 LOADN                            R53 2
      746 SETTABLEKS                       R53 R52 K59 ["ZIndex"]
      748 CALL                             R50 2 1
      749 SETTABLEKS                       R50 R49 K137 ["ResizeBars"]
      751 CALL                             R46 3 1
      752 JUMP                             ; [+1]
      753 LOADNIL                          R46
      754 SETTABLEKS                       R46 R45 K85 ["CompositorNodeContent"]
      756 CALL                             R42 3 1
      757 SETTABLEKS                       R42 R41 K66 ["Node"]
      759 GETUPVAL                         R43 0
      760 GETTABLEKS                       R42 R43 K54 ["createElement"]
      762 GETUPVAL                         R44 7
      763 GETTABLEKS                       R43 R44 K55 ["View"]
      765 DUPTABLE                         R44 K147 [{"tag", "testId", "LayoutOrder", "ref"}]
      766 LOADK                            R45 K148 ["size-full"]
      767 SETTABLEKS                       R45 R44 K56 ["tag"]
      769 LOADK                            R45 K149 ["CompositorNode-DebugMarker"]
      770 SETTABLEKS                       R45 R44 K111 ["testId"]
      772 MOVE                             R45 R2
      773 CALL                             R45 0 1
      774 SETTABLEKS                       R45 R44 K58 ["LayoutOrder"]
      776 SETTABLEKS                       R37 R44 K72 ["ref"]
      778 CALL                             R42 2 1
      779 SETTABLEKS                       R42 R41 K67 ["DebugMarker"]
      781 GETUPVAL                         R43 0
      782 GETTABLEKS                       R42 R43 K54 ["createElement"]
      784 LOADK                            R43 K150 ["UIDragDetector"]
      785 NEWTABLE                         R44 8 0
      787 GETIMPORT                        R45 K154 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      789 SETTABLEKS                       R45 R44 K155 ["DragStyle"]
      791 GETTABLEKS                       R45 R3 K156 ["getViewport"]
      793 CALL                             R45 0 1
      794 SETTABLEKS                       R45 R44 K157 ["ReferenceUIInstance"]
      796 GETUPVAL                         R47 0
      797 GETTABLEKS                       R46 R47 K158 ["Event"]
      799 GETTABLEKS                       R45 R46 K159 ["DragStart"]
      801 SETTABLE                         R24 R44 R45
      802 GETUPVAL                         R47 0
      803 GETTABLEKS                       R46 R47 K158 ["Event"]
      805 GETTABLEKS                       R45 R46 K160 ["DragContinue"]
      807 SETTABLE                         R25 R44 R45
      808 GETUPVAL                         R47 0
      809 GETTABLEKS                       R46 R47 K158 ["Event"]
      811 GETTABLEKS                       R45 R46 K161 ["DragEnd"]
      813 SETTABLE                         R26 R44 R45
      814 CALL                             R42 2 1
      815 SETTABLEKS                       R42 R41 K68 ["DragDetector"]
      817 CALL                             R38 3 -1
      818 RETURN                           R38 -1

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
       48 GETTABLEKS                       R7 R0 K17 ["NodeViewTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K12 ["Parent"]
       55 GETTABLEKS                       R8 R9 K18 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K12 ["Parent"]
       62 GETTABLEKS                       R9 R10 K19 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R12 R0 K6 ["Components"]
       69 GETTABLEKS                       R11 R12 K7 ["NodeView"]
       71 GETTABLEKS                       R10 R11 K20 ["ResizeBars"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K12 ["Parent"]
       78 GETTABLEKS                       R11 R12 K21 ["SignalsReact"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K15 ["Contexts"]
       85 GETTABLEKS                       R12 R13 K22 ["ViewportRectContext"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       92 GETTABLEKS                       R13 R14 K24 ["useAbsoluteSize"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K23 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K25 ["useFoundationStudioTheme"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K26 [PROTO_14]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R9
      115 RETURN                           R14 1
