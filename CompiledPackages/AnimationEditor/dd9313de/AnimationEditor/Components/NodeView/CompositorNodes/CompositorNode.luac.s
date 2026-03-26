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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETTABLEKS                       R1 R2 K1 ["X"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["current"]
       13 GETTABLEKS                       R2 R3 K2 ["Y"]
       15 DIV                              R0 R1 R2
       16 JUMPIFNOTEQ                      R0 R0 ; [+3]
       18 JUMPIFNOTEQKN                    R0 K3 [0] ; [+3]
       20 LOADNIL                          R1
       21 RETURN                           R1 1
       22 GETIMPORT                        R1 K6 [Vector2.new]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R5 2
       26 DIV                              R4 R5 R0
       27 FASTCALL1                        MATH_ROUND R4 ; [+2]
       28 GETIMPORT                        R3 K9 [math.round]
       30 CALL                             R3 1 1
       31 CALL                             R1 2 1
       32 GETIMPORT                        R2 K12 [task.spawn]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R1
       38 CALL                             R2 1 0
       39 LOADNIL                          R2
       40 RETURN                           R2 1

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
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["Collapsed"]
        7 NOT                              R2 R3
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETIMPORT                        R0 K2 [task.spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["renameNodeAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETIMPORT                        R0 K2 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R0 R1 K3 ["disable"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

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
       53 GETUPVAL                         R8 6
       54 CALL                             R8 0 1
       55 GETUPVAL                         R11 7
       56 GETTABLEKS                       R10 R11 K10 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K11 ["useTokens"]
       60 CALL                             R9 0 1
       61 GETUPVAL                         R14 7
       62 GETTABLEKS                       R13 R14 K12 ["Enums"]
       64 GETTABLEKS                       R12 R13 K13 ["Theme"]
       66 GETTABLEKS                       R11 R12 K14 ["Dark"]
       68 JUMPIFNOTEQ                      R8 R11 ; [+10]
       70 GETTABLEKS                       R13 R9 K15 ["Color"]
       72 GETTABLEKS                       R12 R13 K16 ["Extended"]
       74 GETTABLEKS                       R11 R12 K17 ["Green"]
       76 GETTABLEKS                       R10 R11 K18 ["Green_1300"]
       78 JUMP                             ; [+8]
       79 GETTABLEKS                       R13 R9 K15 ["Color"]
       81 GETTABLEKS                       R12 R13 K16 ["Extended"]
       83 GETTABLEKS                       R11 R12 K17 ["Green"]
       85 GETTABLEKS                       R10 R11 K19 ["Green_100"]
       87 GETUPVAL                         R13 7
       88 GETTABLEKS                       R12 R13 K10 ["Hooks"]
       90 GETTABLEKS                       R11 R12 K20 ["useCumulativeBackground"]
       92 MOVE                             R12 R10
       93 GETTABLEKS                       R15 R9 K15 ["Color"]
       95 GETTABLEKS                       R14 R15 K21 ["Shift"]
       97 GETTABLEKS                       R13 R14 K22 ["Shift_100"]
       99 CALL                             R11 2 1
      100 GETUPVAL                         R14 7
      101 GETTABLEKS                       R13 R14 K10 ["Hooks"]
      103 GETTABLEKS                       R12 R13 K20 ["useCumulativeBackground"]
      105 GETTABLEKS                       R16 R9 K15 ["Color"]
      107 GETTABLEKS                       R15 R16 K16 ["Extended"]
      109 GETTABLEKS                       R14 R15 K23 ["Purple"]
      111 GETTABLEKS                       R13 R14 K24 ["Purple_800"]
      113 GETTABLEKS                       R16 R9 K15 ["Color"]
      115 GETTABLEKS                       R15 R16 K21 ["Shift"]
      117 GETTABLEKS                       R14 R15 K25 ["Shift_200"]
      119 CALL                             R12 2 1
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R13 R14 K26 ["useState"]
      123 GETUPVAL                         R15 5
      124 GETTABLEKS                       R14 R15 K27 ["CHILD_WIDTH"]
      126 CALL                             R13 1 2
      127 GETUPVAL                         R15 8
      128 CALL                             R15 0 1
      129 GETUPVAL                         R17 0
      130 GETTABLEKS                       R16 R17 K28 ["useRef"]
      132 GETTABLEKS                       R17 R15 K29 ["absoluteSize"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R17 R15 K29 ["absoluteSize"]
      137 SETTABLEKS                       R17 R16 K30 ["current"]
      139 GETTABLEKS                       R17 R3 K31 ["plotToView"]
      141 GETTABLEKS                       R18 R0 K32 ["Position"]
      143 CALL                             R17 1 1
      144 GETUPVAL                         R19 0
      145 GETTABLEKS                       R18 R19 K33 ["useMemo"]
      147 NEWCLOSURE                       R19 P0
      148 CAPTURE                          VAL R17
      149 NEWTABLE                         R20 0 1
      151 MOVE                             R21 R17
      152 SETLIST                          R20 R21 1 [1]
      154 CALL                             R18 2 1
      155 GETUPVAL                         R20 2
      156 GETTABLEKS                       R19 R20 K34 ["useToggleState"]
      158 LOADB                            R20 0
      159 CALL                             R19 1 1
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R20 R21 K28 ["useRef"]
      163 LOADNIL                          R21
      164 CALL                             R20 1 1
      165 GETUPVAL                         R22 0
      166 GETTABLEKS                       R21 R22 K35 ["useCallback"]
      168 NEWCLOSURE                       R22 P1
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R20
      171 NEWTABLE                         R23 0 2
      173 GETTABLEKS                       R24 R19 K36 ["enable"]
      175 MOVE                             R25 R20
      176 SETLIST                          R23 R24 2 [1]
      178 CALL                             R21 2 1
      179 GETUPVAL                         R23 0
      180 GETTABLEKS                       R22 R23 K28 ["useRef"]
      182 LOADNIL                          R23
      183 CALL                             R22 1 1
      184 GETUPVAL                         R24 0
      185 GETTABLEKS                       R23 R24 K28 ["useRef"]
      187 LOADN                            R24 0
      188 CALL                             R23 1 1
      189 GETUPVAL                         R25 0
      190 GETTABLEKS                       R24 R25 K35 ["useCallback"]
      192 NEWCLOSURE                       R25 P2
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R21
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R3
      199 NEWTABLE                         R26 0 4
      201 MOVE                             R27 R3
      202 GETTABLEKS                       R28 R19 K37 ["enabled"]
      204 GETTABLEKS                       R29 R0 K38 ["OnDragStart"]
      206 MOVE                             R30 R21
      207 SETLIST                          R26 R27 4 [1]
      209 CALL                             R24 2 1
      210 GETUPVAL                         R26 0
      211 GETTABLEKS                       R25 R26 K35 ["useCallback"]
      213 NEWCLOSURE                       R26 P3
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R0
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R19
      218 NEWTABLE                         R27 0 5
      220 MOVE                             R28 R3
      221 MOVE                             R29 R22
      222 GETTABLEKS                       R30 R0 K39 ["OnDragMoved"]
      224 MOVE                             R31 R5
      225 GETTABLEKS                       R32 R19 K40 ["disable"]
      227 SETLIST                          R27 R28 5 [1]
      229 CALL                             R25 2 1
      230 GETUPVAL                         R27 0
      231 GETTABLEKS                       R26 R27 K35 ["useCallback"]
      233 NEWCLOSURE                       R27 P4
      234 CAPTURE                          VAL R22
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R3
      238 NEWTABLE                         R28 0 4
      240 MOVE                             R29 R3
      241 MOVE                             R30 R22
      242 GETTABLEKS                       R31 R0 K41 ["OnDragEnded"]
      244 MOVE                             R32 R5
      245 SETLIST                          R28 R29 4 [1]
      247 CALL                             R26 2 1
      248 GETUPVAL                         R28 0
      249 GETTABLEKS                       R27 R28 K35 ["useCallback"]
      251 NEWCLOSURE                       R28 P5
      252 CAPTURE                          VAL R14
      253 NEWTABLE                         R29 0 1
      255 MOVE                             R30 R14
      256 SETLIST                          R29 R30 1 [1]
      258 CALL                             R27 2 1
      259 GETUPVAL                         R29 9
      260 GETTABLEKS                       R28 R29 K42 ["useSignalState"]
      262 GETUPVAL                         R30 10
      263 GETTABLEKS                       R29 R30 K43 ["useObserveIsDisabled"]
      265 MOVE                             R30 R5
      266 CALL                             R29 1 -1
      267 CALL                             R28 -1 1
      268 GETUPVAL                         R30 0
      269 GETTABLEKS                       R29 R30 K44 ["useEffect"]
      271 NEWCLOSURE                       R30 P6
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R16
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R4
      276 NEWTABLE                         R31 0 5
      278 GETTABLEKS                       R32 R4 K45 ["setNodeSizeAsync"]
      280 MOVE                             R33 R5
      281 GETTABLEKS                       R34 R16 K30 ["current"]
      283 GETTABLEKS                       R35 R1 K46 ["zoomRatio"]
      285 MOVE                             R36 R13
      286 SETLIST                          R31 R32 5 [1]
      288 CALL                             R29 2 0
      289 GETUPVAL                         R30 0
      290 GETTABLEKS                       R29 R30 K33 ["useMemo"]
      292 NEWCLOSURE                       R30 P7
      293 CAPTURE                          VAL R0
      294 NEWTABLE                         R31 0 1
      296 GETTABLEKS                       R32 R0 K47 ["Collapsed"]
      298 SETLIST                          R31 R32 1 [1]
      300 CALL                             R29 2 1
      301 GETUPVAL                         R31 0
      302 GETTABLEKS                       R30 R31 K35 ["useCallback"]
      304 NEWCLOSURE                       R31 P8
      305 CAPTURE                          VAL R5
      306 CAPTURE                          VAL R4
      307 CAPTURE                          VAL R0
      308 NEWTABLE                         R32 0 3
      310 GETTABLEKS                       R33 R4 K48 ["setCollapsedAsync"]
      312 MOVE                             R34 R5
      313 GETTABLEKS                       R35 R0 K47 ["Collapsed"]
      315 SETLIST                          R32 R33 3 [1]
      317 CALL                             R30 2 1
      318 GETUPVAL                         R32 0
      319 GETTABLEKS                       R31 R32 K26 ["useState"]
      321 GETTABLEKS                       R33 R0 K4 ["GraphPayload"]
      323 GETTABLEKS                       R32 R33 K49 ["name"]
      325 JUMPIF                           R32 ; [+2]
      326 GETTABLEKS                       R32 R0 K50 ["text"]
      328 CALL                             R31 1 2
      329 GETTABLEKS                       R33 R0 K50 ["text"]
      331 JUMPIF                           R33 ; [+4]
      332 GETTABLEKS                       R34 R0 K4 ["GraphPayload"]
      334 GETTABLEKS                       R33 R34 K49 ["name"]
      336 GETUPVAL                         R35 0
      337 GETTABLEKS                       R34 R35 K35 ["useCallback"]
      339 NEWCLOSURE                       R35 P9
      340 CAPTURE                          VAL R5
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R4
      343 CAPTURE                          VAL R19
      344 NEWTABLE                         R36 0 4
      346 MOVE                             R37 R5
      347 MOVE                             R38 R31
      348 GETTABLEKS                       R39 R19 K40 ["disable"]
      350 GETTABLEKS                       R40 R4 K51 ["renameNodeAsync"]
      352 SETLIST                          R36 R37 4 [1]
      354 CALL                             R34 2 1
      355 MOVE                             R35 R2
      356 CALL                             R35 0 1
      357 GETUPVAL                         R37 0
      358 GETTABLEKS                       R36 R37 K26 ["useState"]
      360 LOADNIL                          R37
      361 CALL                             R36 1 2
      362 GETUPVAL                         R39 0
      363 GETTABLEKS                       R38 R39 K44 ["useEffect"]
      365 NEWCLOSURE                       R39 P10
      366 CAPTURE                          VAL R36
      367 CAPTURE                          VAL R33
      368 NEWTABLE                         R40 0 2
      370 MOVE                             R41 R36
      371 MOVE                             R42 R33
      372 SETLIST                          R40 R41 2 [1]
      374 CALL                             R38 2 0
      375 GETUPVAL                         R39 0
      376 GETTABLEKS                       R38 R39 K52 ["createElement"]
      378 GETUPVAL                         R40 7
      379 GETTABLEKS                       R39 R40 K53 ["View"]
      381 DUPTABLE                         R40 K58 [{"tag", "Size", "LayoutOrder", "ZIndex", "Position"}]
      382 LOADK                            R41 K59 ["auto-y"]
      383 SETTABLEKS                       R41 R40 K54 ["tag"]
      385 GETIMPORT                        R41 K62 [UDim2.fromOffset]
      387 MOVE                             R42 R13
      388 LOADN                            R43 0
      389 CALL                             R41 2 1
      390 SETTABLEKS                       R41 R40 K55 ["Size"]
      392 GETTABLEKS                       R41 R0 K56 ["LayoutOrder"]
      394 SETTABLEKS                       R41 R40 K56 ["LayoutOrder"]
      396 GETTABLEKS                       R41 R0 K57 ["ZIndex"]
      398 SETTABLEKS                       R41 R40 K57 ["ZIndex"]
      400 SETTABLEKS                       R18 R40 K32 ["Position"]
      402 DUPTABLE                         R41 K67 [{"UIScale", "Node", "DebugMarker", "DragDetector"}]
      403 GETUPVAL                         R43 0
      404 GETTABLEKS                       R42 R43 K52 ["createElement"]
      406 LOADK                            R43 K63 ["UIScale"]
      407 DUPTABLE                         R44 K69 [{"Scale"}]
      408 GETTABLEKS                       R45 R1 K46 ["zoomRatio"]
      410 SETTABLEKS                       R45 R44 K68 ["Scale"]
      412 CALL                             R42 2 1
      413 SETTABLEKS                       R42 R41 K63 ["UIScale"]
      415 GETUPVAL                         R43 0
      416 GETTABLEKS                       R42 R43 K52 ["createElement"]
      418 GETUPVAL                         R44 7
      419 GETTABLEKS                       R43 R44 K53 ["View"]
      421 DUPTABLE                         R44 K71 [{"tag", "Size", "ref", "ZIndex"}]
      422 NEWTABLE                         R45 8 0
      424 LOADB                            R46 1
      425 SETTABLEKS                       R46 R45 K72 ["CompositorNode"]
      427 LOADB                            R46 1
      428 SETTABLEKS                       R46 R45 K73 ["col auto-y bg-surface-200"]
      430 NOT                              R46 R6
      431 SETTABLEKS                       R46 R45 K74 ["radius-small gap-xsmall"]
      433 MOVE                             R46 R6
      434 JUMPIFNOT                        R46 ; [+3]
      435 GETTABLEKS                       R47 R0 K47 ["Collapsed"]
      437 NOT                              R46 R47
      438 SETTABLEKS                       R46 R45 K75 ["radius-small"]
      440 SETTABLEKS                       R6 R45 K76 ["gap-none"]
      442 MOVE                             R46 R6
      443 JUMPIFNOT                        R46 ; [+2]
      444 GETTABLEKS                       R46 R0 K47 ["Collapsed"]
      446 SETTABLEKS                       R46 R45 K77 ["radius-large"]
      448 GETTABLEKS                       R47 R0 K78 ["Selected"]
      450 NOT                              R46 R47
      451 SETTABLEKS                       R46 R45 K79 ["stroke-standard stroke-default"]
      453 GETTABLEKS                       R46 R0 K78 ["Selected"]
      455 SETTABLEKS                       R46 R45 K80 ["stroke-standard stroke-system-neutral"]
      457 SETTABLEKS                       R45 R44 K54 ["tag"]
      459 GETIMPORT                        R45 K62 [UDim2.fromOffset]
      461 MOVE                             R46 R13
      462 LOADN                            R47 0
      463 CALL                             R45 2 1
      464 SETTABLEKS                       R45 R44 K55 ["Size"]
      466 GETTABLEKS                       R45 R15 K81 ["setFrame"]
      468 SETTABLEKS                       R45 R44 K70 ["ref"]
      470 LOADN                            R45 1
      471 SETTABLEKS                       R45 R44 K57 ["ZIndex"]
      473 DUPTABLE                         R45 K84 [{"CompositorNodeHeader", "CompositorNodeContent"}]
      474 GETUPVAL                         R47 0
      475 GETTABLEKS                       R46 R47 K52 ["createElement"]
      477 GETUPVAL                         R48 7
      478 GETTABLEKS                       R47 R48 K53 ["View"]
      480 DUPTABLE                         R48 K86 [{"tag", "backgroundStyle", "LayoutOrder"}]
      481 NEWTABLE                         R49 4 0
      483 LOADB                            R50 1
      484 SETTABLEKS                       R50 R49 K87 ["size-full-700 align-y-center padding-x-xxsmall row flex-x-fill"]
      486 NOT                              R50 R6
      487 JUMPIFNOT                        R50 ; [+1]
      488 NOT                              R50 R7
      489 SETTABLEKS                       R50 R49 K88 ["radius-small bg-shift-200"]
      491 MOVE                             R50 R6
      492 JUMPIFNOT                        R50 ; [+3]
      493 GETTABLEKS                       R51 R0 K47 ["Collapsed"]
      495 NOT                              R50 R51
      496 SETTABLEKS                       R50 R49 K75 ["radius-small"]
      498 MOVE                             R50 R6
      499 JUMPIFNOT                        R50 ; [+2]
      500 GETTABLEKS                       R50 R0 K47 ["Collapsed"]
      502 SETTABLEKS                       R50 R49 K77 ["radius-large"]
      504 SETTABLEKS                       R49 R48 K54 ["tag"]
      506 JUMPIFNOT                        R6 ; [+2]
      507 MOVE                             R49 R11
      508 JUMP                             ; [+4]
      509 JUMPIFNOT                        R7 ; [+2]
      510 MOVE                             R49 R12
      511 JUMP                             ; [+1]
      512 LOADNIL                          R49
      513 SETTABLEKS                       R49 R48 K85 ["backgroundStyle"]
      515 SETTABLEKS                       R35 R48 K56 ["LayoutOrder"]
      517 DUPTABLE                         R49 K93 [{"ToggleButton", "Title", "TitleInput", "Children"}]
      518 GETTABLEKS                       R51 R0 K94 ["Collapsible"]
      520 JUMPIFEQKB                       R51 FALSE ; [+45]
      522 GETUPVAL                         R51 0
      523 GETTABLEKS                       R50 R51 K52 ["createElement"]
      525 GETUPVAL                         R52 7
      526 GETTABLEKS                       R51 R52 K95 ["Button"]
      528 DUPTABLE                         R52 K101 [{"icon", "variant", "onActivated", "size", "LayoutOrder", "fillBehavior"}]
      529 SETTABLEKS                       R29 R52 K96 ["icon"]
      531 GETUPVAL                         R56 7
      532 GETTABLEKS                       R55 R56 K12 ["Enums"]
      534 GETTABLEKS                       R54 R55 K102 ["ButtonVariant"]
      536 GETTABLEKS                       R53 R54 K103 ["Text"]
      538 SETTABLEKS                       R53 R52 K97 ["variant"]
      540 SETTABLEKS                       R30 R52 K98 ["onActivated"]
      542 GETUPVAL                         R56 7
      543 GETTABLEKS                       R55 R56 K12 ["Enums"]
      545 GETTABLEKS                       R54 R55 K104 ["InputSize"]
      547 GETTABLEKS                       R53 R54 K105 ["XSmall"]
      549 SETTABLEKS                       R53 R52 K99 ["size"]
      551 MOVE                             R53 R2
      552 CALL                             R53 0 1
      553 SETTABLEKS                       R53 R52 K56 ["LayoutOrder"]
      555 GETUPVAL                         R56 7
      556 GETTABLEKS                       R55 R56 K12 ["Enums"]
      558 GETTABLEKS                       R54 R55 K106 ["FillBehavior"]
      560 GETTABLEKS                       R53 R54 K107 ["Fit"]
      562 SETTABLEKS                       R53 R52 K100 ["fillBehavior"]
      564 CALL                             R50 2 1
      565 JUMP                             ; [+1]
      566 LOADNIL                          R50
      567 SETTABLEKS                       R50 R49 K89 ["ToggleButton"]
      569 GETUPVAL                         R51 0
      570 GETTABLEKS                       R50 R51 K52 ["createElement"]
      572 GETUPVAL                         R52 7
      573 GETTABLEKS                       R51 R52 K103 ["Text"]
      575 DUPTABLE                         R52 K110 [{"tag", "Text", "LayoutOrder", "Visible", "testId"}]
      576 NEWTABLE                         R53 4 0
      578 LOADB                            R54 1
      579 SETTABLEKS                       R54 R53 K111 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      581 SETTABLEKS                       R28 R53 K112 ["content-inverse-muted"]
      583 GETTABLEKS                       R55 R0 K94 ["Collapsible"]
      585 JUMPIFEQKB                       R55 FALSE ; [+2]
      587 LOADB                            R54 0 +1
      588 LOADB                            R54 1
      589 SETTABLEKS                       R54 R53 K113 ["padding-left-small"]
      591 SETTABLEKS                       R53 R52 K54 ["tag"]
      593 SETTABLEKS                       R33 R52 K103 ["Text"]
      595 MOVE                             R53 R2
      596 CALL                             R53 0 1
      597 SETTABLEKS                       R53 R52 K56 ["LayoutOrder"]
      599 GETTABLEKS                       R54 R19 K37 ["enabled"]
      601 NOT                              R53 R54
      602 SETTABLEKS                       R53 R52 K108 ["Visible"]
      604 LOADK                            R53 K114 ["CompositorNode-Title"]
      605 SETTABLEKS                       R53 R52 K109 ["testId"]
      607 CALL                             R50 2 1
      608 SETTABLEKS                       R50 R49 K90 ["Title"]
      610 GETTABLEKS                       R51 R0 K6 ["IsParameterNode"]
      612 JUMPIF                           R51 ; [+55]
      613 GETUPVAL                         R51 0
      614 GETTABLEKS                       R50 R51 K52 ["createElement"]
      616 GETUPVAL                         R52 7
      617 GETTABLEKS                       R51 R52 K115 ["TextInput"]
      619 DUPTABLE                         R52 K121 [{"tag", "text", "LayoutOrder", "onChanged", "label", "size", "textBoxRef", "onFocusLost", "ref", "width", "Visible"}]
      620 NEWTABLE                         R53 2 0
      622 LOADB                            R54 1
      623 SETTABLEKS                       R54 R53 K111 ["size-0-700 text-title-small auto-x text-align-x-left text-truncate-split"]
      625 SETTABLEKS                       R28 R53 K112 ["content-inverse-muted"]
      627 SETTABLEKS                       R53 R52 K54 ["tag"]
      629 SETTABLEKS                       R31 R52 K50 ["text"]
      631 MOVE                             R53 R2
      632 CALL                             R53 0 1
      633 SETTABLEKS                       R53 R52 K56 ["LayoutOrder"]
      635 SETTABLEKS                       R32 R52 K116 ["onChanged"]
      637 LOADK                            R53 K122 [""]
      638 SETTABLEKS                       R53 R52 K117 ["label"]
      640 GETUPVAL                         R56 7
      641 GETTABLEKS                       R55 R56 K12 ["Enums"]
      643 GETTABLEKS                       R54 R55 K104 ["InputSize"]
      645 GETTABLEKS                       R53 R54 K105 ["XSmall"]
      647 SETTABLEKS                       R53 R52 K99 ["size"]
      649 SETTABLEKS                       R20 R52 K118 ["textBoxRef"]
      651 SETTABLEKS                       R34 R52 K119 ["onFocusLost"]
      653 SETTABLEKS                       R20 R52 K70 ["ref"]
      655 GETIMPORT                        R53 K125 [UDim.new]
      657 LOADN                            R54 0
      658 LOADN                            R55 100
      659 CALL                             R53 2 1
      660 SETTABLEKS                       R53 R52 K120 ["width"]
      662 GETTABLEKS                       R53 R19 K37 ["enabled"]
      664 SETTABLEKS                       R53 R52 K108 ["Visible"]
      666 CALL                             R50 2 1
      667 JUMP                             ; [+1]
      668 LOADNIL                          R50
      669 SETTABLEKS                       R50 R49 K91 ["TitleInput"]
      671 GETUPVAL                         R51 0
      672 GETTABLEKS                       R50 R51 K52 ["createElement"]
      674 LOADK                            R51 K126 ["Folder"]
      675 NEWTABLE                         R52 0 0
      677 GETTABLEKS                       R53 R0 K127 ["HeaderChildren"]
      679 CALL                             R50 3 1
      680 SETTABLEKS                       R50 R49 K92 ["Children"]
      682 CALL                             R46 3 1
      683 SETTABLEKS                       R46 R45 K82 ["CompositorNodeHeader"]
      685 GETTABLEKS                       R47 R0 K128 ["children"]
      687 JUMPIFNOT                        R47 ; [+68]
      688 GETIMPORT                        R47 K130 [next]
      690 GETTABLEKS                       R48 R0 K128 ["children"]
      692 CALL                             R47 1 1
      693 JUMPIFNOT                        R47 ; [+62]
      694 GETUPVAL                         R47 0
      695 GETTABLEKS                       R46 R47 K52 ["createElement"]
      697 GETUPVAL                         R48 7
      698 GETTABLEKS                       R47 R48 K53 ["View"]
      700 DUPTABLE                         R48 K131 [{"tag", "LayoutOrder"}]
      701 LOADK                            R49 K132 ["size-full-700 auto-y"]
      702 SETTABLEKS                       R49 R48 K54 ["tag"]
      704 MOVE                             R49 R2
      705 CALL                             R49 0 1
      706 SETTABLEKS                       R49 R48 K56 ["LayoutOrder"]
      708 DUPTABLE                         R49 K135 [{"Contents", "ResizeBars"}]
      709 GETUPVAL                         R51 0
      710 GETTABLEKS                       R50 R51 K52 ["createElement"]
      712 GETUPVAL                         R52 7
      713 GETTABLEKS                       R51 R52 K53 ["View"]
      715 DUPTABLE                         R52 K136 [{"tag", "ZIndex"}]
      716 LOADK                            R53 K137 ["padding-x-small padding-y-xsmall size-full-0 auto-y col radius-small"]
      717 SETTABLEKS                       R53 R52 K54 ["tag"]
      719 LOADN                            R53 1
      720 SETTABLEKS                       R53 R52 K57 ["ZIndex"]
      722 DUPTABLE                         R53 K139 [{"NodeProperties"}]
      723 GETUPVAL                         R55 0
      724 GETTABLEKS                       R54 R55 K52 ["createElement"]
      726 GETUPVAL                         R56 0
      727 GETTABLEKS                       R55 R56 K140 ["Fragment"]
      729 NEWTABLE                         R56 0 0
      731 GETTABLEKS                       R57 R0 K128 ["children"]
      733 CALL                             R54 3 1
      734 SETTABLEKS                       R54 R53 K138 ["NodeProperties"]
      736 CALL                             R50 3 1
      737 SETTABLEKS                       R50 R49 K133 ["Contents"]
      739 GETUPVAL                         R51 0
      740 GETTABLEKS                       R50 R51 K52 ["createElement"]
      742 GETUPVAL                         R51 11
      743 DUPTABLE                         R52 K143 [{"nodeWidth", "OnResized", "ZIndex"}]
      744 SETTABLEKS                       R13 R52 K141 ["nodeWidth"]
      746 SETTABLEKS                       R27 R52 K142 ["OnResized"]
      748 LOADN                            R53 2
      749 SETTABLEKS                       R53 R52 K57 ["ZIndex"]
      751 CALL                             R50 2 1
      752 SETTABLEKS                       R50 R49 K134 ["ResizeBars"]
      754 CALL                             R46 3 1
      755 JUMP                             ; [+1]
      756 LOADNIL                          R46
      757 SETTABLEKS                       R46 R45 K83 ["CompositorNodeContent"]
      759 CALL                             R42 3 1
      760 SETTABLEKS                       R42 R41 K64 ["Node"]
      762 GETUPVAL                         R43 0
      763 GETTABLEKS                       R42 R43 K52 ["createElement"]
      765 GETUPVAL                         R44 7
      766 GETTABLEKS                       R43 R44 K53 ["View"]
      768 DUPTABLE                         R44 K144 [{"tag", "testId", "LayoutOrder", "ref"}]
      769 LOADK                            R45 K145 ["size-full"]
      770 SETTABLEKS                       R45 R44 K54 ["tag"]
      772 LOADK                            R45 K146 ["CompositorNode-DebugMarker"]
      773 SETTABLEKS                       R45 R44 K109 ["testId"]
      775 MOVE                             R45 R2
      776 CALL                             R45 0 1
      777 SETTABLEKS                       R45 R44 K56 ["LayoutOrder"]
      779 SETTABLEKS                       R37 R44 K70 ["ref"]
      781 CALL                             R42 2 1
      782 SETTABLEKS                       R42 R41 K65 ["DebugMarker"]
      784 GETUPVAL                         R43 0
      785 GETTABLEKS                       R42 R43 K52 ["createElement"]
      787 LOADK                            R43 K147 ["UIDragDetector"]
      788 NEWTABLE                         R44 8 0
      790 GETIMPORT                        R45 K151 [Enum.UIDragDetectorDragStyle.TranslatePlane]
      792 SETTABLEKS                       R45 R44 K152 ["DragStyle"]
      794 GETIMPORT                        R45 K155 [Enum.UIDragDetectorResponseStyle.CustomOffset]
      796 SETTABLEKS                       R45 R44 K156 ["ResponseStyle"]
      798 GETTABLEKS                       R45 R3 K157 ["getViewport"]
      800 CALL                             R45 0 1
      801 SETTABLEKS                       R45 R44 K158 ["ReferenceUIInstance"]
      803 GETUPVAL                         R47 0
      804 GETTABLEKS                       R46 R47 K159 ["Event"]
      806 GETTABLEKS                       R45 R46 K160 ["DragStart"]
      808 SETTABLE                         R24 R44 R45
      809 GETUPVAL                         R47 0
      810 GETTABLEKS                       R46 R47 K159 ["Event"]
      812 GETTABLEKS                       R45 R46 K161 ["DragContinue"]
      814 SETTABLE                         R25 R44 R45
      815 GETUPVAL                         R47 0
      816 GETTABLEKS                       R46 R47 K159 ["Event"]
      818 GETTABLEKS                       R45 R46 K162 ["DragEnd"]
      820 SETTABLE                         R26 R44 R45
      821 CALL                             R42 2 1
      822 SETTABLEKS                       R42 R41 K66 ["DragDetector"]
      824 CALL                             R38 3 -1
      825 RETURN                           R38 -1

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
