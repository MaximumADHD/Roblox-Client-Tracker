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
       17 JUMPIFNOTEQKS                    R8 K1 ["Parameter"] ; [+29]
       19 GETTABLEKS                       R8 R7 K2 ["name"]
       21 JUMPIFEQKNIL                     R8 ; [+25]
       23 GETTABLE                         R9 R0 R8
       24 JUMPIF                           R9 ; [+22]
       25 GETTABLEKS                       R10 R7 K3 ["nodeType"]
       27 FASTCALL1                        TYPE R10 ; [+2]
       28 GETIMPORT                        R9 K5 [type]
       30 CALL                             R9 1 1
       31 JUMPIFNOTEQKS                    R9 K6 ["string"] ; [+15]
       33 LOADB                            R9 1
       34 SETTABLE                         R9 R0 R8
       35 GETIMPORT                        R9 K8 [string.lower]
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 SETTABLE                         R9 R2 R7
       40 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       42 MOVE                             R10 R1
       43 MOVE                             R11 R7
       44 GETIMPORT                        R9 K11 [table.insert]
       46 CALL                             R9 2 0
       47 FORGLOOP                         R3 2 ; [-33]
       49 GETIMPORT                        R3 K13 [table.sort]
       51 MOVE                             R4 R1
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          VAL R2
       54 CALL                             R3 2 0
       55 NEWTABLE                         R3 0 0
       57 MOVE                             R4 R1
       58 LOADNIL                          R5
       59 LOADNIL                          R6
       60 FORGPREP                         R4
       61 GETTABLEKS                       R9 R8 K14 ["id"]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K15 ["createElement"]
       66 GETUPVAL                         R11 2
       67 DUPTABLE                         R12 K19 [{"LayoutOrder", "node", "readonly"}]
       68 SETTABLEKS                       R7 R12 K16 ["LayoutOrder"]
       70 SETTABLEKS                       R8 R12 K17 ["node"]
       72 GETUPVAL                         R13 3
       73 SETTABLEKS                       R13 R12 K18 ["readonly"]
       75 CALL                             R10 2 1
       76 SETTABLE                         R10 R3 R9
       77 FORGLOOP                         R4 2 ; [-17]
       79 RETURN                           R3 1

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
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K6 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K7 ["Hooks"]
       28 GETTABLEKS                       R5 R5 K8 ["useTokens"]
       30 CALL                             R5 0 1
       31 GETUPVAL                         R6 5
       32 LOADK                            R7 K9 ["ParameterPaneExpanded"]
       33 LOADB                            R8 1
       34 GETIMPORT                        R9 K11 [tostring]
       36 DUPCLOSURE                       R10 K12 [PROTO_0]
       37 CALL                             R6 4 2
       38 GETUPVAL                         R8 5
       39 LOADK                            R9 K13 ["ParameterPaneWidth"]
       40 GETUPVAL                         R10 6
       41 GETTABLEKS                       R10 R10 K14 ["PARAMETER_PANE_WIDTH"]
       43 GETIMPORT                        R11 K11 [tostring]
       45 DUPCLOSURE                       R12 K15 [PROTO_1]
       46 CAPTURE                          UPVAL U6
       47 CALL                             R8 4 2
       48 GETUPVAL                         R10 7
       49 LOADK                            R11 K16 ["SizeEW"]
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K17 ["useState"]
       54 LOADN                            R12 0
       55 CALL                             R11 1 2
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K17 ["useState"]
       59 LOADB                            R14 0
       60 CALL                             R13 1 2
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K17 ["useState"]
       64 GETUPVAL                         R16 4
       65 GETTABLEKS                       R16 R16 K18 ["Enums"]
       67 GETTABLEKS                       R16 R16 K19 ["ControlState"]
       69 GETTABLEKS                       R16 R16 K20 ["Default"]
       71 CALL                             R15 1 2
       72 GETUPVAL                         R17 0
       73 GETTABLEKS                       R17 R17 K21 ["useCallback"]
       75 NEWCLOSURE                       R18 P2
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R13
       80 NEWTABLE                         R19 0 3
       82 MOVE                             R20 R16
       83 MOVE                             R21 R10
       84 MOVE                             R22 R13
       85 SETLIST                          R19 R20 3 [1]
       87 CALL                             R17 2 1
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R18 R18 K21 ["useCallback"]
       91 NEWCLOSURE                       R19 P3
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R10
       96 CAPTURE                          UPVAL U4
       97 NEWTABLE                         R20 0 4
       99 MOVE                             R21 R12
      100 MOVE                             R22 R14
      101 MOVE                             R23 R10
      102 MOVE                             R24 R8
      103 SETLIST                          R20 R21 4 [1]
      105 CALL                             R18 2 1
      106 GETUPVAL                         R19 0
      107 GETTABLEKS                       R19 R19 K21 ["useCallback"]
      109 NEWCLOSURE                       R20 P4
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R9
      112 CAPTURE                          UPVAL U6
      113 NEWTABLE                         R21 0 2
      115 MOVE                             R22 R11
      116 MOVE                             R23 R9
      117 SETLIST                          R21 R22 2 [1]
      119 CALL                             R19 2 1
      120 GETUPVAL                         R20 0
      121 GETTABLEKS                       R20 R20 K21 ["useCallback"]
      123 NEWCLOSURE                       R21 P5
      124 CAPTURE                          VAL R10
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R16
      128 NEWTABLE                         R22 0 3
      130 MOVE                             R23 R14
      131 MOVE                             R24 R16
      132 MOVE                             R25 R10
      133 SETLIST                          R22 R23 3 [1]
      135 CALL                             R20 2 1
      136 LOADB                            R21 1
      137 GETUPVAL                         R22 4
      138 GETTABLEKS                       R22 R22 K18 ["Enums"]
      140 GETTABLEKS                       R22 R22 K19 ["ControlState"]
      142 GETTABLEKS                       R22 R22 K22 ["Hover"]
      144 JUMPIFEQ                         R15 R22 ; [+12]
      146 GETUPVAL                         R22 4
      147 GETTABLEKS                       R22 R22 K18 ["Enums"]
      149 GETTABLEKS                       R22 R22 K19 ["ControlState"]
      151 GETTABLEKS                       R22 R22 K23 ["Pressed"]
      153 JUMPIFEQ                         R15 R22 ; [+2]
      155 LOADB                            R21 0 +1
      156 LOADB                            R21 1
      157 JUMPIFNOT                        R21 ; [+28]
      158 GETIMPORT                        R22 K26 [NumberSequence.new]
      160 NEWTABLE                         R23 0 4
      162 GETIMPORT                        R24 K28 [NumberSequenceKeypoint.new]
      164 LOADN                            R25 0
      165 LOADN                            R26 1
      166 CALL                             R24 2 1
      167 GETIMPORT                        R25 K28 [NumberSequenceKeypoint.new]
      169 LOADK                            R26 K29 [0.5]
      170 LOADK                            R27 K30 [0.25]
      171 CALL                             R25 2 1
      172 GETIMPORT                        R26 K28 [NumberSequenceKeypoint.new]
      174 LOADK                            R27 K31 [0.5001]
      175 LOADN                            R28 1
      176 CALL                             R26 2 1
      177 GETIMPORT                        R27 K28 [NumberSequenceKeypoint.new]
      179 LOADN                            R28 1
      180 LOADN                            R29 1
      181 CALL                             R27 2 -1
      182 SETLIST                          R23 R24 -1 [1]
      184 CALL                             R22 1 1
      185 JUMP                             ; [+4]
      186 GETIMPORT                        R22 K26 [NumberSequence.new]
      188 LOADN                            R23 1
      189 CALL                             R22 1 1
      190 GETUPVAL                         R24 8
      191 JUMPIFNOT                        R24 ; [+2]
      192 LOADNIL                          R23
      193 JUMP                             ; [+11]
      194 GETUPVAL                         R23 0
      195 GETTABLEKS                       R23 R23 K32 ["useMemo"]
      197 NEWCLOSURE                       R24 P6
      198 CAPTURE                          VAL R2
      199 NEWTABLE                         R25 0 1
      201 MOVE                             R26 R2
      202 SETLIST                          R25 R26 1 [1]
      204 CALL                             R23 2 1
      205 GETUPVAL                         R24 9
      206 CALL                             R24 0 1
      207 GETUPVAL                         R25 0
      208 GETTABLEKS                       R25 R25 K33 ["useEffect"]
      210 NEWCLOSURE                       R26 P7
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R0
      213 NEWTABLE                         R27 0 2
      215 GETTABLEKS                       R28 R24 K34 ["setFrame"]
      217 GETTABLEKS                       R29 R0 K35 ["canvasFrameRef"]
      219 GETTABLEKS                       R29 R29 K36 ["current"]
      221 SETLIST                          R27 R28 2 [1]
      223 CALL                             R25 2 0
      224 GETUPVAL                         R25 0
      225 GETTABLEKS                       R25 R25 K32 ["useMemo"]
      227 NEWCLOSURE                       R26 P8
      228 CAPTURE                          VAL R2
      229 CAPTURE                          UPVAL U0
      230 CAPTURE                          UPVAL U10
      231 CAPTURE                          VAL R3
      232 NEWTABLE                         R27 0 2
      234 MOVE                             R28 R2
      235 MOVE                             R29 R3
      236 SETLIST                          R27 R28 2 [1]
      238 CALL                             R25 2 1
      239 GETUPVAL                         R26 4
      240 GETTABLEKS                       R26 R26 K7 ["Hooks"]
      242 GETTABLEKS                       R26 R26 K37 ["useScaledValue"]
      244 GETUPVAL                         R28 11
      245 CALL                             R28 0 1
      246 JUMPIFNOT                        R28 ; [+2]
      247 MOVE                             R27 R8
      248 JUMP                             ; [+3]
      249 GETUPVAL                         R27 6
      250 GETTABLEKS                       R27 R27 K14 ["PARAMETER_PANE_WIDTH"]
      252 CALL                             R26 1 1
      253 GETIMPORT                        R27 K40 [UDim2.fromOffset]
      255 MOVE                             R28 R26
      256 LOADN                            R29 0
      257 CALL                             R27 2 1
      258 GETIMPORT                        R29 K42 [next]
      260 MOVE                             R30 R25
      261 CALL                             R29 1 1
      262 JUMPIFNOTEQKNIL                  R29 ; [+2]
      264 LOADB                            R28 0 +1
      265 LOADB                            R28 1
      266 GETUPVAL                         R29 0
      267 GETTABLEKS                       R29 R29 K21 ["useCallback"]
      269 DUPCLOSURE                       R30 K43 [PROTO_10]
      270 NEWTABLE                         R31 0 0
      272 CALL                             R29 2 1
      273 GETUPVAL                         R30 2
      274 GETTABLEKS                       R30 R30 K2 ["useSignalState"]
      276 GETTABLEKS                       R31 R24 K44 ["observeAbsoluteSize"]
      278 CALL                             R30 1 1
      279 GETUPVAL                         R31 0
      280 GETTABLEKS                       R31 R31 K32 ["useMemo"]
      282 NEWCLOSURE                       R32 P10
      283 CAPTURE                          VAL R30
      284 CAPTURE                          UPVAL U6
      285 NEWTABLE                         R33 0 1
      287 MOVE                             R34 R30
      288 SETLIST                          R33 R34 1 [1]
      290 CALL                             R31 2 1
      291 GETUPVAL                         R32 8
      292 JUMPIF                           R32 ; [+3]
      293 JUMPIFNOT                        R23 ; [+2]
      294 LOADNIL                          R32
      295 RETURN                           R32 1
      296 GETUPVAL                         R32 11
      297 CALL                             R32 0 1
      298 JUMPIF                           R32 ; [+138]
      299 GETUPVAL                         R32 0
      300 GETTABLEKS                       R32 R32 K45 ["createElement"]
      302 GETUPVAL                         R33 4
      303 GETTABLEKS                       R33 R33 K46 ["View"]
      305 DUPTABLE                         R34 K53 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      306 SETTABLEKS                       R27 R34 K49 ["Size"]
      308 GETUPVAL                         R35 6
      309 GETTABLEKS                       R35 R35 K54 ["PARAMETER_PANE_POSITION_OFFSET"]
      311 SETTABLEKS                       R35 R34 K50 ["Position"]
      313 GETTABLEKS                       R35 R0 K51 ["ZIndex"]
      315 SETTABLEKS                       R35 R34 K51 ["ZIndex"]
      317 DUPTABLE                         R35 K56 [{"affordance"}]
      318 GETUPVAL                         R36 4
      319 GETTABLEKS                       R36 R36 K18 ["Enums"]
      321 GETTABLEKS                       R36 R36 K57 ["StateLayerAffordance"]
      323 GETTABLEKS                       R36 R36 K58 ["None"]
      325 SETTABLEKS                       R36 R35 K55 ["affordance"]
      327 SETTABLEKS                       R35 R34 K52 ["stateLayer"]
      329 DUPTABLE                         R35 K62 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      330 GETUPVAL                         R36 0
      331 GETTABLEKS                       R36 R36 K45 ["createElement"]
      333 LOADK                            R37 K59 ["UISizeConstraint"]
      334 DUPTABLE                         R38 K64 [{"MaxSize"}]
      335 SETTABLEKS                       R31 R38 K63 ["MaxSize"]
      337 CALL                             R36 2 1
      338 SETTABLEKS                       R36 R35 K59 ["UISizeConstraint"]
      340 GETUPVAL                         R36 0
      341 GETTABLEKS                       R36 R36 K45 ["createElement"]
      343 GETUPVAL                         R37 12
      344 DUPTABLE                         R38 K71 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded", "readonly"}]
      345 MOVE                             R39 R4
      346 CALL                             R39 0 1
      347 SETTABLEKS                       R39 R38 K65 ["LayoutOrder"]
      349 SETTABLEKS                       R28 R38 K66 ["canExpand"]
      351 SETTABLEKS                       R6 R38 K67 ["expanded"]
      353 GETUPVAL                         R40 8
      354 JUMPIFNOT                        R40 ; [+2]
      355 LOADB                            R39 1
      356 JUMP                             ; [+1]
      357 NOT                              R39 R23
      358 SETTABLEKS                       R39 R38 K68 ["DEPRECATED_canAddParameter"]
      360 SETTABLEKS                       R7 R38 K69 ["setExpanded"]
      362 SETTABLEKS                       R3 R38 K70 ["readonly"]
      364 CALL                             R36 2 1
      365 SETTABLEKS                       R36 R35 K60 ["ParameterPaneHeader"]
      367 JUMPIFNOT                        R6 ; [+64]
      368 GETUPVAL                         R36 0
      369 GETTABLEKS                       R36 R36 K45 ["createElement"]
      371 GETUPVAL                         R37 4
      372 GETTABLEKS                       R37 R37 K72 ["ScrollView"]
      374 DUPTABLE                         R38 K78 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      375 GETIMPORT                        R39 K81 [Enum.AutomaticSize.Y]
      377 SETTABLEKS                       R39 R38 K74 ["AutomaticSize"]
      379 DUPTABLE                         R39 K86 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      380 GETIMPORT                        R40 K40 [UDim2.fromOffset]
      382 LOADN                            R41 0
      383 LOADN                            R42 0
      384 CALL                             R40 2 1
      385 SETTABLEKS                       R40 R39 K82 ["CanvasSize"]
      387 GETIMPORT                        R40 K81 [Enum.AutomaticSize.Y]
      389 SETTABLEKS                       R40 R39 K74 ["AutomaticSize"]
      391 GETIMPORT                        R40 K81 [Enum.AutomaticSize.Y]
      393 SETTABLEKS                       R40 R39 K83 ["AutomaticCanvasSize"]
      395 GETUPVAL                         R40 4
      396 GETTABLEKS                       R40 R40 K18 ["Enums"]
      398 GETTABLEKS                       R40 R40 K87 ["Visibility"]
      400 GETTABLEKS                       R40 R40 K88 ["Auto"]
      402 SETTABLEKS                       R40 R39 K84 ["scrollBarVisibility"]
      404 GETIMPORT                        R40 K89 [Enum.ScrollingDirection.Y]
      406 SETTABLEKS                       R40 R39 K85 ["ScrollingDirection"]
      408 SETTABLEKS                       R39 R38 K75 ["scroll"]
      410 SETTABLEKS                       R29 R38 K76 ["scrollingFrameRef"]
      412 SETTABLEKS                       R28 R38 K77 ["Visible"]
      414 MOVE                             R39 R4
      415 CALL                             R39 0 1
      416 SETTABLEKS                       R39 R38 K65 ["LayoutOrder"]
      418 DUPTABLE                         R39 K91 [{"ParameterNodeItemContainer"}]
      419 GETUPVAL                         R40 0
      420 GETTABLEKS                       R40 R40 K45 ["createElement"]
      422 GETUPVAL                         R41 4
      423 GETTABLEKS                       R41 R41 K46 ["View"]
      425 DUPTABLE                         R42 K93 [{["tag"] = "col size-full-0 auto-y"}]
      426 MOVE                             R43 R25
      427 CALL                             R40 3 1
      428 SETTABLEKS                       R40 R39 K90 ["ParameterNodeItemContainer"]
      430 CALL                             R36 3 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R36
      433 SETTABLEKS                       R36 R35 K61 ["ParameterPaneScrollView"]
      435 CALL                             R32 3 -1
      436 RETURN                           R32 -1
      437 GETUPVAL                         R32 0
      438 GETTABLEKS                       R32 R32 K45 ["createElement"]
      440 GETUPVAL                         R33 4
      441 GETTABLEKS                       R33 R33 K46 ["View"]
      443 DUPTABLE                         R34 K95 [{["tag"] = "auto-y", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      444 SETTABLEKS                       R27 R34 K49 ["Size"]
      446 GETUPVAL                         R35 6
      447 GETTABLEKS                       R35 R35 K54 ["PARAMETER_PANE_POSITION_OFFSET"]
      449 SETTABLEKS                       R35 R34 K50 ["Position"]
      451 GETTABLEKS                       R35 R0 K51 ["ZIndex"]
      453 SETTABLEKS                       R35 R34 K51 ["ZIndex"]
      455 DUPTABLE                         R35 K56 [{"affordance"}]
      456 GETUPVAL                         R36 4
      457 GETTABLEKS                       R36 R36 K18 ["Enums"]
      459 GETTABLEKS                       R36 R36 K57 ["StateLayerAffordance"]
      461 GETTABLEKS                       R36 R36 K58 ["None"]
      463 SETTABLEKS                       R36 R35 K55 ["affordance"]
      465 SETTABLEKS                       R35 R34 K52 ["stateLayer"]
      467 DUPTABLE                         R35 K98 [{"Content", "ResizeBarRight"}]
      468 GETUPVAL                         R36 0
      469 GETTABLEKS                       R36 R36 K45 ["createElement"]
      471 GETUPVAL                         R37 4
      472 GETTABLEKS                       R37 R37 K46 ["View"]
      474 DUPTABLE                         R38 K101 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      475 DUPTABLE                         R39 K56 [{"affordance"}]
      476 GETUPVAL                         R40 4
      477 GETTABLEKS                       R40 R40 K18 ["Enums"]
      479 GETTABLEKS                       R40 R40 K57 ["StateLayerAffordance"]
      481 GETTABLEKS                       R40 R40 K58 ["None"]
      483 SETTABLEKS                       R40 R39 K55 ["affordance"]
      485 SETTABLEKS                       R39 R38 K52 ["stateLayer"]
      487 DUPTABLE                         R39 K64 [{"MaxSize"}]
      488 SETTABLEKS                       R31 R39 K63 ["MaxSize"]
      490 SETTABLEKS                       R39 R38 K100 ["sizeConstraint"]
      492 DUPTABLE                         R39 K102 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      493 GETUPVAL                         R40 0
      494 GETTABLEKS                       R40 R40 K45 ["createElement"]
      496 GETUPVAL                         R41 12
      497 DUPTABLE                         R42 K71 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded", "readonly"}]
      498 MOVE                             R43 R4
      499 CALL                             R43 0 1
      500 SETTABLEKS                       R43 R42 K65 ["LayoutOrder"]
      502 SETTABLEKS                       R28 R42 K66 ["canExpand"]
      504 SETTABLEKS                       R6 R42 K67 ["expanded"]
      506 GETUPVAL                         R44 8
      507 JUMPIFNOT                        R44 ; [+2]
      508 LOADB                            R43 1
      509 JUMP                             ; [+1]
      510 NOT                              R43 R23
      511 SETTABLEKS                       R43 R42 K68 ["DEPRECATED_canAddParameter"]
      513 SETTABLEKS                       R7 R42 K69 ["setExpanded"]
      515 SETTABLEKS                       R3 R42 K70 ["readonly"]
      517 CALL                             R40 2 1
      518 SETTABLEKS                       R40 R39 K60 ["ParameterPaneHeader"]
      520 JUMPIFNOT                        R6 ; [+64]
      521 GETUPVAL                         R40 0
      522 GETTABLEKS                       R40 R40 K45 ["createElement"]
      524 GETUPVAL                         R41 4
      525 GETTABLEKS                       R41 R41 K72 ["ScrollView"]
      527 DUPTABLE                         R42 K78 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      528 GETIMPORT                        R43 K81 [Enum.AutomaticSize.Y]
      530 SETTABLEKS                       R43 R42 K74 ["AutomaticSize"]
      532 DUPTABLE                         R43 K86 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      533 GETIMPORT                        R44 K40 [UDim2.fromOffset]
      535 LOADN                            R45 0
      536 LOADN                            R46 0
      537 CALL                             R44 2 1
      538 SETTABLEKS                       R44 R43 K82 ["CanvasSize"]
      540 GETIMPORT                        R44 K81 [Enum.AutomaticSize.Y]
      542 SETTABLEKS                       R44 R43 K74 ["AutomaticSize"]
      544 GETIMPORT                        R44 K81 [Enum.AutomaticSize.Y]
      546 SETTABLEKS                       R44 R43 K83 ["AutomaticCanvasSize"]
      548 GETUPVAL                         R44 4
      549 GETTABLEKS                       R44 R44 K18 ["Enums"]
      551 GETTABLEKS                       R44 R44 K87 ["Visibility"]
      553 GETTABLEKS                       R44 R44 K88 ["Auto"]
      555 SETTABLEKS                       R44 R43 K84 ["scrollBarVisibility"]
      557 GETIMPORT                        R44 K89 [Enum.ScrollingDirection.Y]
      559 SETTABLEKS                       R44 R43 K85 ["ScrollingDirection"]
      561 SETTABLEKS                       R43 R42 K75 ["scroll"]
      563 SETTABLEKS                       R29 R42 K76 ["scrollingFrameRef"]
      565 SETTABLEKS                       R28 R42 K77 ["Visible"]
      567 MOVE                             R43 R4
      568 CALL                             R43 0 1
      569 SETTABLEKS                       R43 R42 K65 ["LayoutOrder"]
      571 DUPTABLE                         R43 K91 [{"ParameterNodeItemContainer"}]
      572 GETUPVAL                         R44 0
      573 GETTABLEKS                       R44 R44 K45 ["createElement"]
      575 GETUPVAL                         R45 4
      576 GETTABLEKS                       R45 R45 K46 ["View"]
      578 DUPTABLE                         R46 K93 [{["tag"] = "col size-full-0 auto-y"}]
      579 MOVE                             R47 R25
      580 CALL                             R44 3 1
      581 SETTABLEKS                       R44 R43 K90 ["ParameterNodeItemContainer"]
      583 CALL                             R40 3 1
      584 JUMP                             ; [+1]
      585 LOADNIL                          R40
      586 SETTABLEKS                       R40 R39 K61 ["ParameterPaneScrollView"]
      588 CALL                             R36 3 1
      589 SETTABLEKS                       R36 R35 K96 ["Content"]
      591 GETUPVAL                         R36 0
      592 GETTABLEKS                       R36 R36 K45 ["createElement"]
      594 GETUPVAL                         R37 4
      595 GETTABLEKS                       R37 R37 K46 ["View"]
      597 DUPTABLE                         R38 K105 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      598 GETTABLEKS                       R39 R5 K106 ["Color"]
      600 GETTABLEKS                       R39 R39 K107 ["Stroke"]
      602 GETTABLEKS                       R39 R39 K20 ["Default"]
      604 SETTABLEKS                       R39 R38 K103 ["backgroundStyle"]
      606 GETIMPORT                        R39 K108 [UDim2.new]
      608 LOADN                            R40 0
      609 LOADN                            R41 10
      610 LOADN                            R42 1
      611 LOADN                            R43 0
      612 CALL                             R39 4 1
      613 SETTABLEKS                       R39 R38 K49 ["Size"]
      615 GETIMPORT                        R39 K108 [UDim2.new]
      617 LOADN                            R40 1
      618 LOADN                            R41 -5
      619 LOADN                            R42 0
      620 LOADN                            R43 0
      621 CALL                             R39 4 1
      622 SETTABLEKS                       R39 R38 K50 ["Position"]
      624 SETTABLEKS                       R17 R38 K104 ["onStateChanged"]
      626 DUPTABLE                         R39 K56 [{"affordance"}]
      627 GETUPVAL                         R40 4
      628 GETTABLEKS                       R40 R40 K18 ["Enums"]
      630 GETTABLEKS                       R40 R40 K57 ["StateLayerAffordance"]
      632 GETTABLEKS                       R40 R40 K58 ["None"]
      634 SETTABLEKS                       R40 R39 K55 ["affordance"]
      636 SETTABLEKS                       R39 R38 K52 ["stateLayer"]
      638 DUPTABLE                         R39 K111 [{"Gradient", "DragDetector"}]
      639 GETUPVAL                         R40 0
      640 GETTABLEKS                       R40 R40 K45 ["createElement"]
      642 LOADK                            R41 K112 ["UIGradient"]
      643 DUPTABLE                         R42 K114 [{"Transparency"}]
      644 SETTABLEKS                       R22 R42 K113 ["Transparency"]
      646 CALL                             R40 2 1
      647 SETTABLEKS                       R40 R39 K109 ["Gradient"]
      649 GETUPVAL                         R40 0
      650 GETTABLEKS                       R40 R40 K45 ["createElement"]
      652 LOADK                            R41 K115 ["UIDragDetector"]
      653 NEWTABLE                         R42 8 0
      655 GETIMPORT                        R43 K118 [Enum.UIDragDetectorDragStyle.Scriptable]
      657 SETTABLEKS                       R43 R42 K119 ["DragStyle"]
      659 GETTABLEKS                       R43 R0 K35 ["canvasFrameRef"]
      661 GETTABLEKS                       R43 R43 K36 ["current"]
      663 SETTABLEKS                       R43 R42 K120 ["ReferenceUIInstance"]
      665 GETUPVAL                         R43 0
      666 GETTABLEKS                       R43 R43 K121 ["Event"]
      668 GETTABLEKS                       R43 R43 K122 ["DragStart"]
      670 SETTABLE                         R18 R42 R43
      671 GETUPVAL                         R43 0
      672 GETTABLEKS                       R43 R43 K121 ["Event"]
      674 GETTABLEKS                       R43 R43 K123 ["DragContinue"]
      676 SETTABLE                         R19 R42 R43
      677 GETUPVAL                         R43 0
      678 GETTABLEKS                       R43 R43 K121 ["Event"]
      680 GETTABLEKS                       R43 R43 K124 ["DragEnd"]
      682 SETTABLE                         R20 R42 R43
      683 CALL                             R40 2 1
      684 SETTABLEKS                       R40 R39 K110 ["DragDetector"]
      686 CALL                             R36 3 1
      687 SETTABLEKS                       R36 R35 K97 ["ResizeBarRight"]
      689 CALL                             R32 3 -1
      690 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAnimGraphUI_AllowNoParameters"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["GraphContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["NodeViewTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K13 ["Constants"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K14 ["ParameterPaneHeader"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K15 ["ParameterPaneItem"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Parent"]
       58 GETTABLEKS                       R9 R9 K16 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K8 ["Parent"]
       65 GETTABLEKS                       R10 R10 K17 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Parent"]
       72 GETTABLEKS                       R11 R11 K18 ["SignalsReact"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K20 ["useAbsoluteSize"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       86 GETTABLEKS                       R13 R13 K21 ["useOnStateChangedCursor"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       93 GETTABLEKS                       R14 R14 K22 ["usePluginSetting"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K6 ["Flags"]
      100 GETTABLEKS                       R15 R15 K23 ["getFFlagAnimGraphUIResizeParameterPane"]
      102 CALL                             R14 1 1
      103 DUPCLOSURE                       R15 K24 [PROTO_12]
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R6
      117 RETURN                           R15 1
