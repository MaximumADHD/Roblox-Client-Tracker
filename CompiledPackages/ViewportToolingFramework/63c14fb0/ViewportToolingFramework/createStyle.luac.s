PROTO_0:
        0 NEWTABLE                         R0 0 19
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K0 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K6 ["ImageLabel"]
        8 DUPTABLE                         R4 K7 [{["BackgroundTransparency"] = 1}]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 LOADK                            R4 K8 ["UIListLayout"]
       12 DUPTABLE                         R5 K10 [{"SortOrder"}]
       13 GETIMPORT                        R6 K13 [Enum.SortOrder.LayoutOrder]
       15 SETTABLEKS                       R6 R5 K9 ["SortOrder"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 LOADK                            R5 K14 ["TextButton"]
       20 DUPTABLE                         R6 K20 [{["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["Font"], ["Text"] = ""}]
       21 GETIMPORT                        R7 K22 [Enum.Font.SourceSans]
       23 SETTABLEKS                       R7 R6 K17 ["Font"]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 0
       27 LOADK                            R6 K23 ["TextLabel"]
       28 DUPTABLE                         R7 K30 [{["BackgroundTransparency"] = 1, ["Font"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 16, ["TextXAlignment"], ["TextYAlignment"]}]
       29 GETIMPORT                        R8 K22 [Enum.Font.SourceSans]
       31 SETTABLEKS                       R8 R7 K17 ["Font"]
       33 GETIMPORT                        R8 K32 [Enum.TextXAlignment.Left]
       35 SETTABLEKS                       R8 R7 K28 ["TextXAlignment"]
       37 GETIMPORT                        R8 K34 [Enum.TextYAlignment.Top]
       39 SETTABLEKS                       R8 R7 K29 ["TextYAlignment"]
       41 CALL                             R5 2 1
       42 GETUPVAL                         R6 0
       43 LOADK                            R7 K35 [".VPF-Button"]
       44 DUPTABLE                         R8 K37 [{["BackgroundTransparency"] = 1, ["Size"]}]
       45 GETIMPORT                        R9 K40 [UDim2.fromOffset]
       47 LOADN                            R10 32
       48 LOADN                            R11 32
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K36 ["Size"]
       52 NEWTABLE                         R9 0 4
       54 GETUPVAL                         R10 0
       55 LOADK                            R11 K41 ["::UICorner"]
       56 DUPTABLE                         R12 K43 [{"CornerRadius"}]
       57 GETIMPORT                        R13 K46 [UDim.new]
       59 LOADN                            R14 0
       60 LOADN                            R15 4
       61 CALL                             R13 2 1
       62 SETTABLEKS                       R13 R12 K42 ["CornerRadius"]
       64 CALL                             R10 2 1
       65 GETUPVAL                         R11 0
       66 LOADK                            R12 K47 [".VPF-Button--Selected"]
       67 DUPTABLE                         R13 K50 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ActionActivated"}]
       68 CALL                             R11 2 1
       69 GETUPVAL                         R12 0
       70 LOADK                            R13 K51 [".VPF-Button--Disabled"]
       71 DUPTABLE                         R14 K7 [{["BackgroundTransparency"] = 1}]
       72 NEWTABLE                         R15 0 1
       74 GETUPVAL                         R16 0
       75 LOADK                            R17 K52 [">> .VPF-Icon"]
       76 DUPTABLE                         R18 K55 [{["ImageTransparency"] = 0.5}]
       77 CALL                             R16 2 -1
       78 SETLIST                          R15 R16 -1 [1]
       80 CALL                             R12 3 1
       81 GETUPVAL                         R13 0
       82 LOADK                            R14 K56 [".VPF-Button--Unselected"]
       83 NEWTABLE                         R15 0 0
       85 NEWTABLE                         R16 0 2
       87 GETUPVAL                         R17 0
       88 LOADK                            R18 K57 [":hover"]
       89 DUPTABLE                         R19 K59 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ActionHover"}]
       90 CALL                             R17 2 1
       91 GETUPVAL                         R18 0
       92 LOADK                            R19 K60 [":press"]
       93 DUPTABLE                         R20 K50 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ActionActivated"}]
       94 CALL                             R18 2 -1
       95 SETLIST                          R16 R17 -1 [1]
       97 CALL                             R13 3 -1
       98 SETLIST                          R9 R10 -1 [1]
      100 CALL                             R6 3 1
      101 GETUPVAL                         R7 0
      102 LOADK                            R8 K61 [".VPF-Icon"]
      103 DUPTABLE                         R9 K63 [{["ImageColor3"] = "$TextPrimary", ["Size"]}]
      104 GETIMPORT                        R10 K65 [UDim2.fromScale]
      106 LOADN                            R11 1
      107 LOADN                            R12 1
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K36 ["Size"]
      111 NEWTABLE                         R10 0 1
      113 GETUPVAL                         R11 0
      114 LOADK                            R12 K66 ["::UIAspectRatioConstraint"]
      115 CALL                             R11 1 -1
      116 SETLIST                          R10 R11 -1 [1]
      118 CALL                             R7 3 1
      119 GETUPVAL                         R8 0
      120 LOADK                            R9 K67 [".VPF-Label"]
      121 DUPTABLE                         R10 K70 [{["AutomaticSize"], ["Size"], ["TextYAlignment"], ["TextSize"] = 18, ["TextColor3"] = "$TextPrimary"}]
      122 GETIMPORT                        R11 K72 [Enum.AutomaticSize.X]
      124 SETTABLEKS                       R11 R10 K68 ["AutomaticSize"]
      126 GETIMPORT                        R11 K65 [UDim2.fromScale]
      128 LOADN                            R12 0
      129 LOADN                            R13 1
      130 CALL                             R11 2 1
      131 SETTABLEKS                       R11 R10 K36 ["Size"]
      133 GETIMPORT                        R11 K74 [Enum.TextYAlignment.Center]
      135 SETTABLEKS                       R11 R10 K29 ["TextYAlignment"]
      137 CALL                             R8 2 1
      138 GETUPVAL                         R9 0
      139 LOADK                            R10 K75 [".VPF-SeparatorBar"]
      140 DUPTABLE                         R11 K77 [{["BackgroundColor3"] = "$Divider", ["BackgroundTransparency"] = 0}]
      141 CALL                             R9 2 1
      142 GETUPVAL                         R10 0
      143 LOADK                            R11 K78 [".VPF-Slider"]
      144 DUPTABLE                         R12 K79 [{"AutomaticSize", "Size"}]
      145 GETIMPORT                        R13 K72 [Enum.AutomaticSize.X]
      147 SETTABLEKS                       R13 R12 K68 ["AutomaticSize"]
      149 GETIMPORT                        R13 K40 [UDim2.fromOffset]
      151 LOADN                            R14 0
      152 LOADN                            R15 24
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K36 ["Size"]
      156 NEWTABLE                         R13 0 7
      158 GETUPVAL                         R14 0
      159 LOADK                            R15 K80 ["::UIPadding"]
      160 DUPTABLE                         R16 K82 [{"PaddingRight"}]
      161 GETIMPORT                        R17 K46 [UDim.new]
      163 LOADN                            R18 0
      164 LOADN                            R19 5
      165 CALL                             R17 2 1
      166 SETTABLEKS                       R17 R16 K81 ["PaddingRight"]
      168 CALL                             R14 2 1
      169 GETUPVAL                         R15 0
      170 LOADK                            R16 K83 ["::UIListLayout"]
      171 DUPTABLE                         R17 K86 [{"FillDirection", "Padding"}]
      172 GETIMPORT                        R18 K88 [Enum.FillDirection.Horizontal]
      174 SETTABLEKS                       R18 R17 K84 ["FillDirection"]
      176 GETIMPORT                        R18 K46 [UDim.new]
      178 LOADN                            R19 0
      179 LOADN                            R20 12
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K85 ["Padding"]
      183 CALL                             R15 2 1
      184 GETUPVAL                         R16 0
      185 LOADK                            R17 K89 [">> .VPF-Slider__BarSegment"]
      186 DUPTABLE                         R18 K90 [{["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 0, ["Size"]}]
      187 GETIMPORT                        R19 K40 [UDim2.fromOffset]
      189 LOADN                            R20 8
      190 LOADN                            R21 2
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K36 ["Size"]
      194 NEWTABLE                         R19 0 1
      196 GETUPVAL                         R20 0
      197 LOADK                            R21 K41 ["::UICorner"]
      198 DUPTABLE                         R22 K43 [{"CornerRadius"}]
      199 GETIMPORT                        R23 K46 [UDim.new]
      201 LOADN                            R24 0
      202 LOADN                            R25 4
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K42 ["CornerRadius"]
      206 CALL                             R20 2 -1
      207 SETLIST                          R19 R20 -1 [1]
      209 CALL                             R16 3 1
      210 GETUPVAL                         R17 0
      211 LOADK                            R18 K91 [">> .VPF-Slider__Input"]
      212 DUPTABLE                         R19 K93 [{["BackgroundColor3"] = "$ActionActivated", ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["Font"], ["TextColor3"] = "$TextPrimary", ["TextSize"] = 18}]
      213 GETIMPORT                        R20 K22 [Enum.Font.SourceSans]
      215 SETTABLEKS                       R20 R19 K17 ["Font"]
      217 NEWTABLE                         R20 0 1
      219 GETUPVAL                         R21 0
      220 LOADK                            R22 K94 ["::UIStroke"]
      221 DUPTABLE                         R23 K98 [{["ApplyStrokeMode"], ["Color"] = "$ActionActivated", ["Thickness"] = 1}]
      222 GETIMPORT                        R24 K100 [Enum.ApplyStrokeMode.Border]
      224 SETTABLEKS                       R24 R23 K95 ["ApplyStrokeMode"]
      226 CALL                             R21 2 -1
      227 SETLIST                          R20 R21 -1 [1]
      229 CALL                             R17 3 1
      230 GETUPVAL                         R18 0
      231 LOADK                            R19 K101 [">> .VPF-Slider__StepButton"]
      232 DUPTABLE                         R20 K103 [{["BackgroundColor3"] = "$SecondaryMain", ["Size"]}]
      233 GETIMPORT                        R21 K104 [UDim2.new]
      235 LOADN                            R22 0
      236 LOADN                            R23 20
      237 LOADN                            R24 1
      238 LOADN                            R25 0
      239 CALL                             R21 4 1
      240 SETTABLEKS                       R21 R20 K36 ["Size"]
      242 NEWTABLE                         R21 0 2
      244 GETUPVAL                         R22 0
      245 LOADK                            R23 K41 ["::UICorner"]
      246 DUPTABLE                         R24 K43 [{"CornerRadius"}]
      247 GETIMPORT                        R25 K46 [UDim.new]
      249 LOADN                            R26 0
      250 LOADN                            R27 4
      251 CALL                             R25 2 1
      252 SETTABLEKS                       R25 R24 K42 ["CornerRadius"]
      254 CALL                             R22 2 1
      255 GETUPVAL                         R23 0
      256 LOADK                            R24 K94 ["::UIStroke"]
      257 DUPTABLE                         R25 K98 [{["ApplyStrokeMode"], ["Color"] = "$ActionActivated", ["Thickness"] = 1}]
      258 GETIMPORT                        R26 K100 [Enum.ApplyStrokeMode.Border]
      260 SETTABLEKS                       R26 R25 K95 ["ApplyStrokeMode"]
      262 CALL                             R23 2 -1
      263 SETLIST                          R21 R22 -1 [1]
      265 CALL                             R18 3 1
      266 GETUPVAL                         R19 0
      267 LOADK                            R20 K105 [".VPF-Slider--Disabled >> .VPF-Slider__StepButton"]
      268 DUPTABLE                         R21 K107 [{["BackgroundColor3"] = "$SecondaryMuted"}]
      269 CALL                             R19 2 1
      270 GETUPVAL                         R20 0
      271 LOADK                            R21 K108 [".VPF-Slider--Enabled >> .VPF-Slider__StepButton"]
      272 NEWTABLE                         R22 0 0
      274 NEWTABLE                         R23 0 1
      276 GETUPVAL                         R24 0
      277 LOADK                            R25 K57 [":hover"]
      278 DUPTABLE                         R26 K110 [{["BackgroundColor3"] = "$SecondaryContrast"}]
      279 CALL                             R24 2 -1
      280 SETLIST                          R23 R24 -1 [1]
      282 CALL                             R20 3 -1
      283 SETLIST                          R13 R14 -1 [1]
      285 CALL                             R10 3 1
      286 GETUPVAL                         R11 0
      287 LOADK                            R12 K111 [".VPF-TextButton"]
      288 DUPTABLE                         R13 K115 [{["AutomaticSize"], ["BackgroundColor3"] = "$PrimaryMain", ["Font"], ["Size"], ["TextColor3"] = "$TextContrast", ["TextSize"] = 20}]
      289 GETIMPORT                        R14 K72 [Enum.AutomaticSize.X]
      291 SETTABLEKS                       R14 R13 K68 ["AutomaticSize"]
      293 GETIMPORT                        R14 K22 [Enum.Font.SourceSans]
      295 SETTABLEKS                       R14 R13 K17 ["Font"]
      297 GETIMPORT                        R14 K65 [UDim2.fromScale]
      299 LOADN                            R15 0
      300 LOADN                            R16 1
      301 CALL                             R14 2 1
      302 SETTABLEKS                       R14 R13 K36 ["Size"]
      304 NEWTABLE                         R14 0 4
      306 GETUPVAL                         R15 0
      307 LOADK                            R16 K41 ["::UICorner"]
      308 DUPTABLE                         R17 K43 [{"CornerRadius"}]
      309 GETIMPORT                        R18 K46 [UDim.new]
      311 LOADN                            R19 0
      312 LOADN                            R20 4
      313 CALL                             R18 2 1
      314 SETTABLEKS                       R18 R17 K42 ["CornerRadius"]
      316 CALL                             R15 2 1
      317 GETUPVAL                         R16 0
      318 LOADK                            R17 K80 ["::UIPadding"]
      319 DUPTABLE                         R18 K119 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      320 GETIMPORT                        R19 K46 [UDim.new]
      322 LOADN                            R20 0
      323 LOADN                            R21 14
      324 CALL                             R19 2 1
      325 SETTABLEKS                       R19 R18 K116 ["PaddingLeft"]
      327 GETIMPORT                        R19 K46 [UDim.new]
      329 LOADN                            R20 0
      330 LOADN                            R21 14
      331 CALL                             R19 2 1
      332 SETTABLEKS                       R19 R18 K81 ["PaddingRight"]
      334 GETIMPORT                        R19 K46 [UDim.new]
      336 LOADN                            R20 0
      337 LOADN                            R21 5
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K117 ["PaddingTop"]
      341 GETIMPORT                        R19 K46 [UDim.new]
      343 LOADN                            R20 0
      344 LOADN                            R21 5
      345 CALL                             R19 2 1
      346 SETTABLEKS                       R19 R18 K118 ["PaddingBottom"]
      348 CALL                             R16 2 1
      349 GETUPVAL                         R17 0
      350 LOADK                            R18 K57 [":hover"]
      351 DUPTABLE                         R19 K121 [{["BackgroundColor3"] = "$PrimaryHoverBackground"}]
      352 CALL                             R17 2 1
      353 GETUPVAL                         R18 0
      354 LOADK                            R19 K122 [".VPF-TextButton--Disabled"]
      355 DUPTABLE                         R20 K123 [{["BackgroundColor3"] = "$SecondaryContrast", ["TextColor3"] = "$SecondaryMuted"}]
      356 NEWTABLE                         R21 0 1
      358 GETUPVAL                         R22 0
      359 LOADK                            R23 K57 [":hover"]
      360 DUPTABLE                         R24 K110 [{["BackgroundColor3"] = "$SecondaryContrast"}]
      361 CALL                             R22 2 -1
      362 SETLIST                          R21 R22 -1 [1]
      364 CALL                             R18 3 -1
      365 SETLIST                          R14 R15 -1 [1]
      367 CALL                             R11 3 1
      368 GETUPVAL                         R12 0
      369 LOADK                            R13 K124 [".VPF-Toolbar"]
      370 DUPTABLE                         R14 K125 [{"AutomaticSize"}]
      371 GETIMPORT                        R15 K127 [Enum.AutomaticSize.XY]
      373 SETTABLEKS                       R15 R14 K68 ["AutomaticSize"]
      375 NEWTABLE                         R15 0 2
      377 GETUPVAL                         R16 0
      378 LOADK                            R17 K128 [".VPF-Toolbar--Horizontal"]
      379 NEWTABLE                         R18 0 0
      381 NEWTABLE                         R19 0 2
      383 GETUPVAL                         R20 0
      384 LOADK                            R21 K129 [".VPF-Toolbar--Center"]
      385 DUPTABLE                         R22 K132 [{"AnchorPoint", "Position"}]
      386 GETIMPORT                        R23 K134 [Vector2.new]
      388 LOADK                            R24 K54 [0.5]
      389 LOADN                            R25 0
      390 CALL                             R23 2 1
      391 SETTABLEKS                       R23 R22 K130 ["AnchorPoint"]
      393 GETIMPORT                        R23 K104 [UDim2.new]
      395 LOADK                            R24 K54 [0.5]
      396 LOADN                            R25 0
      397 LOADN                            R26 0
      398 LOADN                            R27 18
      399 CALL                             R23 4 1
      400 SETTABLEKS                       R23 R22 K131 ["Position"]
      402 CALL                             R20 2 1
      403 GETUPVAL                         R21 0
      404 LOADK                            R22 K135 [".VPF-Toolbar--Left"]
      405 DUPTABLE                         R23 K132 [{"AnchorPoint", "Position"}]
      406 GETIMPORT                        R24 K134 [Vector2.new]
      408 LOADN                            R25 0
      409 LOADN                            R26 0
      410 CALL                             R24 2 1
      411 SETTABLEKS                       R24 R23 K130 ["AnchorPoint"]
      413 GETIMPORT                        R24 K40 [UDim2.fromOffset]
      415 LOADN                            R25 18
      416 LOADN                            R26 18
      417 CALL                             R24 2 1
      418 SETTABLEKS                       R24 R23 K131 ["Position"]
      420 CALL                             R21 2 -1
      421 SETLIST                          R19 R20 -1 [1]
      423 CALL                             R16 3 1
      424 GETUPVAL                         R17 0
      425 LOADK                            R18 K136 [".VPF-Toolbar--Vertical"]
      426 NEWTABLE                         R19 0 0
      428 NEWTABLE                         R20 0 3
      430 GETUPVAL                         R21 0
      431 LOADK                            R22 K129 [".VPF-Toolbar--Center"]
      432 DUPTABLE                         R23 K132 [{"AnchorPoint", "Position"}]
      433 GETIMPORT                        R24 K134 [Vector2.new]
      435 LOADN                            R25 0
      436 LOADK                            R26 K54 [0.5]
      437 CALL                             R24 2 1
      438 SETTABLEKS                       R24 R23 K130 ["AnchorPoint"]
      440 GETIMPORT                        R24 K104 [UDim2.new]
      442 LOADN                            R25 0
      443 LOADN                            R26 18
      444 LOADK                            R27 K54 [0.5]
      445 LOADN                            R28 0
      446 CALL                             R24 4 1
      447 SETTABLEKS                       R24 R23 K131 ["Position"]
      449 CALL                             R21 2 1
      450 GETUPVAL                         R22 0
      451 LOADK                            R23 K137 [".VPF-Toolbar--Top"]
      452 DUPTABLE                         R24 K132 [{"AnchorPoint", "Position"}]
      453 GETIMPORT                        R25 K134 [Vector2.new]
      455 LOADN                            R26 0
      456 LOADN                            R27 0
      457 CALL                             R25 2 1
      458 SETTABLEKS                       R25 R24 K130 ["AnchorPoint"]
      460 GETIMPORT                        R25 K104 [UDim2.new]
      462 LOADN                            R26 0
      463 LOADN                            R27 18
      464 LOADN                            R28 0
      465 LOADN                            R29 66
      466 CALL                             R25 4 1
      467 SETTABLEKS                       R25 R24 K131 ["Position"]
      469 CALL                             R22 2 1
      470 GETUPVAL                         R23 0
      471 LOADK                            R24 K138 [".VPF-Toolbar--Bottom"]
      472 DUPTABLE                         R25 K132 [{"AnchorPoint", "Position"}]
      473 GETIMPORT                        R26 K134 [Vector2.new]
      475 LOADN                            R27 0
      476 LOADN                            R28 1
      477 CALL                             R26 2 1
      478 SETTABLEKS                       R26 R25 K130 ["AnchorPoint"]
      480 GETIMPORT                        R26 K104 [UDim2.new]
      482 LOADN                            R27 0
      483 LOADN                            R28 18
      484 LOADN                            R29 1
      485 LOADN                            R30 -44
      486 CALL                             R26 4 1
      487 SETTABLEKS                       R26 R25 K131 ["Position"]
      489 CALL                             R23 2 -1
      490 SETLIST                          R20 R21 -1 [1]
      492 CALL                             R17 3 -1
      493 SETLIST                          R15 R16 -1 [1]
      495 CALL                             R12 3 1
      496 GETUPVAL                         R13 0
      497 LOADK                            R14 K139 [".VPF-ToolbarBase"]
      498 DUPTABLE                         R15 K141 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      499 NEWTABLE                         R16 0 5
      501 GETUPVAL                         R17 0
      502 LOADK                            R18 K41 ["::UICorner"]
      503 DUPTABLE                         R19 K43 [{"CornerRadius"}]
      504 GETIMPORT                        R20 K46 [UDim.new]
      506 LOADN                            R21 0
      507 LOADN                            R22 5
      508 CALL                             R20 2 1
      509 SETTABLEKS                       R20 R19 K42 ["CornerRadius"]
      511 CALL                             R17 2 1
      512 GETUPVAL                         R18 0
      513 LOADK                            R19 K80 ["::UIPadding"]
      514 DUPTABLE                         R20 K119 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      515 GETIMPORT                        R21 K46 [UDim.new]
      517 LOADN                            R22 0
      518 LOADN                            R23 4
      519 CALL                             R21 2 1
      520 SETTABLEKS                       R21 R20 K116 ["PaddingLeft"]
      522 GETIMPORT                        R21 K46 [UDim.new]
      524 LOADN                            R22 0
      525 LOADN                            R23 4
      526 CALL                             R21 2 1
      527 SETTABLEKS                       R21 R20 K81 ["PaddingRight"]
      529 GETIMPORT                        R21 K46 [UDim.new]
      531 LOADN                            R22 0
      532 LOADN                            R23 4
      533 CALL                             R21 2 1
      534 SETTABLEKS                       R21 R20 K117 ["PaddingTop"]
      536 GETIMPORT                        R21 K46 [UDim.new]
      538 LOADN                            R22 0
      539 LOADN                            R23 4
      540 CALL                             R21 2 1
      541 SETTABLEKS                       R21 R20 K118 ["PaddingBottom"]
      543 CALL                             R18 2 1
      544 GETUPVAL                         R19 0
      545 LOADK                            R20 K94 ["::UIStroke"]
      546 DUPTABLE                         R21 K144 [{["Color"] = "$BackgroundDefault", ["Thickness"] = 2}]
      547 CALL                             R19 2 1
      548 GETUPVAL                         R20 0
      549 LOADK                            R21 K145 [".VPF-ToolbarBase--Horizontal"]
      550 DUPTABLE                         R22 K79 [{"AutomaticSize", "Size"}]
      551 GETIMPORT                        R23 K72 [Enum.AutomaticSize.X]
      553 SETTABLEKS                       R23 R22 K68 ["AutomaticSize"]
      555 GETIMPORT                        R23 K40 [UDim2.fromOffset]
      557 LOADN                            R24 0
      558 LOADN                            R25 40
      559 CALL                             R23 2 1
      560 SETTABLEKS                       R23 R22 K36 ["Size"]
      562 NEWTABLE                         R23 0 2
      564 GETUPVAL                         R24 0
      565 LOADK                            R25 K83 ["::UIListLayout"]
      566 DUPTABLE                         R26 K147 [{["FillDirection"], ["Padding"] = "$ButtonSpacing"}]
      567 GETIMPORT                        R27 K88 [Enum.FillDirection.Horizontal]
      569 SETTABLEKS                       R27 R26 K84 ["FillDirection"]
      571 CALL                             R24 2 1
      572 GETUPVAL                         R25 0
      573 LOADK                            R26 K148 ["> .VPF-Separator"]
      574 DUPTABLE                         R27 K149 [{"Size"}]
      575 GETIMPORT                        R28 K104 [UDim2.new]
      577 LOADN                            R29 0
      578 LOADN                            R30 8
      579 LOADN                            R31 1
      580 LOADN                            R32 0
      581 CALL                             R28 4 1
      582 SETTABLEKS                       R28 R27 K36 ["Size"]
      584 NEWTABLE                         R28 0 1
      586 GETUPVAL                         R29 0
      587 LOADK                            R30 K150 ["> .VPF-SeparatorBar"]
      588 DUPTABLE                         R31 K151 [{"AnchorPoint", "Position", "Size"}]
      589 GETIMPORT                        R32 K134 [Vector2.new]
      591 LOADK                            R33 K54 [0.5]
      592 LOADN                            R34 0
      593 CALL                             R32 2 1
      594 SETTABLEKS                       R32 R31 K130 ["AnchorPoint"]
      596 GETIMPORT                        R32 K65 [UDim2.fromScale]
      598 LOADK                            R33 K54 [0.5]
      599 LOADN                            R34 0
      600 CALL                             R32 2 1
      601 SETTABLEKS                       R32 R31 K131 ["Position"]
      603 GETIMPORT                        R32 K104 [UDim2.new]
      605 LOADN                            R33 0
      606 LOADN                            R34 2
      607 LOADN                            R35 1
      608 LOADN                            R36 0
      609 CALL                             R32 4 1
      610 SETTABLEKS                       R32 R31 K36 ["Size"]
      612 CALL                             R29 2 -1
      613 SETLIST                          R28 R29 -1 [1]
      615 CALL                             R25 3 -1
      616 SETLIST                          R23 R24 -1 [1]
      618 CALL                             R20 3 1
      619 GETUPVAL                         R21 0
      620 LOADK                            R22 K152 [".VPF-ToolbarBase--Vertical"]
      621 DUPTABLE                         R23 K79 [{"AutomaticSize", "Size"}]
      622 GETIMPORT                        R24 K154 [Enum.AutomaticSize.Y]
      624 SETTABLEKS                       R24 R23 K68 ["AutomaticSize"]
      626 GETIMPORT                        R24 K40 [UDim2.fromOffset]
      628 LOADN                            R25 40
      629 LOADN                            R26 0
      630 CALL                             R24 2 1
      631 SETTABLEKS                       R24 R23 K36 ["Size"]
      633 NEWTABLE                         R24 0 2
      635 GETUPVAL                         R25 0
      636 LOADK                            R26 K83 ["::UIListLayout"]
      637 DUPTABLE                         R27 K147 [{["FillDirection"], ["Padding"] = "$ButtonSpacing"}]
      638 GETIMPORT                        R28 K156 [Enum.FillDirection.Vertical]
      640 SETTABLEKS                       R28 R27 K84 ["FillDirection"]
      642 CALL                             R25 2 1
      643 GETUPVAL                         R26 0
      644 LOADK                            R27 K148 ["> .VPF-Separator"]
      645 DUPTABLE                         R28 K149 [{"Size"}]
      646 GETIMPORT                        R29 K104 [UDim2.new]
      648 LOADN                            R30 1
      649 LOADN                            R31 0
      650 LOADN                            R32 0
      651 LOADN                            R33 8
      652 CALL                             R29 4 1
      653 SETTABLEKS                       R29 R28 K36 ["Size"]
      655 NEWTABLE                         R29 0 1
      657 GETUPVAL                         R30 0
      658 LOADK                            R31 K150 ["> .VPF-SeparatorBar"]
      659 DUPTABLE                         R32 K151 [{"AnchorPoint", "Position", "Size"}]
      660 GETIMPORT                        R33 K134 [Vector2.new]
      662 LOADN                            R34 0
      663 LOADK                            R35 K54 [0.5]
      664 CALL                             R33 2 1
      665 SETTABLEKS                       R33 R32 K130 ["AnchorPoint"]
      667 GETIMPORT                        R33 K65 [UDim2.fromScale]
      669 LOADN                            R34 0
      670 LOADK                            R35 K54 [0.5]
      671 CALL                             R33 2 1
      672 SETTABLEKS                       R33 R32 K131 ["Position"]
      674 GETIMPORT                        R33 K104 [UDim2.new]
      676 LOADN                            R34 1
      677 LOADN                            R35 0
      678 LOADN                            R36 0
      679 LOADN                            R37 2
      680 CALL                             R33 4 1
      681 SETTABLEKS                       R33 R32 K36 ["Size"]
      683 CALL                             R30 2 -1
      684 SETLIST                          R29 R30 -1 [1]
      686 CALL                             R26 3 -1
      687 SETLIST                          R24 R25 -1 [1]
      689 CALL                             R21 3 -1
      690 SETLIST                          R16 R17 -1 [1]
      692 DUPTABLE                         R17 K158 [{"ButtonSpacing"}]
      693 GETIMPORT                        R18 K46 [UDim.new]
      695 LOADN                            R19 0
      696 LOADN                            R20 4
      697 CALL                             R18 2 1
      698 SETTABLEKS                       R18 R17 K157 ["ButtonSpacing"]
      700 CALL                             R13 4 1
      701 GETUPVAL                         R14 0
      702 LOADK                            R15 K159 [".VPF-Tooltip"]
      703 DUPTABLE                         R16 K161 [{["AutomaticSize"], ["BackgroundColor3"] = "$White", ["BackgroundTransparency"] = 0}]
      704 GETIMPORT                        R17 K127 [Enum.AutomaticSize.XY]
      706 SETTABLEKS                       R17 R16 K68 ["AutomaticSize"]
      708 NEWTABLE                         R17 0 5
      710 GETUPVAL                         R18 0
      711 LOADK                            R19 K94 ["::UIStroke"]
      712 DUPTABLE                         R20 K164 [{["Thickness"] = 1, ["Color"] = "$Gray80", ["LineJoinMode"]}]
      713 GETIMPORT                        R21 K166 [Enum.LineJoinMode.Round]
      715 SETTABLEKS                       R21 R20 K163 ["LineJoinMode"]
      717 CALL                             R18 2 1
      718 GETUPVAL                         R19 0
      719 LOADK                            R20 K167 [">> .VPF-Tooltip__Title"]
      720 DUPTABLE                         R21 K170 [{["AutomaticSize"], ["Font"], ["TextColor3"] = "$Gray120", ["TextSize"] = 14}]
      721 GETIMPORT                        R22 K127 [Enum.AutomaticSize.XY]
      723 SETTABLEKS                       R22 R21 K68 ["AutomaticSize"]
      725 GETIMPORT                        R22 K172 [Enum.Font.SourceSansBold]
      727 SETTABLEKS                       R22 R21 K17 ["Font"]
      729 CALL                             R19 2 1
      730 GETUPVAL                         R20 0
      731 LOADK                            R21 K173 [">> .VPF-Tooltip__Description"]
      732 DUPTABLE                         R22 K176 [{["TextColor3"] = "$Gray120", ["TextWrapped"] = True}]
      733 CALL                             R20 2 1
      734 GETUPVAL                         R21 0
      735 LOADK                            R22 K177 [".VPF-Tooltip--Horizontal"]
      736 DUPTABLE                         R23 K178 [{"Position"}]
      737 GETIMPORT                        R24 K104 [UDim2.new]
      739 LOADN                            R25 0
      740 LOADN                            R26 0
      741 LOADN                            R27 1
      742 LOADN                            R28 12
      743 CALL                             R24 4 1
      744 SETTABLEKS                       R24 R23 K131 ["Position"]
      746 CALL                             R21 2 1
      747 GETUPVAL                         R22 0
      748 LOADK                            R23 K179 [".VPF-Tooltip--Vertical"]
      749 DUPTABLE                         R24 K178 [{"Position"}]
      750 GETIMPORT                        R25 K104 [UDim2.new]
      752 LOADN                            R26 1
      753 LOADN                            R27 8
      754 LOADN                            R28 0
      755 LOADN                            R29 0
      756 CALL                             R25 4 1
      757 SETTABLEKS                       R25 R24 K131 ["Position"]
      759 CALL                             R22 2 -1
      760 SETLIST                          R17 R18 -1 [1]
      762 CALL                             R14 3 1
      763 GETUPVAL                         R15 0
      764 LOADK                            R16 K180 [".VPF-X-ContrastBg"]
      765 DUPTABLE                         R17 K182 [{["BackgroundColor3"] = "$ForegroundContrast", ["BackgroundTransparency"] = 0}]
      766 CALL                             R15 2 1
      767 GETUPVAL                         R16 0
      768 LOADK                            R17 K183 [".VPF-X-DebugPink"]
      769 DUPTABLE                         R18 K184 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      770 GETIMPORT                        R19 K186 [Color3.new]
      772 LOADN                            R20 1
      773 LOADN                            R21 0
      774 LOADN                            R22 1
      775 CALL                             R19 3 1
      776 SETTABLEKS                       R19 R18 K48 ["BackgroundColor3"]
      778 CALL                             R16 2 1
      779 SETLIST                          R0 R1 16 [1]
      781 GETUPVAL                         R1 0
      782 LOADK                            R2 K187 [".VPF-X-MainBg"]
      783 DUPTABLE                         R3 K141 [{["BackgroundColor3"] = "$ForegroundMain", ["BackgroundTransparency"] = 0}]
      784 CALL                             R1 2 1
      785 GETUPVAL                         R2 0
      786 LOADK                            R3 K188 [".VPF-X-Primary"]
      787 DUPTABLE                         R4 K189 [{["ImageColor3"] = "$TextPrimary"}]
      788 CALL                             R2 2 1
      789 GETUPVAL                         R3 0
      790 LOADK                            R4 K190 [".VPF-X-Square"]
      791 NEWTABLE                         R5 0 0
      793 NEWTABLE                         R6 0 1
      795 GETUPVAL                         R7 0
      796 LOADK                            R8 K66 ["::UIAspectRatioConstraint"]
      797 CALL                             R7 1 -1
      798 SETLIST                          R6 R7 -1 [1]
      800 CALL                             R3 3 -1
      801 SETLIST                          R0 R1 -1 [17]
      803 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
