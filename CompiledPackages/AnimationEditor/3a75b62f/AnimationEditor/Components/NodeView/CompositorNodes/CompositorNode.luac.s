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
      218 GETUPVAL                         R25 9
      219 GETTABLEKS                       R24 R25 K40 ["useSignalState"]
      221 GETUPVAL                         R26 10
      222 GETTABLEKS                       R25 R26 K41 ["useObserveIsDisabled"]
      224 GETTABLEKS                       R27 R0 K5 ["GraphPayload"]
      226 GETTABLEKS                       R26 R27 K42 ["id"]
      228 CALL                             R25 1 -1
      229 CALL                             R24 -1 1
      230 GETUPVAL                         R26 0
      231 GETTABLEKS                       R25 R26 K43 ["useEffect"]
      233 NEWCLOSURE                       R26 P5
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R4
      238 NEWTABLE                         R27 0 5
      240 GETTABLEKS                       R28 R4 K44 ["setNodeSizeAsync"]
      242 GETTABLEKS                       R29 R0 K5 ["GraphPayload"]
      244 GETTABLEKS                       R30 R17 K32 ["current"]
      246 GETTABLEKS                       R31 R1 K45 ["zoomRatio"]
      248 MOVE                             R32 R14
      249 SETLIST                          R27 R28 5 [1]
      251 CALL                             R25 2 0
      252 GETUPVAL                         R26 0
      253 GETTABLEKS                       R25 R26 K35 ["useMemo"]
      255 NEWCLOSURE                       R26 P6
      256 CAPTURE                          VAL R0
      257 NEWTABLE                         R27 0 1
      259 GETTABLEKS                       R28 R0 K46 ["Collapsed"]
      261 SETLIST                          R27 R28 1 [1]
      263 CALL                             R25 2 1
      264 GETUPVAL                         R27 0
      265 GETTABLEKS                       R26 R27 K36 ["useCallback"]
      267 NEWCLOSURE                       R27 P7
      268 CAPTURE                          VAL R0
      269 CAPTURE                          VAL R4
      270 NEWTABLE                         R28 0 3
      272 GETTABLEKS                       R29 R4 K47 ["setCollapsedAsync"]
      274 GETTABLEKS                       R30 R0 K5 ["GraphPayload"]
      276 GETTABLEKS                       R31 R0 K46 ["Collapsed"]
      278 SETLIST                          R28 R29 3 [1]
      280 CALL                             R26 2 1
      281 GETUPVAL                         R28 2
      282 GETTABLEKS                       R27 R28 K48 ["useToggleState"]
      284 LOADB                            R28 0
      285 CALL                             R27 1 1
      286 GETUPVAL                         R29 0
      287 GETTABLEKS                       R28 R29 K30 ["useRef"]
      289 LOADNIL                          R29
      290 CALL                             R28 1 1
      291 GETUPVAL                         R30 0
      292 GETTABLEKS                       R29 R30 K25 ["useState"]
      294 GETTABLEKS                       R31 R0 K5 ["GraphPayload"]
      296 GETTABLEKS                       R30 R31 K49 ["name"]
      298 JUMPIF                           R30 ; [+2]
      299 GETTABLEKS                       R30 R0 K50 ["text"]
      301 CALL                             R29 1 2
      302 GETTABLEKS                       R31 R0 K50 ["text"]
      304 JUMPIF                           R31 ; [+4]
      305 GETTABLEKS                       R32 R0 K5 ["GraphPayload"]
      307 GETTABLEKS                       R31 R32 K49 ["name"]
      309 GETUPVAL                         R33 0
      310 GETTABLEKS                       R32 R33 K36 ["useCallback"]
      312 NEWCLOSURE                       R33 P8
      313 CAPTURE                          VAL R27
      314 CAPTURE                          VAL R28
      315 NEWTABLE                         R34 0 2
      317 GETTABLEKS                       R35 R27 K51 ["enable"]
      319 MOVE                             R36 R28
      320 SETLIST                          R34 R35 2 [1]
      322 CALL                             R32 2 1
      323 GETUPVAL                         R34 0
      324 GETTABLEKS                       R33 R34 K36 ["useCallback"]
      326 NEWCLOSURE                       R34 P9
      327 CAPTURE                          VAL R0
      328 CAPTURE                          VAL R29
      329 CAPTURE                          VAL R4
      330 CAPTURE                          VAL R27
      331 NEWTABLE                         R35 0 3
      333 MOVE                             R36 R29
      334 GETTABLEKS                       R37 R27 K52 ["disable"]
      336 GETTABLEKS                       R38 R4 K53 ["renameNodeAsync"]
      338 SETLIST                          R35 R36 3 [1]
      340 CALL                             R33 2 1
      341 MOVE                             R34 R2
      342 CALL                             R34 0 1
      343 GETUPVAL                         R36 0
      344 GETTABLEKS                       R35 R36 K25 ["useState"]
      346 LOADNIL                          R36
      347 CALL                             R35 1 2
      348 GETUPVAL                         R38 0
      349 GETTABLEKS                       R37 R38 K43 ["useEffect"]
      351 NEWCLOSURE                       R38 P10
      352 CAPTURE                          VAL R35
      353 CAPTURE                          VAL R31
      354 NEWTABLE                         R39 0 2
      356 MOVE                             R40 R35
      357 MOVE                             R41 R31
      358 SETLIST                          R39 R40 2 [1]
      360 CALL                             R37 2 0
      361 GETUPVAL                         R38 0
      362 GETTABLEKS                       R37 R38 K54 ["createElement"]
      364 GETUPVAL                         R39 7
      365 GETTABLEKS                       R38 R39 K55 ["View"]
      367 DUPTABLE                         R39 K60 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position"}]
      368 LOADK                            R40 K61 ["auto-y"]
      369 SETTABLEKS                       R40 R39 K56 ["tag"]
      371 GETIMPORT                        R40 K64 [UDim2.fromOffset]
      373 MOVE                             R41 R14
      374 LOADN                            R42 0
      375 CALL                             R40 2 1
      376 SETTABLEKS                       R40 R39 K57 ["Size"]
      378 GETTABLEKS                       R40 R0 K58 ["LayoutOrder"]
      380 SETTABLEKS                       R40 R39 K58 ["LayoutOrder"]
      382 GETTABLEKS                       R40 R0 K59 ["ZIndex"]
      384 SETTABLEKS                       R40 R39 K59 ["ZIndex"]
      386 SETTABLEKS                       R19 R39 K34 ["Position"]
      388 DUPTABLE                         R40 K69 [{"UIScale", "Node", "DebugMarker", "DragDetector"}]
      389 GETUPVAL                         R42 0
      390 GETTABLEKS                       R41 R42 K54 ["createElement"]
      392 LOADK                            R42 K65 ["UIScale"]
      393 DUPTABLE                         R43 K71 [{"Scale"}]
      394 GETTABLEKS                       R44 R1 K45 ["zoomRatio"]
      396 SETTABLEKS                       R44 R43 K70 ["Scale"]
      398 CALL                             R41 2 1
      399 SETTABLEKS                       R41 R40 K65 ["UIScale"]
      401 GETUPVAL                         R42 0
      402 GETTABLEKS                       R41 R42 K54 ["createElement"]
      404 GETUPVAL                         R43 7
      405 GETTABLEKS                       R42 R43 K55 ["View"]
      407 DUPTABLE                         R43 K73 [{"tag", "Size", "ref", "ZIndex"}]
      408 NEWTABLE                         R44 8 0
      410 LOADB                            R45 1
      411 SETTABLEKS                       R45 R44 K74 ["CompositorNode"]
      413 LOADB                            R45 1
      414 SETTABLEKS                       R45 R44 K75 ["col auto-y bg-surface-200"]
      416 NOT                              R45 R5
      417 SETTABLEKS                       R45 R44 K76 ["radius-small gap-xsmall"]
      419 MOVE                             R45 R5
      420 JUMPIFNOT                        R45 ; [+3]
      421 GETTABLEKS                       R46 R0 K46 ["Collapsed"]
      423 NOT                              R45 R46
      424 SETTABLEKS                       R45 R44 K77 ["radius-small"]
      426 SETTABLEKS                       R5 R44 K78 ["gap-none"]
      428 MOVE                             R45 R5
      429 JUMPIFNOT                        R45 ; [+2]
      430 GETTABLEKS                       R45 R0 K46 ["Collapsed"]
      432 SETTABLEKS                       R45 R44 K79 ["radius-large"]
      434 GETTABLEKS                       R46 R0 K80 ["Selected"]
      436 NOT                              R45 R46
      437 SETTABLEKS                       R45 R44 K81 ["stroke-standard stroke-default"]
      439 GETTABLEKS                       R45 R0 K80 ["Selected"]
      441 SETTABLEKS                       R45 R44 K82 ["stroke-standard stroke-system-neutral"]
      443 SETTABLEKS                       R44 R43 K56 ["tag"]
      445 GETIMPORT                        R44 K64 [UDim2.fromOffset]
      447 MOVE                             R45 R14
      448 LOADN                            R46 0
      449 CALL                             R44 2 1
      450 SETTABLEKS                       R44 R43 K57 ["Size"]
      452 GETTABLEKS                       R44 R16 K83 ["setFrame"]
      454 SETTABLEKS                       R44 R43 K72 ["ref"]
      456 LOADN                            R44 1
      457 SETTABLEKS                       R44 R43 K59 ["ZIndex"]
      459 DUPTABLE                         R44 K86 [{"CompositorNodeHeader", "CompositorNodeContent"}]
      460 GETUPVAL                         R46 0
      461 GETTABLEKS                       R45 R46 K54 ["createElement"]
      463 GETUPVAL                         R47 7
      464 GETTABLEKS                       R46 R47 K55 ["View"]
      466 DUPTABLE                         R47 K88 [{"tag", "backgroundStyle", "LayoutOrder"}]
      467 NEWTABLE                         R48 4 0
      469 LOADB                            R49 1
      470 SETTABLEKS                       R49 R48 K89 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      472 NOT                              R49 R5
      473 JUMPIFNOT                        R49 ; [+1]
      474 NOT                              R49 R6
      475 SETTABLEKS                       R49 R48 K90 ["radius-small bg-shift-200"]
      477 MOVE                             R49 R5
      478 JUMPIFNOT                        R49 ; [+3]
      479 GETTABLEKS                       R50 R0 K46 ["Collapsed"]
      481 NOT                              R49 R50
      482 SETTABLEKS                       R49 R48 K77 ["radius-small"]
      484 MOVE                             R49 R5
      485 JUMPIFNOT                        R49 ; [+2]
      486 GETTABLEKS                       R49 R0 K46 ["Collapsed"]
      488 SETTABLEKS                       R49 R48 K79 ["radius-large"]
      490 SETTABLEKS                       R48 R47 K56 ["tag"]
      492 JUMPIFNOT                        R5 ; [+2]
      493 MOVE                             R48 R10
      494 JUMP                             ; [+4]
      495 JUMPIFNOT                        R6 ; [+2]
      496 MOVE                             R48 R11
      497 JUMP                             ; [+1]
      498 LOADNIL                          R48
      499 SETTABLEKS                       R48 R47 K87 ["backgroundStyle"]
      501 SETTABLEKS                       R34 R47 K58 ["LayoutOrder"]
      503 DUPTABLE                         R48 K95 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      504 GETTABLEKS                       R50 R0 K96 ["Collapsible"]
      506 JUMPIFEQKB                       R50 FALSE ; [+45]
      508 GETUPVAL                         R50 0
      509 GETTABLEKS                       R49 R50 K54 ["createElement"]
      511 GETUPVAL                         R51 7
      512 GETTABLEKS                       R50 R51 K97 ["Button"]
      514 DUPTABLE                         R51 K103 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      515 SETTABLEKS                       R25 R51 K98 ["icon"]
      517 GETUPVAL                         R55 7
      518 GETTABLEKS                       R54 R55 K11 ["Enums"]
      520 GETTABLEKS                       R53 R54 K104 ["ButtonVariant"]
      522 GETTABLEKS                       R52 R53 K105 ["Text"]
      524 SETTABLEKS                       R52 R51 K99 ["variant"]
      526 SETTABLEKS                       R26 R51 K100 ["onActivated"]
      528 GETUPVAL                         R55 7
      529 GETTABLEKS                       R54 R55 K11 ["Enums"]
      531 GETTABLEKS                       R53 R54 K106 ["InputSize"]
      533 GETTABLEKS                       R52 R53 K107 ["XSmall"]
      535 SETTABLEKS                       R52 R51 K101 ["size"]
      537 MOVE                             R52 R2
      538 CALL                             R52 0 1
      539 SETTABLEKS                       R52 R51 K58 ["LayoutOrder"]
      541 GETUPVAL                         R55 7
      542 GETTABLEKS                       R54 R55 K11 ["Enums"]
      544 GETTABLEKS                       R53 R54 K108 ["FillBehavior"]
      546 GETTABLEKS                       R52 R53 K109 ["Fit"]
      548 SETTABLEKS                       R52 R51 K102 ["fillBehavior"]
      550 CALL                             R49 2 1
      551 JUMP                             ; [+1]
      552 LOADNIL                          R49
      553 SETTABLEKS                       R49 R48 K91 ["ToggleButton"]
      555 GETUPVAL                         R50 0
      556 GETTABLEKS                       R49 R50 K54 ["createElement"]
      558 GETUPVAL                         R51 7
      559 GETTABLEKS                       R50 R51 K105 ["Text"]
      561 DUPTABLE                         R51 K112 [{"tag", "Text", "LayoutOrder", "onActivated", "Visible", "testId"}]
      562 NEWTABLE                         R52 4 0
      564 LOADB                            R53 1
      565 SETTABLEKS                       R53 R52 K113 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      567 SETTABLEKS                       R24 R52 K114 ["content-inverse-muted"]
      569 GETTABLEKS                       R54 R0 K96 ["Collapsible"]
      571 JUMPIFEQKB                       R54 FALSE ; [+2]
      573 LOADB                            R53 0 +1
      574 LOADB                            R53 1
      575 SETTABLEKS                       R53 R52 K115 ["padding-left-small"]
      577 SETTABLEKS                       R52 R51 K56 ["tag"]
      579 SETTABLEKS                       R31 R51 K105 ["Text"]
      581 MOVE                             R52 R2
      582 CALL                             R52 0 1
      583 SETTABLEKS                       R52 R51 K58 ["LayoutOrder"]
      585 GETTABLEKS                       R53 R0 K4 ["IsParameterNode"]
      587 JUMPIFNOT                        R53 ; [+2]
      588 LOADNIL                          R52
      589 JUMP                             ; [+1]
      590 MOVE                             R52 R32
      591 SETTABLEKS                       R52 R51 K100 ["onActivated"]
      593 GETTABLEKS                       R53 R27 K116 ["enabled"]
      595 NOT                              R52 R53
      596 SETTABLEKS                       R52 R51 K110 ["Visible"]
      598 LOADK                            R52 K117 ["CompositorNode-Title"]
      599 SETTABLEKS                       R52 R51 K111 ["testId"]
      601 CALL                             R49 2 1
      602 SETTABLEKS                       R49 R48 K92 ["Title"]
      604 GETTABLEKS                       R50 R0 K4 ["IsParameterNode"]
      606 JUMPIF                           R50 ; [+55]
      607 GETUPVAL                         R50 0
      608 GETTABLEKS                       R49 R50 K54 ["createElement"]
      610 GETUPVAL                         R51 7
      611 GETTABLEKS                       R50 R51 K118 ["TextInput"]
      613 DUPTABLE                         R51 K124 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      614 NEWTABLE                         R52 2 0
      616 LOADB                            R53 1
      617 SETTABLEKS                       R53 R52 K113 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      619 SETTABLEKS                       R24 R52 K114 ["content-inverse-muted"]
      621 SETTABLEKS                       R52 R51 K56 ["tag"]
      623 SETTABLEKS                       R29 R51 K50 ["text"]
      625 MOVE                             R52 R2
      626 CALL                             R52 0 1
      627 SETTABLEKS                       R52 R51 K58 ["LayoutOrder"]
      629 SETTABLEKS                       R30 R51 K119 ["onChanged"]
      631 LOADK                            R52 K125 [""]
      632 SETTABLEKS                       R52 R51 K120 ["label"]
      634 GETUPVAL                         R55 7
      635 GETTABLEKS                       R54 R55 K11 ["Enums"]
      637 GETTABLEKS                       R53 R54 K106 ["InputSize"]
      639 GETTABLEKS                       R52 R53 K107 ["XSmall"]
      641 SETTABLEKS                       R52 R51 K101 ["size"]
      643 SETTABLEKS                       R28 R51 K121 ["textBoxRef"]
      645 SETTABLEKS                       R33 R51 K122 ["onFocusLost"]
      647 SETTABLEKS                       R28 R51 K72 ["ref"]
      649 GETIMPORT                        R52 K128 [UDim.new]
      651 LOADN                            R53 0
      652 LOADN                            R54 100
      653 CALL                             R52 2 1
      654 SETTABLEKS                       R52 R51 K123 ["width"]
      656 GETTABLEKS                       R52 R27 K116 ["enabled"]
      658 SETTABLEKS                       R52 R51 K110 ["Visible"]
      660 CALL                             R49 2 1
      661 JUMP                             ; [+1]
      662 LOADNIL                          R49
      663 SETTABLEKS                       R49 R48 K93 ["TitleInput"]
      665 GETUPVAL                         R50 0
      666 GETTABLEKS                       R49 R50 K54 ["createElement"]
      668 LOADK                            R50 K129 ["Folder"]
      669 NEWTABLE                         R51 0 0
      671 GETTABLEKS                       R52 R0 K130 ["HeaderChildren"]
      673 CALL                             R49 3 1
      674 SETTABLEKS                       R49 R48 K94 ["Children"]
      676 CALL                             R45 3 1
      677 SETTABLEKS                       R45 R44 K84 ["CompositorNodeHeader"]
      679 GETTABLEKS                       R46 R0 K131 ["children"]
      681 JUMPIFNOT                        R46 ; [+68]
      682 GETIMPORT                        R46 K133 [next]
      684 GETTABLEKS                       R47 R0 K131 ["children"]
      686 CALL                             R46 1 1
      687 JUMPIFNOT                        R46 ; [+62]
      688 GETUPVAL                         R46 0
      689 GETTABLEKS                       R45 R46 K54 ["createElement"]
      691 GETUPVAL                         R47 7
      692 GETTABLEKS                       R46 R47 K55 ["View"]
      694 DUPTABLE                         R47 K134 [{"tag", "LayoutOrder"}]
      695 LOADK                            R48 K135 ["size-full-700 auto-y"]
      696 SETTABLEKS                       R48 R47 K56 ["tag"]
      698 MOVE                             R48 R2
      699 CALL                             R48 0 1
      700 SETTABLEKS                       R48 R47 K58 ["LayoutOrder"]
      702 DUPTABLE                         R48 K138 [{"Contents", "ResizeBars"}]
      703 GETUPVAL                         R50 0
      704 GETTABLEKS                       R49 R50 K54 ["createElement"]
      706 GETUPVAL                         R51 7
      707 GETTABLEKS                       R50 R51 K55 ["View"]
      709 DUPTABLE                         R51 K139 [{"tag", "ZIndex"}]
      710 LOADK                            R52 K140 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      711 SETTABLEKS                       R52 R51 K56 ["tag"]
      713 LOADN                            R52 1
      714 SETTABLEKS                       R52 R51 K59 ["ZIndex"]
      716 DUPTABLE                         R52 K142 [{"NodeProperties"}]
      717 GETUPVAL                         R54 0
      718 GETTABLEKS                       R53 R54 K54 ["createElement"]
      720 GETUPVAL                         R55 0
      721 GETTABLEKS                       R54 R55 K143 ["Fragment"]
      723 NEWTABLE                         R55 0 0
      725 GETTABLEKS                       R56 R0 K131 ["children"]
      727 CALL                             R53 3 1
      728 SETTABLEKS                       R53 R52 K141 ["NodeProperties"]
      730 CALL                             R49 3 1
      731 SETTABLEKS                       R49 R48 K136 ["Contents"]
      733 GETUPVAL                         R50 0
      734 GETTABLEKS                       R49 R50 K54 ["createElement"]
      736 GETUPVAL                         R50 11
      737 DUPTABLE                         R51 K146 [{"nodeWidth", "OnResized", "ZIndex"}]
      738 SETTABLEKS                       R14 R51 K144 ["nodeWidth"]
      740 SETTABLEKS                       R23 R51 K145 ["OnResized"]
      742 LOADN                            R52 2
      743 SETTABLEKS                       R52 R51 K59 ["ZIndex"]
      745 CALL                             R49 2 1
      746 SETTABLEKS                       R49 R48 K137 ["ResizeBars"]
      748 CALL                             R45 3 1
      749 JUMP                             ; [+1]
      750 LOADNIL                          R45
      751 SETTABLEKS                       R45 R44 K85 ["CompositorNodeContent"]
      753 CALL                             R41 3 1
      754 SETTABLEKS                       R41 R40 K66 ["Node"]
      756 GETUPVAL                         R42 0
      757 GETTABLEKS                       R41 R42 K54 ["createElement"]
      759 GETUPVAL                         R43 7
      760 GETTABLEKS                       R42 R43 K55 ["View"]
      762 DUPTABLE                         R43 K147 [{"tag", "testId", "LayoutOrder", "ref"}]
      763 LOADK                            R44 K148 ["size-full"]
      764 SETTABLEKS                       R44 R43 K56 ["tag"]
      766 LOADK                            R44 K149 ["CompositorNode-DebugMarker"]
      767 SETTABLEKS                       R44 R43 K111 ["testId"]
      769 MOVE                             R44 R2
      770 CALL                             R44 0 1
      771 SETTABLEKS                       R44 R43 K58 ["LayoutOrder"]
      773 SETTABLEKS                       R36 R43 K72 ["ref"]
      775 CALL                             R41 2 1
      776 SETTABLEKS                       R41 R40 K67 ["DebugMarker"]
      778 GETUPVAL                         R42 0
      779 GETTABLEKS                       R41 R42 K54 ["createElement"]
      781 LOADK                            R42 K150 ["UIDragDetector"]
      782 NEWTABLE                         R43 8 0
      784 GETIMPORT                        R44 K154 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      786 SETTABLEKS                       R44 R43 K155 ["DragStyle"]
      788 GETTABLEKS                       R44 R3 K156 ["getViewport"]
      790 CALL                             R44 0 1
      791 SETTABLEKS                       R44 R43 K157 ["ReferenceUIInstance"]
      793 GETUPVAL                         R46 0
      794 GETTABLEKS                       R45 R46 K158 ["Event"]
      796 GETTABLEKS                       R44 R45 K159 ["DragStart"]
      798 SETTABLE                         R20 R43 R44
      799 GETUPVAL                         R46 0
      800 GETTABLEKS                       R45 R46 K158 ["Event"]
      802 GETTABLEKS                       R44 R45 K160 ["DragContinue"]
      804 SETTABLE                         R21 R43 R44
      805 GETUPVAL                         R46 0
      806 GETTABLEKS                       R45 R46 K158 ["Event"]
      808 GETTABLEKS                       R44 R45 K161 ["DragEnd"]
      810 SETTABLE                         R22 R43 R44
      811 CALL                             R41 2 1
      812 SETTABLEKS                       R41 R40 K68 ["DragDetector"]
      814 CALL                             R37 3 -1
      815 RETURN                           R37 -1

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
