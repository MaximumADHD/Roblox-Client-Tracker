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
      462 LOADK                            R17 K69 ["SceneBudgetThermometer"]
      463 LOADK                            R18 K85 ["TrianglesScene"]
      464 NAMECALL                         R15 R1 K71 ["getText"]
      466 CALL                             R15 3 1
      467 LOADK                            R16 K86 [": "]
      468 MOVE                             R17 R4
      469 CONCAT                           R14 R15 R17
      470 SETTABLEKS                       R14 R13 K72 ["Text"]
      472 LOADB                            R14 1
      473 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      475 LOADN                            R14 2
      476 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      478 CALL                             R11 2 1
      479 SETTABLEKS                       R11 R10 K19 ["TriangleLabel"]
      481 GETUPVAL                         R11 2
      482 GETTABLEKS                       R11 R11 K7 ["createElement"]
      484 LOADK                            R12 K67 ["TextLabel"]
      485 NEWTABLE                         R13 4 0
      487 GETUPVAL                         R14 2
      488 GETTABLEKS                       R14 R14 K9 ["Tag"]
      490 LOADK                            R15 K68 ["X-Fit"]
      491 SETTABLE                         R15 R13 R14
      492 LOADK                            R17 K69 ["SceneBudgetThermometer"]
      493 LOADK                            R18 K87 ["DrawcallsScene"]
      494 NAMECALL                         R15 R1 K71 ["getText"]
      496 CALL                             R15 3 1
      497 LOADK                            R16 K86 [": "]
      498 MOVE                             R17 R6
      499 CONCAT                           R14 R15 R17
      500 SETTABLEKS                       R14 R13 K72 ["Text"]
      502 LOADB                            R14 1
      503 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      505 LOADN                            R14 3
      506 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      508 CALL                             R11 2 1
      509 SETTABLEKS                       R11 R10 K20 ["DrawcallsLabel"]
      511 GETUPVAL                         R11 2
      512 GETTABLEKS                       R11 R11 K7 ["createElement"]
      514 LOADK                            R12 K67 ["TextLabel"]
      515 NEWTABLE                         R13 4 0
      517 GETUPVAL                         R14 2
      518 GETTABLEKS                       R14 R14 K9 ["Tag"]
      520 LOADK                            R15 K68 ["X-Fit"]
      521 SETTABLE                         R15 R13 R14
      522 LOADK                            R17 K69 ["SceneBudgetThermometer"]
      523 LOADK                            R18 K88 ["FrameRenderTime"]
      524 NAMECALL                         R15 R1 K71 ["getText"]
      526 CALL                             R15 3 1
      527 LOADK                            R16 K86 [": "]
      528 LOADK                            R17 K89 ["%*ms"]
      529 GETIMPORT                        R19 K92 [string.format]
      531 LOADK                            R20 K93 ["%.1f"]
      532 GETTABLEKS                       R21 R0 K94 ["RenderThreadAverageMs"]
      534 CALL                             R19 2 1
      535 NAMECALL                         R17 R17 K91 ["format"]
      537 CALL                             R17 2 1
      538 CONCAT                           R14 R15 R17
      539 SETTABLEKS                       R14 R13 K72 ["Text"]
      541 LOADB                            R14 1
      542 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      544 LOADN                            R14 4
      545 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      547 CALL                             R11 2 1
      548 SETTABLEKS                       R11 R10 K21 ["GameRenderLabel"]
      550 GETUPVAL                         R11 2
      551 GETTABLEKS                       R11 R11 K7 ["createElement"]
      553 LOADK                            R12 K67 ["TextLabel"]
      554 NEWTABLE                         R13 4 0
      556 GETUPVAL                         R14 2
      557 GETTABLEKS                       R14 R14 K9 ["Tag"]
      559 LOADK                            R15 K68 ["X-Fit"]
      560 SETTABLE                         R15 R13 R14
      561 LOADK                            R17 K69 ["SceneBudgetThermometer"]
      562 LOADK                            R18 K95 ["PerFrameTaskTime"]
      563 NAMECALL                         R15 R1 K71 ["getText"]
      565 CALL                             R15 3 1
      566 LOADK                            R16 K86 [": "]
      567 LOADK                            R17 K89 ["%*ms"]
      568 GETIMPORT                        R19 K92 [string.format]
      570 LOADK                            R20 K93 ["%.1f"]
      571 GETTABLEKS                       R21 R0 K96 ["TaskThreadAverageMs"]
      573 CALL                             R19 2 1
      574 NAMECALL                         R17 R17 K91 ["format"]
      576 CALL                             R17 2 1
      577 CONCAT                           R14 R15 R17
      578 SETTABLEKS                       R14 R13 K72 ["Text"]
      580 LOADB                            R14 1
      581 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      583 LOADN                            R14 4
      584 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      586 CALL                             R11 2 1
      587 SETTABLEKS                       R11 R10 K22 ["GameTaskLabel"]
      589 GETTABLEKS                       R12 R0 K60 ["IsEditMode"]
      591 JUMPIFNOT                        R12 ; [+143]
      592 GETUPVAL                         R11 2
      593 GETTABLEKS                       R11 R11 K7 ["createElement"]
      595 LOADK                            R12 K8 ["Frame"]
      596 NEWTABLE                         R13 4 0
      598 GETUPVAL                         R14 2
      599 GETTABLEKS                       R14 R14 K9 ["Tag"]
      601 LOADK                            R15 K59 ["X-Fit X-Row X-Corner"]
      602 SETTABLE                         R15 R13 R14
      603 LOADN                            R14 1
      604 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      606 LOADN                            R14 6
      607 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      609 DUPTABLE                         R14 K98 [{"Layout", "Padding", "InformationImageLabel", "EditDMWarningLabel"}]
      610 GETUPVAL                         R15 2
      611 GETTABLEKS                       R15 R15 K7 ["createElement"]
      613 LOADK                            R16 K25 ["UIListLayout"]
      614 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      615 GETIMPORT                        R18 K32 [UDim.new]
      617 LOADN                            R19 0
      618 LOADN                            R20 5
      619 CALL                             R18 2 1
      620 SETTABLEKS                       R18 R17 K17 ["Padding"]
      622 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      624 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      626 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      628 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      630 GETIMPORT                        R18 K58 [Enum.VerticalAlignment.Center]
      632 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      634 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      636 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      638 CALL                             R15 2 1
      639 SETTABLEKS                       R15 R14 K16 ["Layout"]
      641 GETUPVAL                         R15 2
      642 GETTABLEKS                       R15 R15 K7 ["createElement"]
      644 LOADK                            R16 K42 ["UIPadding"]
      645 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      646 GETIMPORT                        R18 K32 [UDim.new]
      648 LOADN                            R19 0
      649 LOADN                            R20 0
      650 CALL                             R18 2 1
      651 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      653 GETIMPORT                        R18 K32 [UDim.new]
      655 LOADN                            R19 0
      656 LOADN                            R20 0
      657 CALL                             R18 2 1
      658 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      660 GETIMPORT                        R18 K32 [UDim.new]
      662 LOADN                            R19 0
      663 LOADN                            R20 0
      664 CALL                             R18 2 1
      665 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      667 GETIMPORT                        R18 K32 [UDim.new]
      669 LOADN                            R19 0
      670 LOADN                            R20 0
      671 CALL                             R18 2 1
      672 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      674 CALL                             R15 2 1
      675 SETTABLEKS                       R15 R14 K17 ["Padding"]
      677 GETUPVAL                         R15 2
      678 GETTABLEKS                       R15 R15 K7 ["createElement"]
      680 LOADK                            R16 K65 ["ImageLabel"]
      681 NEWTABLE                         R17 4 0
      683 GETUPVAL                         R18 2
      684 GETTABLEKS                       R18 R18 K9 ["Tag"]
      686 LOADK                            R19 K66 ["InformationLabel"]
      687 SETTABLE                         R19 R17 R18
      688 GETIMPORT                        R18 K13 [UDim2.new]
      690 LOADN                            R19 0
      691 LOADN                            R20 16
      692 LOADN                            R21 0
      693 LOADN                            R22 16
      694 CALL                             R18 4 1
      695 SETTABLEKS                       R18 R17 K14 ["Size"]
      697 LOADN                            R18 1
      698 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      700 LOADN                            R18 1
      701 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      703 CALL                             R15 2 1
      704 SETTABLEKS                       R15 R14 K62 ["InformationImageLabel"]
      706 GETUPVAL                         R15 2
      707 GETTABLEKS                       R15 R15 K7 ["createElement"]
      709 LOADK                            R16 K67 ["TextLabel"]
      710 NEWTABLE                         R17 4 0
      712 GETUPVAL                         R18 2
      713 GETTABLEKS                       R18 R18 K9 ["Tag"]
      715 LOADK                            R19 K68 ["X-Fit"]
      716 SETTABLE                         R19 R17 R18
      717 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      718 LOADK                            R21 K23 ["EditDMWarning"]
      719 NAMECALL                         R18 R1 K71 ["getText"]
      721 CALL                             R18 3 1
      722 SETTABLEKS                       R18 R17 K72 ["Text"]
      724 LOADB                            R18 1
      725 SETTABLEKS                       R18 R17 K73 ["TextWrapped"]
      727 LOADN                            R18 2
      728 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      730 CALL                             R15 2 1
      731 SETTABLEKS                       R15 R14 K97 ["EditDMWarningLabel"]
      733 CALL                             R11 3 1
      734 JUMPIF                           R11 ; [+1]
      735 LOADNIL                          R11
      736 SETTABLEKS                       R11 R10 K23 ["EditDMWarning"]
      738 CALL                             R7 3 -1
      739 RETURN                           R7 -1

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
