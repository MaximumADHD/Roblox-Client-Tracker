PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Data"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["OnChanged"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Data"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setBypass"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["bypass"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetAnalysisEnabled"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["AnalysisEnabled"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Context"]
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 GETTABLEKS                       R3 R3 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 GETUPVAL                         R3 2
       14 GETIMPORT                        R4 K6 [Vector2.one]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 3
       18 LOADNIL                          R6
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 4
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R8 0 1
       25 GETTABLEKS                       R9 R0 K7 ["OnChanged"]
       27 SETLIST                          R8 R9 1 [1]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 5
       31 GETTABLEKS                       R8 R0 K8 ["Data"]
       33 MOVE                             R9 R6
       34 CALL                             R7 2 1
       35 GETUPVAL                         R8 6
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R10 0 1
       41 GETTABLEKS                       R11 R0 K8 ["Data"]
       43 SETLIST                          R10 R11 1 [1]
       45 CALL                             R8 2 0
       46 GETUPVAL                         R8 4
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R10 0 0
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 4
       53 NEWCLOSURE                       R10 P3
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R11 0 1
       57 MOVE                             R12 R7
       58 SETLIST                          R11 R12 1 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 4
       62 NEWCLOSURE                       R11 P4
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R12 0 2
       66 GETTABLEKS                       R13 R0 K9 ["AnalysisEnabled"]
       68 GETTABLEKS                       R14 R0 K10 ["SetAnalysisEnabled"]
       70 SETLIST                          R12 R13 2 [1]
       72 CALL                             R10 2 1
       73 LOADNIL                          R11
       74 LOADNIL                          R12
       75 LOADNIL                          R13
       76 GETTABLEKS                       R14 R0 K8 ["Data"]
       78 GETTABLEKS                       R14 R14 K11 ["InstanceType"]
       80 GETUPVAL                         R15 7
       81 GETTABLEKS                       R15 R15 K12 ["EQUALIZER"]
       83 JUMPIFNOTEQ                      R14 R15 ; [+30]
       85 GETUPVAL                         R14 8
       86 GETTABLEKS                       R14 R14 K13 ["createElement"]
       88 GETUPVAL                         R15 9
       89 DUPTABLE                         R16 K16 [{"EqHook", "PlotAbsoluteSize"}]
       90 SETTABLEKS                       R7 R16 K14 ["EqHook"]
       92 SETTABLEKS                       R3 R16 K15 ["PlotAbsoluteSize"]
       94 CALL                             R14 2 1
       95 MOVE                             R12 R14
       96 GETTABLEKS                       R15 R7 K17 ["bypass"]
       98 NOT                              R14 R15
       99 JUMPIFNOT                        R14 ; [+12]
      100 GETUPVAL                         R14 8
      101 GETTABLEKS                       R14 R14 K13 ["createElement"]
      103 GETUPVAL                         R15 10
      104 DUPTABLE                         R16 K19 [{"EqHook", "PlotAbsoluteSize", "PlotRef"}]
      105 SETTABLEKS                       R7 R16 K14 ["EqHook"]
      107 SETTABLEKS                       R3 R16 K15 ["PlotAbsoluteSize"]
      109 SETTABLEKS                       R5 R16 K18 ["PlotRef"]
      111 CALL                             R14 2 1
      112 MOVE                             R13 R14
      113 JUMP                             ; [+62]
      114 GETTABLEKS                       R14 R0 K8 ["Data"]
      116 GETTABLEKS                       R14 R14 K11 ["InstanceType"]
      118 GETUPVAL                         R15 7
      119 GETTABLEKS                       R15 R15 K20 ["FILTER"]
      121 JUMPIFNOTEQ                      R14 R15 ; [+54]
      123 GETUPVAL                         R14 8
      124 GETTABLEKS                       R14 R14 K13 ["createElement"]
      126 GETUPVAL                         R15 11
      127 DUPTABLE                         R16 K24 [{"FilterHook", "Position", "Size"}]
      128 SETTABLEKS                       R7 R16 K21 ["FilterHook"]
      130 GETIMPORT                        R17 K27 [UDim2.fromOffset]
      132 LOADN                            R18 0
      133 LOADN                            R19 25
      134 CALL                             R17 2 1
      135 SETTABLEKS                       R17 R16 K22 ["Position"]
      137 GETIMPORT                        R17 K29 [UDim2.new]
      139 LOADN                            R18 1
      140 LOADN                            R19 0
      141 LOADN                            R20 0
      142 LOADN                            R21 25
      143 CALL                             R17 4 1
      144 SETTABLEKS                       R17 R16 K23 ["Size"]
      146 CALL                             R14 2 1
      147 MOVE                             R11 R14
      148 GETUPVAL                         R14 8
      149 GETTABLEKS                       R14 R14 K13 ["createElement"]
      151 GETUPVAL                         R15 12
      152 DUPTABLE                         R16 K30 [{"FilterHook", "PlotAbsoluteSize"}]
      153 SETTABLEKS                       R7 R16 K21 ["FilterHook"]
      155 SETTABLEKS                       R3 R16 K15 ["PlotAbsoluteSize"]
      157 CALL                             R14 2 1
      158 MOVE                             R12 R14
      159 GETTABLEKS                       R15 R7 K17 ["bypass"]
      161 NOT                              R14 R15
      162 JUMPIFNOT                        R14 ; [+12]
      163 GETUPVAL                         R14 8
      164 GETTABLEKS                       R14 R14 K13 ["createElement"]
      166 GETUPVAL                         R15 13
      167 DUPTABLE                         R16 K31 [{"FilterHook", "PlotAbsoluteSize", "PlotRef"}]
      168 SETTABLEKS                       R7 R16 K21 ["FilterHook"]
      170 SETTABLEKS                       R3 R16 K15 ["PlotAbsoluteSize"]
      172 SETTABLEKS                       R5 R16 K18 ["PlotRef"]
      174 CALL                             R14 2 1
      175 MOVE                             R13 R14
      176 GETIMPORT                        R14 K29 [UDim2.new]
      178 LOADN                            R15 1
      179 LOADN                            R16 0
      180 LOADN                            R17 1
      181 JUMPIFNOT                        R11 ; [+2]
      182 LOADN                            R20 50
      183 JUMP                             ; [+1]
      184 LOADN                            R20 25
      185 MINUS                            R19 R20
      186 SUBK                             R18 R19 K32 [10]
      187 CALL                             R14 4 1
      188 GETTABLEKS                       R15 R0 K33 ["Enabled"]
      190 JUMPIFNOT                        R15 ; [+198]
      191 GETUPVAL                         R15 8
      192 GETTABLEKS                       R15 R15 K13 ["createElement"]
      194 GETUPVAL                         R16 14
      195 NEWTABLE                         R17 2 0
      197 GETIMPORT                        R18 K35 [UDim2.fromScale]
      199 LOADN                            R19 1
      200 LOADN                            R20 1
      201 CALL                             R18 2 1
      202 SETTABLEKS                       R18 R17 K23 ["Size"]
      204 GETUPVAL                         R18 8
      205 GETTABLEKS                       R18 R18 K36 ["Tag"]
      207 LOADK                            R19 K37 ["X-Pad X-ColumnM X-FitY"]
      208 SETTABLE                         R19 R17 R18
      209 DUPTABLE                         R18 K42 [{"UISizeConstraint", "Controls", "NodeControls", "Canvas"}]
      210 GETUPVAL                         R19 8
      211 GETTABLEKS                       R19 R19 K13 ["createElement"]
      213 LOADK                            R20 K38 ["UISizeConstraint"]
      214 DUPTABLE                         R21 K45 [{"MinSize", "MaxSize"}]
      215 GETUPVAL                         R22 15
      216 SETTABLEKS                       R22 R21 K43 ["MinSize"]
      218 GETUPVAL                         R22 16
      219 SETTABLEKS                       R22 R21 K44 ["MaxSize"]
      221 CALL                             R19 2 1
      222 SETTABLEKS                       R19 R18 K38 ["UISizeConstraint"]
      224 GETUPVAL                         R19 8
      225 GETTABLEKS                       R19 R19 K13 ["createElement"]
      227 GETUPVAL                         R20 14
      228 NEWTABLE                         R21 4 0
      230 GETIMPORT                        R22 K29 [UDim2.new]
      232 LOADN                            R23 1
      233 LOADN                            R24 0
      234 LOADN                            R25 0
      235 LOADN                            R26 25
      236 CALL                             R22 4 1
      237 SETTABLEKS                       R22 R21 K23 ["Size"]
      239 LOADN                            R22 1
      240 SETTABLEKS                       R22 R21 K46 ["LayoutOrder"]
      242 GETUPVAL                         R22 8
      243 GETTABLEKS                       R22 R22 K36 ["Tag"]
      245 LOADK                            R23 K47 ["X-RowM"]
      246 SETTABLE                         R23 R21 R22
      247 DUPTABLE                         R22 K49 [{"Bypass", "AnalysisEnabled"}]
      248 GETUPVAL                         R23 8
      249 GETTABLEKS                       R23 R23 K13 ["createElement"]
      251 GETUPVAL                         R24 17
      252 DUPTABLE                         R25 K53 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
      253 LOADN                            R26 1
      254 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      256 LOADK                            R28 K54 ["Label"]
      257 LOADK                            R29 K48 ["Bypass"]
      258 NAMECALL                         R26 R2 K55 ["getText"]
      260 CALL                             R26 3 1
      261 SETTABLEKS                       R26 R25 K50 ["Text"]
      263 GETTABLEKS                       R26 R7 K17 ["bypass"]
      265 SETTABLEKS                       R26 R25 K51 ["Checked"]
      267 SETTABLEKS                       R9 R25 K52 ["OnClick"]
      269 CALL                             R23 2 1
      270 SETTABLEKS                       R23 R22 K48 ["Bypass"]
      272 GETUPVAL                         R23 8
      273 GETTABLEKS                       R23 R23 K13 ["createElement"]
      275 GETUPVAL                         R24 17
      276 DUPTABLE                         R25 K53 [{"LayoutOrder", "Text", "Checked", "OnClick"}]
      277 LOADN                            R26 2
      278 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      280 LOADK                            R28 K54 ["Label"]
      281 LOADK                            R29 K56 ["EnableAnalyzer"]
      282 NAMECALL                         R26 R2 K55 ["getText"]
      284 CALL                             R26 3 1
      285 SETTABLEKS                       R26 R25 K50 ["Text"]
      287 GETTABLEKS                       R26 R0 K9 ["AnalysisEnabled"]
      289 SETTABLEKS                       R26 R25 K51 ["Checked"]
      291 SETTABLEKS                       R10 R25 K52 ["OnClick"]
      293 CALL                             R23 2 1
      294 SETTABLEKS                       R23 R22 K9 ["AnalysisEnabled"]
      296 CALL                             R19 3 1
      297 SETTABLEKS                       R19 R18 K39 ["Controls"]
      299 SETTABLEKS                       R11 R18 K40 ["NodeControls"]
      301 GETUPVAL                         R19 8
      302 GETTABLEKS                       R19 R19 K13 ["createElement"]
      304 GETUPVAL                         R20 14
      305 DUPTABLE                         R21 K57 [{"Size", "LayoutOrder"}]
      306 SETTABLEKS                       R14 R21 K23 ["Size"]
      308 LOADN                            R22 2
      309 SETTABLEKS                       R22 R21 K46 ["LayoutOrder"]
      311 DUPTABLE                         R22 K60 [{"Grid", "PlotCanvas"}]
      312 GETUPVAL                         R23 8
      313 GETTABLEKS                       R23 R23 K13 ["createElement"]
      315 GETUPVAL                         R24 18
      316 DUPTABLE                         R25 K61 [{"InstanceType", "PlotAbsoluteSize"}]
      317 GETTABLEKS                       R26 R0 K8 ["Data"]
      319 GETTABLEKS                       R26 R26 K11 ["InstanceType"]
      321 SETTABLEKS                       R26 R25 K11 ["InstanceType"]
      323 SETTABLEKS                       R3 R25 K15 ["PlotAbsoluteSize"]
      325 CALL                             R23 2 1
      326 SETTABLEKS                       R23 R22 K58 ["Grid"]
      328 GETUPVAL                         R23 8
      329 GETTABLEKS                       R23 R23 K13 ["createElement"]
      331 GETUPVAL                         R24 14
      332 NEWTABLE                         R25 8 0
      334 GETIMPORT                        R26 K29 [UDim2.new]
      336 LOADN                            R27 0
      337 LOADN                            R28 50
      338 LOADN                            R29 0
      339 LOADN                            R30 50
      340 CALL                             R26 4 1
      341 SETTABLEKS                       R26 R25 K22 ["Position"]
      343 GETIMPORT                        R26 K29 [UDim2.new]
      345 LOADN                            R27 1
      346 LOADN                            R28 156
      347 LOADN                            R29 1
      348 LOADN                            R30 156
      349 CALL                             R26 4 1
      350 SETTABLEKS                       R26 R25 K23 ["Size"]
      352 LOADN                            R26 1
      353 SETTABLEKS                       R26 R25 K62 ["BackgroundTransparency"]
      355 SETTABLEKS                       R5 R25 K63 ["ForwardRef"]
      357 GETUPVAL                         R26 8
      358 GETTABLEKS                       R26 R26 K64 ["Change"]
      360 GETTABLEKS                       R26 R26 K65 ["AbsoluteSize"]
      362 SETTABLE                         R8 R25 R26
      363 DUPTABLE                         R26 K69 [{"Analyzer", "Curve", "Handles"}]
      364 GETUPVAL                         R27 8
      365 GETTABLEKS                       R27 R27 K13 ["createElement"]
      367 GETUPVAL                         R28 19
      368 DUPTABLE                         R29 K70 [{"Enabled", "PlotAbsoluteSize"}]
      369 GETTABLEKS                       R30 R0 K9 ["AnalysisEnabled"]
      371 SETTABLEKS                       R30 R29 K33 ["Enabled"]
      373 SETTABLEKS                       R3 R29 K15 ["PlotAbsoluteSize"]
      375 CALL                             R27 2 1
      376 SETTABLEKS                       R27 R26 K66 ["Analyzer"]
      378 SETTABLEKS                       R12 R26 K67 ["Curve"]
      380 SETTABLEKS                       R13 R26 K68 ["Handles"]
      382 CALL                             R23 3 1
      383 SETTABLEKS                       R23 R22 K59 ["PlotCanvas"]
      385 CALL                             R19 3 1
      386 SETTABLEKS                       R19 R18 K41 ["Canvas"]
      388 CALL                             R15 3 1
      389 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R2 K10 ["useContext"]
       20 GETTABLEKS                       R5 R2 K11 ["useEffect"]
       22 GETTABLEKS                       R6 R2 K12 ["useRef"]
       24 GETTABLEKS                       R7 R2 K13 ["useState"]
       26 GETIMPORT                        R8 K6 [require]
       28 GETTABLEKS                       R9 R1 K7 ["Packages"]
       30 GETTABLEKS                       R9 R9 K14 ["Framework"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       35 GETTABLEKS                       R10 R8 K16 ["UI"]
       37 GETTABLEKS                       R10 R10 K17 ["Pane"]
       39 GETTABLEKS                       R11 R8 K16 ["UI"]
       41 GETTABLEKS                       R11 R11 K18 ["Checkbox"]
       43 GETIMPORT                        R12 K6 [require]
       45 GETTABLEKS                       R13 R1 K19 ["Src"]
       47 GETTABLEKS                       R13 R13 K20 ["Types"]
       49 CALL                             R12 1 1
       50 GETIMPORT                        R13 K6 [require]
       52 GETTABLEKS                       R14 R0 K21 ["AnalyzerCurve"]
       54 CALL                             R13 1 1
       55 GETIMPORT                        R14 K6 [require]
       57 GETTABLEKS                       R15 R0 K22 ["EqCurve"]
       59 CALL                             R14 1 1
       60 GETIMPORT                        R15 K6 [require]
       62 GETTABLEKS                       R16 R0 K23 ["EqHandles"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K6 [require]
       67 GETTABLEKS                       R17 R0 K24 ["FilterControls"]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K6 [require]
       72 GETTABLEKS                       R18 R0 K25 ["FilterCurve"]
       74 CALL                             R17 1 1
       75 GETIMPORT                        R18 K6 [require]
       77 GETTABLEKS                       R19 R0 K26 ["FilterHandles"]
       79 CALL                             R18 1 1
       80 GETIMPORT                        R19 K6 [require]
       82 GETTABLEKS                       R20 R0 K27 ["Grid"]
       84 CALL                             R19 1 1
       85 GETIMPORT                        R20 K6 [require]
       87 GETTABLEKS                       R21 R0 K28 ["useNodeHook"]
       89 CALL                             R20 1 1
       90 GETIMPORT                        R21 K31 [Vector2.new]
       92 LOADN                            R22 28
       93 LOADN                            R23 44
       94 CALL                             R21 2 1
       95 GETIMPORT                        R22 K31 [Vector2.new]
       97 LOADN                            R23 208
       98 LOADN                            R24 208
       99 CALL                             R22 2 1
      100 DUPCLOSURE                       R23 K32 [PROTO_5]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R21
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R13
      121 RETURN                           R23 1
