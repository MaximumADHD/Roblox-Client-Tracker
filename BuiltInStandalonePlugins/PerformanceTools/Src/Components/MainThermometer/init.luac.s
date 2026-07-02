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
      531 LOADK                            R18 K89 ["%*ms"]
      532 GETIMPORT                        R20 K92 [string.format]
      534 LOADK                            R21 K93 ["%.1f"]
      535 GETTABLEKS                       R22 R0 K94 ["RenderThreadAverageMs"]
      537 CALL                             R20 2 1
      538 NAMECALL                         R18 R18 K91 ["format"]
      540 CALL                             R18 2 1
      541 MOVE                             R17 R18
      542 CONCAT                           R14 R15 R17
      543 SETTABLEKS                       R14 R13 K72 ["Text"]
      545 LOADB                            R14 1
      546 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      548 LOADN                            R14 4
      549 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      551 CALL                             R11 2 1
      552 SETTABLEKS                       R11 R10 K21 ["GameRenderLabel"]
      554 GETUPVAL                         R11 2
      555 GETTABLEKS                       R11 R11 K7 ["createElement"]
      557 LOADK                            R12 K67 ["TextLabel"]
      558 NEWTABLE                         R13 4 0
      560 GETUPVAL                         R14 2
      561 GETTABLEKS                       R14 R14 K9 ["Tag"]
      563 LOADK                            R15 K68 ["X-Fit"]
      564 SETTABLE                         R15 R13 R14
      565 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      566 LOADK                            R21 K95 ["PerFrameTaskTime"]
      567 NAMECALL                         R18 R1 K71 ["getText"]
      569 CALL                             R18 3 1
      570 MOVE                             R15 R18
      571 LOADK                            R16 K86 [": "]
      572 LOADK                            R18 K89 ["%*ms"]
      573 GETIMPORT                        R20 K92 [string.format]
      575 LOADK                            R21 K93 ["%.1f"]
      576 GETTABLEKS                       R22 R0 K96 ["TaskThreadAverageMs"]
      578 CALL                             R20 2 1
      579 NAMECALL                         R18 R18 K91 ["format"]
      581 CALL                             R18 2 1
      582 MOVE                             R17 R18
      583 CONCAT                           R14 R15 R17
      584 SETTABLEKS                       R14 R13 K72 ["Text"]
      586 LOADB                            R14 1
      587 SETTABLEKS                       R14 R13 K73 ["TextWrapped"]
      589 LOADN                            R14 4
      590 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      592 CALL                             R11 2 1
      593 SETTABLEKS                       R11 R10 K22 ["GameTaskLabel"]
      595 GETTABLEKS                       R12 R0 K60 ["IsEditMode"]
      597 JUMPIFNOT                        R12 ; [+143]
      598 GETUPVAL                         R11 2
      599 GETTABLEKS                       R11 R11 K7 ["createElement"]
      601 LOADK                            R12 K8 ["Frame"]
      602 NEWTABLE                         R13 4 0
      604 GETUPVAL                         R14 2
      605 GETTABLEKS                       R14 R14 K9 ["Tag"]
      607 LOADK                            R15 K59 ["X-Fit X-Row X-Corner"]
      608 SETTABLE                         R15 R13 R14
      609 LOADN                            R14 1
      610 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      612 LOADN                            R14 6
      613 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      615 DUPTABLE                         R14 K98 [{"Layout", "Padding", "InformationImageLabel", "EditDMWarningLabel"}]
      616 GETUPVAL                         R15 2
      617 GETTABLEKS                       R15 R15 K7 ["createElement"]
      619 LOADK                            R16 K25 ["UIListLayout"]
      620 DUPTABLE                         R17 K30 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      621 GETIMPORT                        R18 K32 [UDim.new]
      623 LOADN                            R19 0
      624 LOADN                            R20 5
      625 CALL                             R18 2 1
      626 SETTABLEKS                       R18 R17 K17 ["Padding"]
      628 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      630 SETTABLEKS                       R18 R17 K26 ["FillDirection"]
      632 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Left]
      634 SETTABLEKS                       R18 R17 K27 ["HorizontalAlignment"]
      636 GETIMPORT                        R18 K58 [Enum.VerticalAlignment.Center]
      638 SETTABLEKS                       R18 R17 K28 ["VerticalAlignment"]
      640 GETIMPORT                        R18 K41 [Enum.SortOrder.LayoutOrder]
      642 SETTABLEKS                       R18 R17 K29 ["SortOrder"]
      644 CALL                             R15 2 1
      645 SETTABLEKS                       R15 R14 K16 ["Layout"]
      647 GETUPVAL                         R15 2
      648 GETTABLEKS                       R15 R15 K7 ["createElement"]
      650 LOADK                            R16 K42 ["UIPadding"]
      651 DUPTABLE                         R17 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      652 GETIMPORT                        R18 K32 [UDim.new]
      654 LOADN                            R19 0
      655 LOADN                            R20 0
      656 CALL                             R18 2 1
      657 SETTABLEKS                       R18 R17 K43 ["PaddingTop"]
      659 GETIMPORT                        R18 K32 [UDim.new]
      661 LOADN                            R19 0
      662 LOADN                            R20 0
      663 CALL                             R18 2 1
      664 SETTABLEKS                       R18 R17 K44 ["PaddingBottom"]
      666 GETIMPORT                        R18 K32 [UDim.new]
      668 LOADN                            R19 0
      669 LOADN                            R20 0
      670 CALL                             R18 2 1
      671 SETTABLEKS                       R18 R17 K45 ["PaddingLeft"]
      673 GETIMPORT                        R18 K32 [UDim.new]
      675 LOADN                            R19 0
      676 LOADN                            R20 0
      677 CALL                             R18 2 1
      678 SETTABLEKS                       R18 R17 K46 ["PaddingRight"]
      680 CALL                             R15 2 1
      681 SETTABLEKS                       R15 R14 K17 ["Padding"]
      683 GETUPVAL                         R15 2
      684 GETTABLEKS                       R15 R15 K7 ["createElement"]
      686 LOADK                            R16 K65 ["ImageLabel"]
      687 NEWTABLE                         R17 4 0
      689 GETUPVAL                         R18 2
      690 GETTABLEKS                       R18 R18 K9 ["Tag"]
      692 LOADK                            R19 K66 ["InformationLabel"]
      693 SETTABLE                         R19 R17 R18
      694 GETIMPORT                        R18 K13 [UDim2.new]
      696 LOADN                            R19 0
      697 LOADN                            R20 16
      698 LOADN                            R21 0
      699 LOADN                            R22 16
      700 CALL                             R18 4 1
      701 SETTABLEKS                       R18 R17 K14 ["Size"]
      703 LOADN                            R18 1
      704 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      706 LOADN                            R18 1
      707 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      709 CALL                             R15 2 1
      710 SETTABLEKS                       R15 R14 K62 ["InformationImageLabel"]
      712 GETUPVAL                         R15 2
      713 GETTABLEKS                       R15 R15 K7 ["createElement"]
      715 LOADK                            R16 K67 ["TextLabel"]
      716 NEWTABLE                         R17 4 0
      718 GETUPVAL                         R18 2
      719 GETTABLEKS                       R18 R18 K9 ["Tag"]
      721 LOADK                            R19 K68 ["X-Fit"]
      722 SETTABLE                         R19 R17 R18
      723 LOADK                            R20 K69 ["SceneBudgetThermometer"]
      724 LOADK                            R21 K23 ["EditDMWarning"]
      725 NAMECALL                         R18 R1 K71 ["getText"]
      727 CALL                             R18 3 1
      728 SETTABLEKS                       R18 R17 K72 ["Text"]
      730 LOADB                            R18 1
      731 SETTABLEKS                       R18 R17 K73 ["TextWrapped"]
      733 LOADN                            R18 2
      734 SETTABLEKS                       R18 R17 K40 ["LayoutOrder"]
      736 CALL                             R15 2 1
      737 SETTABLEKS                       R15 R14 K97 ["EditDMWarningLabel"]
      739 CALL                             R11 3 1
      740 JUMPIF                           R11 ; [+1]
      741 LOADNIL                          R11
      742 SETTABLEKS                       R11 R10 K23 ["EditDMWarning"]
      744 CALL                             R7 3 -1
      745 RETURN                           R7 -1

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
