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
      134 DUPTABLE                         R13 K50 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["AutomaticSize"]}]
      135 GETIMPORT                        R14 K13 [UDim2.new]
      137 LOADN                            R15 1
      138 LOADN                            R16 0
      139 LOADN                            R17 0
      140 LOADN                            R18 0
      141 CALL                             R14 4 1
      142 SETTABLEKS                       R14 R13 K14 ["Size"]
      144 GETIMPORT                        R14 K52 [Enum.AutomaticSize.Y]
      146 SETTABLEKS                       R14 R13 K49 ["AutomaticSize"]
      148 DUPTABLE                         R14 K56 [{"Layout", "Padding", "GraphicsQualitySettings", "GraphicsQualitySettingsWarning", "DividerFrame"}]
      149 GETUPVAL                         R15 2
      150 GETTABLEKS                       R15 R15 K7 ["createElement"]
      152 LOADK                            R16 K25 ["UIListLayout"]
      153 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      154 GETIMPORT                        R18 K32 [UDim.new]
      156 LOADN                            R19 0
      157 LOADN                            R20 5
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K17 ["Padding"]
      161 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      163 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      165 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      167 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      169 GETIMPORT                        R18 K58 [Enum.VerticalAlignment.Center]
      171 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      173 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K16 ["Layout"]
      180 GETUPVAL                         R15 2
      181 GETTABLEKS                       R15 R15 K7 ["createElement"]
      183 LOADK                            R16 K42 ["UIPadding"]
      184 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      185 GETIMPORT                        R18 K32 [UDim.new]
      187 LOADN                            R19 0
      188 LOADN                            R20 0
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      192 GETIMPORT                        R18 K32 [UDim.new]
      194 LOADN                            R19 0
      195 LOADN                            R20 12
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      199 GETIMPORT                        R18 K32 [UDim.new]
      201 LOADN                            R19 0
      202 LOADN                            R20 0
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      206 GETIMPORT                        R18 K32 [UDim.new]
      208 LOADN                            R19 0
      209 LOADN                            R20 0
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      213 CALL                             R15 2 1
      214 SETTABLEKS                       R15 R14 K17 ["Padding"]
      216 GETUPVAL                         R15 2
      217 GETTABLEKS                       R15 R15 K7 ["createElement"]
      219 GETUPVAL                         R16 3
      220 NEWTABLE                         R17 4 0
      222 GETUPVAL                         R18 2
      223 GETTABLEKS                       R18 R18 K9 ["Tag"]
      225 LOADK                            R19 K59 ["X-Fit X-Row X-Corner"]
      226 SETTABLE                         R19 R17 R18
      227 LOADN                            R18 1
      228 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      230 GETTABLEKS                       R18 R0 K60 ["IsEditMode"]
      232 SETTABLEKS                       R18 R17 K60 ["IsEditMode"]
      234 GETTABLEKS                       R18 R0 K61 ["AutomaticGraphicsQuality"]
      236 SETTABLEKS                       R18 R17 K61 ["AutomaticGraphicsQuality"]
      238 CALL                             R15 2 1
      239 SETTABLEKS                       R15 R14 K53 ["GraphicsQualitySettings"]
      241 GETTABLEKS                       R15 R0 K60 ["IsEditMode"]
      243 JUMPIFNOT                        R15 ; [+142]
      244 GETUPVAL                         R15 2
      245 GETTABLEKS                       R15 R15 K7 ["createElement"]
      247 LOADK                            R16 K8 ["Frame"]
      248 NEWTABLE                         R17 4 0
      250 GETUPVAL                         R18 2
      251 GETTABLEKS                       R18 R18 K9 ["Tag"]
      253 LOADK                            R19 K59 ["X-Fit X-Row X-Corner"]
      254 SETTABLE                         R19 R17 R18
      255 LOADN                            R18 1
      256 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      258 LOADN                            R18 2
      259 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      261 DUPTABLE                         R18 K64 [{"Layout", "Padding", "InformationImageLabel", "GraphicsQualityWarningLabel"}]
      262 GETUPVAL                         R19 2
      263 GETTABLEKS                       R19 R19 K7 ["createElement"]
      265 LOADK                            R20 K25 ["UIListLayout"]
      266 DUPTABLE                         R21 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      267 GETIMPORT                        R22 K32 [UDim.new]
      269 LOADN                            R23 0
      270 LOADN                            R24 5
      271 CALL                             R22 2 1
      272 SETTABLEKS                       R22 R21 K17 ["Padding"]
      274 GETIMPORT                        R22 K35 [Enum.FillDirection.Vertical]
      276 SETTABLEKS                       R22 R21 K26 ["FillDirection"]
      278 GETIMPORT                        R22 K37 [Enum.HorizontalAlignment.Left]
      280 SETTABLEKS                       R22 R21 K27 ["HorizontalAlignment"]
      282 GETIMPORT                        R22 K58 [Enum.VerticalAlignment.Center]
      284 SETTABLEKS                       R22 R21 K28 ["VerticalAlignment"]
      286 GETIMPORT                        R22 K41 [Enum.SortOrder.LayoutOrder]
      288 SETTABLEKS                       R22 R21 K29 ["SortOrder"]
      290 CALL                             R19 2 1
      291 SETTABLEKS                       R19 R18 K16 ["Layout"]
      293 GETUPVAL                         R19 2
      294 GETTABLEKS                       R19 R19 K7 ["createElement"]
      296 LOADK                            R20 K42 ["UIPadding"]
      297 DUPTABLE                         R21 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      298 GETIMPORT                        R22 K32 [UDim.new]
      300 LOADN                            R23 0
      301 LOADN                            R24 0
      302 CALL                             R22 2 1
      303 SETTABLEKS                       R22 R21 K43 ["PaddingTop"]
      305 GETIMPORT                        R22 K32 [UDim.new]
      307 LOADN                            R23 0
      308 LOADN                            R24 0
      309 CALL                             R22 2 1
      310 SETTABLEKS                       R22 R21 K44 ["PaddingBottom"]
      312 GETIMPORT                        R22 K32 [UDim.new]
      314 LOADN                            R23 0
      315 LOADN                            R24 0
      316 CALL                             R22 2 1
      317 SETTABLEKS                       R22 R21 K45 ["PaddingLeft"]
      319 GETIMPORT                        R22 K32 [UDim.new]
      321 LOADN                            R23 0
      322 LOADN                            R24 0
      323 CALL                             R22 2 1
      324 SETTABLEKS                       R22 R21 K46 ["PaddingRight"]
      326 CALL                             R19 2 1
      327 SETTABLEKS                       R19 R18 K17 ["Padding"]
      329 GETUPVAL                         R19 2
      330 GETTABLEKS                       R19 R19 K7 ["createElement"]
      332 LOADK                            R20 K65 ["ImageLabel"]
      333 NEWTABLE                         R21 4 0
      335 GETUPVAL                         R22 2
      336 GETTABLEKS                       R22 R22 K9 ["Tag"]
      338 LOADK                            R23 K66 ["InformationLabel"]
      339 SETTABLE                         R23 R21 R22
      340 GETIMPORT                        R22 K13 [UDim2.new]
      342 LOADN                            R23 0
      343 LOADN                            R24 16
      344 LOADN                            R25 0
      345 LOADN                            R26 16
      346 CALL                             R22 4 1
      347 SETTABLEKS                       R22 R21 K14 ["Size"]
      349 LOADN                            R22 1
      350 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
      352 LOADN                            R22 1
      353 SETTABLEKS                       R22 R21 K40 ["LayoutOrder"]
      355 CALL                             R19 2 1
      356 SETTABLEKS                       R19 R18 K62 ["InformationImageLabel"]
      358 GETUPVAL                         R19 2
      359 GETTABLEKS                       R19 R19 K7 ["createElement"]
      361 LOADK                            R20 K67 ["TextLabel"]
      362 NEWTABLE                         R21 4 0
      364 GETUPVAL                         R22 2
      365 GETTABLEKS                       R22 R22 K9 ["Tag"]
      367 LOADK                            R23 K68 ["X-Fit"]
      368 SETTABLE                         R23 R21 R22
      369 LOADK                            R24 K69 ["SceneBudgetThermometer"]
      370 LOADK                            R25 K70 ["QualitySettingWarning"]
      371 NAMECALL                         R22 R1 K71 ["getText"]
      373 CALL                             R22 3 1
      374 SETTABLEKS                       R22 R21 K72 ["Text"]
      376 LOADB                            R22 1
      377 SETTABLEKS                       R22 R21 K73 ["TextWrapped"]
      379 LOADN                            R22 2
      380 SETTABLEKS                       R22 R21 K40 ["LayoutOrder"]
      382 CALL                             R19 2 1
      383 SETTABLEKS                       R19 R18 K63 ["GraphicsQualityWarningLabel"]
      385 CALL                             R15 3 1
      386 SETTABLEKS                       R15 R14 K54 ["GraphicsQualitySettingsWarning"]
      388 GETUPVAL                         R15 2
      389 GETTABLEKS                       R15 R15 K7 ["createElement"]
      391 LOADK                            R16 K8 ["Frame"]
      392 DUPTABLE                         R17 K77 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      393 GETIMPORT                        R18 K13 [UDim2.new]
      395 LOADN                            R19 1
      396 LOADN                            R20 0
      397 LOADN                            R21 0
      398 LOADN                            R22 1
      399 CALL                             R18 4 1
      400 SETTABLEKS                       R18 R17 K14 ["Size"]
      402 DUPTABLE                         R18 K79 [{"SimpleDivider"}]
      403 GETUPVAL                         R19 2
      404 GETTABLEKS                       R19 R19 K7 ["createElement"]
      406 LOADK                            R20 K8 ["Frame"]
      407 NEWTABLE                         R21 8 0
      409 GETUPVAL                         R22 2
      410 GETTABLEKS                       R22 R22 K9 ["Tag"]
      412 LOADK                            R23 K78 ["SimpleDivider"]
      413 SETTABLE                         R23 R21 R22
      414 GETIMPORT                        R22 K13 [UDim2.new]
      416 LOADN                            R23 1
      417 LOADN                            R24 -36
      418 LOADN                            R25 0
      419 LOADN                            R26 1
      420 CALL                             R22 4 1
      421 SETTABLEKS                       R22 R21 K14 ["Size"]
      423 GETIMPORT                        R22 K13 [UDim2.new]
      425 LOADK                            R23 K80 [0.5]
      426 LOADN                            R24 0
      427 LOADN                            R25 0
      428 LOADN                            R26 0
      429 CALL                             R22 4 1
      430 SETTABLEKS                       R22 R21 K81 ["Position"]
      432 GETIMPORT                        R22 K83 [Vector2.new]
      434 LOADK                            R23 K80 [0.5]
      435 LOADN                            R24 0
      436 CALL                             R22 2 1
      437 SETTABLEKS                       R22 R21 K84 ["AnchorPoint"]
      439 LOADN                            R22 0
      440 SETTABLEKS                       R22 R21 K74 ["BorderSizePixel"]
      442 CALL                             R19 2 1
      443 SETTABLEKS                       R19 R18 K78 ["SimpleDivider"]
      445 CALL                             R15 3 1
      446 SETTABLEKS                       R15 R14 K55 ["DividerFrame"]
      448 CALL                             R11 3 1
      449 SETTABLEKS                       R11 R10 K18 ["GraphicsSettings"]
      451 GETUPVAL                         R11 2
      452 GETTABLEKS                       R11 R11 K7 ["createElement"]
      454 LOADK                            R12 K67 ["TextLabel"]
      455 NEWTABLE                         R13 4 0
      457 GETUPVAL                         R14 2
      458 GETTABLEKS                       R14 R14 K9 ["Tag"]
      460 LOADK                            R15 K68 ["X-Fit"]
      461 SETTABLE                         R15 R13 R14
      462 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      463 LOADK                            R21 K85 ["TrianglesScene"]
      464 NAMECALL                         R18 R1 K71 ["getText"]
      466 CALL                             R18 3 1
      467 MOVE                             R15 R18
      468 LOADK                            R16 K86 [": "]
      469 MOVE                             R17 R4
      470 CONCAT                           R14 R15 R17
      471 SETTABLEKS                       R14 R13 K72 ["Text"]
      473 LOADB                            R14 1
      474 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      476 LOADN                            R14 2
      477 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      479 CALL                             R11 2 1
      480 SETTABLEKS                       R11 R10 K19 ["TriangleLabel"]
      482 GETUPVAL                         R11 2
      483 GETTABLEKS                       R11 R11 K7 ["createElement"]
      485 LOADK                            R12 K67 ["TextLabel"]
      486 NEWTABLE                         R13 4 0
      488 GETUPVAL                         R14 2
      489 GETTABLEKS                       R14 R14 K9 ["Tag"]
      491 LOADK                            R15 K68 ["X-Fit"]
      492 SETTABLE                         R15 R13 R14
      493 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      494 LOADK                            R21 K87 ["DrawcallsScene"]
      495 NAMECALL                         R18 R1 K71 ["getText"]
      497 CALL                             R18 3 1
      498 MOVE                             R15 R18
      499 LOADK                            R16 K86 [": "]
      500 MOVE                             R17 R6
      501 CONCAT                           R14 R15 R17
      502 SETTABLEKS                       R14 R13 K72 ["Text"]
      504 LOADB                            R14 1
      505 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      507 LOADN                            R14 3
      508 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      510 CALL                             R11 2 1
      511 SETTABLEKS                       R11 R10 K20 ["DrawcallsLabel"]
      513 GETUPVAL                         R11 2
      514 GETTABLEKS                       R11 R11 K7 ["createElement"]
      516 LOADK                            R12 K67 ["TextLabel"]
      517 NEWTABLE                         R13 4 0
      519 GETUPVAL                         R14 2
      520 GETTABLEKS                       R14 R14 K9 ["Tag"]
      522 LOADK                            R15 K68 ["X-Fit"]
      523 SETTABLE                         R15 R13 R14
      524 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      525 LOADK                            R21 K88 ["FrameRenderTime"]
      526 NAMECALL                         R18 R1 K71 ["getText"]
      528 CALL                             R18 3 1
      529 MOVE                             R15 R18
      530 LOADK                            R16 K86 [": "]
      531 LOADK                            R17 K89 ["%*ms"]
      532 GETIMPORT                        R19 K92 [string.format]
      534 LOADK                            R20 K93 ["%.1f"]
      535 GETTABLEKS                       R21 R0 K94 ["RenderThreadAverageMs"]
      537 CALL                             R19 2 1
      538 NAMECALL                         R17 R17 K91 ["format"]
      540 CALL                             R17 2 1
      541 CONCAT                           R14 R15 R17
      542 SETTABLEKS                       R14 R13 K72 ["Text"]
      544 LOADB                            R14 1
      545 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      547 LOADN                            R14 4
      548 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      550 CALL                             R11 2 1
      551 SETTABLEKS                       R11 R10 K21 ["GameRenderLabel"]
      553 GETUPVAL                         R11 2
      554 GETTABLEKS                       R11 R11 K7 ["createElement"]
      556 LOADK                            R12 K67 ["TextLabel"]
      557 NEWTABLE                         R13 4 0
      559 GETUPVAL                         R14 2
      560 GETTABLEKS                       R14 R14 K9 ["Tag"]
      562 LOADK                            R15 K68 ["X-Fit"]
      563 SETTABLE                         R15 R13 R14
      564 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      565 LOADK                            R21 K95 ["PerFrameTaskTime"]
      566 NAMECALL                         R18 R1 K71 ["getText"]
      568 CALL                             R18 3 1
      569 MOVE                             R15 R18
      570 LOADK                            R16 K86 [": "]
      571 LOADK                            R17 K89 ["%*ms"]
      572 GETIMPORT                        R19 K92 [string.format]
      574 LOADK                            R20 K93 ["%.1f"]
      575 GETTABLEKS                       R21 R0 K96 ["TaskThreadAverageMs"]
      577 CALL                             R19 2 1
      578 NAMECALL                         R17 R17 K91 ["format"]
      580 CALL                             R17 2 1
      581 CONCAT                           R14 R15 R17
      582 SETTABLEKS                       R14 R13 K72 ["Text"]
      584 LOADB                            R14 1
      585 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      587 LOADN                            R14 4
      588 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      590 CALL                             R11 2 1
      591 SETTABLEKS                       R11 R10 K22 ["GameTaskLabel"]
      593 GETTABLEKS                       R12 R0 K60 ["IsEditMode"]
      595 JUMPIFNOT                        R12 ; [+143]
      596 GETUPVAL                         R11 2
      597 GETTABLEKS                       R11 R11 K7 ["createElement"]
      599 LOADK                            R12 K8 ["Frame"]
      600 NEWTABLE                         R13 4 0
      602 GETUPVAL                         R14 2
      603 GETTABLEKS                       R14 R14 K9 ["Tag"]
      605 LOADK                            R15 K59 ["X-Fit X-Row X-Corner"]
      606 SETTABLE                         R15 R13 R14
      607 LOADN                            R14 1
      608 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      610 LOADN                            R14 6
      611 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      613 DUPTABLE                         R14 K98 [{"Layout", "Padding", "InformationImageLabel", "EditDMWarningLabel"}]
      614 GETUPVAL                         R15 2
      615 GETTABLEKS                       R15 R15 K7 ["createElement"]
      617 LOADK                            R16 K25 ["UIListLayout"]
      618 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      619 GETIMPORT                        R18 K32 [UDim.new]
      621 LOADN                            R19 0
      622 LOADN                            R20 5
      623 CALL                             R18 2 1
      624 SETTABLEKS                       R18 R17 K17 ["Padding"]
      626 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      628 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      630 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      632 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      634 GETIMPORT                        R18 K58 [Enum.VerticalAlignment.Center]
      636 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      638 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      640 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      642 CALL                             R15 2 1
      643 SETTABLEKS                       R15 R14 K16 ["Layout"]
      645 GETUPVAL                         R15 2
      646 GETTABLEKS                       R15 R15 K7 ["createElement"]
      648 LOADK                            R16 K42 ["UIPadding"]
      649 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      650 GETIMPORT                        R18 K32 [UDim.new]
      652 LOADN                            R19 0
      653 LOADN                            R20 0
      654 CALL                             R18 2 1
      655 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      657 GETIMPORT                        R18 K32 [UDim.new]
      659 LOADN                            R19 0
      660 LOADN                            R20 0
      661 CALL                             R18 2 1
      662 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      664 GETIMPORT                        R18 K32 [UDim.new]
      666 LOADN                            R19 0
      667 LOADN                            R20 0
      668 CALL                             R18 2 1
      669 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      671 GETIMPORT                        R18 K32 [UDim.new]
      673 LOADN                            R19 0
      674 LOADN                            R20 0
      675 CALL                             R18 2 1
      676 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      678 CALL                             R15 2 1
      679 SETTABLEKS                       R15 R14 K17 ["Padding"]
      681 GETUPVAL                         R15 2
      682 GETTABLEKS                       R15 R15 K7 ["createElement"]
      684 LOADK                            R16 K65 ["ImageLabel"]
      685 NEWTABLE                         R17 4 0
      687 GETUPVAL                         R18 2
      688 GETTABLEKS                       R18 R18 K9 ["Tag"]
      690 LOADK                            R19 K66 ["InformationLabel"]
      691 SETTABLE                         R19 R17 R18
      692 GETIMPORT                        R18 K13 [UDim2.new]
      694 LOADN                            R19 0
      695 LOADN                            R20 16
      696 LOADN                            R21 0
      697 LOADN                            R22 16
      698 CALL                             R18 4 1
      699 SETTABLEKS                       R18 R17 K14 ["Size"]
      701 LOADN                            R18 1
      702 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      704 LOADN                            R18 1
      705 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      707 CALL                             R15 2 1
      708 SETTABLEKS                       R15 R14 K62 ["InformationImageLabel"]
      710 GETUPVAL                         R15 2
      711 GETTABLEKS                       R15 R15 K7 ["createElement"]
      713 LOADK                            R16 K67 ["TextLabel"]
      714 NEWTABLE                         R17 4 0
      716 GETUPVAL                         R18 2
      717 GETTABLEKS                       R18 R18 K9 ["Tag"]
      719 LOADK                            R19 K68 ["X-Fit"]
      720 SETTABLE                         R19 R17 R18
      721 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      722 LOADK                            R21 K23 ["EditDMWarning"]
      723 NAMECALL                         R18 R1 K71 ["getText"]
      725 CALL                             R18 3 1
      726 SETTABLEKS                       R18 R17 K72 ["Text"]
      728 LOADB                            R18 1
      729 SETTABLEKS                       R18 R17 K73 ["TextWrapped"]
      731 LOADN                            R18 2
      732 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      734 CALL                             R15 2 1
      735 SETTABLEKS                       R15 R14 K97 ["EditDMWarningLabel"]
      737 CALL                             R11 3 1
      738 JUMPIF                           R11 ; [+1]
      739 LOADNIL                          R11
      740 SETTABLEKS                       R11 R10 K23 ["EditDMWarning"]
      742 CALL                             R7 3 -1
      743 RETURN                           R7 -1

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
