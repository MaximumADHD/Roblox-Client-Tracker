PROTO_0:
        0 NEWTABLE                         R0 0 19
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
       54 LOADK                            R8 K26 ["$TextPrimary"]
       55 SETTABLEKS                       R8 R7 K21 ["TextColor3"]
       57 LOADN                            R8 16
       58 SETTABLEKS                       R8 R7 K22 ["TextSize"]
       60 GETIMPORT                        R8 K28 [Enum.TextXAlignment.Left]
       62 SETTABLEKS                       R8 R7 K23 ["TextXAlignment"]
       64 GETIMPORT                        R8 K30 [Enum.TextYAlignment.Top]
       66 SETTABLEKS                       R8 R7 K24 ["TextYAlignment"]
       68 CALL                             R5 2 1
       69 GETUPVAL                         R6 0
       70 LOADK                            R7 K31 [".VPF-Button"]
       71 DUPTABLE                         R8 K33 [{"BackgroundTransparency", "Size"}]
       72 LOADN                            R9 1
       73 SETTABLEKS                       R9 R8 K1 ["BackgroundTransparency"]
       75 GETIMPORT                        R9 K36 [UDim2.fromOffset]
       77 LOADN                            R10 32
       78 LOADN                            R11 32
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K32 ["Size"]
       82 NEWTABLE                         R9 0 4
       84 GETUPVAL                         R10 0
       85 LOADK                            R11 K37 ["::UICorner"]
       86 DUPTABLE                         R12 K39 [{"CornerRadius"}]
       87 GETIMPORT                        R13 K42 [UDim.new]
       89 LOADN                            R14 0
       90 LOADN                            R15 4
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K38 ["CornerRadius"]
       94 CALL                             R10 2 1
       95 GETUPVAL                         R11 0
       96 LOADK                            R12 K43 [".VPF-Button--Selected"]
       97 DUPTABLE                         R13 K45 [{"BackgroundTransparency", "BackgroundColor3"}]
       98 LOADN                            R14 0
       99 SETTABLEKS                       R14 R13 K1 ["BackgroundTransparency"]
      101 LOADK                            R14 K46 ["$ActionActivated"]
      102 SETTABLEKS                       R14 R13 K44 ["BackgroundColor3"]
      104 CALL                             R11 2 1
      105 GETUPVAL                         R12 0
      106 LOADK                            R13 K47 [".VPF-Button--Disabled"]
      107 DUPTABLE                         R14 K5 [{"BackgroundTransparency"}]
      108 LOADN                            R15 1
      109 SETTABLEKS                       R15 R14 K1 ["BackgroundTransparency"]
      111 NEWTABLE                         R15 0 1
      113 GETUPVAL                         R16 0
      114 LOADK                            R17 K48 [">> .VPF-Icon"]
      115 DUPTABLE                         R18 K50 [{"ImageTransparency"}]
      116 LOADK                            R19 K51 [0.5]
      117 SETTABLEKS                       R19 R18 K49 ["ImageTransparency"]
      119 CALL                             R16 2 -1
      120 SETLIST                          R15 R16 -1 [1]
      122 CALL                             R12 3 1
      123 GETUPVAL                         R13 0
      124 LOADK                            R14 K52 [".VPF-Button--Unselected"]
      125 NEWTABLE                         R15 0 0
      127 NEWTABLE                         R16 0 2
      129 GETUPVAL                         R17 0
      130 LOADK                            R18 K53 [":hover"]
      131 DUPTABLE                         R19 K45 [{"BackgroundTransparency", "BackgroundColor3"}]
      132 LOADN                            R20 0
      133 SETTABLEKS                       R20 R19 K1 ["BackgroundTransparency"]
      135 LOADK                            R20 K54 ["$ActionHover"]
      136 SETTABLEKS                       R20 R19 K44 ["BackgroundColor3"]
      138 CALL                             R17 2 1
      139 GETUPVAL                         R18 0
      140 LOADK                            R19 K55 [":press"]
      141 DUPTABLE                         R20 K45 [{"BackgroundTransparency", "BackgroundColor3"}]
      142 LOADN                            R21 0
      143 SETTABLEKS                       R21 R20 K1 ["BackgroundTransparency"]
      145 LOADK                            R21 K46 ["$ActionActivated"]
      146 SETTABLEKS                       R21 R20 K44 ["BackgroundColor3"]
      148 CALL                             R18 2 -1
      149 SETLIST                          R16 R17 -1 [1]
      151 CALL                             R13 3 -1
      152 SETLIST                          R9 R10 -1 [1]
      154 CALL                             R6 3 1
      155 GETUPVAL                         R7 0
      156 LOADK                            R8 K56 [".VPF-Icon"]
      157 DUPTABLE                         R9 K58 [{"ImageColor3", "Size"}]
      158 LOADK                            R10 K26 ["$TextPrimary"]
      159 SETTABLEKS                       R10 R9 K57 ["ImageColor3"]
      161 GETIMPORT                        R10 K60 [UDim2.fromScale]
      163 LOADN                            R11 1
      164 LOADN                            R12 1
      165 CALL                             R10 2 1
      166 SETTABLEKS                       R10 R9 K32 ["Size"]
      168 NEWTABLE                         R10 0 1
      170 GETUPVAL                         R11 0
      171 LOADK                            R12 K61 ["::UIAspectRatioConstraint"]
      172 CALL                             R11 1 -1
      173 SETLIST                          R10 R11 -1 [1]
      175 CALL                             R7 3 1
      176 GETUPVAL                         R8 0
      177 LOADK                            R9 K62 [".VPF-Label"]
      178 DUPTABLE                         R10 K64 [{"AutomaticSize", "Size", "TextYAlignment", "TextSize", "TextColor3"}]
      179 GETIMPORT                        R11 K66 [Enum.AutomaticSize.X]
      181 SETTABLEKS                       R11 R10 K63 ["AutomaticSize"]
      183 GETIMPORT                        R11 K60 [UDim2.fromScale]
      185 LOADN                            R12 0
      186 LOADN                            R13 1
      187 CALL                             R11 2 1
      188 SETTABLEKS                       R11 R10 K32 ["Size"]
      190 GETIMPORT                        R11 K68 [Enum.TextYAlignment.Center]
      192 SETTABLEKS                       R11 R10 K24 ["TextYAlignment"]
      194 LOADN                            R11 18
      195 SETTABLEKS                       R11 R10 K22 ["TextSize"]
      197 LOADK                            R11 K26 ["$TextPrimary"]
      198 SETTABLEKS                       R11 R10 K21 ["TextColor3"]
      200 CALL                             R8 2 1
      201 GETUPVAL                         R9 0
      202 LOADK                            R10 K69 [".VPF-SeparatorBar"]
      203 DUPTABLE                         R11 K70 [{"BackgroundColor3", "BackgroundTransparency"}]
      204 LOADK                            R12 K71 ["$Divider"]
      205 SETTABLEKS                       R12 R11 K44 ["BackgroundColor3"]
      207 LOADN                            R12 0
      208 SETTABLEKS                       R12 R11 K1 ["BackgroundTransparency"]
      210 CALL                             R9 2 1
      211 GETUPVAL                         R10 0
      212 LOADK                            R11 K72 [".VPF-Slider"]
      213 DUPTABLE                         R12 K73 [{"AutomaticSize", "Size"}]
      214 GETIMPORT                        R13 K66 [Enum.AutomaticSize.X]
      216 SETTABLEKS                       R13 R12 K63 ["AutomaticSize"]
      218 GETIMPORT                        R13 K36 [UDim2.fromOffset]
      220 LOADN                            R14 0
      221 LOADN                            R15 24
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K32 ["Size"]
      225 NEWTABLE                         R13 0 7
      227 GETUPVAL                         R14 0
      228 LOADK                            R15 K74 ["::UIPadding"]
      229 DUPTABLE                         R16 K76 [{"PaddingRight"}]
      230 GETIMPORT                        R17 K42 [UDim.new]
      232 LOADN                            R18 0
      233 LOADN                            R19 5
      234 CALL                             R17 2 1
      235 SETTABLEKS                       R17 R16 K75 ["PaddingRight"]
      237 CALL                             R14 2 1
      238 GETUPVAL                         R15 0
      239 LOADK                            R16 K77 ["::UIListLayout"]
      240 DUPTABLE                         R17 K80 [{"FillDirection", "Padding"}]
      241 GETIMPORT                        R18 K82 [Enum.FillDirection.Horizontal]
      243 SETTABLEKS                       R18 R17 K78 ["FillDirection"]
      245 GETIMPORT                        R18 K42 [UDim.new]
      247 LOADN                            R19 0
      248 LOADN                            R20 12
      249 CALL                             R18 2 1
      250 SETTABLEKS                       R18 R17 K79 ["Padding"]
      252 CALL                             R15 2 1
      253 GETUPVAL                         R16 0
      254 LOADK                            R17 K83 [">> .VPF-Slider__BarSegment"]
      255 DUPTABLE                         R18 K84 [{"BackgroundColor3", "BackgroundTransparency", "Size"}]
      256 LOADK                            R19 K26 ["$TextPrimary"]
      257 SETTABLEKS                       R19 R18 K44 ["BackgroundColor3"]
      259 LOADN                            R19 0
      260 SETTABLEKS                       R19 R18 K1 ["BackgroundTransparency"]
      262 GETIMPORT                        R19 K36 [UDim2.fromOffset]
      264 LOADN                            R20 8
      265 LOADN                            R21 2
      266 CALL                             R19 2 1
      267 SETTABLEKS                       R19 R18 K32 ["Size"]
      269 NEWTABLE                         R19 0 1
      271 GETUPVAL                         R20 0
      272 LOADK                            R21 K37 ["::UICorner"]
      273 DUPTABLE                         R22 K39 [{"CornerRadius"}]
      274 GETIMPORT                        R23 K42 [UDim.new]
      276 LOADN                            R24 0
      277 LOADN                            R25 4
      278 CALL                             R23 2 1
      279 SETTABLEKS                       R23 R22 K38 ["CornerRadius"]
      281 CALL                             R20 2 -1
      282 SETLIST                          R19 R20 -1 [1]
      284 CALL                             R16 3 1
      285 GETUPVAL                         R17 0
      286 LOADK                            R18 K85 [">> .VPF-Slider__Input"]
      287 DUPTABLE                         R19 K87 [{"BackgroundColor3", "BorderSizePixel", "ClearTextOnFocus", "Font", "TextColor3", "TextSize"}]
      288 LOADK                            R20 K46 ["$ActionActivated"]
      289 SETTABLEKS                       R20 R19 K44 ["BackgroundColor3"]
      291 LOADN                            R20 0
      292 SETTABLEKS                       R20 R19 K2 ["BorderSizePixel"]
      294 LOADB                            R20 0
      295 SETTABLEKS                       R20 R19 K86 ["ClearTextOnFocus"]
      297 GETIMPORT                        R20 K18 [Enum.Font.SourceSans]
      299 SETTABLEKS                       R20 R19 K14 ["Font"]
      301 LOADK                            R20 K26 ["$TextPrimary"]
      302 SETTABLEKS                       R20 R19 K21 ["TextColor3"]
      304 LOADN                            R20 18
      305 SETTABLEKS                       R20 R19 K22 ["TextSize"]
      307 NEWTABLE                         R20 0 1
      309 GETUPVAL                         R21 0
      310 LOADK                            R22 K88 ["::UIStroke"]
      311 DUPTABLE                         R23 K92 [{"ApplyStrokeMode", "Color", "Thickness"}]
      312 GETIMPORT                        R24 K94 [Enum.ApplyStrokeMode.Border]
      314 SETTABLEKS                       R24 R23 K89 ["ApplyStrokeMode"]
      316 LOADK                            R24 K46 ["$ActionActivated"]
      317 SETTABLEKS                       R24 R23 K90 ["Color"]
      319 LOADN                            R24 1
      320 SETTABLEKS                       R24 R23 K91 ["Thickness"]
      322 CALL                             R21 2 -1
      323 SETLIST                          R20 R21 -1 [1]
      325 CALL                             R17 3 1
      326 GETUPVAL                         R18 0
      327 LOADK                            R19 K95 [">> .VPF-Slider__StepButton"]
      328 DUPTABLE                         R20 K96 [{"BackgroundColor3", "Size"}]
      329 LOADK                            R21 K97 ["$SecondaryMain"]
      330 SETTABLEKS                       R21 R20 K44 ["BackgroundColor3"]
      332 GETIMPORT                        R21 K98 [UDim2.new]
      334 LOADN                            R22 0
      335 LOADN                            R23 20
      336 LOADN                            R24 1
      337 LOADN                            R25 0
      338 CALL                             R21 4 1
      339 SETTABLEKS                       R21 R20 K32 ["Size"]
      341 NEWTABLE                         R21 0 2
      343 GETUPVAL                         R22 0
      344 LOADK                            R23 K37 ["::UICorner"]
      345 DUPTABLE                         R24 K39 [{"CornerRadius"}]
      346 GETIMPORT                        R25 K42 [UDim.new]
      348 LOADN                            R26 0
      349 LOADN                            R27 4
      350 CALL                             R25 2 1
      351 SETTABLEKS                       R25 R24 K38 ["CornerRadius"]
      353 CALL                             R22 2 1
      354 GETUPVAL                         R23 0
      355 LOADK                            R24 K88 ["::UIStroke"]
      356 DUPTABLE                         R25 K92 [{"ApplyStrokeMode", "Color", "Thickness"}]
      357 GETIMPORT                        R26 K94 [Enum.ApplyStrokeMode.Border]
      359 SETTABLEKS                       R26 R25 K89 ["ApplyStrokeMode"]
      361 LOADK                            R26 K46 ["$ActionActivated"]
      362 SETTABLEKS                       R26 R25 K90 ["Color"]
      364 LOADN                            R26 1
      365 SETTABLEKS                       R26 R25 K91 ["Thickness"]
      367 CALL                             R23 2 -1
      368 SETLIST                          R21 R22 -1 [1]
      370 CALL                             R18 3 1
      371 GETUPVAL                         R19 0
      372 LOADK                            R20 K99 [".VPF-Slider--Disabled >> .VPF-Slider__StepButton"]
      373 DUPTABLE                         R21 K100 [{"BackgroundColor3"}]
      374 LOADK                            R22 K101 ["$SecondaryMuted"]
      375 SETTABLEKS                       R22 R21 K44 ["BackgroundColor3"]
      377 CALL                             R19 2 1
      378 GETUPVAL                         R20 0
      379 LOADK                            R21 K102 [".VPF-Slider--Enabled >> .VPF-Slider__StepButton"]
      380 NEWTABLE                         R22 0 0
      382 NEWTABLE                         R23 0 1
      384 GETUPVAL                         R24 0
      385 LOADK                            R25 K53 [":hover"]
      386 DUPTABLE                         R26 K100 [{"BackgroundColor3"}]
      387 LOADK                            R27 K103 ["$SecondaryContrast"]
      388 SETTABLEKS                       R27 R26 K44 ["BackgroundColor3"]
      390 CALL                             R24 2 -1
      391 SETLIST                          R23 R24 -1 [1]
      393 CALL                             R20 3 -1
      394 SETLIST                          R13 R14 -1 [1]
      396 CALL                             R10 3 1
      397 GETUPVAL                         R11 0
      398 LOADK                            R12 K104 [".VPF-TextButton"]
      399 DUPTABLE                         R13 K105 [{"AutomaticSize", "BackgroundColor3", "Font", "Size", "TextColor3", "TextSize"}]
      400 GETIMPORT                        R14 K66 [Enum.AutomaticSize.X]
      402 SETTABLEKS                       R14 R13 K63 ["AutomaticSize"]
      404 LOADK                            R14 K106 ["$PrimaryMain"]
      405 SETTABLEKS                       R14 R13 K44 ["BackgroundColor3"]
      407 GETIMPORT                        R14 K18 [Enum.Font.SourceSans]
      409 SETTABLEKS                       R14 R13 K14 ["Font"]
      411 GETIMPORT                        R14 K60 [UDim2.fromScale]
      413 LOADN                            R15 0
      414 LOADN                            R16 1
      415 CALL                             R14 2 1
      416 SETTABLEKS                       R14 R13 K32 ["Size"]
      418 LOADK                            R14 K107 ["$TextContrast"]
      419 SETTABLEKS                       R14 R13 K21 ["TextColor3"]
      421 LOADN                            R14 20
      422 SETTABLEKS                       R14 R13 K22 ["TextSize"]
      424 NEWTABLE                         R14 0 4
      426 GETUPVAL                         R15 0
      427 LOADK                            R16 K37 ["::UICorner"]
      428 DUPTABLE                         R17 K39 [{"CornerRadius"}]
      429 GETIMPORT                        R18 K42 [UDim.new]
      431 LOADN                            R19 0
      432 LOADN                            R20 4
      433 CALL                             R18 2 1
      434 SETTABLEKS                       R18 R17 K38 ["CornerRadius"]
      436 CALL                             R15 2 1
      437 GETUPVAL                         R16 0
      438 LOADK                            R17 K74 ["::UIPadding"]
      439 DUPTABLE                         R18 K111 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      440 GETIMPORT                        R19 K42 [UDim.new]
      442 LOADN                            R20 0
      443 LOADN                            R21 14
      444 CALL                             R19 2 1
      445 SETTABLEKS                       R19 R18 K108 ["PaddingLeft"]
      447 GETIMPORT                        R19 K42 [UDim.new]
      449 LOADN                            R20 0
      450 LOADN                            R21 14
      451 CALL                             R19 2 1
      452 SETTABLEKS                       R19 R18 K75 ["PaddingRight"]
      454 GETIMPORT                        R19 K42 [UDim.new]
      456 LOADN                            R20 0
      457 LOADN                            R21 5
      458 CALL                             R19 2 1
      459 SETTABLEKS                       R19 R18 K109 ["PaddingTop"]
      461 GETIMPORT                        R19 K42 [UDim.new]
      463 LOADN                            R20 0
      464 LOADN                            R21 5
      465 CALL                             R19 2 1
      466 SETTABLEKS                       R19 R18 K110 ["PaddingBottom"]
      468 CALL                             R16 2 1
      469 GETUPVAL                         R17 0
      470 LOADK                            R18 K53 [":hover"]
      471 DUPTABLE                         R19 K100 [{"BackgroundColor3"}]
      472 LOADK                            R20 K112 ["$PrimaryHoverBackground"]
      473 SETTABLEKS                       R20 R19 K44 ["BackgroundColor3"]
      475 CALL                             R17 2 1
      476 GETUPVAL                         R18 0
      477 LOADK                            R19 K113 [".VPF-TextButton--Disabled"]
      478 DUPTABLE                         R20 K114 [{"BackgroundColor3", "TextColor3"}]
      479 LOADK                            R21 K103 ["$SecondaryContrast"]
      480 SETTABLEKS                       R21 R20 K44 ["BackgroundColor3"]
      482 LOADK                            R21 K101 ["$SecondaryMuted"]
      483 SETTABLEKS                       R21 R20 K21 ["TextColor3"]
      485 NEWTABLE                         R21 0 1
      487 GETUPVAL                         R22 0
      488 LOADK                            R23 K53 [":hover"]
      489 DUPTABLE                         R24 K100 [{"BackgroundColor3"}]
      490 LOADK                            R25 K103 ["$SecondaryContrast"]
      491 SETTABLEKS                       R25 R24 K44 ["BackgroundColor3"]
      493 CALL                             R22 2 -1
      494 SETLIST                          R21 R22 -1 [1]
      496 CALL                             R18 3 -1
      497 SETLIST                          R14 R15 -1 [1]
      499 CALL                             R11 3 1
      500 GETUPVAL                         R12 0
      501 LOADK                            R13 K115 [".VPF-Toolbar"]
      502 DUPTABLE                         R14 K116 [{"AutomaticSize"}]
      503 GETIMPORT                        R15 K118 [Enum.AutomaticSize.XY]
      505 SETTABLEKS                       R15 R14 K63 ["AutomaticSize"]
      507 NEWTABLE                         R15 0 2
      509 GETUPVAL                         R16 0
      510 LOADK                            R17 K119 [".VPF-Toolbar--Horizontal"]
      511 NEWTABLE                         R18 0 0
      513 NEWTABLE                         R19 0 2
      515 GETUPVAL                         R20 0
      516 LOADK                            R21 K120 [".VPF-Toolbar--Center"]
      517 DUPTABLE                         R22 K123 [{"AnchorPoint", "Position"}]
      518 GETIMPORT                        R23 K125 [Vector2.new]
      520 LOADK                            R24 K51 [0.5]
      521 LOADN                            R25 0
      522 CALL                             R23 2 1
      523 SETTABLEKS                       R23 R22 K121 ["AnchorPoint"]
      525 GETIMPORT                        R23 K98 [UDim2.new]
      527 LOADK                            R24 K51 [0.5]
      528 LOADN                            R25 0
      529 LOADN                            R26 0
      530 LOADN                            R27 18
      531 CALL                             R23 4 1
      532 SETTABLEKS                       R23 R22 K122 ["Position"]
      534 CALL                             R20 2 1
      535 GETUPVAL                         R21 0
      536 LOADK                            R22 K126 [".VPF-Toolbar--Left"]
      537 DUPTABLE                         R23 K123 [{"AnchorPoint", "Position"}]
      538 GETIMPORT                        R24 K125 [Vector2.new]
      540 LOADN                            R25 0
      541 LOADN                            R26 0
      542 CALL                             R24 2 1
      543 SETTABLEKS                       R24 R23 K121 ["AnchorPoint"]
      545 GETIMPORT                        R24 K36 [UDim2.fromOffset]
      547 LOADN                            R25 18
      548 LOADN                            R26 18
      549 CALL                             R24 2 1
      550 SETTABLEKS                       R24 R23 K122 ["Position"]
      552 CALL                             R21 2 -1
      553 SETLIST                          R19 R20 -1 [1]
      555 CALL                             R16 3 1
      556 GETUPVAL                         R17 0
      557 LOADK                            R18 K127 [".VPF-Toolbar--Vertical"]
      558 NEWTABLE                         R19 0 0
      560 NEWTABLE                         R20 0 3
      562 GETUPVAL                         R21 0
      563 LOADK                            R22 K120 [".VPF-Toolbar--Center"]
      564 DUPTABLE                         R23 K123 [{"AnchorPoint", "Position"}]
      565 GETIMPORT                        R24 K125 [Vector2.new]
      567 LOADN                            R25 0
      568 LOADK                            R26 K51 [0.5]
      569 CALL                             R24 2 1
      570 SETTABLEKS                       R24 R23 K121 ["AnchorPoint"]
      572 GETIMPORT                        R24 K98 [UDim2.new]
      574 LOADN                            R25 0
      575 LOADN                            R26 18
      576 LOADK                            R27 K51 [0.5]
      577 LOADN                            R28 0
      578 CALL                             R24 4 1
      579 SETTABLEKS                       R24 R23 K122 ["Position"]
      581 CALL                             R21 2 1
      582 GETUPVAL                         R22 0
      583 LOADK                            R23 K128 [".VPF-Toolbar--Top"]
      584 DUPTABLE                         R24 K123 [{"AnchorPoint", "Position"}]
      585 GETIMPORT                        R25 K125 [Vector2.new]
      587 LOADN                            R26 0
      588 LOADN                            R27 0
      589 CALL                             R25 2 1
      590 SETTABLEKS                       R25 R24 K121 ["AnchorPoint"]
      592 GETIMPORT                        R25 K98 [UDim2.new]
      594 LOADN                            R26 0
      595 LOADN                            R27 18
      596 LOADN                            R28 0
      597 LOADN                            R29 66
      598 CALL                             R25 4 1
      599 SETTABLEKS                       R25 R24 K122 ["Position"]
      601 CALL                             R22 2 1
      602 GETUPVAL                         R23 0
      603 LOADK                            R24 K129 [".VPF-Toolbar--Bottom"]
      604 DUPTABLE                         R25 K123 [{"AnchorPoint", "Position"}]
      605 GETIMPORT                        R26 K125 [Vector2.new]
      607 LOADN                            R27 0
      608 LOADN                            R28 1
      609 CALL                             R26 2 1
      610 SETTABLEKS                       R26 R25 K121 ["AnchorPoint"]
      612 GETIMPORT                        R26 K98 [UDim2.new]
      614 LOADN                            R27 0
      615 LOADN                            R28 18
      616 LOADN                            R29 1
      617 LOADN                            R30 212
      618 CALL                             R26 4 1
      619 SETTABLEKS                       R26 R25 K122 ["Position"]
      621 CALL                             R23 2 -1
      622 SETLIST                          R20 R21 -1 [1]
      624 CALL                             R17 3 -1
      625 SETLIST                          R15 R16 -1 [1]
      627 CALL                             R12 3 1
      628 GETUPVAL                         R13 0
      629 LOADK                            R14 K130 [".VPF-ToolbarBase"]
      630 DUPTABLE                         R15 K70 [{"BackgroundColor3", "BackgroundTransparency"}]
      631 LOADK                            R16 K131 ["$ForegroundMain"]
      632 SETTABLEKS                       R16 R15 K44 ["BackgroundColor3"]
      634 LOADN                            R16 0
      635 SETTABLEKS                       R16 R15 K1 ["BackgroundTransparency"]
      637 NEWTABLE                         R16 0 5
      639 GETUPVAL                         R17 0
      640 LOADK                            R18 K37 ["::UICorner"]
      641 DUPTABLE                         R19 K39 [{"CornerRadius"}]
      642 GETIMPORT                        R20 K42 [UDim.new]
      644 LOADN                            R21 0
      645 LOADN                            R22 5
      646 CALL                             R20 2 1
      647 SETTABLEKS                       R20 R19 K38 ["CornerRadius"]
      649 CALL                             R17 2 1
      650 GETUPVAL                         R18 0
      651 LOADK                            R19 K74 ["::UIPadding"]
      652 DUPTABLE                         R20 K111 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      653 GETIMPORT                        R21 K42 [UDim.new]
      655 LOADN                            R22 0
      656 LOADN                            R23 4
      657 CALL                             R21 2 1
      658 SETTABLEKS                       R21 R20 K108 ["PaddingLeft"]
      660 GETIMPORT                        R21 K42 [UDim.new]
      662 LOADN                            R22 0
      663 LOADN                            R23 4
      664 CALL                             R21 2 1
      665 SETTABLEKS                       R21 R20 K75 ["PaddingRight"]
      667 GETIMPORT                        R21 K42 [UDim.new]
      669 LOADN                            R22 0
      670 LOADN                            R23 4
      671 CALL                             R21 2 1
      672 SETTABLEKS                       R21 R20 K109 ["PaddingTop"]
      674 GETIMPORT                        R21 K42 [UDim.new]
      676 LOADN                            R22 0
      677 LOADN                            R23 4
      678 CALL                             R21 2 1
      679 SETTABLEKS                       R21 R20 K110 ["PaddingBottom"]
      681 CALL                             R18 2 1
      682 GETUPVAL                         R19 0
      683 LOADK                            R20 K88 ["::UIStroke"]
      684 DUPTABLE                         R21 K132 [{"Color", "Thickness"}]
      685 LOADK                            R22 K133 ["$BackgroundDefault"]
      686 SETTABLEKS                       R22 R21 K90 ["Color"]
      688 LOADN                            R22 2
      689 SETTABLEKS                       R22 R21 K91 ["Thickness"]
      691 CALL                             R19 2 1
      692 GETUPVAL                         R20 0
      693 LOADK                            R21 K134 [".VPF-ToolbarBase--Horizontal"]
      694 DUPTABLE                         R22 K73 [{"AutomaticSize", "Size"}]
      695 GETIMPORT                        R23 K66 [Enum.AutomaticSize.X]
      697 SETTABLEKS                       R23 R22 K63 ["AutomaticSize"]
      699 GETIMPORT                        R23 K36 [UDim2.fromOffset]
      701 LOADN                            R24 0
      702 LOADN                            R25 40
      703 CALL                             R23 2 1
      704 SETTABLEKS                       R23 R22 K32 ["Size"]
      706 NEWTABLE                         R23 0 2
      708 GETUPVAL                         R24 0
      709 LOADK                            R25 K77 ["::UIListLayout"]
      710 DUPTABLE                         R26 K80 [{"FillDirection", "Padding"}]
      711 GETIMPORT                        R27 K82 [Enum.FillDirection.Horizontal]
      713 SETTABLEKS                       R27 R26 K78 ["FillDirection"]
      715 LOADK                            R27 K135 ["$ButtonSpacing"]
      716 SETTABLEKS                       R27 R26 K79 ["Padding"]
      718 CALL                             R24 2 1
      719 GETUPVAL                         R25 0
      720 LOADK                            R26 K136 ["> .VPF-Separator"]
      721 DUPTABLE                         R27 K137 [{"Size"}]
      722 GETIMPORT                        R28 K98 [UDim2.new]
      724 LOADN                            R29 0
      725 LOADN                            R30 8
      726 LOADN                            R31 1
      727 LOADN                            R32 0
      728 CALL                             R28 4 1
      729 SETTABLEKS                       R28 R27 K32 ["Size"]
      731 NEWTABLE                         R28 0 1
      733 GETUPVAL                         R29 0
      734 LOADK                            R30 K138 ["> .VPF-SeparatorBar"]
      735 DUPTABLE                         R31 K139 [{"AnchorPoint", "Position", "Size"}]
      736 GETIMPORT                        R32 K125 [Vector2.new]
      738 LOADK                            R33 K51 [0.5]
      739 LOADN                            R34 0
      740 CALL                             R32 2 1
      741 SETTABLEKS                       R32 R31 K121 ["AnchorPoint"]
      743 GETIMPORT                        R32 K60 [UDim2.fromScale]
      745 LOADK                            R33 K51 [0.5]
      746 LOADN                            R34 0
      747 CALL                             R32 2 1
      748 SETTABLEKS                       R32 R31 K122 ["Position"]
      750 GETIMPORT                        R32 K98 [UDim2.new]
      752 LOADN                            R33 0
      753 LOADN                            R34 2
      754 LOADN                            R35 1
      755 LOADN                            R36 0
      756 CALL                             R32 4 1
      757 SETTABLEKS                       R32 R31 K32 ["Size"]
      759 CALL                             R29 2 -1
      760 SETLIST                          R28 R29 -1 [1]
      762 CALL                             R25 3 -1
      763 SETLIST                          R23 R24 -1 [1]
      765 CALL                             R20 3 1
      766 GETUPVAL                         R21 0
      767 LOADK                            R22 K140 [".VPF-ToolbarBase--Vertical"]
      768 DUPTABLE                         R23 K73 [{"AutomaticSize", "Size"}]
      769 GETIMPORT                        R24 K142 [Enum.AutomaticSize.Y]
      771 SETTABLEKS                       R24 R23 K63 ["AutomaticSize"]
      773 GETIMPORT                        R24 K36 [UDim2.fromOffset]
      775 LOADN                            R25 40
      776 LOADN                            R26 0
      777 CALL                             R24 2 1
      778 SETTABLEKS                       R24 R23 K32 ["Size"]
      780 NEWTABLE                         R24 0 2
      782 GETUPVAL                         R25 0
      783 LOADK                            R26 K77 ["::UIListLayout"]
      784 DUPTABLE                         R27 K80 [{"FillDirection", "Padding"}]
      785 GETIMPORT                        R28 K144 [Enum.FillDirection.Vertical]
      787 SETTABLEKS                       R28 R27 K78 ["FillDirection"]
      789 LOADK                            R28 K135 ["$ButtonSpacing"]
      790 SETTABLEKS                       R28 R27 K79 ["Padding"]
      792 CALL                             R25 2 1
      793 GETUPVAL                         R26 0
      794 LOADK                            R27 K136 ["> .VPF-Separator"]
      795 DUPTABLE                         R28 K137 [{"Size"}]
      796 GETIMPORT                        R29 K98 [UDim2.new]
      798 LOADN                            R30 1
      799 LOADN                            R31 0
      800 LOADN                            R32 0
      801 LOADN                            R33 8
      802 CALL                             R29 4 1
      803 SETTABLEKS                       R29 R28 K32 ["Size"]
      805 NEWTABLE                         R29 0 1
      807 GETUPVAL                         R30 0
      808 LOADK                            R31 K138 ["> .VPF-SeparatorBar"]
      809 DUPTABLE                         R32 K139 [{"AnchorPoint", "Position", "Size"}]
      810 GETIMPORT                        R33 K125 [Vector2.new]
      812 LOADN                            R34 0
      813 LOADK                            R35 K51 [0.5]
      814 CALL                             R33 2 1
      815 SETTABLEKS                       R33 R32 K121 ["AnchorPoint"]
      817 GETIMPORT                        R33 K60 [UDim2.fromScale]
      819 LOADN                            R34 0
      820 LOADK                            R35 K51 [0.5]
      821 CALL                             R33 2 1
      822 SETTABLEKS                       R33 R32 K122 ["Position"]
      824 GETIMPORT                        R33 K98 [UDim2.new]
      826 LOADN                            R34 1
      827 LOADN                            R35 0
      828 LOADN                            R36 0
      829 LOADN                            R37 2
      830 CALL                             R33 4 1
      831 SETTABLEKS                       R33 R32 K32 ["Size"]
      833 CALL                             R30 2 -1
      834 SETLIST                          R29 R30 -1 [1]
      836 CALL                             R26 3 -1
      837 SETLIST                          R24 R25 -1 [1]
      839 CALL                             R21 3 -1
      840 SETLIST                          R16 R17 -1 [1]
      842 DUPTABLE                         R17 K146 [{"ButtonSpacing"}]
      843 GETIMPORT                        R18 K42 [UDim.new]
      845 LOADN                            R19 0
      846 LOADN                            R20 4
      847 CALL                             R18 2 1
      848 SETTABLEKS                       R18 R17 K145 ["ButtonSpacing"]
      850 CALL                             R13 4 1
      851 GETUPVAL                         R14 0
      852 LOADK                            R15 K147 [".VPF-Tooltip"]
      853 DUPTABLE                         R16 K148 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
      854 GETIMPORT                        R17 K118 [Enum.AutomaticSize.XY]
      856 SETTABLEKS                       R17 R16 K63 ["AutomaticSize"]
      858 LOADK                            R17 K149 ["$White"]
      859 SETTABLEKS                       R17 R16 K44 ["BackgroundColor3"]
      861 LOADN                            R17 0
      862 SETTABLEKS                       R17 R16 K1 ["BackgroundTransparency"]
      864 NEWTABLE                         R17 0 5
      866 GETUPVAL                         R18 0
      867 LOADK                            R19 K88 ["::UIStroke"]
      868 DUPTABLE                         R20 K151 [{"Thickness", "Color", "LineJoinMode"}]
      869 LOADN                            R21 1
      870 SETTABLEKS                       R21 R20 K91 ["Thickness"]
      872 LOADK                            R21 K152 ["$Gray80"]
      873 SETTABLEKS                       R21 R20 K90 ["Color"]
      875 GETIMPORT                        R21 K154 [Enum.LineJoinMode.Round]
      877 SETTABLEKS                       R21 R20 K150 ["LineJoinMode"]
      879 CALL                             R18 2 1
      880 GETUPVAL                         R19 0
      881 LOADK                            R20 K155 [">> .VPF-Tooltip__Title"]
      882 DUPTABLE                         R21 K156 [{"AutomaticSize", "Font", "TextColor3", "TextSize"}]
      883 GETIMPORT                        R22 K118 [Enum.AutomaticSize.XY]
      885 SETTABLEKS                       R22 R21 K63 ["AutomaticSize"]
      887 GETIMPORT                        R22 K158 [Enum.Font.SourceSansBold]
      889 SETTABLEKS                       R22 R21 K14 ["Font"]
      891 LOADK                            R22 K159 ["$Gray120"]
      892 SETTABLEKS                       R22 R21 K21 ["TextColor3"]
      894 LOADN                            R22 14
      895 SETTABLEKS                       R22 R21 K22 ["TextSize"]
      897 CALL                             R19 2 1
      898 GETUPVAL                         R20 0
      899 LOADK                            R21 K160 [">> .VPF-Tooltip__Description"]
      900 DUPTABLE                         R22 K162 [{"TextColor3", "TextWrapped"}]
      901 LOADK                            R23 K159 ["$Gray120"]
      902 SETTABLEKS                       R23 R22 K21 ["TextColor3"]
      904 LOADB                            R23 1
      905 SETTABLEKS                       R23 R22 K161 ["TextWrapped"]
      907 CALL                             R20 2 1
      908 GETUPVAL                         R21 0
      909 LOADK                            R22 K163 [".VPF-Tooltip--Horizontal"]
      910 DUPTABLE                         R23 K164 [{"Position"}]
      911 GETIMPORT                        R24 K98 [UDim2.new]
      913 LOADN                            R25 0
      914 LOADN                            R26 0
      915 LOADN                            R27 1
      916 LOADN                            R28 12
      917 CALL                             R24 4 1
      918 SETTABLEKS                       R24 R23 K122 ["Position"]
      920 CALL                             R21 2 1
      921 GETUPVAL                         R22 0
      922 LOADK                            R23 K165 [".VPF-Tooltip--Vertical"]
      923 DUPTABLE                         R24 K164 [{"Position"}]
      924 GETIMPORT                        R25 K98 [UDim2.new]
      926 LOADN                            R26 1
      927 LOADN                            R27 8
      928 LOADN                            R28 0
      929 LOADN                            R29 0
      930 CALL                             R25 4 1
      931 SETTABLEKS                       R25 R24 K122 ["Position"]
      933 CALL                             R22 2 -1
      934 SETLIST                          R17 R18 -1 [1]
      936 CALL                             R14 3 1
      937 GETUPVAL                         R15 0
      938 LOADK                            R16 K166 [".VPF-X-ContrastBg"]
      939 DUPTABLE                         R17 K70 [{"BackgroundColor3", "BackgroundTransparency"}]
      940 LOADK                            R18 K167 ["$ForegroundContrast"]
      941 SETTABLEKS                       R18 R17 K44 ["BackgroundColor3"]
      943 LOADN                            R18 0
      944 SETTABLEKS                       R18 R17 K1 ["BackgroundTransparency"]
      946 CALL                             R15 2 1
      947 GETUPVAL                         R16 0
      948 LOADK                            R17 K168 [".VPF-X-DebugPink"]
      949 DUPTABLE                         R18 K45 [{"BackgroundTransparency", "BackgroundColor3"}]
      950 LOADN                            R19 0
      951 SETTABLEKS                       R19 R18 K1 ["BackgroundTransparency"]
      953 GETIMPORT                        R19 K170 [Color3.new]
      955 LOADN                            R20 1
      956 LOADN                            R21 0
      957 LOADN                            R22 1
      958 CALL                             R19 3 1
      959 SETTABLEKS                       R19 R18 K44 ["BackgroundColor3"]
      961 CALL                             R16 2 1
      962 SETLIST                          R0 R1 16 [1]
      964 GETUPVAL                         R1 0
      965 LOADK                            R2 K171 [".VPF-X-MainBg"]
      966 DUPTABLE                         R3 K70 [{"BackgroundColor3", "BackgroundTransparency"}]
      967 LOADK                            R4 K131 ["$ForegroundMain"]
      968 SETTABLEKS                       R4 R3 K44 ["BackgroundColor3"]
      970 LOADN                            R4 0
      971 SETTABLEKS                       R4 R3 K1 ["BackgroundTransparency"]
      973 CALL                             R1 2 1
      974 GETUPVAL                         R2 0
      975 LOADK                            R3 K172 [".VPF-X-Primary"]
      976 DUPTABLE                         R4 K173 [{"ImageColor3"}]
      977 LOADK                            R5 K26 ["$TextPrimary"]
      978 SETTABLEKS                       R5 R4 K57 ["ImageColor3"]
      980 CALL                             R2 2 1
      981 GETUPVAL                         R3 0
      982 LOADK                            R4 K174 [".VPF-X-Square"]
      983 NEWTABLE                         R5 0 0
      985 NEWTABLE                         R6 0 1
      987 GETUPVAL                         R7 0
      988 LOADK                            R8 K61 ["::UIAspectRatioConstraint"]
      989 CALL                             R7 1 -1
      990 SETLIST                          R6 R7 -1 [1]
      992 CALL                             R3 3 -1
      993 SETLIST                          R0 R1 -1 [17]
      995 RETURN                           R0 1

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
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
