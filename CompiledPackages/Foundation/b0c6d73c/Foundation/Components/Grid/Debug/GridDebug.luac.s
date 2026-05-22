PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"Size", "backgroundStyle", "LayoutOrder", "tag"}]
        5 GETTABLEKS                       R4 R0 K6 ["size"]
        7 JUMPIF                           R4 ; [+9]
        8 GETIMPORT                        R4 K9 [UDim2.new]
       10 LOADN                            R5 0
       11 GETTABLEKS                       R7 R0 K11 ["width"]
       13 ORK                              R6 R7 K10 [0]
       14 LOADN                            R7 1
       15 LOADN                            R8 0
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K1 ["Size"]
       19 GETTABLEKS                       R4 R0 K2 ["backgroundStyle"]
       21 SETTABLEKS                       R4 R3 K2 ["backgroundStyle"]
       23 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
       25 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       27 GETTABLEKS                       R4 R0 K4 ["tag"]
       29 SETTABLEKS                       R4 R3 K4 ["tag"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 4
       12 CALL                             R5 0 1
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K0 ["useState"]
       16 LOADNIL                          R7
       17 CALL                             R6 1 2
       18 GETUPVAL                         R8 5
       19 MOVE                             R9 R6
       20 CALL                             R8 1 2
       21 GETUPVAL                         R10 6
       22 GETTABLEKS                       R11 R5 K1 ["config"]
       24 MOVE                             R12 R8
       25 GETTABLEKS                       R13 R9 K2 ["X"]
       27 CALL                             R10 3 1
       28 GETTABLEKS                       R12 R5 K1 ["config"]
       30 GETTABLEKS                       R12 R12 K3 ["breakpoint"]
       32 GETTABLEKS                       R12 R12 K4 ["widths"]
       34 GETUPVAL                         R13 7
       35 GETTABLEKS                       R13 R13 K5 ["XLarge"]
       37 GETTABLE                         R11 R12 R13
       38 NEWTABLE                         R12 0 0
       40 NEWTABLE                         R14 4 0
       42 GETIMPORT                        R15 K9 [Enum.ItemLineAlignment.Start]
       44 LOADK                            R16 K10 ["position-top-left anchor-top-left"]
       45 SETTABLE                         R16 R14 R15
       46 GETIMPORT                        R15 K12 [Enum.ItemLineAlignment.Center]
       48 LOADK                            R16 K13 ["position-top-center anchor-top-center"]
       49 SETTABLE                         R16 R14 R15
       50 GETIMPORT                        R15 K15 [Enum.ItemLineAlignment.End]
       52 LOADK                            R16 K16 ["position-top-right anchor-top-right"]
       53 SETTABLE                         R16 R14 R15
       54 GETTABLEKS                       R15 R1 K17 ["align"]
       56 GETTABLE                         R13 R14 R15
       57 LOADN                            R16 1
       58 GETTABLEKS                       R17 R10 K19 ["full"]
       60 GETTABLEKS                       R17 R17 K20 ["colCount"]
       62 SUBK                             R14 R17 K18 [1]
       63 LOADN                            R15 1
       64 FORNPREP                         R14
       65 GETTABLEKS                       R17 R10 K19 ["full"]
       67 GETTABLEKS                       R17 R17 K20 ["colCount"]
       69 JUMPIFNOTLT                      R16 R17 ; [+42]
       71 MOVE                             R18 R12
       72 GETUPVAL                         R19 3
       73 GETTABLEKS                       R19 R19 K21 ["createElement"]
       75 GETUPVAL                         R20 8
       76 DUPTABLE                         R21 K26 [{"key", "width", "backgroundStyle", "LayoutOrder"}]
       77 LOADK                            R23 K27 ["DebugCol%*"]
       78 MOVE                             R25 R16
       79 NAMECALL                         R23 R23 K28 ["format"]
       81 CALL                             R23 2 1
       82 MOVE                             R22 R23
       83 SETTABLEKS                       R22 R21 K22 ["key"]
       85 GETTABLEKS                       R22 R10 K29 ["gutterWidth"]
       87 SETTABLEKS                       R22 R21 K23 ["width"]
       89 DUPTABLE                         R22 K32 [{"Color3", "Transparency"}]
       90 GETTABLEKS                       R23 R2 K33 ["Color"]
       92 GETTABLEKS                       R23 R23 K34 ["System"]
       94 GETTABLEKS                       R23 R23 K35 ["Alert"]
       96 GETTABLEKS                       R23 R23 K30 ["Color3"]
       98 SETTABLEKS                       R23 R22 K30 ["Color3"]
      100 LOADK                            R23 K36 [0.5]
      101 SETTABLEKS                       R23 R22 K31 ["Transparency"]
      103 SETTABLEKS                       R22 R21 K24 ["backgroundStyle"]
      105 SETTABLEKS                       R16 R21 K25 ["LayoutOrder"]
      107 CALL                             R19 2 -1
      108 FASTCALL                         TABLE_INSERT ; [+2]
      109 GETIMPORT                        R17 K39 [table.insert]
      111 CALL                             R17 -1 0
      112 FORNLOOP                         R14
      113 GETUPVAL                         R14 3
      114 GETTABLEKS                       R14 R14 K21 ["createElement"]
      116 GETUPVAL                         R15 9
      117 DUPTABLE                         R16 K41 [{"tag"}]
      118 LOADK                            R18 K42 ["size-full-full %*"]
      119 MOVE                             R20 R13
      120 NAMECALL                         R18 R18 K28 ["format"]
      122 CALL                             R18 2 1
      123 MOVE                             R17 R18
      124 SETTABLEKS                       R17 R16 K40 ["tag"]
      126 DUPTABLE                         R17 K50 [{"GridDebugStyleSheet", "GridDebugMeasureWrapper", "GridDebugMeasure", "GridDebugSizeConstraint", "GridDebugSizeLabel", "GridDebug", "GridDebugContent"}]
      127 GETUPVAL                         R18 3
      128 GETTABLEKS                       R18 R18 K21 ["createElement"]
      130 GETUPVAL                         R19 10
      131 DUPTABLE                         R20 K52 [{"breakpoint", "ref"}]
      132 SETTABLEKS                       R8 R20 K3 ["breakpoint"]
      134 SETTABLEKS                       R4 R20 K51 ["ref"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K43 ["GridDebugStyleSheet"]
      139 GETUPVAL                         R18 3
      140 GETTABLEKS                       R18 R18 K21 ["createElement"]
      142 GETUPVAL                         R19 9
      143 DUPTABLE                         R20 K53 [{"ref", "tag"}]
      144 SETTABLEKS                       R7 R20 K51 ["ref"]
      146 LOADK                            R21 K54 ["size-full-0"]
      147 SETTABLEKS                       R21 R20 K40 ["tag"]
      149 DUPTABLE                         R21 K56 [{"GridMeasureSizeConstraint"}]
      150 GETUPVAL                         R22 3
      151 GETTABLEKS                       R22 R22 K21 ["createElement"]
      153 LOADK                            R23 K57 ["UISizeConstraint"]
      154 DUPTABLE                         R24 K59 [{"MaxSize"}]
      155 GETIMPORT                        R25 K62 [Vector2.new]
      157 MOVE                             R26 R11
      158 LOADK                            R27 K63 [∞]
      159 CALL                             R25 2 1
      160 SETTABLEKS                       R25 R24 K58 ["MaxSize"]
      162 CALL                             R22 2 1
      163 SETTABLEKS                       R22 R21 K55 ["GridMeasureSizeConstraint"]
      165 CALL                             R18 3 1
      166 SETTABLEKS                       R18 R17 K44 ["GridDebugMeasureWrapper"]
      168 GETUPVAL                         R18 3
      169 GETTABLEKS                       R18 R18 K21 ["createElement"]
      171 GETUPVAL                         R19 9
      172 DUPTABLE                         R20 K65 [{"Size", "backgroundStyle"}]
      173 GETIMPORT                        R21 K67 [UDim2.new]
      175 LOADN                            R22 1
      176 LOADN                            R23 0
      177 LOADN                            R24 0
      178 LOADN                            R25 4
      179 CALL                             R21 4 1
      180 SETTABLEKS                       R21 R20 K64 ["Size"]
      182 DUPTABLE                         R21 K32 [{"Color3", "Transparency"}]
      183 GETIMPORT                        R22 K69 [Color3.fromRGB]
      185 LOADN                            R23 255
      186 LOADN                            R24 0
      187 LOADN                            R25 0
      188 CALL                             R22 3 1
      189 SETTABLEKS                       R22 R21 K30 ["Color3"]
      191 GETTABLEKS                       R22 R1 K70 ["debugTransparency"]
      193 SETTABLEKS                       R22 R21 K31 ["Transparency"]
      195 SETTABLEKS                       R21 R20 K24 ["backgroundStyle"]
      197 CALL                             R18 2 1
      198 SETTABLEKS                       R18 R17 K45 ["GridDebugMeasure"]
      200 GETUPVAL                         R18 3
      201 GETTABLEKS                       R18 R18 K21 ["createElement"]
      203 LOADK                            R19 K57 ["UISizeConstraint"]
      204 DUPTABLE                         R20 K59 [{"MaxSize"}]
      205 GETIMPORT                        R21 K62 [Vector2.new]
      207 MOVE                             R22 R11
      208 LOADK                            R23 K63 [∞]
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K58 ["MaxSize"]
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K46 ["GridDebugSizeConstraint"]
      215 GETUPVAL                         R18 3
      216 GETTABLEKS                       R18 R18 K21 ["createElement"]
      218 GETUPVAL                         R19 11
      219 DUPTABLE                         R20 K72 [{"tag", "Text"}]
      220 LOADK                            R21 K73 ["position-top-center anchor-top-center auto-xy padding-xxsmall text-label-small text-truncate-end bg-over-media-300"]
      221 SETTABLEKS                       R21 R20 K40 ["tag"]
      223 LOADK                            R22 K74 ["breakpoint: %*, width: %*, columns: %*, maxWidth: %*, margin: %*, gapWidth: %*"]
      224 GETTABLEKS                       R25 R5 K1 ["config"]
      226 GETTABLEKS                       R25 R25 K3 ["breakpoint"]
      228 GETTABLEKS                       R25 R25 K75 ["shortNames"]
      230 GETTABLE                         R24 R25 R8
      231 GETTABLEKS                       R25 R9 K2 ["X"]
      233 GETTABLEKS                       R26 R10 K19 ["full"]
      235 GETTABLEKS                       R26 R26 K20 ["colCount"]
      237 MOVE                             R27 R11
      238 GETTABLEKS                       R28 R10 K76 ["margin"]
      240 GETTABLEKS                       R29 R10 K29 ["gutterWidth"]
      242 NAMECALL                         R22 R22 K28 ["format"]
      244 CALL                             R22 7 1
      245 MOVE                             R21 R22
      246 SETTABLEKS                       R21 R20 K71 ["Text"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K47 ["GridDebugSizeLabel"]
      251 GETUPVAL                         R18 3
      252 GETTABLEKS                       R18 R18 K21 ["createElement"]
      254 GETUPVAL                         R19 9
      255 DUPTABLE                         R20 K77 [{"tag", "backgroundStyle"}]
      256 LOADK                            R21 K78 ["row size-full-full"]
      257 SETTABLEKS                       R21 R20 K40 ["tag"]
      259 DUPTABLE                         R21 K32 [{"Color3", "Transparency"}]
      260 GETTABLEKS                       R22 R2 K33 ["Color"]
      262 GETTABLEKS                       R22 R22 K34 ["System"]
      264 GETTABLEKS                       R22 R22 K79 ["Emphasis"]
      266 GETTABLEKS                       R22 R22 K30 ["Color3"]
      268 SETTABLEKS                       R22 R21 K30 ["Color3"]
      270 GETTABLEKS                       R22 R1 K70 ["debugTransparency"]
      272 SETTABLEKS                       R22 R21 K31 ["Transparency"]
      274 SETTABLEKS                       R21 R20 K24 ["backgroundStyle"]
      276 DUPTABLE                         R21 K83 [{"LeftMargin", "Columns", "RightMargin"}]
      277 GETUPVAL                         R22 3
      278 GETTABLEKS                       R22 R22 K21 ["createElement"]
      280 GETUPVAL                         R23 8
      281 DUPTABLE                         R24 K84 [{"width", "backgroundStyle", "LayoutOrder"}]
      282 GETTABLEKS                       R25 R10 K76 ["margin"]
      284 SETTABLEKS                       R25 R24 K23 ["width"]
      286 DUPTABLE                         R25 K32 [{"Color3", "Transparency"}]
      287 GETTABLEKS                       R26 R2 K33 ["Color"]
      289 GETTABLEKS                       R26 R26 K34 ["System"]
      291 GETTABLEKS                       R26 R26 K85 ["Warning"]
      293 GETTABLEKS                       R26 R26 K30 ["Color3"]
      295 SETTABLEKS                       R26 R25 K30 ["Color3"]
      297 GETTABLEKS                       R26 R1 K70 ["debugTransparency"]
      299 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      301 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      303 LOADN                            R25 0
      304 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      306 CALL                             R22 2 1
      307 SETTABLEKS                       R22 R21 K80 ["LeftMargin"]
      309 GETUPVAL                         R22 3
      310 GETTABLEKS                       R22 R22 K21 ["createElement"]
      312 GETUPVAL                         R23 9
      313 DUPTABLE                         R24 K86 [{"tag", "backgroundStyle", "LayoutOrder"}]
      314 LOADK                            R25 K87 ["row flex-x-evenly fill size-0-full"]
      315 SETTABLEKS                       R25 R24 K40 ["tag"]
      317 DUPTABLE                         R25 K32 [{"Color3", "Transparency"}]
      318 GETTABLEKS                       R26 R2 K33 ["Color"]
      320 GETTABLEKS                       R26 R26 K34 ["System"]
      322 GETTABLEKS                       R26 R26 K79 ["Emphasis"]
      324 GETTABLEKS                       R26 R26 K30 ["Color3"]
      326 SETTABLEKS                       R26 R25 K30 ["Color3"]
      328 GETTABLEKS                       R26 R1 K70 ["debugTransparency"]
      330 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      332 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      334 LOADN                            R25 1
      335 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      337 MOVE                             R25 R12
      338 CALL                             R22 3 1
      339 SETTABLEKS                       R22 R21 K81 ["Columns"]
      341 GETUPVAL                         R22 3
      342 GETTABLEKS                       R22 R22 K21 ["createElement"]
      344 GETUPVAL                         R23 8
      345 DUPTABLE                         R24 K84 [{"width", "backgroundStyle", "LayoutOrder"}]
      346 GETTABLEKS                       R25 R10 K76 ["margin"]
      348 SETTABLEKS                       R25 R24 K23 ["width"]
      350 DUPTABLE                         R25 K32 [{"Color3", "Transparency"}]
      351 GETTABLEKS                       R26 R2 K33 ["Color"]
      353 GETTABLEKS                       R26 R26 K34 ["System"]
      355 GETTABLEKS                       R26 R26 K85 ["Warning"]
      357 GETTABLEKS                       R26 R26 K30 ["Color3"]
      359 SETTABLEKS                       R26 R25 K30 ["Color3"]
      361 GETTABLEKS                       R26 R1 K70 ["debugTransparency"]
      363 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      365 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      367 LOADN                            R25 2
      368 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      370 CALL                             R22 2 1
      371 SETTABLEKS                       R22 R21 K82 ["RightMargin"]
      373 CALL                             R18 3 1
      374 SETTABLEKS                       R18 R17 K48 ["GridDebug"]
      376 JUMPIFNOT                        R3 ; [+50]
      377 GETUPVAL                         R18 3
      378 GETTABLEKS                       R18 R18 K21 ["createElement"]
      380 GETUPVAL                         R19 12
      381 GETTABLEKS                       R19 R19 K88 ["Provider"]
      383 DUPTABLE                         R20 K90 [{"value"}]
      384 SETTABLEKS                       R3 R20 K89 ["value"]
      386 GETUPVAL                         R21 3
      387 GETTABLEKS                       R21 R21 K21 ["createElement"]
      389 GETUPVAL                         R22 9
      390 DUPTABLE                         R23 K41 [{"tag"}]
      391 LOADK                            R24 K91 ["size-full-full"]
      392 SETTABLEKS                       R24 R23 K40 ["tag"]
      394 DUPTABLE                         R24 K94 [{"GridDebugPadding", "GridDebugChildren"}]
      395 GETUPVAL                         R25 3
      396 GETTABLEKS                       R25 R25 K21 ["createElement"]
      398 LOADK                            R26 K95 ["UIPadding"]
      399 DUPTABLE                         R27 K97 [{"PaddingTop"}]
      400 GETIMPORT                        R28 K99 [UDim.new]
      402 LOADN                            R29 0
      403 GETTABLEKS                       R31 R10 K101 ["gapHeight"]
      405 MULK                             R30 R31 K100 [2]
      406 CALL                             R28 2 1
      407 SETTABLEKS                       R28 R27 K96 ["PaddingTop"]
      409 CALL                             R25 2 1
      410 SETTABLEKS                       R25 R24 K92 ["GridDebugPadding"]
      412 GETUPVAL                         R25 3
      413 GETTABLEKS                       R25 R25 K21 ["createElement"]
      415 GETUPVAL                         R26 3
      416 GETTABLEKS                       R26 R26 K102 ["Fragment"]
      418 LOADNIL                          R27
      419 GETTABLEKS                       R28 R0 K103 ["children"]
      421 CALL                             R25 3 1
      422 SETTABLEKS                       R25 R24 K93 ["GridDebugChildren"]
      424 CALL                             R21 3 -1
      425 CALL                             R18 -1 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R18
      428 SETTABLEKS                       R18 R17 K49 ["GridDebugContent"]
      430 CALL                             R14 3 -1
      431 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["Breakpoint"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["GridDebugStyleSheet"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K10 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Providers"]
       34 GETTABLEKS                       R6 R6 K12 ["Style"]
       36 GETTABLEKS                       R6 R6 K13 ["StyleSheetContext"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K14 ["Components"]
       43 GETTABLEKS                       R7 R7 K15 ["Text"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Components"]
       50 GETTABLEKS                       R8 R8 K16 ["View"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Utility"]
       57 GETTABLEKS                       R9 R9 K18 ["getGridMetrics"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K11 ["Providers"]
       64 GETTABLEKS                       R10 R10 K19 ["Responsive"]
       66 GETTABLEKS                       R10 R10 K20 ["Hooks"]
       68 GETTABLEKS                       R10 R10 K21 ["useBreakpoint"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R0 K11 ["Providers"]
       75 GETTABLEKS                       R11 R11 K19 ["Responsive"]
       77 GETTABLEKS                       R11 R11 K22 ["useResponsive"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K11 ["Providers"]
       84 GETTABLEKS                       R12 R12 K12 ["Style"]
       86 GETTABLEKS                       R12 R12 K23 ["useTokens"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R0 K17 ["Utility"]
       93 GETTABLEKS                       R13 R13 K24 ["withDefaults"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K25 [PROTO_0]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R7
       99 DUPTABLE                         R14 K27 [{"debugTransparency"}]
      100 LOADK                            R15 K28 [0.7]
      101 SETTABLEKS                       R15 R14 K26 ["debugTransparency"]
      103 DUPCLOSURE                       R15 K29 [PROTO_1]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R5
      117 RETURN                           R15 1
