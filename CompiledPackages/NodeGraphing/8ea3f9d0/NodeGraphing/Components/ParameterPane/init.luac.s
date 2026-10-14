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
       77 DUPTABLE                         R12 K19 [{"LayoutOrder", "node"}]
       78 SETTABLEKS                       R7 R12 K17 ["LayoutOrder"]
       80 SETTABLEKS                       R8 R12 K18 ["node"]
       82 CALL                             R10 2 1
       83 SETTABLE                         R10 R3 R9
       84 FORGLOOP                         R4 2 ; [-14]
       86 RETURN                           R3 1

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
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K1 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K5 ["createNextOrder"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K6 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K7 ["useTokens"]
       31 CALL                             R5 0 1
       32 GETUPVAL                         R7 6
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+7]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K2 ["useSignalState"]
       38 GETTABLEKS                       R7 R3 K8 ["observeParameters"]
       40 CALL                             R6 1 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R6
       43 GETUPVAL                         R7 7
       44 LOADK                            R8 K9 ["ParameterPaneExpanded"]
       45 LOADB                            R9 1
       46 GETIMPORT                        R10 K11 [tostring]
       48 DUPCLOSURE                       R11 K12 [PROTO_0]
       49 CALL                             R7 4 2
       50 GETUPVAL                         R9 7
       51 LOADK                            R10 K13 ["ParameterPaneWidth"]
       52 GETUPVAL                         R11 8
       53 GETTABLEKS                       R11 R11 K14 ["PARAMETER_PANE_WIDTH"]
       55 GETIMPORT                        R12 K11 [tostring]
       57 DUPCLOSURE                       R13 K15 [PROTO_1]
       58 CAPTURE                          UPVAL U8
       59 CALL                             R9 4 2
       60 GETUPVAL                         R11 9
       61 LOADK                            R12 K16 ["SizeEW"]
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R12 R12 K17 ["useState"]
       66 LOADN                            R13 0
       67 CALL                             R12 1 2
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K17 ["useState"]
       71 LOADB                            R15 0
       72 CALL                             R14 1 2
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R16 R16 K17 ["useState"]
       76 GETUPVAL                         R17 5
       77 GETTABLEKS                       R17 R17 K18 ["Enums"]
       79 GETTABLEKS                       R17 R17 K19 ["ControlState"]
       81 GETTABLEKS                       R17 R17 K20 ["Default"]
       83 CALL                             R16 1 2
       84 GETUPVAL                         R18 0
       85 GETTABLEKS                       R18 R18 K21 ["useCallback"]
       87 NEWCLOSURE                       R19 P2
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R14
       92 NEWTABLE                         R20 0 3
       94 MOVE                             R21 R17
       95 MOVE                             R22 R11
       96 MOVE                             R23 R14
       97 SETLIST                          R20 R21 3 [1]
       99 CALL                             R18 2 1
      100 GETUPVAL                         R19 0
      101 GETTABLEKS                       R19 R19 K21 ["useCallback"]
      103 NEWCLOSURE                       R20 P3
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R11
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R21 0 4
      111 MOVE                             R22 R13
      112 MOVE                             R23 R15
      113 MOVE                             R24 R11
      114 MOVE                             R25 R9
      115 SETLIST                          R21 R22 4 [1]
      117 CALL                             R19 2 1
      118 GETUPVAL                         R20 0
      119 GETTABLEKS                       R20 R20 K21 ["useCallback"]
      121 NEWCLOSURE                       R21 P4
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R10
      124 CAPTURE                          UPVAL U8
      125 NEWTABLE                         R22 0 2
      127 MOVE                             R23 R12
      128 MOVE                             R24 R10
      129 SETLIST                          R22 R23 2 [1]
      131 CALL                             R20 2 1
      132 GETUPVAL                         R21 0
      133 GETTABLEKS                       R21 R21 K21 ["useCallback"]
      135 NEWCLOSURE                       R22 P5
      136 CAPTURE                          VAL R11
      137 CAPTURE                          UPVAL U5
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R17
      140 NEWTABLE                         R23 0 3
      142 MOVE                             R24 R15
      143 MOVE                             R25 R17
      144 MOVE                             R26 R11
      145 SETLIST                          R23 R24 3 [1]
      147 CALL                             R21 2 1
      148 LOADB                            R22 1
      149 GETUPVAL                         R23 5
      150 GETTABLEKS                       R23 R23 K18 ["Enums"]
      152 GETTABLEKS                       R23 R23 K19 ["ControlState"]
      154 GETTABLEKS                       R23 R23 K22 ["Hover"]
      156 JUMPIFEQ                         R16 R23 ; [+12]
      158 GETUPVAL                         R23 5
      159 GETTABLEKS                       R23 R23 K18 ["Enums"]
      161 GETTABLEKS                       R23 R23 K19 ["ControlState"]
      163 GETTABLEKS                       R23 R23 K23 ["Pressed"]
      165 JUMPIFEQ                         R16 R23 ; [+2]
      167 LOADB                            R22 0 +1
      168 LOADB                            R22 1
      169 JUMPIFNOT                        R22 ; [+28]
      170 GETIMPORT                        R23 K26 [NumberSequence.new]
      172 NEWTABLE                         R24 0 4
      174 GETIMPORT                        R25 K28 [NumberSequenceKeypoint.new]
      176 LOADN                            R26 0
      177 LOADN                            R27 1
      178 CALL                             R25 2 1
      179 GETIMPORT                        R26 K28 [NumberSequenceKeypoint.new]
      181 LOADK                            R27 K29 [0.5]
      182 LOADK                            R28 K30 [0.25]
      183 CALL                             R26 2 1
      184 GETIMPORT                        R27 K28 [NumberSequenceKeypoint.new]
      186 LOADK                            R28 K31 [0.5001]
      187 LOADN                            R29 1
      188 CALL                             R27 2 1
      189 GETIMPORT                        R28 K28 [NumberSequenceKeypoint.new]
      191 LOADN                            R29 1
      192 LOADN                            R30 1
      193 CALL                             R28 2 -1
      194 SETLIST                          R24 R25 -1 [1]
      196 CALL                             R23 1 1
      197 JUMP                             ; [+4]
      198 GETIMPORT                        R23 K26 [NumberSequence.new]
      200 LOADN                            R24 1
      201 CALL                             R23 1 1
      202 GETUPVAL                         R25 10
      203 JUMPIFNOT                        R25 ; [+2]
      204 LOADNIL                          R24
      205 JUMP                             ; [+11]
      206 GETUPVAL                         R24 0
      207 GETTABLEKS                       R24 R24 K32 ["useMemo"]
      209 NEWCLOSURE                       R25 P6
      210 CAPTURE                          VAL R2
      211 NEWTABLE                         R26 0 1
      213 MOVE                             R27 R2
      214 SETLIST                          R26 R27 1 [1]
      216 CALL                             R24 2 1
      217 GETUPVAL                         R25 11
      218 CALL                             R25 0 1
      219 GETUPVAL                         R26 0
      220 GETTABLEKS                       R26 R26 K33 ["useEffect"]
      222 NEWCLOSURE                       R27 P7
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R0
      225 NEWTABLE                         R28 0 2
      227 GETTABLEKS                       R29 R25 K34 ["setFrame"]
      229 GETTABLEKS                       R30 R0 K35 ["canvasFrameRef"]
      231 GETTABLEKS                       R30 R30 K36 ["current"]
      233 SETLIST                          R28 R29 2 [1]
      235 CALL                             R26 2 0
      236 GETUPVAL                         R26 0
      237 GETTABLEKS                       R26 R26 K32 ["useMemo"]
      239 NEWCLOSURE                       R27 P8
      240 CAPTURE                          VAL R2
      241 CAPTURE                          UPVAL U12
      242 CAPTURE                          UPVAL U13
      243 CAPTURE                          UPVAL U0
      244 CAPTURE                          UPVAL U14
      245 NEWTABLE                         R28 0 2
      247 MOVE                             R29 R2
      248 MOVE                             R30 R6
      249 SETLIST                          R28 R29 2 [1]
      251 CALL                             R26 2 1
      252 GETUPVAL                         R27 5
      253 GETTABLEKS                       R27 R27 K6 ["Hooks"]
      255 GETTABLEKS                       R27 R27 K37 ["useScaledValue"]
      257 GETUPVAL                         R29 15
      258 CALL                             R29 0 1
      259 JUMPIFNOT                        R29 ; [+2]
      260 MOVE                             R28 R9
      261 JUMP                             ; [+3]
      262 GETUPVAL                         R28 8
      263 GETTABLEKS                       R28 R28 K14 ["PARAMETER_PANE_WIDTH"]
      265 CALL                             R27 1 1
      266 GETIMPORT                        R28 K40 [UDim2.fromOffset]
      268 MOVE                             R29 R27
      269 LOADN                            R30 0
      270 CALL                             R28 2 1
      271 GETIMPORT                        R30 K42 [next]
      273 MOVE                             R31 R26
      274 CALL                             R30 1 1
      275 JUMPIFNOTEQKNIL                  R30 ; [+2]
      277 LOADB                            R29 0 +1
      278 LOADB                            R29 1
      279 GETUPVAL                         R30 0
      280 GETTABLEKS                       R30 R30 K21 ["useCallback"]
      282 DUPCLOSURE                       R31 K43 [PROTO_10]
      283 NEWTABLE                         R32 0 0
      285 CALL                             R30 2 1
      286 GETUPVAL                         R31 2
      287 GETTABLEKS                       R31 R31 K2 ["useSignalState"]
      289 GETTABLEKS                       R32 R25 K44 ["observeAbsoluteSize"]
      291 CALL                             R31 1 1
      292 GETUPVAL                         R32 0
      293 GETTABLEKS                       R32 R32 K32 ["useMemo"]
      295 NEWCLOSURE                       R33 P10
      296 CAPTURE                          VAL R31
      297 CAPTURE                          UPVAL U8
      298 NEWTABLE                         R34 0 1
      300 MOVE                             R35 R31
      301 SETLIST                          R34 R35 1 [1]
      303 CALL                             R32 2 1
      304 GETUPVAL                         R33 10
      305 JUMPIF                           R33 ; [+3]
      306 JUMPIFNOT                        R24 ; [+2]
      307 LOADNIL                          R33
      308 RETURN                           R33 1
      309 GETUPVAL                         R33 15
      310 CALL                             R33 0 1
      311 JUMPIF                           R33 ; [+136]
      312 GETUPVAL                         R33 0
      313 GETTABLEKS                       R33 R33 K45 ["createElement"]
      315 GETUPVAL                         R34 5
      316 GETTABLEKS                       R34 R34 K46 ["View"]
      318 DUPTABLE                         R35 K53 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      319 SETTABLEKS                       R28 R35 K49 ["Size"]
      321 GETUPVAL                         R36 8
      322 GETTABLEKS                       R36 R36 K54 ["PARAMETER_PANE_POSITION_OFFSET"]
      324 SETTABLEKS                       R36 R35 K50 ["Position"]
      326 GETTABLEKS                       R36 R0 K51 ["ZIndex"]
      328 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      330 DUPTABLE                         R36 K56 [{"affordance"}]
      331 GETUPVAL                         R37 5
      332 GETTABLEKS                       R37 R37 K18 ["Enums"]
      334 GETTABLEKS                       R37 R37 K57 ["StateLayerAffordance"]
      336 GETTABLEKS                       R37 R37 K58 ["None"]
      338 SETTABLEKS                       R37 R36 K55 ["affordance"]
      340 SETTABLEKS                       R36 R35 K52 ["stateLayer"]
      342 DUPTABLE                         R36 K62 [{"UISizeConstraint", "ParameterPaneHeader", "ParameterPaneScrollView"}]
      343 GETUPVAL                         R37 0
      344 GETTABLEKS                       R37 R37 K45 ["createElement"]
      346 LOADK                            R38 K59 ["UISizeConstraint"]
      347 DUPTABLE                         R39 K64 [{"MaxSize"}]
      348 SETTABLEKS                       R32 R39 K63 ["MaxSize"]
      350 CALL                             R37 2 1
      351 SETTABLEKS                       R37 R36 K59 ["UISizeConstraint"]
      353 GETUPVAL                         R37 0
      354 GETTABLEKS                       R37 R37 K45 ["createElement"]
      356 GETUPVAL                         R38 16
      357 DUPTABLE                         R39 K70 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      358 MOVE                             R40 R4
      359 CALL                             R40 0 1
      360 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      362 SETTABLEKS                       R29 R39 K66 ["canExpand"]
      364 SETTABLEKS                       R7 R39 K67 ["expanded"]
      366 GETUPVAL                         R41 10
      367 JUMPIFNOT                        R41 ; [+2]
      368 LOADB                            R40 1
      369 JUMP                             ; [+1]
      370 NOT                              R40 R24
      371 SETTABLEKS                       R40 R39 K68 ["DEPRECATED_canAddParameter"]
      373 SETTABLEKS                       R8 R39 K69 ["setExpanded"]
      375 CALL                             R37 2 1
      376 SETTABLEKS                       R37 R36 K60 ["ParameterPaneHeader"]
      378 JUMPIFNOT                        R7 ; [+64]
      379 GETUPVAL                         R37 0
      380 GETTABLEKS                       R37 R37 K45 ["createElement"]
      382 GETUPVAL                         R38 5
      383 GETTABLEKS                       R38 R38 K71 ["ScrollView"]
      385 DUPTABLE                         R39 K77 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      386 GETIMPORT                        R40 K80 [Enum.AutomaticSize.Y]
      388 SETTABLEKS                       R40 R39 K73 ["AutomaticSize"]
      390 DUPTABLE                         R40 K85 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      391 GETIMPORT                        R41 K40 [UDim2.fromOffset]
      393 LOADN                            R42 0
      394 LOADN                            R43 0
      395 CALL                             R41 2 1
      396 SETTABLEKS                       R41 R40 K81 ["CanvasSize"]
      398 GETIMPORT                        R41 K80 [Enum.AutomaticSize.Y]
      400 SETTABLEKS                       R41 R40 K73 ["AutomaticSize"]
      402 GETIMPORT                        R41 K80 [Enum.AutomaticSize.Y]
      404 SETTABLEKS                       R41 R40 K82 ["AutomaticCanvasSize"]
      406 GETUPVAL                         R41 5
      407 GETTABLEKS                       R41 R41 K18 ["Enums"]
      409 GETTABLEKS                       R41 R41 K86 ["Visibility"]
      411 GETTABLEKS                       R41 R41 K87 ["Auto"]
      413 SETTABLEKS                       R41 R40 K83 ["scrollBarVisibility"]
      415 GETIMPORT                        R41 K88 [Enum.ScrollingDirection.Y]
      417 SETTABLEKS                       R41 R40 K84 ["ScrollingDirection"]
      419 SETTABLEKS                       R40 R39 K74 ["scroll"]
      421 SETTABLEKS                       R30 R39 K75 ["scrollingFrameRef"]
      423 SETTABLEKS                       R29 R39 K76 ["Visible"]
      425 MOVE                             R40 R4
      426 CALL                             R40 0 1
      427 SETTABLEKS                       R40 R39 K65 ["LayoutOrder"]
      429 DUPTABLE                         R40 K90 [{"ParameterNodeItemContainer"}]
      430 GETUPVAL                         R41 0
      431 GETTABLEKS                       R41 R41 K45 ["createElement"]
      433 GETUPVAL                         R42 5
      434 GETTABLEKS                       R42 R42 K46 ["View"]
      436 DUPTABLE                         R43 K92 [{["tag"] = "col size-full-0 auto-y"}]
      437 MOVE                             R44 R26
      438 CALL                             R41 3 1
      439 SETTABLEKS                       R41 R40 K89 ["ParameterNodeItemContainer"]
      441 CALL                             R37 3 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R37
      444 SETTABLEKS                       R37 R36 K61 ["ParameterPaneScrollView"]
      446 CALL                             R33 3 -1
      447 RETURN                           R33 -1
      448 GETUPVAL                         R33 0
      449 GETTABLEKS                       R33 R33 K45 ["createElement"]
      451 GETUPVAL                         R34 5
      452 GETTABLEKS                       R34 R34 K46 ["View"]
      454 DUPTABLE                         R35 K94 [{["tag"] = "auto-y", ["Size"], ["Position"], ["ZIndex"], ["stateLayer"]}]
      455 SETTABLEKS                       R28 R35 K49 ["Size"]
      457 GETUPVAL                         R36 8
      458 GETTABLEKS                       R36 R36 K54 ["PARAMETER_PANE_POSITION_OFFSET"]
      460 SETTABLEKS                       R36 R35 K50 ["Position"]
      462 GETTABLEKS                       R36 R0 K51 ["ZIndex"]
      464 SETTABLEKS                       R36 R35 K51 ["ZIndex"]
      466 DUPTABLE                         R36 K56 [{"affordance"}]
      467 GETUPVAL                         R37 5
      468 GETTABLEKS                       R37 R37 K18 ["Enums"]
      470 GETTABLEKS                       R37 R37 K57 ["StateLayerAffordance"]
      472 GETTABLEKS                       R37 R37 K58 ["None"]
      474 SETTABLEKS                       R37 R36 K55 ["affordance"]
      476 SETTABLEKS                       R36 R35 K52 ["stateLayer"]
      478 DUPTABLE                         R36 K97 [{"Content", "ResizeBarRight"}]
      479 GETUPVAL                         R37 0
      480 GETTABLEKS                       R37 R37 K45 ["createElement"]
      482 GETUPVAL                         R38 5
      483 GETTABLEKS                       R38 R38 K46 ["View"]
      485 DUPTABLE                         R39 K100 [{["tag"] = "col align-x-center gap-xsmall auto-y padding-bottom-small stroke-muted radius-small bg-surface-200 size-full-0", ["stateLayer"], ["sizeConstraint"]}]
      486 DUPTABLE                         R40 K56 [{"affordance"}]
      487 GETUPVAL                         R41 5
      488 GETTABLEKS                       R41 R41 K18 ["Enums"]
      490 GETTABLEKS                       R41 R41 K57 ["StateLayerAffordance"]
      492 GETTABLEKS                       R41 R41 K58 ["None"]
      494 SETTABLEKS                       R41 R40 K55 ["affordance"]
      496 SETTABLEKS                       R40 R39 K52 ["stateLayer"]
      498 DUPTABLE                         R40 K64 [{"MaxSize"}]
      499 SETTABLEKS                       R32 R40 K63 ["MaxSize"]
      501 SETTABLEKS                       R40 R39 K99 ["sizeConstraint"]
      503 DUPTABLE                         R40 K101 [{"ParameterPaneHeader", "ParameterPaneScrollView"}]
      504 GETUPVAL                         R41 0
      505 GETTABLEKS                       R41 R41 K45 ["createElement"]
      507 GETUPVAL                         R42 16
      508 DUPTABLE                         R43 K70 [{"LayoutOrder", "canExpand", "expanded", "DEPRECATED_canAddParameter", "setExpanded"}]
      509 MOVE                             R44 R4
      510 CALL                             R44 0 1
      511 SETTABLEKS                       R44 R43 K65 ["LayoutOrder"]
      513 SETTABLEKS                       R29 R43 K66 ["canExpand"]
      515 SETTABLEKS                       R7 R43 K67 ["expanded"]
      517 GETUPVAL                         R45 10
      518 JUMPIFNOT                        R45 ; [+2]
      519 LOADB                            R44 1
      520 JUMP                             ; [+1]
      521 NOT                              R44 R24
      522 SETTABLEKS                       R44 R43 K68 ["DEPRECATED_canAddParameter"]
      524 SETTABLEKS                       R8 R43 K69 ["setExpanded"]
      526 CALL                             R41 2 1
      527 SETTABLEKS                       R41 R40 K60 ["ParameterPaneHeader"]
      529 JUMPIFNOT                        R7 ; [+64]
      530 GETUPVAL                         R41 0
      531 GETTABLEKS                       R41 R41 K45 ["createElement"]
      533 GETUPVAL                         R42 5
      534 GETTABLEKS                       R42 R42 K71 ["ScrollView"]
      536 DUPTABLE                         R43 K77 [{["tag"] = "fill size-full-0 auto-y", ["AutomaticSize"], ["scroll"], ["scrollingFrameRef"], ["Visible"], ["LayoutOrder"]}]
      537 GETIMPORT                        R44 K80 [Enum.AutomaticSize.Y]
      539 SETTABLEKS                       R44 R43 K73 ["AutomaticSize"]
      541 DUPTABLE                         R44 K85 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "scrollBarVisibility", "ScrollingDirection"}]
      542 GETIMPORT                        R45 K40 [UDim2.fromOffset]
      544 LOADN                            R46 0
      545 LOADN                            R47 0
      546 CALL                             R45 2 1
      547 SETTABLEKS                       R45 R44 K81 ["CanvasSize"]
      549 GETIMPORT                        R45 K80 [Enum.AutomaticSize.Y]
      551 SETTABLEKS                       R45 R44 K73 ["AutomaticSize"]
      553 GETIMPORT                        R45 K80 [Enum.AutomaticSize.Y]
      555 SETTABLEKS                       R45 R44 K82 ["AutomaticCanvasSize"]
      557 GETUPVAL                         R45 5
      558 GETTABLEKS                       R45 R45 K18 ["Enums"]
      560 GETTABLEKS                       R45 R45 K86 ["Visibility"]
      562 GETTABLEKS                       R45 R45 K87 ["Auto"]
      564 SETTABLEKS                       R45 R44 K83 ["scrollBarVisibility"]
      566 GETIMPORT                        R45 K88 [Enum.ScrollingDirection.Y]
      568 SETTABLEKS                       R45 R44 K84 ["ScrollingDirection"]
      570 SETTABLEKS                       R44 R43 K74 ["scroll"]
      572 SETTABLEKS                       R30 R43 K75 ["scrollingFrameRef"]
      574 SETTABLEKS                       R29 R43 K76 ["Visible"]
      576 MOVE                             R44 R4
      577 CALL                             R44 0 1
      578 SETTABLEKS                       R44 R43 K65 ["LayoutOrder"]
      580 DUPTABLE                         R44 K90 [{"ParameterNodeItemContainer"}]
      581 GETUPVAL                         R45 0
      582 GETTABLEKS                       R45 R45 K45 ["createElement"]
      584 GETUPVAL                         R46 5
      585 GETTABLEKS                       R46 R46 K46 ["View"]
      587 DUPTABLE                         R47 K92 [{["tag"] = "col size-full-0 auto-y"}]
      588 MOVE                             R48 R26
      589 CALL                             R45 3 1
      590 SETTABLEKS                       R45 R44 K89 ["ParameterNodeItemContainer"]
      592 CALL                             R41 3 1
      593 JUMP                             ; [+1]
      594 LOADNIL                          R41
      595 SETTABLEKS                       R41 R40 K61 ["ParameterPaneScrollView"]
      597 CALL                             R37 3 1
      598 SETTABLEKS                       R37 R36 K95 ["Content"]
      600 GETUPVAL                         R37 0
      601 GETTABLEKS                       R37 R37 K45 ["createElement"]
      603 GETUPVAL                         R38 5
      604 GETTABLEKS                       R38 R38 K46 ["View"]
      606 DUPTABLE                         R39 K104 [{"backgroundStyle", "Size", "Position", "onStateChanged", "stateLayer"}]
      607 GETTABLEKS                       R40 R5 K105 ["Color"]
      609 GETTABLEKS                       R40 R40 K106 ["Stroke"]
      611 GETTABLEKS                       R40 R40 K20 ["Default"]
      613 SETTABLEKS                       R40 R39 K102 ["backgroundStyle"]
      615 GETIMPORT                        R40 K107 [UDim2.new]
      617 LOADN                            R41 0
      618 LOADN                            R42 10
      619 LOADN                            R43 1
      620 LOADN                            R44 0
      621 CALL                             R40 4 1
      622 SETTABLEKS                       R40 R39 K49 ["Size"]
      624 GETIMPORT                        R40 K107 [UDim2.new]
      626 LOADN                            R41 1
      627 LOADN                            R42 -5
      628 LOADN                            R43 0
      629 LOADN                            R44 0
      630 CALL                             R40 4 1
      631 SETTABLEKS                       R40 R39 K50 ["Position"]
      633 SETTABLEKS                       R18 R39 K103 ["onStateChanged"]
      635 DUPTABLE                         R40 K56 [{"affordance"}]
      636 GETUPVAL                         R41 5
      637 GETTABLEKS                       R41 R41 K18 ["Enums"]
      639 GETTABLEKS                       R41 R41 K57 ["StateLayerAffordance"]
      641 GETTABLEKS                       R41 R41 K58 ["None"]
      643 SETTABLEKS                       R41 R40 K55 ["affordance"]
      645 SETTABLEKS                       R40 R39 K52 ["stateLayer"]
      647 DUPTABLE                         R40 K110 [{"Gradient", "DragDetector"}]
      648 GETUPVAL                         R41 0
      649 GETTABLEKS                       R41 R41 K45 ["createElement"]
      651 LOADK                            R42 K111 ["UIGradient"]
      652 DUPTABLE                         R43 K113 [{"Transparency"}]
      653 SETTABLEKS                       R23 R43 K112 ["Transparency"]
      655 CALL                             R41 2 1
      656 SETTABLEKS                       R41 R40 K108 ["Gradient"]
      658 GETUPVAL                         R41 0
      659 GETTABLEKS                       R41 R41 K45 ["createElement"]
      661 LOADK                            R42 K114 ["UIDragDetector"]
      662 NEWTABLE                         R43 8 0
      664 GETIMPORT                        R44 K117 [Enum.UIDragDetectorDragStyle.Scriptable]
      666 SETTABLEKS                       R44 R43 K118 ["DragStyle"]
      668 GETTABLEKS                       R44 R0 K35 ["canvasFrameRef"]
      670 GETTABLEKS                       R44 R44 K36 ["current"]
      672 SETTABLEKS                       R44 R43 K119 ["ReferenceUIInstance"]
      674 GETUPVAL                         R44 0
      675 GETTABLEKS                       R44 R44 K120 ["Event"]
      677 GETTABLEKS                       R44 R44 K121 ["DragStart"]
      679 SETTABLE                         R19 R43 R44
      680 GETUPVAL                         R44 0
      681 GETTABLEKS                       R44 R44 K120 ["Event"]
      683 GETTABLEKS                       R44 R44 K122 ["DragContinue"]
      685 SETTABLE                         R20 R43 R44
      686 GETUPVAL                         R44 0
      687 GETTABLEKS                       R44 R44 K120 ["Event"]
      689 GETTABLEKS                       R44 R44 K123 ["DragEnd"]
      691 SETTABLE                         R21 R43 R44
      692 CALL                             R41 2 1
      693 SETTABLEKS                       R41 R40 K109 ["DragDetector"]
      695 CALL                             R37 3 1
      696 SETTABLEKS                       R37 R36 K96 ["ResizeBarRight"]
      698 CALL                             R33 3 -1
      699 RETURN                           R33 -1

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
      119 GETTABLEKS                       R18 R18 K25 ["getFFlagAnimGraphUIEnableValueNodes"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K7 ["Flags"]
      126 GETTABLEKS                       R19 R19 K26 ["getFFlagAnimGraphUIResizeParameterPane"]
      128 CALL                             R18 1 1
      129 DUPCLOSURE                       R19 K27 [PROTO_12]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R8
      147 RETURN                           R19 1
