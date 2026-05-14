PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["guiRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Tutorial"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 NAMECALL                         R2 R1 K2 ["Destroy"]
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K3 ["guiRef"]
       11 GETTABLEKS                       R2 R2 K4 ["current"]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K5 ["Parent"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R1 K2 ["TutorialData"]
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R5 R4 K3 ["step"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 MOVE                             R6 R5
       14 JUMPIFNOT                        R6 ; [+6]
       15 GETTABLEKS                       R7 R5 K4 ["kind"]
       17 JUMPIFEQKS                       R7 K5 ["Dialog"] ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 GETTABLEKS                       R7 R1 K6 ["PressedKeys"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K7 ["createElement"]
       26 LOADK                            R9 K8 ["ScreenGui"]
       27 DUPTABLE                         R10 K10 [{"ref"}]
       28 GETTABLEKS                       R11 R0 K11 ["guiRef"]
       30 SETTABLEKS                       R11 R10 K9 ["ref"]
       32 DUPTABLE                         R11 K14 [{"Content", "ProgressRow"}]
       33 JUMPIFNOT                        R5 ; [+305]
       34 GETTABLEKS                       R13 R5 K15 ["callout"]
       36 JUMPIF                           R13 ; [+302]
       37 GETTABLEKS                       R13 R5 K4 ["kind"]
       39 JUMPIFEQKS                       R13 K16 ["Playtest"] ; [+299]
       41 GETUPVAL                         R12 1
       42 GETTABLEKS                       R12 R12 K7 ["createElement"]
       44 GETUPVAL                         R13 2
       45 DUPTABLE                         R14 K25 [{"AnchorPoint", "ClipsDescendants", "AutomaticSize", "Layout", "Style", "BackgroundTransparency", "Spacing", "Position"}]
       46 JUMPIFNOT                        R6 ; [+6]
       47 GETIMPORT                        R15 K28 [Vector2.new]
       49 LOADK                            R16 K29 [0.5]
       50 LOADK                            R17 K29 [0.5]
       51 CALL                             R15 2 1
       52 JUMP                             ; [+5]
       53 GETIMPORT                        R15 K28 [Vector2.new]
       55 LOADK                            R16 K29 [0.5]
       56 LOADN                            R17 1
       57 CALL                             R15 2 1
       58 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
       60 LOADB                            R15 1
       61 SETTABLEKS                       R15 R14 K18 ["ClipsDescendants"]
       63 GETIMPORT                        R15 K32 [Enum.AutomaticSize.XY]
       65 SETTABLEKS                       R15 R14 K19 ["AutomaticSize"]
       67 GETIMPORT                        R15 K35 [Enum.FillDirection.Vertical]
       69 SETTABLEKS                       R15 R14 K20 ["Layout"]
       71 LOADK                            R15 K36 ["Box"]
       72 SETTABLEKS                       R15 R14 K21 ["Style"]
       74 LOADK                            R15 K37 [0.05]
       75 SETTABLEKS                       R15 R14 K22 ["BackgroundTransparency"]
       77 LOADN                            R15 20
       78 SETTABLEKS                       R15 R14 K23 ["Spacing"]
       80 JUMPIFNOT                        R6 ; [+6]
       81 GETIMPORT                        R15 K40 [UDim2.fromScale]
       83 LOADK                            R16 K29 [0.5]
       84 LOADK                            R17 K29 [0.5]
       85 CALL                             R15 2 1
       86 JUMP                             ; [+7]
       87 GETIMPORT                        R15 K41 [UDim2.new]
       89 LOADK                            R16 K29 [0.5]
       90 LOADN                            R17 0
       91 LOADN                            R18 1
       92 LOADN                            R19 208
       93 CALL                             R15 4 1
       94 SETTABLEKS                       R15 R14 K24 ["Position"]
       96 DUPTABLE                         R15 K45 [{"Corner", "MaxSize", "Hint"}]
       97 GETUPVAL                         R16 1
       98 GETTABLEKS                       R16 R16 K7 ["createElement"]
      100 LOADK                            R17 K46 ["UICorner"]
      101 DUPTABLE                         R18 K48 [{"CornerRadius"}]
      102 GETIMPORT                        R19 K50 [UDim.new]
      104 LOADN                            R20 0
      105 LOADN                            R21 16
      106 CALL                             R19 2 1
      107 SETTABLEKS                       R19 R18 K47 ["CornerRadius"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K42 ["Corner"]
      112 GETUPVAL                         R16 1
      113 GETTABLEKS                       R16 R16 K7 ["createElement"]
      115 LOADK                            R17 K51 ["UISizeConstraint"]
      116 DUPTABLE                         R18 K52 [{"MaxSize"}]
      117 GETIMPORT                        R19 K28 [Vector2.new]
      119 LOADN                            R20 244
      120 LOADN                            R21 244
      121 CALL                             R19 2 1
      122 SETTABLEKS                       R19 R18 K43 ["MaxSize"]
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K43 ["MaxSize"]
      127 GETUPVAL                         R16 1
      128 GETTABLEKS                       R16 R16 K7 ["createElement"]
      130 GETUPVAL                         R17 2
      131 DUPTABLE                         R18 K54 [{"AutomaticSize", "Layout", "Padding", "Spacing"}]
      132 GETIMPORT                        R19 K32 [Enum.AutomaticSize.XY]
      134 SETTABLEKS                       R19 R18 K19 ["AutomaticSize"]
      136 GETIMPORT                        R19 K35 [Enum.FillDirection.Vertical]
      138 SETTABLEKS                       R19 R18 K20 ["Layout"]
      140 LOADN                            R19 20
      141 SETTABLEKS                       R19 R18 K53 ["Padding"]
      143 LOADN                            R19 20
      144 SETTABLEKS                       R19 R18 K23 ["Spacing"]
      146 DUPTABLE                         R19 K60 [{"Tick", "Keys", "Title", "Subtitle", "ButtonRow"}]
      147 GETTABLEKS                       R21 R5 K4 ["kind"]
      149 JUMPIFNOTEQKS                    R21 K61 ["Completed"] ; [+22]
      151 GETUPVAL                         R20 1
      152 GETTABLEKS                       R20 R20 K7 ["createElement"]
      154 GETUPVAL                         R21 3
      155 DUPTABLE                         R22 K65 [{"LayoutOrder", "Image", "Size"}]
      156 MOVE                             R23 R3
      157 CALL                             R23 0 1
      158 SETTABLEKS                       R23 R22 K62 ["LayoutOrder"]
      160 LOADK                            R23 K66 ["rbxasset://textures/Tutorials/Tick.png"]
      161 SETTABLEKS                       R23 R22 K63 ["Image"]
      163 GETIMPORT                        R23 K68 [UDim2.fromOffset]
      165 LOADN                            R24 52
      166 LOADN                            R25 52
      167 CALL                             R23 2 1
      168 SETTABLEKS                       R23 R22 K64 ["Size"]
      170 CALL                             R20 2 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R20
      173 SETTABLEKS                       R20 R19 K55 ["Tick"]
      175 JUMPIFNOT                        R7 ; [+13]
      176 GETUPVAL                         R20 1
      177 GETTABLEKS                       R20 R20 K7 ["createElement"]
      179 GETUPVAL                         R21 4
      180 DUPTABLE                         R22 K69 [{"LayoutOrder", "PressedKeys"}]
      181 MOVE                             R23 R3
      182 CALL                             R23 0 1
      183 SETTABLEKS                       R23 R22 K62 ["LayoutOrder"]
      185 SETTABLEKS                       R7 R22 K6 ["PressedKeys"]
      187 CALL                             R20 2 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R20
      190 SETTABLEKS                       R20 R19 K56 ["Keys"]
      192 GETTABLEKS                       R21 R5 K70 ["title"]
      194 JUMPIFNOT                        R21 ; [+33]
      195 GETTABLEKS                       R21 R5 K4 ["kind"]
      197 JUMPIFNOTEQKS                    R21 K5 ["Dialog"] ; [+30]
      199 GETUPVAL                         R20 1
      200 GETTABLEKS                       R20 R20 K7 ["createElement"]
      202 GETUPVAL                         R21 5
      203 DUPTABLE                         R22 K75 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "Text", "Font", "TextSize"}]
      204 GETIMPORT                        R23 K32 [Enum.AutomaticSize.XY]
      206 SETTABLEKS                       R23 R22 K19 ["AutomaticSize"]
      208 MOVE                             R23 R3
      209 CALL                             R23 0 1
      210 SETTABLEKS                       R23 R22 K62 ["LayoutOrder"]
      212 LOADB                            R23 1
      213 SETTABLEKS                       R23 R22 K71 ["TextWrapped"]
      215 GETTABLEKS                       R23 R5 K70 ["title"]
      217 SETTABLEKS                       R23 R22 K72 ["Text"]
      219 GETIMPORT                        R23 K77 [Enum.Font.SourceSansBold]
      221 SETTABLEKS                       R23 R22 K73 ["Font"]
      223 LOADN                            R23 26
      224 SETTABLEKS                       R23 R22 K74 ["TextSize"]
      226 CALL                             R20 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R20
      229 SETTABLEKS                       R20 R19 K57 ["Title"]
      231 GETTABLEKS                       R21 R5 K78 ["description"]
      233 JUMPIFNOT                        R21 ; [+28]
      234 GETUPVAL                         R20 1
      235 GETTABLEKS                       R20 R20 K7 ["createElement"]
      237 GETUPVAL                         R21 5
      238 DUPTABLE                         R22 K80 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize", "TextWrapped", "RichText"}]
      239 GETIMPORT                        R23 K32 [Enum.AutomaticSize.XY]
      241 SETTABLEKS                       R23 R22 K19 ["AutomaticSize"]
      243 MOVE                             R23 R3
      244 CALL                             R23 0 1
      245 SETTABLEKS                       R23 R22 K62 ["LayoutOrder"]
      247 GETTABLEKS                       R23 R5 K78 ["description"]
      249 SETTABLEKS                       R23 R22 K72 ["Text"]
      251 LOADN                            R23 22
      252 SETTABLEKS                       R23 R22 K74 ["TextSize"]
      254 LOADB                            R23 1
      255 SETTABLEKS                       R23 R22 K71 ["TextWrapped"]
      257 LOADB                            R23 1
      258 SETTABLEKS                       R23 R22 K79 ["RichText"]
      260 CALL                             R20 2 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R20
      263 SETTABLEKS                       R20 R19 K58 ["Subtitle"]
      265 GETTABLEKS                       R21 R5 K4 ["kind"]
      267 JUMPIFEQKS                       R21 K5 ["Dialog"] ; [+4]
      269 GETTABLEKS                       R21 R5 K81 ["showNext"]
      271 JUMPIFNOT                        R21 ; [+59]
      272 GETUPVAL                         R20 1
      273 GETTABLEKS                       R20 R20 K7 ["createElement"]
      275 GETUPVAL                         R21 2
      276 DUPTABLE                         R22 K82 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing"}]
      277 GETIMPORT                        R23 K32 [Enum.AutomaticSize.XY]
      279 SETTABLEKS                       R23 R22 K19 ["AutomaticSize"]
      281 GETIMPORT                        R23 K84 [Enum.FillDirection.Horizontal]
      283 SETTABLEKS                       R23 R22 K20 ["Layout"]
      285 MOVE                             R23 R3
      286 CALL                             R23 0 1
      287 SETTABLEKS                       R23 R22 K62 ["LayoutOrder"]
      289 LOADN                            R23 20
      290 SETTABLEKS                       R23 R22 K23 ["Spacing"]
      292 DUPTABLE                         R23 K86 [{"Next"}]
      293 GETUPVAL                         R24 1
      294 GETTABLEKS                       R24 R24 K7 ["createElement"]
      296 GETUPVAL                         R25 6
      297 DUPTABLE                         R26 K88 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
      298 MOVE                             R27 R3
      299 CALL                             R27 0 1
      300 SETTABLEKS                       R27 R26 K62 ["LayoutOrder"]
      302 GETTABLEKS                       R27 R5 K89 ["nextText"]
      304 JUMPIF                           R27 ; [+5]
      305 LOADK                            R29 K90 ["Tutorial"]
      306 LOADK                            R30 K91 ["Begin"]
      307 NAMECALL                         R27 R2 K92 ["getText"]
      309 CALL                             R27 3 1
      310 SETTABLEKS                       R27 R26 K72 ["Text"]
      312 LOADK                            R27 K93 ["RoundPrimary"]
      313 SETTABLEKS                       R27 R26 K21 ["Style"]
      315 GETTABLEKS                       R27 R1 K94 ["OnNext"]
      317 SETTABLEKS                       R27 R26 K87 ["OnClick"]
      319 GETIMPORT                        R27 K68 [UDim2.fromOffset]
      321 LOADN                            R28 80
      322 LOADN                            R29 32
      323 CALL                             R27 2 1
      324 SETTABLEKS                       R27 R26 K64 ["Size"]
      326 CALL                             R24 2 1
      327 SETTABLEKS                       R24 R23 K85 ["Next"]
      329 CALL                             R20 3 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R20
      332 SETTABLEKS                       R20 R19 K59 ["ButtonRow"]
      334 CALL                             R16 3 1
      335 SETTABLEKS                       R16 R15 K44 ["Hint"]
      337 CALL                             R12 3 1
      338 JUMP                             ; [+1]
      339 LOADNIL                          R12
      340 SETTABLEKS                       R12 R11 K12 ["Content"]
      342 MOVE                             R12 R4
      343 JUMPIFNOT                        R12 ; [+129]
      344 GETUPVAL                         R12 1
      345 GETTABLEKS                       R12 R12 K7 ["createElement"]
      347 GETUPVAL                         R13 2
      348 DUPTABLE                         R14 K95 [{"AnchorPoint", "AutomaticSize", "BackgroundTransparency", "Layout", "Position", "Padding", "Spacing", "Size", "Style"}]
      349 GETIMPORT                        R15 K28 [Vector2.new]
      351 LOADN                            R16 0
      352 LOADN                            R17 1
      353 CALL                             R15 2 1
      354 SETTABLEKS                       R15 R14 K17 ["AnchorPoint"]
      356 GETIMPORT                        R15 K97 [Enum.AutomaticSize.Y]
      358 SETTABLEKS                       R15 R14 K19 ["AutomaticSize"]
      360 LOADK                            R15 K37 [0.05]
      361 SETTABLEKS                       R15 R14 K22 ["BackgroundTransparency"]
      363 GETIMPORT                        R15 K84 [Enum.FillDirection.Horizontal]
      365 SETTABLEKS                       R15 R14 K20 ["Layout"]
      367 GETIMPORT                        R15 K40 [UDim2.fromScale]
      369 LOADN                            R16 0
      370 LOADN                            R17 1
      371 CALL                             R15 2 1
      372 SETTABLEKS                       R15 R14 K24 ["Position"]
      374 LOADN                            R15 5
      375 SETTABLEKS                       R15 R14 K53 ["Padding"]
      377 LOADN                            R15 10
      378 SETTABLEKS                       R15 R14 K23 ["Spacing"]
      380 GETIMPORT                        R15 K40 [UDim2.fromScale]
      382 LOADN                            R16 1
      383 LOADN                            R17 0
      384 CALL                             R15 2 1
      385 SETTABLEKS                       R15 R14 K64 ["Size"]
      387 LOADK                            R15 K36 ["Box"]
      388 SETTABLEKS                       R15 R14 K21 ["Style"]
      390 DUPTABLE                         R15 K101 [{"Name", "Progress", "Skip"}]
      391 GETUPVAL                         R16 1
      392 GETTABLEKS                       R16 R16 K7 ["createElement"]
      394 GETUPVAL                         R17 5
      395 DUPTABLE                         R18 K102 [{"AutomaticSize", "Style", "Text"}]
      396 GETIMPORT                        R19 K32 [Enum.AutomaticSize.XY]
      398 SETTABLEKS                       R19 R18 K19 ["AutomaticSize"]
      400 LOADK                            R19 K58 ["Subtitle"]
      401 SETTABLEKS                       R19 R18 K21 ["Style"]
      403 GETTABLEKS                       R19 R1 K57 ["Title"]
      405 SETTABLEKS                       R19 R18 K72 ["Text"]
      407 CALL                             R16 2 1
      408 SETTABLEKS                       R16 R15 K98 ["Name"]
      410 GETUPVAL                         R16 1
      411 GETTABLEKS                       R16 R16 K7 ["createElement"]
      413 GETUPVAL                         R17 7
      414 DUPTABLE                         R18 K103 [{"LayoutOrder", "Progress", "Size"}]
      415 MOVE                             R19 R3
      416 CALL                             R19 0 1
      417 SETTABLEKS                       R19 R18 K62 ["LayoutOrder"]
      419 GETTABLEKS                       R21 R4 K105 ["currentStep"]
      421 SUBK                             R20 R21 K104 [1]
      422 GETTABLEKS                       R21 R4 K106 ["stepCount"]
      424 DIV                              R19 R20 R21
      425 SETTABLEKS                       R19 R18 K99 ["Progress"]
      427 GETIMPORT                        R19 K41 [UDim2.new]
      429 LOADN                            R20 1
      430 LOADN                            R21 212
      431 LOADN                            R22 0
      432 LOADN                            R23 20
      433 CALL                             R19 4 1
      434 SETTABLEKS                       R19 R18 K64 ["Size"]
      436 CALL                             R16 2 1
      437 SETTABLEKS                       R16 R15 K99 ["Progress"]
      439 GETUPVAL                         R16 1
      440 GETTABLEKS                       R16 R16 K7 ["createElement"]
      442 GETUPVAL                         R17 6
      443 DUPTABLE                         R18 K88 [{"LayoutOrder", "Text", "Style", "OnClick", "Size"}]
      444 MOVE                             R19 R3
      445 CALL                             R19 0 1
      446 SETTABLEKS                       R19 R18 K62 ["LayoutOrder"]
      448 LOADK                            R21 K90 ["Tutorial"]
      449 LOADK                            R22 K107 ["SkipStep"]
      450 NAMECALL                         R19 R2 K92 ["getText"]
      452 CALL                             R19 3 1
      453 SETTABLEKS                       R19 R18 K72 ["Text"]
      455 LOADK                            R19 K108 ["Round"]
      456 SETTABLEKS                       R19 R18 K21 ["Style"]
      458 GETTABLEKS                       R19 R1 K109 ["OnSkip"]
      460 SETTABLEKS                       R19 R18 K87 ["OnClick"]
      462 GETIMPORT                        R19 K68 [UDim2.fromOffset]
      464 LOADN                            R20 80
      465 LOADN                            R21 32
      466 CALL                             R19 2 1
      467 SETTABLEKS                       R19 R18 K64 ["Size"]
      469 CALL                             R16 2 1
      470 SETTABLEKS                       R16 R15 K100 ["Skip"]
      472 CALL                             R12 3 1
      473 SETTABLEKS                       R12 R11 K13 ["ProgressRow"]
      475 CALL                             R8 3 -1
      476 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["CoreGui"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K13 ["withContext"]
       33 GETTABLEKS                       R6 R4 K14 ["Stylizer"]
       35 GETTABLEKS                       R7 R4 K15 ["Localization"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K16 ["Src"]
       41 GETTABLEKS                       R9 R9 K17 ["Components"]
       43 GETTABLEKS                       R9 R9 K18 ["HintKeys"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R0 K16 ["Src"]
       50 GETTABLEKS                       R10 R10 K19 ["Util"]
       52 GETTABLEKS                       R10 R10 K20 ["counter"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R2 K21 ["UI"]
       57 GETTABLEKS                       R11 R10 K22 ["Button"]
       59 GETTABLEKS                       R12 R10 K23 ["Image"]
       61 GETTABLEKS                       R13 R10 K24 ["LoadingBar"]
       63 GETTABLEKS                       R14 R10 K25 ["Pane"]
       65 GETTABLEKS                       R15 R10 K26 ["TextLabel"]
       67 GETTABLEKS                       R16 R1 K27 ["PureComponent"]
       69 LOADK                            R18 K28 ["HintBar"]
       70 NAMECALL                         R16 R16 K29 ["extend"]
       72 CALL                             R16 2 1
       73 DUPCLOSURE                       R17 K30 [PROTO_0]
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R17 R16 K31 ["init"]
       77 DUPCLOSURE                       R17 K32 [PROTO_1]
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R17 R16 K33 ["didMount"]
       81 DUPCLOSURE                       R17 K34 [PROTO_2]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R17 R16 K35 ["render"]
       92 MOVE                             R17 R5
       93 DUPTABLE                         R18 K36 [{"Localization", "Stylizer"}]
       94 SETTABLEKS                       R7 R18 K15 ["Localization"]
       96 SETTABLEKS                       R6 R18 K14 ["Stylizer"]
       98 CALL                             R17 1 1
       99 MOVE                             R18 R16
      100 CALL                             R17 1 1
      101 MOVE                             R16 R17
      102 RETURN                           R16 1
