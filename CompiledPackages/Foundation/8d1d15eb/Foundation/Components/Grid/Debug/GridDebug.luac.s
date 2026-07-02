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
       69 JUMPIFNOTLT                      R16 R17 ; [+39]
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
       89 DUPTABLE                         R22 K33 [{["Color3"], ["Transparency"] = 0.5}]
       90 GETTABLEKS                       R23 R2 K34 ["Color"]
       92 GETTABLEKS                       R23 R23 K35 ["System"]
       94 GETTABLEKS                       R23 R23 K36 ["Alert"]
       96 GETTABLEKS                       R23 R23 K30 ["Color3"]
       98 SETTABLEKS                       R23 R22 K30 ["Color3"]
      100 SETTABLEKS                       R22 R21 K24 ["backgroundStyle"]
      102 SETTABLEKS                       R16 R21 K25 ["LayoutOrder"]
      104 CALL                             R19 2 -1
      105 FASTCALL                         TABLE_INSERT ; [+2]
      106 GETIMPORT                        R17 K39 [table.insert]
      108 CALL                             R17 -1 0
      109 FORNLOOP                         R14
      110 GETUPVAL                         R14 3
      111 GETTABLEKS                       R14 R14 K21 ["createElement"]
      113 GETUPVAL                         R15 9
      114 DUPTABLE                         R16 K41 [{"tag"}]
      115 LOADK                            R18 K42 ["size-full-full %*"]
      116 MOVE                             R20 R13
      117 NAMECALL                         R18 R18 K28 ["format"]
      119 CALL                             R18 2 1
      120 MOVE                             R17 R18
      121 SETTABLEKS                       R17 R16 K40 ["tag"]
      123 DUPTABLE                         R17 K50 [{"GridDebugStyleSheet", "GridDebugMeasureWrapper", "GridDebugMeasure", "GridDebugSizeConstraint", "GridDebugSizeLabel", "GridDebug", "GridDebugContent"}]
      124 GETUPVAL                         R18 3
      125 GETTABLEKS                       R18 R18 K21 ["createElement"]
      127 GETUPVAL                         R19 10
      128 DUPTABLE                         R20 K52 [{"breakpoint", "ref"}]
      129 SETTABLEKS                       R8 R20 K3 ["breakpoint"]
      131 SETTABLEKS                       R4 R20 K51 ["ref"]
      133 CALL                             R18 2 1
      134 SETTABLEKS                       R18 R17 K43 ["GridDebugStyleSheet"]
      136 GETUPVAL                         R18 3
      137 GETTABLEKS                       R18 R18 K21 ["createElement"]
      139 GETUPVAL                         R19 9
      140 DUPTABLE                         R20 K54 [{["ref"], ["tag"] = "size-full-0"}]
      141 SETTABLEKS                       R7 R20 K51 ["ref"]
      143 DUPTABLE                         R21 K56 [{"GridMeasureSizeConstraint"}]
      144 GETUPVAL                         R22 3
      145 GETTABLEKS                       R22 R22 K21 ["createElement"]
      147 LOADK                            R23 K57 ["UISizeConstraint"]
      148 DUPTABLE                         R24 K59 [{"MaxSize"}]
      149 GETIMPORT                        R25 K62 [Vector2.new]
      151 MOVE                             R26 R11
      152 LOADK                            R27 K63 [∞]
      153 CALL                             R25 2 1
      154 SETTABLEKS                       R25 R24 K58 ["MaxSize"]
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K55 ["GridMeasureSizeConstraint"]
      159 CALL                             R18 3 1
      160 SETTABLEKS                       R18 R17 K44 ["GridDebugMeasureWrapper"]
      162 GETUPVAL                         R18 3
      163 GETTABLEKS                       R18 R18 K21 ["createElement"]
      165 GETUPVAL                         R19 9
      166 DUPTABLE                         R20 K65 [{"Size", "backgroundStyle"}]
      167 GETIMPORT                        R21 K67 [UDim2.new]
      169 LOADN                            R22 1
      170 LOADN                            R23 0
      171 LOADN                            R24 0
      172 LOADN                            R25 4
      173 CALL                             R21 4 1
      174 SETTABLEKS                       R21 R20 K64 ["Size"]
      176 DUPTABLE                         R21 K68 [{"Color3", "Transparency"}]
      177 GETIMPORT                        R22 K70 [Color3.fromRGB]
      179 LOADN                            R23 255
      180 LOADN                            R24 0
      181 LOADN                            R25 0
      182 CALL                             R22 3 1
      183 SETTABLEKS                       R22 R21 K30 ["Color3"]
      185 GETTABLEKS                       R22 R1 K71 ["debugTransparency"]
      187 SETTABLEKS                       R22 R21 K31 ["Transparency"]
      189 SETTABLEKS                       R21 R20 K24 ["backgroundStyle"]
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K45 ["GridDebugMeasure"]
      194 GETUPVAL                         R18 3
      195 GETTABLEKS                       R18 R18 K21 ["createElement"]
      197 LOADK                            R19 K57 ["UISizeConstraint"]
      198 DUPTABLE                         R20 K59 [{"MaxSize"}]
      199 GETIMPORT                        R21 K62 [Vector2.new]
      201 MOVE                             R22 R11
      202 LOADK                            R23 K63 [∞]
      203 CALL                             R21 2 1
      204 SETTABLEKS                       R21 R20 K58 ["MaxSize"]
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K46 ["GridDebugSizeConstraint"]
      209 GETUPVAL                         R18 3
      210 GETTABLEKS                       R18 R18 K21 ["createElement"]
      212 GETUPVAL                         R19 11
      213 DUPTABLE                         R20 K74 [{["tag"] = "text-label-small position-top-center anchor-top-center auto-xy bg-over-media-300 padding-xxsmall text-truncate-end", ["Text"]}]
      214 LOADK                            R22 K75 ["breakpoint: %*, width: %*, columns: %*, maxWidth: %*, margin: %*, gapWidth: %*"]
      215 GETTABLEKS                       R25 R5 K1 ["config"]
      217 GETTABLEKS                       R25 R25 K3 ["breakpoint"]
      219 GETTABLEKS                       R25 R25 K76 ["shortNames"]
      221 GETTABLE                         R24 R25 R8
      222 GETTABLEKS                       R25 R9 K2 ["X"]
      224 GETTABLEKS                       R26 R10 K19 ["full"]
      226 GETTABLEKS                       R26 R26 K20 ["colCount"]
      228 MOVE                             R27 R11
      229 GETTABLEKS                       R28 R10 K77 ["margin"]
      231 GETTABLEKS                       R29 R10 K29 ["gutterWidth"]
      233 NAMECALL                         R22 R22 K28 ["format"]
      235 CALL                             R22 7 1
      236 MOVE                             R21 R22
      237 SETTABLEKS                       R21 R20 K73 ["Text"]
      239 CALL                             R18 2 1
      240 SETTABLEKS                       R18 R17 K47 ["GridDebugSizeLabel"]
      242 GETUPVAL                         R18 3
      243 GETTABLEKS                       R18 R18 K21 ["createElement"]
      245 GETUPVAL                         R19 9
      246 DUPTABLE                         R20 K79 [{["tag"] = "size-full-full row", ["backgroundStyle"]}]
      247 DUPTABLE                         R21 K68 [{"Color3", "Transparency"}]
      248 GETTABLEKS                       R22 R2 K34 ["Color"]
      250 GETTABLEKS                       R22 R22 K35 ["System"]
      252 GETTABLEKS                       R22 R22 K80 ["Emphasis"]
      254 GETTABLEKS                       R22 R22 K30 ["Color3"]
      256 SETTABLEKS                       R22 R21 K30 ["Color3"]
      258 GETTABLEKS                       R22 R1 K71 ["debugTransparency"]
      260 SETTABLEKS                       R22 R21 K31 ["Transparency"]
      262 SETTABLEKS                       R21 R20 K24 ["backgroundStyle"]
      264 DUPTABLE                         R21 K84 [{"LeftMargin", "Columns", "RightMargin"}]
      265 GETUPVAL                         R22 3
      266 GETTABLEKS                       R22 R22 K21 ["createElement"]
      268 GETUPVAL                         R23 8
      269 DUPTABLE                         R24 K86 [{["width"], ["backgroundStyle"], ["LayoutOrder"] = 0}]
      270 GETTABLEKS                       R25 R10 K77 ["margin"]
      272 SETTABLEKS                       R25 R24 K23 ["width"]
      274 DUPTABLE                         R25 K68 [{"Color3", "Transparency"}]
      275 GETTABLEKS                       R26 R2 K34 ["Color"]
      277 GETTABLEKS                       R26 R26 K35 ["System"]
      279 GETTABLEKS                       R26 R26 K87 ["Warning"]
      281 GETTABLEKS                       R26 R26 K30 ["Color3"]
      283 SETTABLEKS                       R26 R25 K30 ["Color3"]
      285 GETTABLEKS                       R26 R1 K71 ["debugTransparency"]
      287 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      289 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      291 CALL                             R22 2 1
      292 SETTABLEKS                       R22 R21 K81 ["LeftMargin"]
      294 GETUPVAL                         R22 3
      295 GETTABLEKS                       R22 R22 K21 ["createElement"]
      297 GETUPVAL                         R23 9
      298 DUPTABLE                         R24 K89 [{["tag"] = "size-0-full row fill flex-x-evenly", ["backgroundStyle"], ["LayoutOrder"] = 1}]
      299 DUPTABLE                         R25 K68 [{"Color3", "Transparency"}]
      300 GETTABLEKS                       R26 R2 K34 ["Color"]
      302 GETTABLEKS                       R26 R26 K35 ["System"]
      304 GETTABLEKS                       R26 R26 K80 ["Emphasis"]
      306 GETTABLEKS                       R26 R26 K30 ["Color3"]
      308 SETTABLEKS                       R26 R25 K30 ["Color3"]
      310 GETTABLEKS                       R26 R1 K71 ["debugTransparency"]
      312 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      314 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      316 MOVE                             R25 R12
      317 CALL                             R22 3 1
      318 SETTABLEKS                       R22 R21 K82 ["Columns"]
      320 GETUPVAL                         R22 3
      321 GETTABLEKS                       R22 R22 K21 ["createElement"]
      323 GETUPVAL                         R23 8
      324 DUPTABLE                         R24 K91 [{["width"], ["backgroundStyle"], ["LayoutOrder"] = 2}]
      325 GETTABLEKS                       R25 R10 K77 ["margin"]
      327 SETTABLEKS                       R25 R24 K23 ["width"]
      329 DUPTABLE                         R25 K68 [{"Color3", "Transparency"}]
      330 GETTABLEKS                       R26 R2 K34 ["Color"]
      332 GETTABLEKS                       R26 R26 K35 ["System"]
      334 GETTABLEKS                       R26 R26 K87 ["Warning"]
      336 GETTABLEKS                       R26 R26 K30 ["Color3"]
      338 SETTABLEKS                       R26 R25 K30 ["Color3"]
      340 GETTABLEKS                       R26 R1 K71 ["debugTransparency"]
      342 SETTABLEKS                       R26 R25 K31 ["Transparency"]
      344 SETTABLEKS                       R25 R24 K24 ["backgroundStyle"]
      346 CALL                             R22 2 1
      347 SETTABLEKS                       R22 R21 K83 ["RightMargin"]
      349 CALL                             R18 3 1
      350 SETTABLEKS                       R18 R17 K48 ["GridDebug"]
      352 JUMPIFNOT                        R3 ; [+47]
      353 GETUPVAL                         R18 3
      354 GETTABLEKS                       R18 R18 K21 ["createElement"]
      356 GETUPVAL                         R19 12
      357 GETTABLEKS                       R19 R19 K92 ["Provider"]
      359 DUPTABLE                         R20 K94 [{"value"}]
      360 SETTABLEKS                       R3 R20 K93 ["value"]
      362 GETUPVAL                         R21 3
      363 GETTABLEKS                       R21 R21 K21 ["createElement"]
      365 GETUPVAL                         R22 9
      366 DUPTABLE                         R23 K96 [{["tag"] = "size-full-full"}]
      367 DUPTABLE                         R24 K99 [{"GridDebugPadding", "GridDebugChildren"}]
      368 GETUPVAL                         R25 3
      369 GETTABLEKS                       R25 R25 K21 ["createElement"]
      371 LOADK                            R26 K100 ["UIPadding"]
      372 DUPTABLE                         R27 K102 [{"PaddingTop"}]
      373 GETIMPORT                        R28 K104 [UDim.new]
      375 LOADN                            R29 0
      376 GETTABLEKS                       R31 R10 K105 ["gapHeight"]
      378 MULK                             R30 R31 K90 [2]
      379 CALL                             R28 2 1
      380 SETTABLEKS                       R28 R27 K101 ["PaddingTop"]
      382 CALL                             R25 2 1
      383 SETTABLEKS                       R25 R24 K97 ["GridDebugPadding"]
      385 GETUPVAL                         R25 3
      386 GETTABLEKS                       R25 R25 K21 ["createElement"]
      388 GETUPVAL                         R26 3
      389 GETTABLEKS                       R26 R26 K106 ["Fragment"]
      391 LOADNIL                          R27
      392 GETTABLEKS                       R28 R0 K107 ["children"]
      394 CALL                             R25 3 1
      395 SETTABLEKS                       R25 R24 K98 ["GridDebugChildren"]
      397 CALL                             R21 3 -1
      398 CALL                             R18 -1 1
      399 JUMP                             ; [+1]
      400 LOADNIL                          R18
      401 SETTABLEKS                       R18 R17 K49 ["GridDebugContent"]
      403 CALL                             R14 3 -1
      404 RETURN                           R14 -1

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
       99 DUPTABLE                         R14 K28 [{["debugTransparency"] = 0.7}]
      100 DUPCLOSURE                       R15 K29 [PROTO_1]
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R5
      114 RETURN                           R15 1
