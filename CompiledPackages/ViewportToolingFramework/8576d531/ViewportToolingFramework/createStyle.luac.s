PROTO_0:
        0 NEWTABLE                         R0 0 20
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K0 ["Frame"]
        4 DUPTABLE                         R3 K3 [{"BackgroundTransparency", "BorderSizePixel"}]
        5 LOADN                            R4 1
        6 SETTABLEKS                       R4 R3 K1 ["BackgroundTransparency"]
        8 LOADN                            R4 0
        9 SETTABLEKS                       R4 R3 K2 ["BorderSizePixel"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 LOADK                            R3 K4 ["ImageLabel"]
       14 DUPTABLE                         R4 K5 [{"BackgroundTransparency"}]
       15 LOADN                            R5 1
       16 SETTABLEKS                       R5 R4 K1 ["BackgroundTransparency"]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 LOADK                            R4 K6 ["UIListLayout"]
       21 DUPTABLE                         R5 K8 [{"SortOrder"}]
       22 GETIMPORT                        R6 K11 [Enum.SortOrder.LayoutOrder]
       24 SETTABLEKS                       R6 R5 K7 ["SortOrder"]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 0
       28 LOADK                            R5 K12 ["TextButton"]
       29 DUPTABLE                         R6 K16 [{"AutoButtonColor", "BorderSizePixel", "Font", "Text"}]
       30 LOADB                            R7 0
       31 SETTABLEKS                       R7 R6 K13 ["AutoButtonColor"]
       33 LOADN                            R7 0
       34 SETTABLEKS                       R7 R6 K2 ["BorderSizePixel"]
       36 GETIMPORT                        R7 K18 [Enum.Font.SourceSans]
       38 SETTABLEKS                       R7 R6 K14 ["Font"]
       40 LOADK                            R7 K19 [""]
       41 SETTABLEKS                       R7 R6 K15 ["Text"]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 0
       45 LOADK                            R6 K20 ["TextLabel"]
       46 DUPTABLE                         R7 K25 [{"BackgroundTransparency", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
       47 LOADN                            R8 1
       48 SETTABLEKS                       R8 R7 K1 ["BackgroundTransparency"]
       50 GETIMPORT                        R8 K18 [Enum.Font.SourceSans]
       52 SETTABLEKS                       R8 R7 K14 ["Font"]
       54 GETUPVAL                         R9 1
       55 JUMPIFNOT                        R9 ; [+2]
       56 LOADK                            R8 K26 ["$TextPrimary"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R8
       59 SETTABLEKS                       R8 R7 K21 ["TextColor3"]
       61 GETUPVAL                         R9 2
       62 CALL                             R9 0 1
       63 JUMPIFNOT                        R9 ; [+2]
       64 LOADN                            R8 16
       65 JUMP                             ; [+1]
       66 LOADNIL                          R8
       67 SETTABLEKS                       R8 R7 K22 ["TextSize"]
       69 GETIMPORT                        R8 K28 [Enum.TextXAlignment.Left]
       71 SETTABLEKS                       R8 R7 K23 ["TextXAlignment"]
       73 GETIMPORT                        R8 K30 [Enum.TextYAlignment.Top]
       75 SETTABLEKS                       R8 R7 K24 ["TextYAlignment"]
       77 CALL                             R5 2 1
       78 GETUPVAL                         R7 2
       79 CALL                             R7 0 1
       80 JUMPIFNOT                        R7 ; [+2]
       81 LOADNIL                          R6
       82 JUMP                             ; [+12]
       83 GETUPVAL                         R6 0
       84 LOADK                            R7 K31 [".VPF-AvoidFOUC"]
       85 DUPTABLE                         R8 K33 [{"BackgroundColor3"}]
       86 GETIMPORT                        R9 K36 [Color3.new]
       88 LOADN                            R10 1
       89 LOADN                            R11 0
       90 LOADN                            R12 0
       91 CALL                             R9 3 1
       92 SETTABLEKS                       R9 R8 K32 ["BackgroundColor3"]
       94 CALL                             R6 2 1
       95 GETUPVAL                         R7 0
       96 LOADK                            R8 K37 [".VPF-Button"]
       97 DUPTABLE                         R9 K39 [{"BackgroundTransparency", "Size"}]
       98 LOADN                            R10 1
       99 SETTABLEKS                       R10 R9 K1 ["BackgroundTransparency"]
      101 GETIMPORT                        R10 K42 [UDim2.fromOffset]
      103 LOADN                            R11 32
      104 LOADN                            R12 32
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K38 ["Size"]
      108 NEWTABLE                         R10 0 4
      110 GETUPVAL                         R11 0
      111 LOADK                            R12 K43 ["::UICorner"]
      112 DUPTABLE                         R13 K45 [{"CornerRadius"}]
      113 GETIMPORT                        R14 K47 [UDim.new]
      115 LOADN                            R15 0
      116 LOADN                            R16 4
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K44 ["CornerRadius"]
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 0
      122 LOADK                            R13 K48 [".VPF-Button--Selected"]
      123 DUPTABLE                         R14 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
      124 LOADN                            R15 0
      125 SETTABLEKS                       R15 R14 K1 ["BackgroundTransparency"]
      127 LOADK                            R15 K50 ["$ActionActivated"]
      128 SETTABLEKS                       R15 R14 K32 ["BackgroundColor3"]
      130 CALL                             R12 2 1
      131 GETUPVAL                         R14 3
      132 CALL                             R14 0 1
      133 JUMPIFNOT                        R14 ; [+19]
      134 GETUPVAL                         R13 0
      135 LOADK                            R14 K51 [".VPF-Button--Disabled"]
      136 DUPTABLE                         R15 K5 [{"BackgroundTransparency"}]
      137 LOADN                            R16 1
      138 SETTABLEKS                       R16 R15 K1 ["BackgroundTransparency"]
      140 NEWTABLE                         R16 0 1
      142 GETUPVAL                         R17 0
      143 LOADK                            R18 K52 [">> .VPF-Icon"]
      144 DUPTABLE                         R19 K54 [{"ImageTransparency"}]
      145 LOADK                            R20 K55 [0.5]
      146 SETTABLEKS                       R20 R19 K53 ["ImageTransparency"]
      148 CALL                             R17 2 -1
      149 SETLIST                          R16 R17 -1 [1]
      151 CALL                             R13 3 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R13
      154 GETUPVAL                         R14 0
      155 LOADK                            R15 K56 [".VPF-Button--Unselected"]
      156 NEWTABLE                         R16 0 0
      158 NEWTABLE                         R17 0 2
      160 GETUPVAL                         R18 0
      161 LOADK                            R19 K57 [":hover"]
      162 DUPTABLE                         R20 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
      163 LOADN                            R21 0
      164 SETTABLEKS                       R21 R20 K1 ["BackgroundTransparency"]
      166 LOADK                            R21 K58 ["$ActionHover"]
      167 SETTABLEKS                       R21 R20 K32 ["BackgroundColor3"]
      169 CALL                             R18 2 1
      170 GETUPVAL                         R19 0
      171 LOADK                            R20 K59 [":press"]
      172 DUPTABLE                         R21 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
      173 LOADN                            R22 0
      174 SETTABLEKS                       R22 R21 K1 ["BackgroundTransparency"]
      176 LOADK                            R22 K50 ["$ActionActivated"]
      177 SETTABLEKS                       R22 R21 K32 ["BackgroundColor3"]
      179 CALL                             R19 2 -1
      180 SETLIST                          R17 R18 -1 [1]
      182 CALL                             R14 3 -1
      183 SETLIST                          R10 R11 -1 [1]
      185 CALL                             R7 3 1
      186 GETUPVAL                         R8 0
      187 LOADK                            R9 K60 [".VPF-Icon"]
      188 DUPTABLE                         R10 K62 [{"ImageColor3", "Size"}]
      189 LOADK                            R11 K26 ["$TextPrimary"]
      190 SETTABLEKS                       R11 R10 K61 ["ImageColor3"]
      192 GETIMPORT                        R11 K64 [UDim2.fromScale]
      194 LOADN                            R12 1
      195 LOADN                            R13 1
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R10 K38 ["Size"]
      199 NEWTABLE                         R11 0 1
      201 GETUPVAL                         R12 0
      202 LOADK                            R13 K65 ["::UIAspectRatioConstraint"]
      203 CALL                             R12 1 -1
      204 SETLIST                          R11 R12 -1 [1]
      206 CALL                             R8 3 1
      207 GETUPVAL                         R9 0
      208 LOADK                            R10 K66 [".VPF-Label"]
      209 DUPTABLE                         R11 K68 [{"AutomaticSize", "Size", "TextYAlignment", "TextSize", "TextColor3"}]
      210 GETIMPORT                        R12 K70 [Enum.AutomaticSize.X]
      212 SETTABLEKS                       R12 R11 K67 ["AutomaticSize"]
      214 GETIMPORT                        R12 K64 [UDim2.fromScale]
      216 LOADN                            R13 0
      217 LOADN                            R14 1
      218 CALL                             R12 2 1
      219 SETTABLEKS                       R12 R11 K38 ["Size"]
      221 GETIMPORT                        R12 K72 [Enum.TextYAlignment.Center]
      223 SETTABLEKS                       R12 R11 K24 ["TextYAlignment"]
      225 LOADN                            R12 18
      226 SETTABLEKS                       R12 R11 K22 ["TextSize"]
      228 LOADK                            R12 K26 ["$TextPrimary"]
      229 SETTABLEKS                       R12 R11 K21 ["TextColor3"]
      231 CALL                             R9 2 1
      232 GETUPVAL                         R10 0
      233 LOADK                            R11 K73 [".VPF-SeparatorBar"]
      234 DUPTABLE                         R12 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
      235 LOADK                            R13 K75 ["$Divider"]
      236 SETTABLEKS                       R13 R12 K32 ["BackgroundColor3"]
      238 LOADN                            R13 0
      239 SETTABLEKS                       R13 R12 K1 ["BackgroundTransparency"]
      241 CALL                             R10 2 1
      242 GETUPVAL                         R11 0
      243 LOADK                            R12 K76 [".VPF-Slider"]
      244 DUPTABLE                         R13 K77 [{"AutomaticSize", "Size"}]
      245 GETIMPORT                        R14 K70 [Enum.AutomaticSize.X]
      247 SETTABLEKS                       R14 R13 K67 ["AutomaticSize"]
      249 GETIMPORT                        R14 K42 [UDim2.fromOffset]
      251 LOADN                            R15 0
      252 LOADN                            R16 24
      253 CALL                             R14 2 1
      254 SETTABLEKS                       R14 R13 K38 ["Size"]
      256 NEWTABLE                         R14 0 7
      258 GETUPVAL                         R15 0
      259 LOADK                            R16 K78 ["::UIPadding"]
      260 DUPTABLE                         R17 K80 [{"PaddingRight"}]
      261 GETIMPORT                        R18 K47 [UDim.new]
      263 LOADN                            R19 0
      264 LOADN                            R20 5
      265 CALL                             R18 2 1
      266 SETTABLEKS                       R18 R17 K79 ["PaddingRight"]
      268 CALL                             R15 2 1
      269 GETUPVAL                         R16 0
      270 LOADK                            R17 K81 ["::UIListLayout"]
      271 DUPTABLE                         R18 K84 [{"FillDirection", "Padding"}]
      272 GETIMPORT                        R19 K86 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R19 R18 K82 ["FillDirection"]
      276 GETIMPORT                        R19 K47 [UDim.new]
      278 LOADN                            R20 0
      279 LOADN                            R21 12
      280 CALL                             R19 2 1
      281 SETTABLEKS                       R19 R18 K83 ["Padding"]
      283 CALL                             R16 2 1
      284 GETUPVAL                         R17 0
      285 LOADK                            R18 K87 [">> .VPF-Slider__BarSegment"]
      286 DUPTABLE                         R19 K88 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      287 LOADK                            R20 K26 ["$TextPrimary"]
      288 SETTABLEKS                       R20 R19 K32 ["BackgroundColor3"]
      290 LOADN                            R20 0
      291 SETTABLEKS                       R20 R19 K1 ["BackgroundTransparency"]
      293 GETIMPORT                        R20 K42 [UDim2.fromOffset]
      295 LOADN                            R21 8
      296 LOADN                            R22 2
      297 CALL                             R20 2 1
      298 SETTABLEKS                       R20 R19 K38 ["Size"]
      300 NEWTABLE                         R20 0 1
      302 GETUPVAL                         R21 0
      303 LOADK                            R22 K43 ["::UICorner"]
      304 DUPTABLE                         R23 K45 [{"CornerRadius"}]
      305 GETIMPORT                        R24 K47 [UDim.new]
      307 LOADN                            R25 0
      308 LOADN                            R26 4
      309 CALL                             R24 2 1
      310 SETTABLEKS                       R24 R23 K44 ["CornerRadius"]
      312 CALL                             R21 2 -1
      313 SETLIST                          R20 R21 -1 [1]
      315 CALL                             R17 3 1
      316 GETUPVAL                         R18 0
      317 LOADK                            R19 K89 [">> .VPF-Slider__Input"]
      318 DUPTABLE                         R20 K91 [{"BackgroundColor3", "BorderSizePixel", "ClearTextOnFocus", "Font", "TextColor3", "TextSize"}]
      319 LOADK                            R21 K50 ["$ActionActivated"]
      320 SETTABLEKS                       R21 R20 K32 ["BackgroundColor3"]
      322 LOADN                            R21 0
      323 SETTABLEKS                       R21 R20 K2 ["BorderSizePixel"]
      325 LOADB                            R21 0
      326 SETTABLEKS                       R21 R20 K90 ["ClearTextOnFocus"]
      328 GETIMPORT                        R21 K18 [Enum.Font.SourceSans]
      330 SETTABLEKS                       R21 R20 K14 ["Font"]
      332 LOADK                            R21 K26 ["$TextPrimary"]
      333 SETTABLEKS                       R21 R20 K21 ["TextColor3"]
      335 LOADN                            R21 18
      336 SETTABLEKS                       R21 R20 K22 ["TextSize"]
      338 NEWTABLE                         R21 0 1
      340 GETUPVAL                         R22 0
      341 LOADK                            R23 K92 ["::UIStroke"]
      342 DUPTABLE                         R24 K96 [{"ApplyStrokeMode", "Color", "Thickness"}]
      343 GETIMPORT                        R25 K98 [Enum.ApplyStrokeMode.Border]
      345 SETTABLEKS                       R25 R24 K93 ["ApplyStrokeMode"]
      347 LOADK                            R25 K50 ["$ActionActivated"]
      348 SETTABLEKS                       R25 R24 K94 ["Color"]
      350 LOADN                            R25 1
      351 SETTABLEKS                       R25 R24 K95 ["Thickness"]
      353 CALL                             R22 2 -1
      354 SETLIST                          R21 R22 -1 [1]
      356 CALL                             R18 3 1
      357 GETUPVAL                         R19 0
      358 LOADK                            R20 K99 [">> .VPF-Slider__StepButton"]
      359 DUPTABLE                         R21 K100 [{"BackgroundColor3", "Size"}]
      360 LOADK                            R22 K101 ["$SecondaryMain"]
      361 SETTABLEKS                       R22 R21 K32 ["BackgroundColor3"]
      363 GETIMPORT                        R22 K102 [UDim2.new]
      365 LOADN                            R23 0
      366 LOADN                            R24 20
      367 LOADN                            R25 1
      368 LOADN                            R26 0
      369 CALL                             R22 4 1
      370 SETTABLEKS                       R22 R21 K38 ["Size"]
      372 NEWTABLE                         R22 0 2
      374 GETUPVAL                         R23 0
      375 LOADK                            R24 K43 ["::UICorner"]
      376 DUPTABLE                         R25 K45 [{"CornerRadius"}]
      377 GETIMPORT                        R26 K47 [UDim.new]
      379 LOADN                            R27 0
      380 LOADN                            R28 4
      381 CALL                             R26 2 1
      382 SETTABLEKS                       R26 R25 K44 ["CornerRadius"]
      384 CALL                             R23 2 1
      385 GETUPVAL                         R24 0
      386 LOADK                            R25 K92 ["::UIStroke"]
      387 DUPTABLE                         R26 K96 [{"ApplyStrokeMode", "Color", "Thickness"}]
      388 GETIMPORT                        R27 K98 [Enum.ApplyStrokeMode.Border]
      390 SETTABLEKS                       R27 R26 K93 ["ApplyStrokeMode"]
      392 LOADK                            R27 K50 ["$ActionActivated"]
      393 SETTABLEKS                       R27 R26 K94 ["Color"]
      395 LOADN                            R27 1
      396 SETTABLEKS                       R27 R26 K95 ["Thickness"]
      398 CALL                             R24 2 -1
      399 SETLIST                          R22 R23 -1 [1]
      401 CALL                             R19 3 1
      402 GETUPVAL                         R20 0
      403 LOADK                            R21 K103 [".VPF-Slider--Disabled >> .VPF-Slider__StepButton"]
      404 DUPTABLE                         R22 K33 [{"BackgroundColor3"}]
      405 LOADK                            R23 K104 ["$SecondaryMuted"]
      406 SETTABLEKS                       R23 R22 K32 ["BackgroundColor3"]
      408 CALL                             R20 2 1
      409 GETUPVAL                         R21 0
      410 LOADK                            R22 K105 [".VPF-Slider--Enabled >> .VPF-Slider__StepButton"]
      411 NEWTABLE                         R23 0 0
      413 NEWTABLE                         R24 0 1
      415 GETUPVAL                         R25 0
      416 LOADK                            R26 K57 [":hover"]
      417 DUPTABLE                         R27 K33 [{"BackgroundColor3"}]
      418 LOADK                            R28 K106 ["$SecondaryContrast"]
      419 SETTABLEKS                       R28 R27 K32 ["BackgroundColor3"]
      421 CALL                             R25 2 -1
      422 SETLIST                          R24 R25 -1 [1]
      424 CALL                             R21 3 -1
      425 SETLIST                          R14 R15 -1 [1]
      427 CALL                             R11 3 1
      428 GETUPVAL                         R12 0
      429 LOADK                            R13 K107 [".VPF-TextButton"]
      430 DUPTABLE                         R14 K108 [{"AutomaticSize", "BackgroundColor3", "Font", "Size", "TextColor3", "TextSize"}]
      431 GETIMPORT                        R15 K70 [Enum.AutomaticSize.X]
      433 SETTABLEKS                       R15 R14 K67 ["AutomaticSize"]
      435 LOADK                            R15 K109 ["$PrimaryMain"]
      436 SETTABLEKS                       R15 R14 K32 ["BackgroundColor3"]
      438 GETIMPORT                        R15 K18 [Enum.Font.SourceSans]
      440 SETTABLEKS                       R15 R14 K14 ["Font"]
      442 GETIMPORT                        R15 K64 [UDim2.fromScale]
      444 LOADN                            R16 0
      445 LOADN                            R17 1
      446 CALL                             R15 2 1
      447 SETTABLEKS                       R15 R14 K38 ["Size"]
      449 LOADK                            R15 K110 ["$TextContrast"]
      450 SETTABLEKS                       R15 R14 K21 ["TextColor3"]
      452 LOADN                            R15 20
      453 SETTABLEKS                       R15 R14 K22 ["TextSize"]
      455 NEWTABLE                         R15 0 4
      457 GETUPVAL                         R16 0
      458 LOADK                            R17 K43 ["::UICorner"]
      459 DUPTABLE                         R18 K45 [{"CornerRadius"}]
      460 GETIMPORT                        R19 K47 [UDim.new]
      462 LOADN                            R20 0
      463 LOADN                            R21 4
      464 CALL                             R19 2 1
      465 SETTABLEKS                       R19 R18 K44 ["CornerRadius"]
      467 CALL                             R16 2 1
      468 GETUPVAL                         R17 0
      469 LOADK                            R18 K78 ["::UIPadding"]
      470 DUPTABLE                         R19 K114 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      471 GETIMPORT                        R20 K47 [UDim.new]
      473 LOADN                            R21 0
      474 LOADN                            R22 14
      475 CALL                             R20 2 1
      476 SETTABLEKS                       R20 R19 K111 ["PaddingLeft"]
      478 GETIMPORT                        R20 K47 [UDim.new]
      480 LOADN                            R21 0
      481 LOADN                            R22 14
      482 CALL                             R20 2 1
      483 SETTABLEKS                       R20 R19 K79 ["PaddingRight"]
      485 GETIMPORT                        R20 K47 [UDim.new]
      487 LOADN                            R21 0
      488 LOADN                            R22 5
      489 CALL                             R20 2 1
      490 SETTABLEKS                       R20 R19 K112 ["PaddingTop"]
      492 GETIMPORT                        R20 K47 [UDim.new]
      494 LOADN                            R21 0
      495 LOADN                            R22 5
      496 CALL                             R20 2 1
      497 SETTABLEKS                       R20 R19 K113 ["PaddingBottom"]
      499 CALL                             R17 2 1
      500 GETUPVAL                         R18 0
      501 LOADK                            R19 K57 [":hover"]
      502 DUPTABLE                         R20 K33 [{"BackgroundColor3"}]
      503 LOADK                            R21 K115 ["$PrimaryHoverBackground"]
      504 SETTABLEKS                       R21 R20 K32 ["BackgroundColor3"]
      506 CALL                             R18 2 1
      507 GETUPVAL                         R19 0
      508 LOADK                            R20 K116 [".VPF-TextButton--Disabled"]
      509 DUPTABLE                         R21 K117 [{"BackgroundColor3", "TextColor3"}]
      510 LOADK                            R22 K106 ["$SecondaryContrast"]
      511 SETTABLEKS                       R22 R21 K32 ["BackgroundColor3"]
      513 LOADK                            R22 K104 ["$SecondaryMuted"]
      514 SETTABLEKS                       R22 R21 K21 ["TextColor3"]
      516 NEWTABLE                         R22 0 1
      518 GETUPVAL                         R23 0
      519 LOADK                            R24 K57 [":hover"]
      520 DUPTABLE                         R25 K33 [{"BackgroundColor3"}]
      521 LOADK                            R26 K106 ["$SecondaryContrast"]
      522 SETTABLEKS                       R26 R25 K32 ["BackgroundColor3"]
      524 CALL                             R23 2 -1
      525 SETLIST                          R22 R23 -1 [1]
      527 CALL                             R19 3 -1
      528 SETLIST                          R15 R16 -1 [1]
      530 CALL                             R12 3 1
      531 GETUPVAL                         R13 0
      532 LOADK                            R14 K118 [".VPF-Toolbar"]
      533 DUPTABLE                         R15 K119 [{"AutomaticSize"}]
      534 GETIMPORT                        R16 K121 [Enum.AutomaticSize.XY]
      536 SETTABLEKS                       R16 R15 K67 ["AutomaticSize"]
      538 NEWTABLE                         R16 0 2
      540 GETUPVAL                         R17 0
      541 LOADK                            R18 K122 [".VPF-Toolbar--Horizontal"]
      542 NEWTABLE                         R19 0 0
      544 NEWTABLE                         R20 0 2
      546 GETUPVAL                         R21 0
      547 LOADK                            R22 K123 [".VPF-Toolbar--Center"]
      548 DUPTABLE                         R23 K126 [{"AnchorPoint", "Position"}]
      549 GETIMPORT                        R24 K128 [Vector2.new]
      551 LOADK                            R25 K55 [0.5]
      552 LOADN                            R26 0
      553 CALL                             R24 2 1
      554 SETTABLEKS                       R24 R23 K124 ["AnchorPoint"]
      556 GETIMPORT                        R24 K102 [UDim2.new]
      558 LOADK                            R25 K55 [0.5]
      559 LOADN                            R26 0
      560 LOADN                            R27 0
      561 GETUPVAL                         R28 4
      562 CALL                             R24 4 1
      563 SETTABLEKS                       R24 R23 K125 ["Position"]
      565 CALL                             R21 2 1
      566 GETUPVAL                         R23 5
      567 CALL                             R23 0 1
      568 JUMPIFNOT                        R23 ; [+19]
      569 GETUPVAL                         R22 0
      570 LOADK                            R23 K129 [".VPF-Toolbar--Left"]
      571 DUPTABLE                         R24 K126 [{"AnchorPoint", "Position"}]
      572 GETIMPORT                        R25 K128 [Vector2.new]
      574 LOADN                            R26 0
      575 LOADN                            R27 0
      576 CALL                             R25 2 1
      577 SETTABLEKS                       R25 R24 K124 ["AnchorPoint"]
      579 GETIMPORT                        R25 K42 [UDim2.fromOffset]
      581 GETUPVAL                         R26 4
      582 GETUPVAL                         R27 4
      583 CALL                             R25 2 1
      584 SETTABLEKS                       R25 R24 K125 ["Position"]
      586 CALL                             R22 2 1
      587 JUMP                             ; [+1]
      588 LOADNIL                          R22
      589 SETLIST                          R20 R21 2 [1]
      591 CALL                             R17 3 1
      592 GETUPVAL                         R18 0
      593 LOADK                            R19 K130 [".VPF-Toolbar--Vertical"]
      594 NEWTABLE                         R20 0 0
      596 NEWTABLE                         R21 0 3
      598 GETUPVAL                         R22 0
      599 LOADK                            R23 K123 [".VPF-Toolbar--Center"]
      600 DUPTABLE                         R24 K126 [{"AnchorPoint", "Position"}]
      601 GETIMPORT                        R25 K128 [Vector2.new]
      603 LOADN                            R26 0
      604 LOADK                            R27 K55 [0.5]
      605 CALL                             R25 2 1
      606 SETTABLEKS                       R25 R24 K124 ["AnchorPoint"]
      608 GETIMPORT                        R25 K102 [UDim2.new]
      610 LOADN                            R26 0
      611 GETUPVAL                         R27 4
      612 LOADK                            R28 K55 [0.5]
      613 LOADN                            R29 0
      614 CALL                             R25 4 1
      615 SETTABLEKS                       R25 R24 K125 ["Position"]
      617 CALL                             R22 2 1
      618 GETUPVAL                         R23 0
      619 LOADK                            R24 K131 [".VPF-Toolbar--Top"]
      620 DUPTABLE                         R25 K126 [{"AnchorPoint", "Position"}]
      621 GETIMPORT                        R26 K128 [Vector2.new]
      623 LOADN                            R27 0
      624 LOADN                            R28 0
      625 CALL                             R26 2 1
      626 SETTABLEKS                       R26 R25 K124 ["AnchorPoint"]
      628 GETIMPORT                        R26 K102 [UDim2.new]
      630 LOADN                            R27 0
      631 GETUPVAL                         R28 4
      632 LOADN                            R29 0
      633 GETUPVAL                         R31 5
      634 CALL                             R31 0 1
      635 JUMPIFNOT                        R31 ; [+4]
      636 GETUPVAL                         R32 4
      637 ADDK                             R31 R32 K133 [44]
      638 ADDK                             R30 R31 K132 [4]
      639 JUMP                             ; [+2]
      640 GETUPVAL                         R31 4
      641 ADDK                             R30 R31 K134 [40]
      642 CALL                             R26 4 1
      643 SETTABLEKS                       R26 R25 K125 ["Position"]
      645 CALL                             R23 2 1
      646 GETUPVAL                         R24 0
      647 LOADK                            R25 K135 [".VPF-Toolbar--Bottom"]
      648 DUPTABLE                         R26 K126 [{"AnchorPoint", "Position"}]
      649 GETIMPORT                        R27 K128 [Vector2.new]
      651 LOADN                            R28 0
      652 LOADN                            R29 1
      653 CALL                             R27 2 1
      654 SETTABLEKS                       R27 R26 K124 ["AnchorPoint"]
      656 GETIMPORT                        R27 K102 [UDim2.new]
      658 LOADN                            R28 0
      659 GETUPVAL                         R29 4
      660 LOADN                            R30 1
      661 GETUPVAL                         R32 5
      662 CALL                             R32 0 1
      663 JUMPIFNOT                        R32 ; [+2]
      664 LOADN                            R31 212
      665 JUMP                             ; [+1]
      666 LOADN                            R31 216
      667 CALL                             R27 4 1
      668 SETTABLEKS                       R27 R26 K125 ["Position"]
      670 CALL                             R24 2 -1
      671 SETLIST                          R21 R22 -1 [1]
      673 CALL                             R18 3 -1
      674 SETLIST                          R16 R17 -1 [1]
      676 CALL                             R13 3 1
      677 GETUPVAL                         R14 0
      678 LOADK                            R15 K136 [".VPF-ToolbarBase"]
      679 DUPTABLE                         R16 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
      680 LOADK                            R17 K137 ["$ForegroundMain"]
      681 SETTABLEKS                       R17 R16 K32 ["BackgroundColor3"]
      683 LOADN                            R17 0
      684 SETTABLEKS                       R17 R16 K1 ["BackgroundTransparency"]
      686 NEWTABLE                         R17 0 5
      688 GETUPVAL                         R18 0
      689 LOADK                            R19 K43 ["::UICorner"]
      690 DUPTABLE                         R20 K45 [{"CornerRadius"}]
      691 GETIMPORT                        R21 K47 [UDim.new]
      693 LOADN                            R22 0
      694 LOADN                            R23 5
      695 CALL                             R21 2 1
      696 SETTABLEKS                       R21 R20 K44 ["CornerRadius"]
      698 CALL                             R18 2 1
      699 GETUPVAL                         R19 0
      700 LOADK                            R20 K78 ["::UIPadding"]
      701 DUPTABLE                         R21 K114 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      702 GETIMPORT                        R22 K47 [UDim.new]
      704 LOADN                            R23 0
      705 LOADN                            R24 4
      706 CALL                             R22 2 1
      707 SETTABLEKS                       R22 R21 K111 ["PaddingLeft"]
      709 GETIMPORT                        R22 K47 [UDim.new]
      711 LOADN                            R23 0
      712 LOADN                            R24 4
      713 CALL                             R22 2 1
      714 SETTABLEKS                       R22 R21 K79 ["PaddingRight"]
      716 GETIMPORT                        R22 K47 [UDim.new]
      718 LOADN                            R23 0
      719 LOADN                            R24 4
      720 CALL                             R22 2 1
      721 SETTABLEKS                       R22 R21 K112 ["PaddingTop"]
      723 GETIMPORT                        R22 K47 [UDim.new]
      725 LOADN                            R23 0
      726 LOADN                            R24 4
      727 CALL                             R22 2 1
      728 SETTABLEKS                       R22 R21 K113 ["PaddingBottom"]
      730 CALL                             R19 2 1
      731 GETUPVAL                         R20 0
      732 LOADK                            R21 K92 ["::UIStroke"]
      733 DUPTABLE                         R22 K138 [{"Color", "Thickness"}]
      734 LOADK                            R23 K139 ["$BackgroundDefault"]
      735 SETTABLEKS                       R23 R22 K94 ["Color"]
      737 LOADN                            R23 2
      738 SETTABLEKS                       R23 R22 K95 ["Thickness"]
      740 CALL                             R20 2 1
      741 GETUPVAL                         R21 0
      742 LOADK                            R22 K140 [".VPF-ToolbarBase--Horizontal"]
      743 DUPTABLE                         R23 K77 [{"AutomaticSize", "Size"}]
      744 GETIMPORT                        R24 K70 [Enum.AutomaticSize.X]
      746 SETTABLEKS                       R24 R23 K67 ["AutomaticSize"]
      748 GETIMPORT                        R24 K42 [UDim2.fromOffset]
      750 LOADN                            R25 0
      751 LOADN                            R26 40
      752 CALL                             R24 2 1
      753 SETTABLEKS                       R24 R23 K38 ["Size"]
      755 NEWTABLE                         R24 0 2
      757 GETUPVAL                         R25 0
      758 LOADK                            R26 K81 ["::UIListLayout"]
      759 DUPTABLE                         R27 K84 [{"FillDirection", "Padding"}]
      760 GETIMPORT                        R28 K86 [Enum.FillDirection.Horizontal]
      762 SETTABLEKS                       R28 R27 K82 ["FillDirection"]
      764 LOADK                            R28 K141 ["$ButtonSpacing"]
      765 SETTABLEKS                       R28 R27 K83 ["Padding"]
      767 CALL                             R25 2 1
      768 GETUPVAL                         R26 0
      769 LOADK                            R27 K142 ["> .VPF-Separator"]
      770 DUPTABLE                         R28 K143 [{"Size"}]
      771 GETIMPORT                        R29 K102 [UDim2.new]
      773 LOADN                            R30 0
      774 LOADN                            R31 8
      775 LOADN                            R32 1
      776 LOADN                            R33 0
      777 CALL                             R29 4 1
      778 SETTABLEKS                       R29 R28 K38 ["Size"]
      780 NEWTABLE                         R29 0 1
      782 GETUPVAL                         R30 0
      783 LOADK                            R31 K144 ["> .VPF-SeparatorBar"]
      784 DUPTABLE                         R32 K145 [{"AnchorPoint", "Position", "Size"}]
      785 GETIMPORT                        R33 K128 [Vector2.new]
      787 LOADK                            R34 K55 [0.5]
      788 LOADN                            R35 0
      789 CALL                             R33 2 1
      790 SETTABLEKS                       R33 R32 K124 ["AnchorPoint"]
      792 GETIMPORT                        R33 K64 [UDim2.fromScale]
      794 LOADK                            R34 K55 [0.5]
      795 LOADN                            R35 0
      796 CALL                             R33 2 1
      797 SETTABLEKS                       R33 R32 K125 ["Position"]
      799 GETIMPORT                        R33 K102 [UDim2.new]
      801 LOADN                            R34 0
      802 LOADN                            R35 2
      803 LOADN                            R36 1
      804 LOADN                            R37 0
      805 CALL                             R33 4 1
      806 SETTABLEKS                       R33 R32 K38 ["Size"]
      808 CALL                             R30 2 -1
      809 SETLIST                          R29 R30 -1 [1]
      811 CALL                             R26 3 -1
      812 SETLIST                          R24 R25 -1 [1]
      814 CALL                             R21 3 1
      815 GETUPVAL                         R22 0
      816 LOADK                            R23 K146 [".VPF-ToolbarBase--Vertical"]
      817 DUPTABLE                         R24 K77 [{"AutomaticSize", "Size"}]
      818 GETIMPORT                        R25 K148 [Enum.AutomaticSize.Y]
      820 SETTABLEKS                       R25 R24 K67 ["AutomaticSize"]
      822 GETIMPORT                        R25 K42 [UDim2.fromOffset]
      824 LOADN                            R26 40
      825 LOADN                            R27 0
      826 CALL                             R25 2 1
      827 SETTABLEKS                       R25 R24 K38 ["Size"]
      829 NEWTABLE                         R25 0 2
      831 GETUPVAL                         R26 0
      832 LOADK                            R27 K81 ["::UIListLayout"]
      833 DUPTABLE                         R28 K84 [{"FillDirection", "Padding"}]
      834 GETIMPORT                        R29 K150 [Enum.FillDirection.Vertical]
      836 SETTABLEKS                       R29 R28 K82 ["FillDirection"]
      838 LOADK                            R29 K141 ["$ButtonSpacing"]
      839 SETTABLEKS                       R29 R28 K83 ["Padding"]
      841 CALL                             R26 2 1
      842 GETUPVAL                         R27 0
      843 LOADK                            R28 K142 ["> .VPF-Separator"]
      844 DUPTABLE                         R29 K143 [{"Size"}]
      845 GETIMPORT                        R30 K102 [UDim2.new]
      847 LOADN                            R31 1
      848 LOADN                            R32 0
      849 LOADN                            R33 0
      850 LOADN                            R34 8
      851 CALL                             R30 4 1
      852 SETTABLEKS                       R30 R29 K38 ["Size"]
      854 NEWTABLE                         R30 0 1
      856 GETUPVAL                         R31 0
      857 LOADK                            R32 K144 ["> .VPF-SeparatorBar"]
      858 DUPTABLE                         R33 K145 [{"AnchorPoint", "Position", "Size"}]
      859 GETIMPORT                        R34 K128 [Vector2.new]
      861 LOADN                            R35 0
      862 LOADK                            R36 K55 [0.5]
      863 CALL                             R34 2 1
      864 SETTABLEKS                       R34 R33 K124 ["AnchorPoint"]
      866 GETIMPORT                        R34 K64 [UDim2.fromScale]
      868 LOADN                            R35 0
      869 LOADK                            R36 K55 [0.5]
      870 CALL                             R34 2 1
      871 SETTABLEKS                       R34 R33 K125 ["Position"]
      873 GETIMPORT                        R34 K102 [UDim2.new]
      875 LOADN                            R35 1
      876 LOADN                            R36 0
      877 LOADN                            R37 0
      878 LOADN                            R38 2
      879 CALL                             R34 4 1
      880 SETTABLEKS                       R34 R33 K38 ["Size"]
      882 CALL                             R31 2 -1
      883 SETLIST                          R30 R31 -1 [1]
      885 CALL                             R27 3 -1
      886 SETLIST                          R25 R26 -1 [1]
      888 CALL                             R22 3 -1
      889 SETLIST                          R17 R18 -1 [1]
      891 DUPTABLE                         R18 K152 [{"ButtonSpacing"}]
      892 GETIMPORT                        R19 K47 [UDim.new]
      894 LOADN                            R20 0
      895 LOADN                            R21 4
      896 CALL                             R19 2 1
      897 SETTABLEKS                       R19 R18 K151 ["ButtonSpacing"]
      899 CALL                             R14 4 1
      900 GETUPVAL                         R15 0
      901 LOADK                            R16 K153 [".VPF-Tooltip"]
      902 DUPTABLE                         R17 K154 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
      903 GETIMPORT                        R18 K121 [Enum.AutomaticSize.XY]
      905 SETTABLEKS                       R18 R17 K67 ["AutomaticSize"]
      907 LOADK                            R18 K155 ["$White"]
      908 SETTABLEKS                       R18 R17 K32 ["BackgroundColor3"]
      910 LOADN                            R18 0
      911 SETTABLEKS                       R18 R17 K1 ["BackgroundTransparency"]
      913 NEWTABLE                         R18 0 5
      915 GETUPVAL                         R20 3
      916 CALL                             R20 0 1
      917 JUMPIFNOT                        R20 ; [+15]
      918 GETUPVAL                         R19 0
      919 LOADK                            R20 K92 ["::UIStroke"]
      920 DUPTABLE                         R21 K157 [{"Thickness", "Color", "LineJoinMode"}]
      921 LOADN                            R22 1
      922 SETTABLEKS                       R22 R21 K95 ["Thickness"]
      924 LOADK                            R22 K158 ["$Gray80"]
      925 SETTABLEKS                       R22 R21 K94 ["Color"]
      927 GETIMPORT                        R22 K160 [Enum.LineJoinMode.Round]
      929 SETTABLEKS                       R22 R21 K156 ["LineJoinMode"]
      931 CALL                             R19 2 1
      932 JUMP                             ; [+1]
      933 LOADNIL                          R19
      934 GETUPVAL                         R20 0
      935 LOADK                            R21 K161 [">> .VPF-Tooltip__Title"]
      936 DUPTABLE                         R22 K162 [{"AutomaticSize", "Font", "TextColor3", "TextSize"}]
      937 GETIMPORT                        R23 K121 [Enum.AutomaticSize.XY]
      939 SETTABLEKS                       R23 R22 K67 ["AutomaticSize"]
      941 GETIMPORT                        R23 K164 [Enum.Font.SourceSansBold]
      943 SETTABLEKS                       R23 R22 K14 ["Font"]
      945 LOADK                            R23 K165 ["$Gray120"]
      946 SETTABLEKS                       R23 R22 K21 ["TextColor3"]
      948 LOADN                            R23 14
      949 SETTABLEKS                       R23 R22 K22 ["TextSize"]
      951 CALL                             R20 2 1
      952 GETUPVAL                         R21 0
      953 LOADK                            R22 K166 [">> .VPF-Tooltip__Description"]
      954 DUPTABLE                         R23 K168 [{"TextColor3", "TextWrapped"}]
      955 LOADK                            R24 K165 ["$Gray120"]
      956 SETTABLEKS                       R24 R23 K21 ["TextColor3"]
      958 LOADB                            R24 1
      959 SETTABLEKS                       R24 R23 K167 ["TextWrapped"]
      961 CALL                             R21 2 1
      962 GETUPVAL                         R22 0
      963 LOADK                            R23 K169 [".VPF-Tooltip--Horizontal"]
      964 DUPTABLE                         R24 K170 [{"Position"}]
      965 GETIMPORT                        R25 K102 [UDim2.new]
      967 LOADN                            R26 0
      968 LOADN                            R27 0
      969 LOADN                            R28 1
      970 LOADN                            R29 12
      971 CALL                             R25 4 1
      972 SETTABLEKS                       R25 R24 K125 ["Position"]
      974 CALL                             R22 2 1
      975 GETUPVAL                         R23 0
      976 LOADK                            R24 K171 [".VPF-Tooltip--Vertical"]
      977 DUPTABLE                         R25 K170 [{"Position"}]
      978 GETIMPORT                        R26 K102 [UDim2.new]
      980 LOADN                            R27 1
      981 LOADN                            R28 8
      982 LOADN                            R29 0
      983 LOADN                            R30 0
      984 CALL                             R26 4 1
      985 SETTABLEKS                       R26 R25 K125 ["Position"]
      987 CALL                             R23 2 -1
      988 SETLIST                          R18 R19 -1 [1]
      990 CALL                             R15 3 1
      991 GETUPVAL                         R16 0
      992 LOADK                            R17 K172 [".VPF-X-ContrastBg"]
      993 DUPTABLE                         R18 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
      994 LOADK                            R19 K173 ["$ForegroundContrast"]
      995 SETTABLEKS                       R19 R18 K32 ["BackgroundColor3"]
      997 LOADN                            R19 0
      998 SETTABLEKS                       R19 R18 K1 ["BackgroundTransparency"]
     1000 CALL                             R16 2 1
     1001 SETLIST                          R0 R1 16 [1]
     1003 GETUPVAL                         R1 0
     1004 LOADK                            R2 K174 [".VPF-X-DebugPink"]
     1005 DUPTABLE                         R3 K49 [{"BackgroundTransparency", "BackgroundColor3"}]
     1006 LOADN                            R4 0
     1007 SETTABLEKS                       R4 R3 K1 ["BackgroundTransparency"]
     1009 GETIMPORT                        R4 K36 [Color3.new]
     1011 LOADN                            R5 1
     1012 LOADN                            R6 0
     1013 LOADN                            R7 1
     1014 CALL                             R4 3 1
     1015 SETTABLEKS                       R4 R3 K32 ["BackgroundColor3"]
     1017 CALL                             R1 2 1
     1018 GETUPVAL                         R2 0
     1019 LOADK                            R3 K175 [".VPF-X-MainBg"]
     1020 DUPTABLE                         R4 K74 [{"BackgroundColor3", "BackgroundTransparency"}]
     1021 LOADK                            R5 K137 ["$ForegroundMain"]
     1022 SETTABLEKS                       R5 R4 K32 ["BackgroundColor3"]
     1024 LOADN                            R5 0
     1025 SETTABLEKS                       R5 R4 K1 ["BackgroundTransparency"]
     1027 CALL                             R2 2 1
     1028 GETUPVAL                         R3 0
     1029 LOADK                            R4 K176 [".VPF-X-Primary"]
     1030 DUPTABLE                         R5 K177 [{"ImageColor3"}]
     1031 LOADK                            R6 K26 ["$TextPrimary"]
     1032 SETTABLEKS                       R6 R5 K61 ["ImageColor3"]
     1034 CALL                             R3 2 1
     1035 GETUPVAL                         R4 0
     1036 LOADK                            R5 K178 [".VPF-X-Square"]
     1037 NEWTABLE                         R6 0 0
     1039 NEWTABLE                         R7 0 1
     1041 GETUPVAL                         R8 0
     1042 LOADK                            R9 K65 ["::UIAspectRatioConstraint"]
     1043 CALL                             R8 1 -1
     1044 SETLIST                          R7 R8 -1 [1]
     1046 CALL                             R4 3 -1
     1047 SETLIST                          R0 R1 -1 [17]
     1049 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["getFFlagViewportToolingFrameworkSplitButtons"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K10 ["getFFlagViewportToolingFrameworkToolbarSpacing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Flags"]
       32 GETTABLEKS                       R5 R6 K11 ["getFFlagViewportToolingFrameworkButtonDisabled"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K13 [game]
       37 LOADK                            R7 K14 ["ViewportToolingFrameworkTextLabelColor"]
       38 LOADB                            R8 0
       39 NAMECALL                         R5 R5 K15 ["DefineFastFlag"]
       41 CALL                             R5 3 1
       42 GETTABLEKS                       R7 R1 K16 ["Styling"]
       44 GETTABLEKS                       R6 R7 K17 ["createStyleRule"]
       46 MOVE                             R8 R3
       47 CALL                             R8 0 1
       48 JUMPIFNOT                        R8 ; [+2]
       49 LOADN                            R7 18
       50 JUMP                             ; [+1]
       51 LOADN                            R7 16
       52 DUPCLOSURE                       R8 K18 [PROTO_0]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 RETURN                           R8 1
