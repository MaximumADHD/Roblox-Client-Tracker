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
       67 DUPTABLE                         R12 K18 [{"LayoutOrder", "node"}]
       68 SETTABLEKS                       R7 R12 K16 ["LayoutOrder"]
       70 SETTABLEKS                       R8 R12 K17 ["node"]
       72 CALL                             R10 2 1
       73 SETTABLE                         R10 R3 R9
       74 FORGLOOP                         R4 2 ; [-14]
       76 RETURN                           R3 1

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
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["createNextOrder"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K6 ["Hooks"]
       22 GETTABLEKS                       R4 R4 K7 ["useTokens"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 5
       26 LOADK                            R6 K8 ["ParameterPaneExpanded"]
       27 LOADB                            R7 1
       28 GETIMPORT                        R8 K10 [tostring]
       30 DUPCLOSURE                       R9 K11 [PROTO_0]
       31 CALL                             R5 4 2
       32 GETUPVAL                         R7 5
       33 LOADK                            R8 K12 ["ParameterPaneWidth"]
       34 GETUPVAL                         R9 6
       35 GETTABLEKS                       R9 R9 K13 ["PARAMETER_PANE_WIDTH"]
       37 GETIMPORT                        R10 K10 [tostring]
       39 DUPCLOSURE                       R11 K14 [PROTO_1]
       40 CAPTURE                          UPVAL U6
       41 CALL                             R7 4 2
       42 GETUPVAL                         R9 7
       43 LOADK                            R10 K15 ["SizeEW"]
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K16 ["useState"]
       48 LOADN                            R11 0
       49 CALL                             R10 1 2
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R12 R12 K16 ["useState"]
       53 LOADB                            R13 0
       54 CALL                             R12 1 2
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K16 ["useState"]
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R15 R15 K17 ["Enums"]
       61 GETTABLEKS                       R15 R15 K18 ["ControlState"]
       63 GETTABLEKS                       R15 R15 K19 ["Default"]
       65 CALL                             R14 1 2
       66 GETUPVAL                         R16 0
       67 GETTABLEKS                       R16 R16 K20 ["useCallback"]
       69 NEWCLOSURE                       R17 P2
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R12
       74 NEWTABLE                         R18 0 3
       76 MOVE                             R19 R15
       77 MOVE                             R20 R9
       78 MOVE                             R21 R12
       79 SETLIST                          R18 R19 3 [1]
       81 CALL                             R16 2 1
       82 GETUPVAL                         R17 0
       83 GETTABLEKS                       R17 R17 K20 ["useCallback"]
       85 NEWCLOSURE                       R18 P3
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R9
       90 CAPTURE                          UPVAL U4
       91 NEWTABLE                         R19 0 4
       93 MOVE                             R20 R11
       94 MOVE                             R21 R13
       95 MOVE                             R22 R9
       96 MOVE                             R23 R7
       97 SETLIST                          R19 R20 4 [1]
       99 CALL                             R17 2 1
      100 GETUPVAL                         R18 0
      101 GETTABLEKS                       R18 R18 K20 ["useCallback"]
      103 NEWCLOSURE                       R19 P4
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U6
      107 NEWTABLE                         R20 0 2
      109 MOVE                             R21 R10
      110 MOVE                             R22 R8
      111 SETLIST                          R20 R21 2 [1]
      113 CALL                             R18 2 1
      114 GETUPVAL                         R19 0
      115 GETTABLEKS                       R19 R19 K20 ["useCallback"]
      117 NEWCLOSURE                       R20 P5
      118 CAPTURE                          VAL R9
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R15
      122 NEWTABLE                         R21 0 3
      124 MOVE                             R22 R13
      125 MOVE                             R23 R15
      126 MOVE                             R24 R9
      127 SETLIST                          R21 R22 3 [1]
      129 CALL                             R19 2 1
      130 LOADB                            R20 1
      131 GETUPVAL                         R21 4
      132 GETTABLEKS                       R21 R21 K17 ["Enums"]
      134 GETTABLEKS                       R21 R21 K18 ["ControlState"]
      136 GETTABLEKS                       R21 R21 K21 ["Hover"]
      138 JUMPIFEQ                         R14 R21 ; [+12]
      140 GETUPVAL                         R21 4
      141 GETTABLEKS                       R21 R21 K17 ["Enums"]
      143 GETTABLEKS                       R21 R21 K18 ["ControlState"]
      145 GETTABLEKS                       R21 R21 K22 ["Pressed"]
      147 JUMPIFEQ                         R14 R21 ; [+2]
      149 LOADB                            R20 0 +1
      150 LOADB                            R20 1
      151 JUMPIFNOT                        R20 ; [+28]
      152 GETIMPORT                        R21 K25 [NumberSequence.new]
      154 NEWTABLE                         R22 0 4
      156 GETIMPORT                        R23 K27 [NumberSequenceKeypoint.new]
      158 LOADN                            R24 0
      159 LOADN                            R25 1
      160 CALL                             R23 2 1
      161 GETIMPORT                        R24 K27 [NumberSequenceKeypoint.new]
      163 LOADK                            R25 K28 [0.5]
      164 LOADK                            R26 K29 [0.25]
      165 CALL                             R24 2 1
      166 GETIMPORT                        R25 K27 [NumberSequenceKeypoint.new]
      168 LOADK                            R26 K30 [0.5001]
      169 LOADN                            R27 1
      170 CALL                             R25 2 1
      171 GETIMPORT                        R26 K27 [NumberSequenceKeypoint.new]
      173 LOADN                            R27 1
      174 LOADN                            R28 1
      175 CALL                             R26 2 -1
      176 SETLIST                          R22 R23 -1 [1]
      178 CALL                             R21 1 1
      179 JUMP                             ; [+4]
      180 GETIMPORT                        R21 K25 [NumberSequence.new]
      182 LOADN                            R22 1
      183 CALL                             R21 1 1
      184 GETUPVAL                         R23 8
      185 JUMPIFNOT                        R23 ; [+2]
      186 LOADNIL                          R22
      187 JUMP                             ; [+11]
      188 GETUPVAL                         R22 0
      189 GETTABLEKS                       R22 R22 K31 ["useMemo"]
      191 NEWCLOSURE                       R23 P6
      192 CAPTURE                          VAL R2
      193 NEWTABLE                         R24 0 1
      195 MOVE                             R25 R2
      196 SETLIST                          R24 R25 1 [1]
      198 CALL                             R22 2 1
      199 GETUPVAL                         R23 9
      200 CALL                             R23 0 1
      201 GETUPVAL                         R24 0
      202 GETTABLEKS                       R24 R24 K32 ["useEffect"]
      204 NEWCLOSURE                       R25 P7
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R0
      207 NEWTABLE                         R26 0 2
      209 GETTABLEKS                       R27 R23 K33 ["setFrame"]
      211 GETTABLEKS                       R28 R0 K34 ["canvasFrameRef"]
      213 GETTABLEKS                       R28 R28 K35 ["current"]
      215 SETLIST                          R26 R27 2 [1]
      217 CALL                             R24 2 0
      218 GETUPVAL                         R24 0
      219 GETTABLEKS                       R24 R24 K31 ["useMemo"]
      221 NEWCLOSURE                       R25 P8
      222 CAPTURE                          VAL R2
      223 CAPTURE                          UPVAL U0
      224 CAPTURE                          UPVAL U10
      225 NEWTABLE                         R26 0 1
      227 MOVE                             R27 R2
      228 SETLIST                          R26 R27 1 [1]
      230 CALL                             R24 2 1
      231 GETUPVAL                         R25 4
      232 GETTABLEKS                       R25 R25 K6 ["Hooks"]
      234 GETTABLEKS                       R25 R25 K36 ["useScaledValue"]
      236 GETUPVAL                         R27 11
      237 CALL                             R27 0 1
      238 JUMPIFNOT                        R27 ; [+2]
      239 MOVE                             R26 R7
      240 JUMP                             ; [+3]
      241 GETUPVAL                         R26 6
      242 GETTABLEKS                       R26 R26 K13 ["PARAMETER_PANE_WIDTH"]
      244 CALL                             R25 1 1
      245 GETIMPORT                        R26 K39 [UDim2.fromOffset]
      247 MOVE                             R27 R25
      248 LOADN                            R28 0
      249 CALL                             R26 2 1
      250 GETIMPORT                        R28 K41 [next]
      252 MOVE                             R29 R24
      253 CALL                             R28 1 1
      254 JUMPIFNOTEQKNIL                  R28 ; [+2]
      256 LOADB                            R27 0 +1
      257 LOADB                            R27 1
      258 GETUPVAL                         R28 0
      259 GETTABLEKS                       R28 R28 K20 ["useCallback"]
      261 DUPCLOSURE                       R29 K42 [PROTO_10]
      262 NEWTABLE                         R30 0 0
      264 CALL                             R28 2 1
      265 GETUPVAL                         R29 2
      266 GETTABLEKS                       R29 R29 K2 ["useSignalState"]
      268 GETTABLEKS                       R30 R23 K43 ["observeAbsoluteSize"]
      270 CALL                             R29 1 1
      271 GETUPVAL                         R30 0
      272 GETTABLEKS                       R30 R30 K31 ["useMemo"]
      274 NEWCLOSURE                       R31 P10
      275 CAPTURE                          VAL R29
      276 CAPTURE                          UPVAL U6
      277 NEWTABLE                         R32 0 1
      279 MOVE                             R33 R29
      280 SETLIST                          R32 R33 1 [1]
      282 CALL                             R30 2 1
      283 GETUPVAL                         R31 8
      284 JUMPIF                           R31 ; [+3]
      285 JUMPIFNOT                        R22 ; [+2]
      286 LOADNIL                          R31
      287 RETURN                           R31 1
      288 GETUPVAL                         R31 11
      289 CALL                             R31 0 1
      290 JUMPIF                           R31 ; [+132]
      291 GETUPVAL                         R31 0
      292 GETTABLEKS                       R31 R31 K44 ["createElement"]
      294 GETUPVAL                         R32 4
      295 GETTABLEKS                       R32 R32 K45 ["View"]
      297 DUPTABLE                         R33 K51 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["stateLayer"]}]
      298 SETTABLEKS                       R26 R33 K48 ["Size"]
      300 GETUPVAL                         R34 6
      301 GETTABLEKS                       R34 R34 K52 ["PARAMETER_PANE_POSITION_OFFSET"]
      303 SETTABLEKS                       R34 R33 K49 ["Position"]
      305 DUPTABLE                         R34 K54 [{"affordance"}]
      306 GETUPVAL                         R35 4
      307 GETTABLEKS                       R35 R35 K17 ["Enums"]
      309 GETTABLEKS                       R35 R35 K55 ["StateLayerAffordance"]
      311 GETTABLEKS                       R35 R35 K56 ["None"]
      313 SETTABLEKS                       R35 R34 K53 ["affordance"]
      315 SETTABLEKS                       R34 R33 K50 ["stateLayer"]
      317 DUPTABLE                         R34 K60 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      318 GETUPVAL                         R35 0
      319 GETTABLEKS                       R35 R35 K44 ["createElement"]
      321 LOADK                            R36 K57 ["UISizeConstraint"]
      322 DUPTABLE                         R37 K62 [{"MaxSize"}]
      323 SETTABLEKS                       R30 R37 K61 ["MaxSize"]
      325 CALL                             R35 2 1
      326 SETTABLEKS                       R35 R34 K57 ["UISizeConstraint"]
      328 GETUPVAL                         R35 0
      329 GETTABLEKS                       R35 R35 K44 ["createElement"]
      331 GETUPVAL                         R36 12
      332 DUPTABLE                         R37 K68 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      333 MOVE                             R38 R3
      334 CALL                             R38 0 1
      335 SETTABLEKS                       R38 R37 K63 ["LayoutOrder"]
      337 SETTABLEKS                       R27 R37 K64 ["canExpand"]
      339 SETTABLEKS                       R5 R37 K65 ["expanded"]
      341 GETUPVAL                         R39 8
      342 JUMPIFNOT                        R39 ; [+2]
      343 LOADB                            R38 1
      344 JUMP                             ; [+1]
      345 NOT                              R38 R22
      346 SETTABLEKS                       R38 R37 K66 ["DEPRECATED_canAddParameter"]
      348 SETTABLEKS                       R6 R37 K67 ["setExpanded"]
      350 CALL                             R35 2 1
      351 SETTABLEKS                       R35 R34 K58 ["ParameterPaneHeader"]
      353 JUMPIFNOT                        R5 ; [+64]
      354 GETUPVAL                         R35 0
      355 GETTABLEKS                       R35 R35 K44 ["createElement"]
      357 GETUPVAL                         R36 4
      358 GETTABLEKS                       R36 R36 K69 ["ScrollView"]
      360 DUPTABLE                         R37 K75 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      361 GETIMPORT                        R38 K78 [Enum.AutomaticSize.Y]
      363 SETTABLEKS                       R38 R37 K71 ["AutomaticSize"]
      365 DUPTABLE                         R38 K83 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      366 GETIMPORT                        R39 K39 [UDim2.fromOffset]
      368 LOADN                            R40 0
      369 LOADN                            R41 0
      370 CALL                             R39 2 1
      371 SETTABLEKS                       R39 R38 K79 ["CanvasSize"]
      373 GETIMPORT                        R39 K78 [Enum.AutomaticSize.Y]
      375 SETTABLEKS                       R39 R38 K71 ["AutomaticSize"]
      377 GETIMPORT                        R39 K78 [Enum.AutomaticSize.Y]
      379 SETTABLEKS                       R39 R38 K80 ["AutomaticCanvasSize"]
      381 GETUPVAL                         R39 4
      382 GETTABLEKS                       R39 R39 K17 ["Enums"]
      384 GETTABLEKS                       R39 R39 K84 ["Visibility"]
      386 GETTABLEKS                       R39 R39 K85 ["Auto"]
      388 SETTABLEKS                       R39 R38 K81 ["scrollBarVisibility"]
      390 GETIMPORT                        R39 K86 [Enum.ScrollingDirection.Y]
      392 SETTABLEKS                       R39 R38 K82 ["ScrollingDirection"]
      394 SETTABLEKS                       R38 R37 K72 ["scroll"]
      396 SETTABLEKS                       R28 R37 K73 ["scrollingFrameRef"]
      398 SETTABLEKS                       R27 R37 K74 ["Visible"]
      400 MOVE                             R38 R3
      401 CALL                             R38 0 1
      402 SETTABLEKS                       R38 R37 K63 ["LayoutOrder"]
      404 DUPTABLE                         R38 K88 [{"ParameterNodeItemContainer"}]
      405 GETUPVAL                         R39 0
      406 GETTABLEKS                       R39 R39 K44 ["createElement"]
      408 GETUPVAL                         R40 4
      409 GETTABLEKS                       R40 R40 K45 ["View"]
      411 DUPTABLE                         R41 K90 [{["tag"] = "col size-full-0 auto-y"}]
      412 MOVE                             R42 R24
      413 CALL                             R39 3 1
      414 SETTABLEKS                       R39 R38 K87 ["ParameterNodeItemContainer"]
      416 CALL                             R35 3 1
      417 JUMP                             ; [+1]
      418 LOADNIL                          R35
      419 SETTABLEKS                       R35 R34 K59 ["ParameterPaneScrollView"]
      421 CALL                             R31 3 -1
      422 RETURN                           R31 -1
      423 GETUPVAL                         R31 0
      424 GETTABLEKS                       R31 R31 K44 ["createElement"]
      426 GETUPVAL                         R32 4
      427 GETTABLEKS                       R32 R32 K45 ["View"]
      429 DUPTABLE                         R33 K92 [{["tag"] = "auto-y", ["Size"], ["Position"], ["stateLayer"]}]
      430 SETTABLEKS                       R26 R33 K48 ["Size"]
      432 GETUPVAL                         R34 6
      433 GETTABLEKS                       R34 R34 K52 ["PARAMETER_PANE_POSITION_OFFSET"]
      435 SETTABLEKS                       R34 R33 K49 ["Position"]
      437 DUPTABLE                         R34 K54 [{"affordance"}]
      438 GETUPVAL                         R35 4
      439 GETTABLEKS                       R35 R35 K17 ["Enums"]
      441 GETTABLEKS                       R35 R35 K55 ["StateLayerAffordance"]
      443 GETTABLEKS                       R35 R35 K56 ["None"]
      445 SETTABLEKS                       R35 R34 K53 ["affordance"]
      447 SETTABLEKS                       R34 R33 K50 ["stateLayer"]
      449 DUPTABLE                         R34 K95 [{"Content", "ResizeBarRight"}]
      450 GETUPVAL                         R35 0
      451 GETTABLEKS                       R35 R35 K44 ["createElement"]
      453 GETUPVAL                         R36 4
      454 GETTABLEKS                       R36 R36 K45 ["View"]
      456 DUPTABLE                         R37 K98 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      457 DUPTABLE                         R38 K54 [{"affordance"}]
      458 GETUPVAL                         R39 4
      459 GETTABLEKS                       R39 R39 K17 ["Enums"]
      461 GETTABLEKS                       R39 R39 K55 ["StateLayerAffordance"]
      463 GETTABLEKS                       R39 R39 K56 ["None"]
      465 SETTABLEKS                       R39 R38 K53 ["affordance"]
      467 SETTABLEKS                       R38 R37 K50 ["stateLayer"]
      469 DUPTABLE                         R38 K62 [{"MaxSize"}]
      470 SETTABLEKS                       R30 R38 K61 ["MaxSize"]
      472 SETTABLEKS                       R38 R37 K97 ["sizeConstraint"]
      474 DUPTABLE                         R38 K99 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      475 GETUPVAL                         R39 0
      476 GETTABLEKS                       R39 R39 K44 ["createElement"]
      478 GETUPVAL                         R40 12
      479 DUPTABLE                         R41 K68 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      480 MOVE                             R42 R3
      481 CALL                             R42 0 1
      482 SETTABLEKS                       R42 R41 K63 ["LayoutOrder"]
      484 SETTABLEKS                       R27 R41 K64 ["canExpand"]
      486 SETTABLEKS                       R5 R41 K65 ["expanded"]
      488 GETUPVAL                         R43 8
      489 JUMPIFNOT                        R43 ; [+2]
      490 LOADB                            R42 1
      491 JUMP                             ; [+1]
      492 NOT                              R42 R22
      493 SETTABLEKS                       R42 R41 K66 ["DEPRECATED_canAddParameter"]
      495 SETTABLEKS                       R6 R41 K67 ["setExpanded"]
      497 CALL                             R39 2 1
      498 SETTABLEKS                       R39 R38 K58 ["ParameterPaneHeader"]
      500 JUMPIFNOT                        R5 ; [+64]
      501 GETUPVAL                         R39 0
      502 GETTABLEKS                       R39 R39 K44 ["createElement"]
      504 GETUPVAL                         R40 4
      505 GETTABLEKS                       R40 R40 K69 ["ScrollView"]
      507 DUPTABLE                         R41 K75 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      508 GETIMPORT                        R42 K78 [Enum.AutomaticSize.Y]
      510 SETTABLEKS                       R42 R41 K71 ["AutomaticSize"]
      512 DUPTABLE                         R42 K83 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      513 GETIMPORT                        R43 K39 [UDim2.fromOffset]
      515 LOADN                            R44 0
      516 LOADN                            R45 0
      517 CALL                             R43 2 1
      518 SETTABLEKS                       R43 R42 K79 ["CanvasSize"]
      520 GETIMPORT                        R43 K78 [Enum.AutomaticSize.Y]
      522 SETTABLEKS                       R43 R42 K71 ["AutomaticSize"]
      524 GETIMPORT                        R43 K78 [Enum.AutomaticSize.Y]
      526 SETTABLEKS                       R43 R42 K80 ["AutomaticCanvasSize"]
      528 GETUPVAL                         R43 4
      529 GETTABLEKS                       R43 R43 K17 ["Enums"]
      531 GETTABLEKS                       R43 R43 K84 ["Visibility"]
      533 GETTABLEKS                       R43 R43 K85 ["Auto"]
      535 SETTABLEKS                       R43 R42 K81 ["scrollBarVisibility"]
      537 GETIMPORT                        R43 K86 [Enum.ScrollingDirection.Y]
      539 SETTABLEKS                       R43 R42 K82 ["ScrollingDirection"]
      541 SETTABLEKS                       R42 R41 K72 ["scroll"]
      543 SETTABLEKS                       R28 R41 K73 ["scrollingFrameRef"]
      545 SETTABLEKS                       R27 R41 K74 ["Visible"]
      547 MOVE                             R42 R3
      548 CALL                             R42 0 1
      549 SETTABLEKS                       R42 R41 K63 ["LayoutOrder"]
      551 DUPTABLE                         R42 K88 [{"ParameterNodeItemContainer"}]
      552 GETUPVAL                         R43 0
      553 GETTABLEKS                       R43 R43 K44 ["createElement"]
      555 GETUPVAL                         R44 4
      556 GETTABLEKS                       R44 R44 K45 ["View"]
      558 DUPTABLE                         R45 K90 [{["tag"] = "col size-full-0 auto-y"}]
      559 MOVE                             R46 R24
      560 CALL                             R43 3 1
      561 SETTABLEKS                       R43 R42 K87 ["ParameterNodeItemContainer"]
      563 CALL                             R39 3 1
      564 JUMP                             ; [+1]
      565 LOADNIL                          R39
      566 SETTABLEKS                       R39 R38 K59 ["ParameterPaneScrollView"]
      568 CALL                             R35 3 1
      569 SETTABLEKS                       R35 R34 K93 ["Content"]
      571 GETUPVAL                         R35 0
      572 GETTABLEKS                       R35 R35 K44 ["createElement"]
      574 GETUPVAL                         R36 4
      575 GETTABLEKS                       R36 R36 K45 ["View"]
      577 DUPTABLE                         R37 K102 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      578 GETTABLEKS                       R38 R4 K103 ["Color"]
      580 GETTABLEKS                       R38 R38 K104 ["Stroke"]
      582 GETTABLEKS                       R38 R38 K19 ["Default"]
      584 SETTABLEKS                       R38 R37 K100 ["backgroundStyle"]
      586 GETIMPORT                        R38 K105 [UDim2.new]
      588 LOADN                            R39 0
      589 LOADN                            R40 10
      590 LOADN                            R41 1
      591 LOADN                            R42 0
      592 CALL                             R38 4 1
      593 SETTABLEKS                       R38 R37 K48 ["Size"]
      595 GETIMPORT                        R38 K105 [UDim2.new]
      597 LOADN                            R39 1
      598 LOADN                            R40 -5
      599 LOADN                            R41 0
      600 LOADN                            R42 0
      601 CALL                             R38 4 1
      602 SETTABLEKS                       R38 R37 K49 ["Position"]
      604 SETTABLEKS                       R16 R37 K101 ["onStateChanged"]
      606 DUPTABLE                         R38 K54 [{"affordance"}]
      607 GETUPVAL                         R39 4
      608 GETTABLEKS                       R39 R39 K17 ["Enums"]
      610 GETTABLEKS                       R39 R39 K55 ["StateLayerAffordance"]
      612 GETTABLEKS                       R39 R39 K56 ["None"]
      614 SETTABLEKS                       R39 R38 K53 ["affordance"]
      616 SETTABLEKS                       R38 R37 K50 ["stateLayer"]
      618 DUPTABLE                         R38 K108 [{"Gradient", "DragDetector"}]
      619 GETUPVAL                         R39 0
      620 GETTABLEKS                       R39 R39 K44 ["createElement"]
      622 LOADK                            R40 K109 ["UIGradient"]
      623 DUPTABLE                         R41 K111 [{"Transparency"}]
      624 SETTABLEKS                       R21 R41 K110 ["Transparency"]
      626 CALL                             R39 2 1
      627 SETTABLEKS                       R39 R38 K106 ["Gradient"]
      629 GETUPVAL                         R39 0
      630 GETTABLEKS                       R39 R39 K44 ["createElement"]
      632 LOADK                            R40 K112 ["UIDragDetector"]
      633 NEWTABLE                         R41 8 0
      635 GETIMPORT                        R42 K115 [Enum.UIDragDetectorDragStyle.Scriptable]
      637 SETTABLEKS                       R42 R41 K116 ["DragStyle"]
      639 GETTABLEKS                       R42 R0 K34 ["canvasFrameRef"]
      641 GETTABLEKS                       R42 R42 K35 ["current"]
      643 SETTABLEKS                       R42 R41 K117 ["ReferenceUIInstance"]
      645 GETUPVAL                         R42 0
      646 GETTABLEKS                       R42 R42 K118 ["Event"]
      648 GETTABLEKS                       R42 R42 K119 ["DragStart"]
      650 SETTABLE                         R17 R41 R42
      651 GETUPVAL                         R42 0
      652 GETTABLEKS                       R42 R42 K118 ["Event"]
      654 GETTABLEKS                       R42 R42 K120 ["DragContinue"]
      656 SETTABLE                         R18 R41 R42
      657 GETUPVAL                         R42 0
      658 GETTABLEKS                       R42 R42 K118 ["Event"]
      660 GETTABLEKS                       R42 R42 K121 ["DragEnd"]
      662 SETTABLE                         R19 R41 R42
      663 CALL                             R39 2 1
      664 SETTABLEKS                       R39 R38 K107 ["DragDetector"]
      666 CALL                             R35 3 1
      667 SETTABLEKS                       R35 R34 K94 ["ResizeBarRight"]
      669 CALL                             R31 3 -1
      670 RETURN                           R31 -1

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
