PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["false"] ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+3]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["PARAMETER_PANE_WIDTH"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["Enums"]
       12 GETTABLEKS                       R1 R1 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R1 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+14]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["Enums"]
       22 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R2 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 JUMPIF                           R1 ; [+18]
       33 GETUPVAL                         R1 1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["Enums"]
       37 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       39 GETTABLEKS                       R2 R2 K4 ["Default"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K0 ["Enums"]
       46 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       48 GETTABLEKS                       R2 R2 K4 ["Default"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETUPVAL                         R5 1
        4 SUB                              R3 R4 R5
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 GETTABLEKS                       R3 R3 K1 ["Enums"]
       13 GETTABLEKS                       R3 R3 K2 ["ControlState"]
       15 GETTABLEKS                       R3 R3 K3 ["Hover"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 GETUPVAL                         R4 0
        3 SUB                              R2 R3 R4
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["PARAMETER_PANE_MIN_WIDTH"]
        8 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K4 [math.max]
       13 CALL                             R4 2 1
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Default"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["Enums"]
       16 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       18 GETTABLEKS                       R3 R3 K2 ["Default"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFrame"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["canvasFrameRef"]
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETTABLEKS                       R8 R7 K0 ["className"]
       17 JUMPIFNOTEQKS                    R8 K1 ["Parameter"] ; [+39]
       19 GETUPVAL                         R8 1
       20 CALL                             R8 0 1
       21 JUMPIFNOT                        R8 ; [+7]
       22 GETTABLEKS                       R8 R7 K2 ["nodeType"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R9 R9 K3 ["EXPRESSION_NODE_CLASSNAME"]
       27 JUMPIFEQ                         R8 R9 ; [+29]
       29 GETTABLEKS                       R8 R7 K4 ["name"]
       31 JUMPIFEQKNIL                     R8 ; [+25]
       33 GETTABLE                         R9 R0 R8
       34 JUMPIF                           R9 ; [+22]
       35 GETTABLEKS                       R10 R7 K2 ["nodeType"]
       37 FASTCALL1                        TYPE R10 ; [+2]
       38 GETIMPORT                        R9 K6 [type]
       40 CALL                             R9 1 1
       41 JUMPIFNOTEQKS                    R9 K7 ["string"] ; [+15]
       43 LOADB                            R9 1
       44 SETTABLE                         R9 R0 R8
       45 GETIMPORT                        R9 K9 [string.lower]
       47 MOVE                             R10 R8
       48 CALL                             R9 1 1
       49 SETTABLE                         R9 R2 R7
       50 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       52 MOVE                             R10 R1
       53 MOVE                             R11 R7
       54 GETIMPORT                        R9 K12 [table.insert]
       56 CALL                             R9 2 0
       57 FORGLOOP                         R3 2 ; [-43]
       59 GETIMPORT                        R3 K14 [table.sort]
       61 MOVE                             R4 R1
       62 NEWCLOSURE                       R5 P0
       63 CAPTURE                          VAL R2
       64 CALL                             R3 2 0
       65 NEWTABLE                         R3 0 0
       67 MOVE                             R4 R1
       68 LOADNIL                          R5
       69 LOADNIL                          R6
       70 FORGPREP                         R4
       71 GETTABLEKS                       R9 R8 K15 ["id"]
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K16 ["createElement"]
       76 GETUPVAL                         R11 4
       77 DUPTABLE                         R12 K20 [{"LayoutOrder", "node", "readonly"}]
       78 SETTABLEKS                       R7 R12 K17 ["LayoutOrder"]
       80 SETTABLEKS                       R8 R12 K18 ["node"]
       82 GETUPVAL                         R13 5
       83 SETTABLEKS                       R13 R12 K19 ["readonly"]
       85 CALL                             R10 2 1
       86 SETTABLE                         R10 R3 R9
       87 FORGLOOP                         R4 2 ; [-17]
       89 RETURN                           R3 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETIMPORT                        R1 K2 [UDim2.fromScale]
        3 LOADN                            R2 1
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K3 ["Size"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETIMPORT                        R0 K2 [Vector2.new]
        4 LOADK                            R1 K3 [∞]
        5 LOADK                            R2 K3 [∞]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1
        8 GETIMPORT                        R0 K2 [Vector2.new]
       10 LOADK                            R1 K3 [∞]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["Y"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K6 ["PARAMETER_PANE_POSITION_OFFSET"]
       17 GETTABLEKS                       R5 R5 K5 ["Y"]
       19 GETTABLEKS                       R5 R5 K7 ["Offset"]
       21 SUB                              R3 R4 R5
       22 SUBK                             R2 R3 K4 [8]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       10 GETTABLEKS                       R3 R1 K3 ["nodePayloadDispatcher"]
       12 GETTABLEKS                       R3 R3 K4 ["observeMap"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R1 K5 ["parametersReadonly"]
       17 JUMPIFEQKB                       R4 TRUE ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R5 R5 K6 ["createNextOrder"]
       31 CALL                             R5 0 1
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K7 ["Hooks"]
       35 GETTABLEKS                       R6 R6 K8 ["useTokens"]
       37 CALL                             R6 0 1
       38 GETUPVAL                         R8 6
       39 CALL                             R8 0 1
       40 JUMPIFNOT                        R8 ; [+7]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K2 ["useSignalState"]
       44 GETTABLEKS                       R8 R4 K9 ["observeParameters"]
       46 CALL                             R7 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 GETUPVAL                         R8 7
       50 LOADK                            R9 K10 ["ParameterPaneExpanded"]
       51 LOADB                            R10 1
       52 GETIMPORT                        R11 K12 [tostring]
       54 DUPCLOSURE                       R12 K13 [PROTO_0]
       55 CALL                             R8 4 2
       56 GETUPVAL                         R10 7
       57 LOADK                            R11 K14 ["ParameterPaneWidth"]
       58 GETUPVAL                         R12 8
       59 GETTABLEKS                       R12 R12 K15 ["PARAMETER_PANE_WIDTH"]
       61 GETIMPORT                        R13 K12 [tostring]
       63 DUPCLOSURE                       R14 K16 [PROTO_1]
       64 CAPTURE                          UPVAL U8
       65 CALL                             R10 4 2
       66 GETUPVAL                         R12 9
       67 LOADK                            R13 K17 ["SizeEW"]
       68 CALL                             R12 1 1
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R13 R13 K18 ["useState"]
       72 LOADN                            R14 0
       73 CALL                             R13 1 2
       74 GETUPVAL                         R15 0
       75 GETTABLEKS                       R15 R15 K18 ["useState"]
       77 LOADB                            R16 0
       78 CALL                             R15 1 2
       79 GETUPVAL                         R17 0
       80 GETTABLEKS                       R17 R17 K18 ["useState"]
       82 GETUPVAL                         R18 5
       83 GETTABLEKS                       R18 R18 K19 ["Enums"]
       85 GETTABLEKS                       R18 R18 K20 ["ControlState"]
       87 GETTABLEKS                       R18 R18 K21 ["Default"]
       89 CALL                             R17 1 2
       90 GETUPVAL                         R19 0
       91 GETTABLEKS                       R19 R19 K22 ["useCallback"]
       93 NEWCLOSURE                       R20 P2
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R18
       97 CAPTURE                          VAL R15
       98 NEWTABLE                         R21 0 3
      100 MOVE                             R22 R18
      101 MOVE                             R23 R12
      102 MOVE                             R24 R15
      103 SETLIST                          R21 R22 3 [1]
      105 CALL                             R19 2 1
      106 GETUPVAL                         R20 0
      107 GETTABLEKS                       R20 R20 K22 ["useCallback"]
      109 NEWCLOSURE                       R21 P3
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R12
      114 CAPTURE                          UPVAL U5
      115 NEWTABLE                         R22 0 4
      117 MOVE                             R23 R14
      118 MOVE                             R24 R16
      119 MOVE                             R25 R12
      120 MOVE                             R26 R10
      121 SETLIST                          R22 R23 4 [1]
      123 CALL                             R20 2 1
      124 GETUPVAL                         R21 0
      125 GETTABLEKS                       R21 R21 K22 ["useCallback"]
      127 NEWCLOSURE                       R22 P4
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          UPVAL U8
      131 NEWTABLE                         R23 0 2
      133 MOVE                             R24 R13
      134 MOVE                             R25 R11
      135 SETLIST                          R23 R24 2 [1]
      137 CALL                             R21 2 1
      138 GETUPVAL                         R22 0
      139 GETTABLEKS                       R22 R22 K22 ["useCallback"]
      141 NEWCLOSURE                       R23 P5
      142 CAPTURE                          VAL R12
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R18
      146 NEWTABLE                         R24 0 3
      148 MOVE                             R25 R16
      149 MOVE                             R26 R18
      150 MOVE                             R27 R12
      151 SETLIST                          R24 R25 3 [1]
      153 CALL                             R22 2 1
      154 LOADB                            R23 1
      155 GETUPVAL                         R24 5
      156 GETTABLEKS                       R24 R24 K19 ["Enums"]
      158 GETTABLEKS                       R24 R24 K20 ["ControlState"]
      160 GETTABLEKS                       R24 R24 K23 ["Hover"]
      162 JUMPIFEQ                         R17 R24 ; [+12]
      164 GETUPVAL                         R24 5
      165 GETTABLEKS                       R24 R24 K19 ["Enums"]
      167 GETTABLEKS                       R24 R24 K20 ["ControlState"]
      169 GETTABLEKS                       R24 R24 K24 ["Pressed"]
      171 JUMPIFEQ                         R17 R24 ; [+2]
      173 LOADB                            R23 0 +1
      174 LOADB                            R23 1
      175 JUMPIFNOT                        R23 ; [+28]
      176 GETIMPORT                        R24 K27 [NumberSequence.new]
      178 NEWTABLE                         R25 0 4
      180 GETIMPORT                        R26 K29 [NumberSequenceKeypoint.new]
      182 LOADN                            R27 0
      183 LOADN                            R28 1
      184 CALL                             R26 2 1
      185 GETIMPORT                        R27 K29 [NumberSequenceKeypoint.new]
      187 LOADK                            R28 K30 [0.5]
      188 LOADK                            R29 K31 [0.25]
      189 CALL                             R27 2 1
      190 GETIMPORT                        R28 K29 [NumberSequenceKeypoint.new]
      192 LOADK                            R29 K32 [0.5001]
      193 LOADN                            R30 1
      194 CALL                             R28 2 1
      195 GETIMPORT                        R29 K29 [NumberSequenceKeypoint.new]
      197 LOADN                            R30 1
      198 LOADN                            R31 1
      199 CALL                             R29 2 -1
      200 SETLIST                          R25 R26 -1 [1]
      202 CALL                             R24 1 1
      203 JUMP                             ; [+4]
      204 GETIMPORT                        R24 K27 [NumberSequence.new]
      206 LOADN                            R25 1
      207 CALL                             R24 1 1
      208 GETUPVAL                         R26 10
      209 JUMPIFNOT                        R26 ; [+2]
      210 LOADNIL                          R25
      211 JUMP                             ; [+11]
      212 GETUPVAL                         R25 0
      213 GETTABLEKS                       R25 R25 K33 ["useMemo"]
      215 NEWCLOSURE                       R26 P6
      216 CAPTURE                          VAL R2
      217 NEWTABLE                         R27 0 1
      219 MOVE                             R28 R2
      220 SETLIST                          R27 R28 1 [1]
      222 CALL                             R25 2 1
      223 GETUPVAL                         R26 11
      224 CALL                             R26 0 1
      225 GETUPVAL                         R27 0
      226 GETTABLEKS                       R27 R27 K34 ["useEffect"]
      228 NEWCLOSURE                       R28 P7
      229 CAPTURE                          VAL R26
      230 CAPTURE                          VAL R0
      231 NEWTABLE                         R29 0 2
      233 GETTABLEKS                       R30 R26 K35 ["setFrame"]
      235 GETTABLEKS                       R31 R0 K36 ["canvasFrameRef"]
      237 GETTABLEKS                       R31 R31 K37 ["current"]
      239 SETLIST                          R29 R30 2 [1]
      241 CALL                             R27 2 0
      242 GETUPVAL                         R27 0
      243 GETTABLEKS                       R27 R27 K33 ["useMemo"]
      245 NEWCLOSURE                       R28 P8
      246 CAPTURE                          VAL R2
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          UPVAL U12
      249 CAPTURE                          UPVAL U0
      250 CAPTURE                          UPVAL U13
      251 CAPTURE                          VAL R3
      252 NEWTABLE                         R29 0 3
      254 MOVE                             R30 R2
      255 MOVE                             R31 R3
      256 MOVE                             R32 R7
      257 SETLIST                          R29 R30 3 [1]
      259 CALL                             R27 2 1
      260 GETUPVAL                         R28 5
      261 GETTABLEKS                       R28 R28 K7 ["Hooks"]
      263 GETTABLEKS                       R28 R28 K38 ["useScaledValue"]
      265 GETUPVAL                         R30 14
      266 CALL                             R30 0 1
      267 JUMPIFNOT                        R30 ; [+2]
      268 MOVE                             R29 R10
      269 JUMP                             ; [+3]
      270 GETUPVAL                         R29 8
      271 GETTABLEKS                       R29 R29 K15 ["PARAMETER_PANE_WIDTH"]
      273 CALL                             R28 1 1
      274 GETIMPORT                        R29 K41 [UDim2.fromOffset]
      276 MOVE                             R30 R28
      277 LOADN                            R31 0
      278 CALL                             R29 2 1
      279 GETIMPORT                        R31 K43 [next]
      281 MOVE                             R32 R27
      282 CALL                             R31 1 1
      283 JUMPIFNOTEQKNIL                  R31 ; [+2]
      285 LOADB                            R30 0 +1
      286 LOADB                            R30 1
      287 GETUPVAL                         R31 0
      288 GETTABLEKS                       R31 R31 K22 ["useCallback"]
      290 DUPCLOSURE                       R32 K44 [PROTO_10]
      291 NEWTABLE                         R33 0 0
      293 CALL                             R31 2 1
      294 GETUPVAL                         R32 2
      295 GETTABLEKS                       R32 R32 K2 ["useSignalState"]
      297 GETTABLEKS                       R33 R26 K45 ["observeAbsoluteSize"]
      299 CALL                             R32 1 1
      300 GETUPVAL                         R33 0
      301 GETTABLEKS                       R33 R33 K33 ["useMemo"]
      303 NEWCLOSURE                       R34 P10
      304 CAPTURE                          VAL R32
      305 CAPTURE                          UPVAL U8
      306 NEWTABLE                         R35 0 1
      308 MOVE                             R36 R32
      309 SETLIST                          R35 R36 1 [1]
      311 CALL                             R33 2 1
      312 GETUPVAL                         R34 10
      313 JUMPIF                           R34 ; [+3]
      314 JUMPIFNOT                        R25 ; [+2]
      315 LOADNIL                          R34
      316 RETURN                           R34 1
      317 GETUPVAL                         R34 14
      318 CALL                             R34 0 1
      319 JUMPIF                           R34 ; [+138]
      320 GETUPVAL                         R34 0
      321 GETTABLEKS                       R34 R34 K46 ["createElement"]
      323 GETUPVAL                         R35 5
      324 GETTABLEKS                       R35 R35 K47 ["View"]
      326 DUPTABLE                         R36 K54 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      327 SETTABLEKS                       R29 R36 K50 ["Size"]
      329 GETUPVAL                         R37 8
      330 GETTABLEKS                       R37 R37 K55 ["PARAMETER_PANE_POSITION_OFFSET"]
      332 SETTABLEKS                       R37 R36 K51 ["Position"]
      334 GETTABLEKS                       R37 R0 K52 ["ZIndex"]
      336 SETTABLEKS                       R37 R36 K52 ["ZIndex"]
      338 DUPTABLE                         R37 K57 [{"affordance"}]
      339 GETUPVAL                         R38 5
      340 GETTABLEKS                       R38 R38 K19 ["Enums"]
      342 GETTABLEKS                       R38 R38 K58 ["StateLayerAffordance"]
      344 GETTABLEKS                       R38 R38 K59 ["None"]
      346 SETTABLEKS                       R38 R37 K56 ["affordance"]
      348 SETTABLEKS                       R37 R36 K53 ["stateLayer"]
      350 DUPTABLE                         R37 K63 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      351 GETUPVAL                         R38 0
      352 GETTABLEKS                       R38 R38 K46 ["createElement"]
      354 LOADK                            R39 K60 ["UISizeConstraint"]
      355 DUPTABLE                         R40 K65 [{"MaxSize"}]
      356 SETTABLEKS                       R33 R40 K64 ["MaxSize"]
      358 CALL                             R38 2 1
      359 SETTABLEKS                       R38 R37 K60 ["UISizeConstraint"]
      361 GETUPVAL                         R38 0
      362 GETTABLEKS                       R38 R38 K46 ["createElement"]
      364 GETUPVAL                         R39 15
      365 DUPTABLE                         R40 K72 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded", "readonly"}]
      366 MOVE                             R41 R5
      367 CALL                             R41 0 1
      368 SETTABLEKS                       R41 R40 K66 ["LayoutOrder"]
      370 SETTABLEKS                       R30 R40 K67 ["canExpand"]
      372 SETTABLEKS                       R8 R40 K68 ["expanded"]
      374 GETUPVAL                         R42 10
      375 JUMPIFNOT                        R42 ; [+2]
      376 LOADB                            R41 1
      377 JUMP                             ; [+1]
      378 NOT                              R41 R25
      379 SETTABLEKS                       R41 R40 K69 ["DEPRECATED_canAddParameter"]
      381 SETTABLEKS                       R9 R40 K70 ["setExpanded"]
      383 SETTABLEKS                       R3 R40 K71 ["readonly"]
      385 CALL                             R38 2 1
      386 SETTABLEKS                       R38 R37 K61 ["ParameterPaneHeader"]
      388 JUMPIFNOT                        R8 ; [+64]
      389 GETUPVAL                         R38 0
      390 GETTABLEKS                       R38 R38 K46 ["createElement"]
      392 GETUPVAL                         R39 5
      393 GETTABLEKS                       R39 R39 K73 ["ScrollView"]
      395 DUPTABLE                         R40 K79 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      396 GETIMPORT                        R41 K82 [Enum.AutomaticSize.Y]
      398 SETTABLEKS                       R41 R40 K75 ["AutomaticSize"]
      400 DUPTABLE                         R41 K87 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      401 GETIMPORT                        R42 K41 [UDim2.fromOffset]
      403 LOADN                            R43 0
      404 LOADN                            R44 0
      405 CALL                             R42 2 1
      406 SETTABLEKS                       R42 R41 K83 ["CanvasSize"]
      408 GETIMPORT                        R42 K82 [Enum.AutomaticSize.Y]
      410 SETTABLEKS                       R42 R41 K75 ["AutomaticSize"]
      412 GETIMPORT                        R42 K82 [Enum.AutomaticSize.Y]
      414 SETTABLEKS                       R42 R41 K84 ["AutomaticCanvasSize"]
      416 GETUPVAL                         R42 5
      417 GETTABLEKS                       R42 R42 K19 ["Enums"]
      419 GETTABLEKS                       R42 R42 K88 ["Visibility"]
      421 GETTABLEKS                       R42 R42 K89 ["Auto"]
      423 SETTABLEKS                       R42 R41 K85 ["scrollBarVisibility"]
      425 GETIMPORT                        R42 K90 [Enum.ScrollingDirection.Y]
      427 SETTABLEKS                       R42 R41 K86 ["ScrollingDirection"]
      429 SETTABLEKS                       R41 R40 K76 ["scroll"]
      431 SETTABLEKS                       R31 R40 K77 ["scrollingFrameRef"]
      433 SETTABLEKS                       R30 R40 K78 ["Visible"]
      435 MOVE                             R41 R5
      436 CALL                             R41 0 1
      437 SETTABLEKS                       R41 R40 K66 ["LayoutOrder"]
      439 DUPTABLE                         R41 K92 [{"ParameterNodeItemContainer"}]
      440 GETUPVAL                         R42 0
      441 GETTABLEKS                       R42 R42 K46 ["createElement"]
      443 GETUPVAL                         R43 5
      444 GETTABLEKS                       R43 R43 K47 ["View"]
      446 DUPTABLE                         R44 K94 [{["tag"] = "col size-full-0 auto-y"}]
      447 MOVE                             R45 R27
      448 CALL                             R42 3 1
      449 SETTABLEKS                       R42 R41 K91 ["ParameterNodeItemContainer"]
      451 CALL                             R38 3 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R38
      454 SETTABLEKS                       R38 R37 K62 ["ParameterPaneScrollView"]
      456 CALL                             R34 3 -1
      457 RETURN                           R34 -1
      458 GETUPVAL                         R34 0
      459 GETTABLEKS                       R34 R34 K46 ["createElement"]
      461 GETUPVAL                         R35 5
      462 GETTABLEKS                       R35 R35 K47 ["View"]
      464 DUPTABLE                         R36 K96 [{["tag"] = "auto-y", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      465 SETTABLEKS                       R29 R36 K50 ["Size"]
      467 GETUPVAL                         R37 8
      468 GETTABLEKS                       R37 R37 K55 ["PARAMETER_PANE_POSITION_OFFSET"]
      470 SETTABLEKS                       R37 R36 K51 ["Position"]
      472 GETTABLEKS                       R37 R0 K52 ["ZIndex"]
      474 SETTABLEKS                       R37 R36 K52 ["ZIndex"]
      476 DUPTABLE                         R37 K57 [{"affordance"}]
      477 GETUPVAL                         R38 5
      478 GETTABLEKS                       R38 R38 K19 ["Enums"]
      480 GETTABLEKS                       R38 R38 K58 ["StateLayerAffordance"]
      482 GETTABLEKS                       R38 R38 K59 ["None"]
      484 SETTABLEKS                       R38 R37 K56 ["affordance"]
      486 SETTABLEKS                       R37 R36 K53 ["stateLayer"]
      488 DUPTABLE                         R37 K99 [{"Content", "ResizeBarRight"}]
      489 GETUPVAL                         R38 0
      490 GETTABLEKS                       R38 R38 K46 ["createElement"]
      492 GETUPVAL                         R39 5
      493 GETTABLEKS                       R39 R39 K47 ["View"]
      495 DUPTABLE                         R40 K102 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      496 DUPTABLE                         R41 K57 [{"affordance"}]
      497 GETUPVAL                         R42 5
      498 GETTABLEKS                       R42 R42 K19 ["Enums"]
      500 GETTABLEKS                       R42 R42 K58 ["StateLayerAffordance"]
      502 GETTABLEKS                       R42 R42 K59 ["None"]
      504 SETTABLEKS                       R42 R41 K56 ["affordance"]
      506 SETTABLEKS                       R41 R40 K53 ["stateLayer"]
      508 DUPTABLE                         R41 K65 [{"MaxSize"}]
      509 SETTABLEKS                       R33 R41 K64 ["MaxSize"]
      511 SETTABLEKS                       R41 R40 K101 ["sizeConstraint"]
      513 DUPTABLE                         R41 K103 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      514 GETUPVAL                         R42 0
      515 GETTABLEKS                       R42 R42 K46 ["createElement"]
      517 GETUPVAL                         R43 15
      518 DUPTABLE                         R44 K72 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded", "readonly"}]
      519 MOVE                             R45 R5
      520 CALL                             R45 0 1
      521 SETTABLEKS                       R45 R44 K66 ["LayoutOrder"]
      523 SETTABLEKS                       R30 R44 K67 ["canExpand"]
      525 SETTABLEKS                       R8 R44 K68 ["expanded"]
      527 GETUPVAL                         R46 10
      528 JUMPIFNOT                        R46 ; [+2]
      529 LOADB                            R45 1
      530 JUMP                             ; [+1]
      531 NOT                              R45 R25
      532 SETTABLEKS                       R45 R44 K69 ["DEPRECATED_canAddParameter"]
      534 SETTABLEKS                       R9 R44 K70 ["setExpanded"]
      536 SETTABLEKS                       R3 R44 K71 ["readonly"]
      538 CALL                             R42 2 1
      539 SETTABLEKS                       R42 R41 K61 ["ParameterPaneHeader"]
      541 JUMPIFNOT                        R8 ; [+64]
      542 GETUPVAL                         R42 0
      543 GETTABLEKS                       R42 R42 K46 ["createElement"]
      545 GETUPVAL                         R43 5
      546 GETTABLEKS                       R43 R43 K73 ["ScrollView"]
      548 DUPTABLE                         R44 K79 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      549 GETIMPORT                        R45 K82 [Enum.AutomaticSize.Y]
      551 SETTABLEKS                       R45 R44 K75 ["AutomaticSize"]
      553 DUPTABLE                         R45 K87 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      554 GETIMPORT                        R46 K41 [UDim2.fromOffset]
      556 LOADN                            R47 0
      557 LOADN                            R48 0
      558 CALL                             R46 2 1
      559 SETTABLEKS                       R46 R45 K83 ["CanvasSize"]
      561 GETIMPORT                        R46 K82 [Enum.AutomaticSize.Y]
      563 SETTABLEKS                       R46 R45 K75 ["AutomaticSize"]
      565 GETIMPORT                        R46 K82 [Enum.AutomaticSize.Y]
      567 SETTABLEKS                       R46 R45 K84 ["AutomaticCanvasSize"]
      569 GETUPVAL                         R46 5
      570 GETTABLEKS                       R46 R46 K19 ["Enums"]
      572 GETTABLEKS                       R46 R46 K88 ["Visibility"]
      574 GETTABLEKS                       R46 R46 K89 ["Auto"]
      576 SETTABLEKS                       R46 R45 K85 ["scrollBarVisibility"]
      578 GETIMPORT                        R46 K90 [Enum.ScrollingDirection.Y]
      580 SETTABLEKS                       R46 R45 K86 ["ScrollingDirection"]
      582 SETTABLEKS                       R45 R44 K76 ["scroll"]
      584 SETTABLEKS                       R31 R44 K77 ["scrollingFrameRef"]
      586 SETTABLEKS                       R30 R44 K78 ["Visible"]
      588 MOVE                             R45 R5
      589 CALL                             R45 0 1
      590 SETTABLEKS                       R45 R44 K66 ["LayoutOrder"]
      592 DUPTABLE                         R45 K92 [{"ParameterNodeItemContainer"}]
      593 GETUPVAL                         R46 0
      594 GETTABLEKS                       R46 R46 K46 ["createElement"]
      596 GETUPVAL                         R47 5
      597 GETTABLEKS                       R47 R47 K47 ["View"]
      599 DUPTABLE                         R48 K94 [{["tag"] = "col size-full-0 auto-y"}]
      600 MOVE                             R49 R27
      601 CALL                             R46 3 1
      602 SETTABLEKS                       R46 R45 K91 ["ParameterNodeItemContainer"]
      604 CALL                             R42 3 1
      605 JUMP                             ; [+1]
      606 LOADNIL                          R42
      607 SETTABLEKS                       R42 R41 K62 ["ParameterPaneScrollView"]
      609 CALL                             R38 3 1
      610 SETTABLEKS                       R38 R37 K97 ["Content"]
      612 GETUPVAL                         R38 0
      613 GETTABLEKS                       R38 R38 K46 ["createElement"]
      615 GETUPVAL                         R39 5
      616 GETTABLEKS                       R39 R39 K47 ["View"]
      618 DUPTABLE                         R40 K106 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      619 GETTABLEKS                       R41 R6 K107 ["Color"]
      621 GETTABLEKS                       R41 R41 K108 ["Stroke"]
      623 GETTABLEKS                       R41 R41 K21 ["Default"]
      625 SETTABLEKS                       R41 R40 K104 ["backgroundStyle"]
      627 GETIMPORT                        R41 K109 [UDim2.new]
      629 LOADN                            R42 0
      630 LOADN                            R43 10
      631 LOADN                            R44 1
      632 LOADN                            R45 0
      633 CALL                             R41 4 1
      634 SETTABLEKS                       R41 R40 K50 ["Size"]
      636 GETIMPORT                        R41 K109 [UDim2.new]
      638 LOADN                            R42 1
      639 LOADN                            R43 -5
      640 LOADN                            R44 0
      641 LOADN                            R45 0
      642 CALL                             R41 4 1
      643 SETTABLEKS                       R41 R40 K51 ["Position"]
      645 SETTABLEKS                       R19 R40 K105 ["onStateChanged"]
      647 DUPTABLE                         R41 K57 [{"affordance"}]
      648 GETUPVAL                         R42 5
      649 GETTABLEKS                       R42 R42 K19 ["Enums"]
      651 GETTABLEKS                       R42 R42 K58 ["StateLayerAffordance"]
      653 GETTABLEKS                       R42 R42 K59 ["None"]
      655 SETTABLEKS                       R42 R41 K56 ["affordance"]
      657 SETTABLEKS                       R41 R40 K53 ["stateLayer"]
      659 DUPTABLE                         R41 K112 [{"Gradient", "DragDetector"}]
      660 GETUPVAL                         R42 0
      661 GETTABLEKS                       R42 R42 K46 ["createElement"]
      663 LOADK                            R43 K113 ["UIGradient"]
      664 DUPTABLE                         R44 K115 [{"Transparency"}]
      665 SETTABLEKS                       R24 R44 K114 ["Transparency"]
      667 CALL                             R42 2 1
      668 SETTABLEKS                       R42 R41 K110 ["Gradient"]
      670 GETUPVAL                         R42 0
      671 GETTABLEKS                       R42 R42 K46 ["createElement"]
      673 LOADK                            R43 K116 ["UIDragDetector"]
      674 NEWTABLE                         R44 8 0
      676 GETIMPORT                        R45 K119 [Enum.UIDragDetectorDragStyle.Scriptable]
      678 SETTABLEKS                       R45 R44 K120 ["DragStyle"]
      680 GETTABLEKS                       R45 R0 K36 ["canvasFrameRef"]
      682 GETTABLEKS                       R45 R45 K37 ["current"]
      684 SETTABLEKS                       R45 R44 K121 ["ReferenceUIInstance"]
      686 GETUPVAL                         R45 0
      687 GETTABLEKS                       R45 R45 K122 ["Event"]
      689 GETTABLEKS                       R45 R45 K123 ["DragStart"]
      691 SETTABLE                         R20 R44 R45
      692 GETUPVAL                         R45 0
      693 GETTABLEKS                       R45 R45 K122 ["Event"]
      695 GETTABLEKS                       R45 R45 K124 ["DragContinue"]
      697 SETTABLE                         R21 R44 R45
      698 GETUPVAL                         R45 0
      699 GETTABLEKS                       R45 R45 K122 ["Event"]
      701 GETTABLEKS                       R45 R45 K125 ["DragEnd"]
      703 SETTABLE                         R22 R44 R45
      704 CALL                             R42 2 1
      705 SETTABLEKS                       R42 R41 K111 ["DragDetector"]
      707 CALL                             R38 3 1
      708 SETTABLEKS                       R38 R37 K98 ["ResizeBarRight"]
      710 CALL                             R34 3 -1
      711 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_AllowNoParameters"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["GraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["NodeViewTypes"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Components"]
       42 GETTABLEKS                       R7 R7 K14 ["ParameterContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K6 ["Constants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K15 ["ParameterPaneHeader"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K16 ["ParameterPaneItem"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Parent"]
       70 GETTABLEKS                       R11 R11 K17 ["React"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K9 ["Parent"]
       77 GETTABLEKS                       R12 R12 K18 ["ReactUtils"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K9 ["Parent"]
       84 GETTABLEKS                       R13 R13 K19 ["SignalsReact"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K20 ["Hooks"]
       91 GETTABLEKS                       R14 R14 K21 ["useAbsoluteSize"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K20 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K22 ["useOnStateChangedCursor"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K20 ["Hooks"]
      105 GETTABLEKS                       R16 R16 K23 ["usePluginSetting"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETTABLEKS                       R17 R0 K7 ["Flags"]
      112 GETTABLEKS                       R17 R17 K24 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K7 ["Flags"]
      119 GETTABLEKS                       R18 R18 K25 ["getFFlagAnimGraphUIResizeParameterPane"]
      121 CALL                             R17 1 1
      122 DUPCLOSURE                       R18 K26 [PROTO_12]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R8
      139 RETURN                           R18 1
