PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R2 R1 K2 ["getLocale"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K3 ["TriangleCount"]
       11 JUMPIFNOT                        R4 ; [+7]
       12 GETTABLEKS                       R4 R0 K3 ["TriangleCount"]
       14 FASTCALL1                        TONUMBER R4 ; [+2]
       15 GETIMPORT                        R3 K5 [tonumber]
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+1]
       19 LOADN                            R3 0
       20 GETUPVAL                         R4 1
       21 MOVE                             R5 R3
       22 MOVE                             R6 R2
       23 CALL                             R4 2 1
       24 GETTABLEKS                       R6 R0 K6 ["DrawCallCount"]
       26 JUMPIFNOT                        R6 ; [+7]
       27 GETTABLEKS                       R6 R0 K6 ["DrawCallCount"]
       29 FASTCALL1                        TONUMBER R6 ; [+2]
       30 GETIMPORT                        R5 K5 [tonumber]
       32 CALL                             R5 1 1
       33 JUMPIF                           R5 ; [+1]
       34 LOADN                            R5 0
       35 GETUPVAL                         R6 1
       36 MOVE                             R7 R5
       37 MOVE                             R8 R2
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R7 R7 K7 ["createElement"]
       42 LOADK                            R8 K8 ["Frame"]
       43 NEWTABLE                         R9 4 0
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K9 ["Tag"]
       48 LOADK                            R11 K10 ["X-Fill X-Column Component-MainThermometer"]
       49 SETTABLE                         R11 R9 R10
       50 GETIMPORT                        R10 K13 [UDim2.new]
       52 LOADN                            R11 1
       53 LOADN                            R12 0
       54 LOADN                            R13 1
       55 LOADN                            R14 0
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R9 K14 ["Size"]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K15 ["BackgroundTransparency"]
       62 DUPTABLE                         R10 K24 [{"Layout", "Padding", "GraphicsSettings", "TriangleLabel", "DrawcallsLabel", "GameRenderLabel", "GameTaskLabel", "EditDMWarning"}]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K7 ["createElement"]
       66 LOADK                            R12 K25 ["UIListLayout"]
       67 DUPTABLE                         R13 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       68 GETIMPORT                        R14 K32 [UDim.new]
       70 LOADN                            R15 0
       71 LOADN                            R16 10
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K17 ["Padding"]
       75 GETIMPORT                        R14 K35 [Enum.FillDirection.Vertical]
       77 SETTABLEKS                       R14 R13 K26 ["FillDirection"]
       79 GETIMPORT                        R14 K37 [Enum.HorizontalAlignment.Left]
       81 SETTABLEKS                       R14 R13 K27 ["HorizontalAlignment"]
       83 GETIMPORT                        R14 K39 [Enum.VerticalAlignment.Top]
       85 SETTABLEKS                       R14 R13 K28 ["VerticalAlignment"]
       87 GETIMPORT                        R14 K41 [Enum.SortOrder.LayoutOrder]
       89 SETTABLEKS                       R14 R13 K29 ["SortOrder"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K16 ["Layout"]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R11 R11 K7 ["createElement"]
       97 LOADK                            R12 K42 ["UIPadding"]
       98 DUPTABLE                         R13 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       99 GETIMPORT                        R14 K32 [UDim.new]
      101 LOADN                            R15 0
      102 LOADN                            R16 10
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K43 ["PaddingTop"]
      106 GETIMPORT                        R14 K32 [UDim.new]
      108 LOADN                            R15 0
      109 LOADN                            R16 10
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K44 ["PaddingBottom"]
      113 GETIMPORT                        R14 K32 [UDim.new]
      115 LOADN                            R15 0
      116 LOADN                            R16 12
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K45 ["PaddingLeft"]
      120 GETIMPORT                        R14 K32 [UDim.new]
      122 LOADN                            R15 0
      123 LOADN                            R16 12
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K46 ["PaddingRight"]
      127 CALL                             R11 2 1
      128 SETTABLEKS                       R11 R10 K17 ["Padding"]
      130 GETUPVAL                         R11 2
      131 GETTABLEKS                       R11 R11 K7 ["createElement"]
      133 LOADK                            R12 K8 ["Frame"]
      134 DUPTABLE                         R13 K49 [{"Size", "BackgroundTransparency", "LayoutOrder", "AutomaticSize"}]
      135 GETIMPORT                        R14 K13 [UDim2.new]
      137 LOADN                            R15 1
      138 LOADN                            R16 0
      139 LOADN                            R17 0
      140 LOADN                            R18 0
      141 CALL                             R14 4 1
      142 SETTABLEKS                       R14 R13 K14 ["Size"]
      144 LOADN                            R14 1
      145 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      147 LOADN                            R14 1
      148 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      150 GETIMPORT                        R14 K51 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R14 R13 K48 ["AutomaticSize"]
      154 DUPTABLE                         R14 K55 [{"Layout", "Padding", "GraphicsQualitySettings", "GraphicsQualitySettingsWarning", "DividerFrame"}]
      155 GETUPVAL                         R15 2
      156 GETTABLEKS                       R15 R15 K7 ["createElement"]
      158 LOADK                            R16 K25 ["UIListLayout"]
      159 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      160 GETIMPORT                        R18 K32 [UDim.new]
      162 LOADN                            R19 0
      163 LOADN                            R20 5
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K17 ["Padding"]
      167 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      169 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      171 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      173 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      175 GETIMPORT                        R18 K57 [Enum.VerticalAlignment.Center]
      177 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      179 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      181 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K16 ["Layout"]
      186 GETUPVAL                         R15 2
      187 GETTABLEKS                       R15 R15 K7 ["createElement"]
      189 LOADK                            R16 K42 ["UIPadding"]
      190 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      191 GETIMPORT                        R18 K32 [UDim.new]
      193 LOADN                            R19 0
      194 LOADN                            R20 0
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      198 GETIMPORT                        R18 K32 [UDim.new]
      200 LOADN                            R19 0
      201 LOADN                            R20 12
      202 CALL                             R18 2 1
      203 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      205 GETIMPORT                        R18 K32 [UDim.new]
      207 LOADN                            R19 0
      208 LOADN                            R20 0
      209 CALL                             R18 2 1
      210 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      212 GETIMPORT                        R18 K32 [UDim.new]
      214 LOADN                            R19 0
      215 LOADN                            R20 0
      216 CALL                             R18 2 1
      217 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      219 CALL                             R15 2 1
      220 SETTABLEKS                       R15 R14 K17 ["Padding"]
      222 GETUPVAL                         R15 2
      223 GETTABLEKS                       R15 R15 K7 ["createElement"]
      225 GETUPVAL                         R16 3
      226 NEWTABLE                         R17 4 0
      228 GETUPVAL                         R18 2
      229 GETTABLEKS                       R18 R18 K9 ["Tag"]
      231 LOADK                            R19 K58 ["X-Fit X-Row X-Corner"]
      232 SETTABLE                         R19 R17 R18
      233 LOADN                            R18 1
      234 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      236 GETTABLEKS                       R18 R0 K59 ["IsEditMode"]
      238 SETTABLEKS                       R18 R17 K59 ["IsEditMode"]
      240 GETTABLEKS                       R18 R0 K60 ["AutomaticGraphicsQuality"]
      242 SETTABLEKS                       R18 R17 K60 ["AutomaticGraphicsQuality"]
      244 CALL                             R15 2 1
      245 SETTABLEKS                       R15 R14 K52 ["GraphicsQualitySettings"]
      247 GETTABLEKS                       R15 R0 K59 ["IsEditMode"]
      249 JUMPIFNOT                        R15 ; [+142]
      250 GETUPVAL                         R15 2
      251 GETTABLEKS                       R15 R15 K7 ["createElement"]
      253 LOADK                            R16 K8 ["Frame"]
      254 NEWTABLE                         R17 4 0
      256 GETUPVAL                         R18 2
      257 GETTABLEKS                       R18 R18 K9 ["Tag"]
      259 LOADK                            R19 K58 ["X-Fit X-Row X-Corner"]
      260 SETTABLE                         R19 R17 R18
      261 LOADN                            R18 1
      262 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      264 LOADN                            R18 2
      265 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      267 DUPTABLE                         R18 K63 [{"Layout", "Padding", "InformationImageLabel", "GraphicsQualityWarningLabel"}]
      268 GETUPVAL                         R19 2
      269 GETTABLEKS                       R19 R19 K7 ["createElement"]
      271 LOADK                            R20 K25 ["UIListLayout"]
      272 DUPTABLE                         R21 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      273 GETIMPORT                        R22 K32 [UDim.new]
      275 LOADN                            R23 0
      276 LOADN                            R24 5
      277 CALL                             R22 2 1
      278 SETTABLEKS                       R22 R21 K17 ["Padding"]
      280 GETIMPORT                        R22 K35 [Enum.FillDirection.Vertical]
      282 SETTABLEKS                       R22 R21 K26 ["FillDirection"]
      284 GETIMPORT                        R22 K37 [Enum.HorizontalAlignment.Left]
      286 SETTABLEKS                       R22 R21 K27 ["HorizontalAlignment"]
      288 GETIMPORT                        R22 K57 [Enum.VerticalAlignment.Center]
      290 SETTABLEKS                       R22 R21 K28 ["VerticalAlignment"]
      292 GETIMPORT                        R22 K41 [Enum.SortOrder.LayoutOrder]
      294 SETTABLEKS                       R22 R21 K29 ["SortOrder"]
      296 CALL                             R19 2 1
      297 SETTABLEKS                       R19 R18 K16 ["Layout"]
      299 GETUPVAL                         R19 2
      300 GETTABLEKS                       R19 R19 K7 ["createElement"]
      302 LOADK                            R20 K42 ["UIPadding"]
      303 DUPTABLE                         R21 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      304 GETIMPORT                        R22 K32 [UDim.new]
      306 LOADN                            R23 0
      307 LOADN                            R24 0
      308 CALL                             R22 2 1
      309 SETTABLEKS                       R22 R21 K43 ["PaddingTop"]
      311 GETIMPORT                        R22 K32 [UDim.new]
      313 LOADN                            R23 0
      314 LOADN                            R24 0
      315 CALL                             R22 2 1
      316 SETTABLEKS                       R22 R21 K44 ["PaddingBottom"]
      318 GETIMPORT                        R22 K32 [UDim.new]
      320 LOADN                            R23 0
      321 LOADN                            R24 0
      322 CALL                             R22 2 1
      323 SETTABLEKS                       R22 R21 K45 ["PaddingLeft"]
      325 GETIMPORT                        R22 K32 [UDim.new]
      327 LOADN                            R23 0
      328 LOADN                            R24 0
      329 CALL                             R22 2 1
      330 SETTABLEKS                       R22 R21 K46 ["PaddingRight"]
      332 CALL                             R19 2 1
      333 SETTABLEKS                       R19 R18 K17 ["Padding"]
      335 GETUPVAL                         R19 2
      336 GETTABLEKS                       R19 R19 K7 ["createElement"]
      338 LOADK                            R20 K64 ["ImageLabel"]
      339 NEWTABLE                         R21 4 0
      341 GETUPVAL                         R22 2
      342 GETTABLEKS                       R22 R22 K9 ["Tag"]
      344 LOADK                            R23 K65 ["InformationLabel"]
      345 SETTABLE                         R23 R21 R22
      346 GETIMPORT                        R22 K13 [UDim2.new]
      348 LOADN                            R23 0
      349 LOADN                            R24 16
      350 LOADN                            R25 0
      351 LOADN                            R26 16
      352 CALL                             R22 4 1
      353 SETTABLEKS                       R22 R21 K14 ["Size"]
      355 LOADN                            R22 1
      356 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
      358 LOADN                            R22 1
      359 SETTABLEKS                       R22 R21 K40 ["LayoutOrder"]
      361 CALL                             R19 2 1
      362 SETTABLEKS                       R19 R18 K61 ["InformationImageLabel"]
      364 GETUPVAL                         R19 2
      365 GETTABLEKS                       R19 R19 K7 ["createElement"]
      367 LOADK                            R20 K66 ["TextLabel"]
      368 NEWTABLE                         R21 4 0
      370 GETUPVAL                         R22 2
      371 GETTABLEKS                       R22 R22 K9 ["Tag"]
      373 LOADK                            R23 K67 ["X-Fit"]
      374 SETTABLE                         R23 R21 R22
      375 LOADK                            R24 K68 ["SceneBudgetThermometer"]
      376 LOADK                            R25 K69 ["QualitySettingWarning"]
      377 NAMECALL                         R22 R1 K70 ["getText"]
      379 CALL                             R22 3 1
      380 SETTABLEKS                       R22 R21 K71 ["Text"]
      382 LOADB                            R22 1
      383 SETTABLEKS                       R22 R21 K72 ["TextWrapped"]
      385 LOADN                            R22 2
      386 SETTABLEKS                       R22 R21 K40 ["LayoutOrder"]
      388 CALL                             R19 2 1
      389 SETTABLEKS                       R19 R18 K62 ["GraphicsQualityWarningLabel"]
      391 CALL                             R15 3 1
      392 SETTABLEKS                       R15 R14 K53 ["GraphicsQualitySettingsWarning"]
      394 GETUPVAL                         R15 2
      395 GETTABLEKS                       R15 R15 K7 ["createElement"]
      397 LOADK                            R16 K8 ["Frame"]
      398 DUPTABLE                         R17 K74 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      399 GETIMPORT                        R18 K13 [UDim2.new]
      401 LOADN                            R19 1
      402 LOADN                            R20 0
      403 LOADN                            R21 0
      404 LOADN                            R22 1
      405 CALL                             R18 4 1
      406 SETTABLEKS                       R18 R17 K14 ["Size"]
      408 LOADN                            R18 1
      409 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      411 LOADN                            R18 0
      412 SETTABLEKS                       R18 R17 K73 ["BorderSizePixel"]
      414 LOADN                            R18 3
      415 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      417 DUPTABLE                         R18 K76 [{"SimpleDivider"}]
      418 GETUPVAL                         R19 2
      419 GETTABLEKS                       R19 R19 K7 ["createElement"]
      421 LOADK                            R20 K8 ["Frame"]
      422 NEWTABLE                         R21 8 0
      424 GETUPVAL                         R22 2
      425 GETTABLEKS                       R22 R22 K9 ["Tag"]
      427 LOADK                            R23 K75 ["SimpleDivider"]
      428 SETTABLE                         R23 R21 R22
      429 GETIMPORT                        R22 K13 [UDim2.new]
      431 LOADN                            R23 1
      432 LOADN                            R24 220
      433 LOADN                            R25 0
      434 LOADN                            R26 1
      435 CALL                             R22 4 1
      436 SETTABLEKS                       R22 R21 K14 ["Size"]
      438 GETIMPORT                        R22 K13 [UDim2.new]
      440 LOADK                            R23 K77 [0.5]
      441 LOADN                            R24 0
      442 LOADN                            R25 0
      443 LOADN                            R26 0
      444 CALL                             R22 4 1
      445 SETTABLEKS                       R22 R21 K78 ["Position"]
      447 GETIMPORT                        R22 K80 [Vector2.new]
      449 LOADK                            R23 K77 [0.5]
      450 LOADN                            R24 0
      451 CALL                             R22 2 1
      452 SETTABLEKS                       R22 R21 K81 ["AnchorPoint"]
      454 LOADN                            R22 0
      455 SETTABLEKS                       R22 R21 K73 ["BorderSizePixel"]
      457 CALL                             R19 2 1
      458 SETTABLEKS                       R19 R18 K75 ["SimpleDivider"]
      460 CALL                             R15 3 1
      461 SETTABLEKS                       R15 R14 K54 ["DividerFrame"]
      463 CALL                             R11 3 1
      464 SETTABLEKS                       R11 R10 K18 ["GraphicsSettings"]
      466 GETUPVAL                         R11 2
      467 GETTABLEKS                       R11 R11 K7 ["createElement"]
      469 LOADK                            R12 K66 ["TextLabel"]
      470 NEWTABLE                         R13 4 0
      472 GETUPVAL                         R14 2
      473 GETTABLEKS                       R14 R14 K9 ["Tag"]
      475 LOADK                            R15 K67 ["X-Fit"]
      476 SETTABLE                         R15 R13 R14
      477 LOADK                            R20 K68 ["SceneBudgetThermometer"]
      478 LOADK                            R21 K82 ["TrianglesScene"]
      479 NAMECALL                         R18 R1 K70 ["getText"]
      481 CALL                             R18 3 1
      482 MOVE                             R15 R18
      483 LOADK                            R16 K83 [": "]
      484 MOVE                             R17 R4
      485 CONCAT                           R14 R15 R17
      486 SETTABLEKS                       R14 R13 K71 ["Text"]
      488 LOADB                            R14 1
      489 SETTABLEKS                       R14 R13 K72 ["TextWrapped"]
      491 LOADN                            R14 2
      492 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      494 CALL                             R11 2 1
      495 SETTABLEKS                       R11 R10 K19 ["TriangleLabel"]
      497 GETUPVAL                         R11 2
      498 GETTABLEKS                       R11 R11 K7 ["createElement"]
      500 LOADK                            R12 K66 ["TextLabel"]
      501 NEWTABLE                         R13 4 0
      503 GETUPVAL                         R14 2
      504 GETTABLEKS                       R14 R14 K9 ["Tag"]
      506 LOADK                            R15 K67 ["X-Fit"]
      507 SETTABLE                         R15 R13 R14
      508 LOADK                            R20 K68 ["SceneBudgetThermometer"]
      509 LOADK                            R21 K84 ["DrawcallsScene"]
      510 NAMECALL                         R18 R1 K70 ["getText"]
      512 CALL                             R18 3 1
      513 MOVE                             R15 R18
      514 LOADK                            R16 K83 [": "]
      515 MOVE                             R17 R6
      516 CONCAT                           R14 R15 R17
      517 SETTABLEKS                       R14 R13 K71 ["Text"]
      519 LOADB                            R14 1
      520 SETTABLEKS                       R14 R13 K72 ["TextWrapped"]
      522 LOADN                            R14 3
      523 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      525 CALL                             R11 2 1
      526 SETTABLEKS                       R11 R10 K20 ["DrawcallsLabel"]
      528 GETUPVAL                         R11 2
      529 GETTABLEKS                       R11 R11 K7 ["createElement"]
      531 LOADK                            R12 K66 ["TextLabel"]
      532 NEWTABLE                         R13 4 0
      534 GETUPVAL                         R14 2
      535 GETTABLEKS                       R14 R14 K9 ["Tag"]
      537 LOADK                            R15 K67 ["X-Fit"]
      538 SETTABLE                         R15 R13 R14
      539 LOADK                            R20 K68 ["SceneBudgetThermometer"]
      540 LOADK                            R21 K85 ["FrameRenderTime"]
      541 NAMECALL                         R18 R1 K70 ["getText"]
      543 CALL                             R18 3 1
      544 MOVE                             R15 R18
      545 LOADK                            R16 K83 [": "]
      546 LOADK                            R18 K86 ["%*ms"]
      547 GETIMPORT                        R20 K89 [string.format]
      549 LOADK                            R21 K90 ["%.1f"]
      550 GETTABLEKS                       R22 R0 K91 ["RenderThreadAverageMs"]
      552 CALL                             R20 2 1
      553 NAMECALL                         R18 R18 K88 ["format"]
      555 CALL                             R18 2 1
      556 MOVE                             R17 R18
      557 CONCAT                           R14 R15 R17
      558 SETTABLEKS                       R14 R13 K71 ["Text"]
      560 LOADB                            R14 1
      561 SETTABLEKS                       R14 R13 K72 ["TextWrapped"]
      563 LOADN                            R14 4
      564 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      566 CALL                             R11 2 1
      567 SETTABLEKS                       R11 R10 K21 ["GameRenderLabel"]
      569 GETUPVAL                         R11 2
      570 GETTABLEKS                       R11 R11 K7 ["createElement"]
      572 LOADK                            R12 K66 ["TextLabel"]
      573 NEWTABLE                         R13 4 0
      575 GETUPVAL                         R14 2
      576 GETTABLEKS                       R14 R14 K9 ["Tag"]
      578 LOADK                            R15 K67 ["X-Fit"]
      579 SETTABLE                         R15 R13 R14
      580 LOADK                            R20 K68 ["SceneBudgetThermometer"]
      581 LOADK                            R21 K92 ["PerFrameTaskTime"]
      582 NAMECALL                         R18 R1 K70 ["getText"]
      584 CALL                             R18 3 1
      585 MOVE                             R15 R18
      586 LOADK                            R16 K83 [": "]
      587 LOADK                            R18 K86 ["%*ms"]
      588 GETIMPORT                        R20 K89 [string.format]
      590 LOADK                            R21 K90 ["%.1f"]
      591 GETTABLEKS                       R22 R0 K93 ["TaskThreadAverageMs"]
      593 CALL                             R20 2 1
      594 NAMECALL                         R18 R18 K88 ["format"]
      596 CALL                             R18 2 1
      597 MOVE                             R17 R18
      598 CONCAT                           R14 R15 R17
      599 SETTABLEKS                       R14 R13 K71 ["Text"]
      601 LOADB                            R14 1
      602 SETTABLEKS                       R14 R13 K72 ["TextWrapped"]
      604 LOADN                            R14 4
      605 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      607 CALL                             R11 2 1
      608 SETTABLEKS                       R11 R10 K22 ["GameTaskLabel"]
      610 GETTABLEKS                       R12 R0 K59 ["IsEditMode"]
      612 JUMPIFNOT                        R12 ; [+143]
      613 GETUPVAL                         R11 2
      614 GETTABLEKS                       R11 R11 K7 ["createElement"]
      616 LOADK                            R12 K8 ["Frame"]
      617 NEWTABLE                         R13 4 0
      619 GETUPVAL                         R14 2
      620 GETTABLEKS                       R14 R14 K9 ["Tag"]
      622 LOADK                            R15 K58 ["X-Fit X-Row X-Corner"]
      623 SETTABLE                         R15 R13 R14
      624 LOADN                            R14 1
      625 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      627 LOADN                            R14 6
      628 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      630 DUPTABLE                         R14 K95 [{"Layout", "Padding", "InformationImageLabel", "EditDMWarningLabel"}]
      631 GETUPVAL                         R15 2
      632 GETTABLEKS                       R15 R15 K7 ["createElement"]
      634 LOADK                            R16 K25 ["UIListLayout"]
      635 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      636 GETIMPORT                        R18 K32 [UDim.new]
      638 LOADN                            R19 0
      639 LOADN                            R20 5
      640 CALL                             R18 2 1
      641 SETTABLEKS                       R18 R17 K17 ["Padding"]
      643 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      645 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      647 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      649 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      651 GETIMPORT                        R18 K57 [Enum.VerticalAlignment.Center]
      653 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      655 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      657 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      659 CALL                             R15 2 1
      660 SETTABLEKS                       R15 R14 K16 ["Layout"]
      662 GETUPVAL                         R15 2
      663 GETTABLEKS                       R15 R15 K7 ["createElement"]
      665 LOADK                            R16 K42 ["UIPadding"]
      666 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      667 GETIMPORT                        R18 K32 [UDim.new]
      669 LOADN                            R19 0
      670 LOADN                            R20 0
      671 CALL                             R18 2 1
      672 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      674 GETIMPORT                        R18 K32 [UDim.new]
      676 LOADN                            R19 0
      677 LOADN                            R20 0
      678 CALL                             R18 2 1
      679 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      681 GETIMPORT                        R18 K32 [UDim.new]
      683 LOADN                            R19 0
      684 LOADN                            R20 0
      685 CALL                             R18 2 1
      686 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      688 GETIMPORT                        R18 K32 [UDim.new]
      690 LOADN                            R19 0
      691 LOADN                            R20 0
      692 CALL                             R18 2 1
      693 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      695 CALL                             R15 2 1
      696 SETTABLEKS                       R15 R14 K17 ["Padding"]
      698 GETUPVAL                         R15 2
      699 GETTABLEKS                       R15 R15 K7 ["createElement"]
      701 LOADK                            R16 K64 ["ImageLabel"]
      702 NEWTABLE                         R17 4 0
      704 GETUPVAL                         R18 2
      705 GETTABLEKS                       R18 R18 K9 ["Tag"]
      707 LOADK                            R19 K65 ["InformationLabel"]
      708 SETTABLE                         R19 R17 R18
      709 GETIMPORT                        R18 K13 [UDim2.new]
      711 LOADN                            R19 0
      712 LOADN                            R20 16
      713 LOADN                            R21 0
      714 LOADN                            R22 16
      715 CALL                             R18 4 1
      716 SETTABLEKS                       R18 R17 K14 ["Size"]
      718 LOADN                            R18 1
      719 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      721 LOADN                            R18 1
      722 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      724 CALL                             R15 2 1
      725 SETTABLEKS                       R15 R14 K61 ["InformationImageLabel"]
      727 GETUPVAL                         R15 2
      728 GETTABLEKS                       R15 R15 K7 ["createElement"]
      730 LOADK                            R16 K66 ["TextLabel"]
      731 NEWTABLE                         R17 4 0
      733 GETUPVAL                         R18 2
      734 GETTABLEKS                       R18 R18 K9 ["Tag"]
      736 LOADK                            R19 K67 ["X-Fit"]
      737 SETTABLE                         R19 R17 R18
      738 LOADK                            R20 K68 ["SceneBudgetThermometer"]
      739 LOADK                            R21 K23 ["EditDMWarning"]
      740 NAMECALL                         R18 R1 K70 ["getText"]
      742 CALL                             R18 3 1
      743 SETTABLEKS                       R18 R17 K71 ["Text"]
      745 LOADB                            R18 1
      746 SETTABLEKS                       R18 R17 K72 ["TextWrapped"]
      748 LOADN                            R18 2
      749 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      751 CALL                             R15 2 1
      752 SETTABLEKS                       R15 R14 K94 ["EditDMWarningLabel"]
      754 CALL                             R11 3 1
      755 JUMPIF                           R11 ; [+1]
      756 LOADNIL                          R11
      757 SETTABLEKS                       R11 R10 K23 ["EditDMWarning"]
      759 CALL                             R7 3 -1
      760 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["LocalizeLargeNumber"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["QualitySettings"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
