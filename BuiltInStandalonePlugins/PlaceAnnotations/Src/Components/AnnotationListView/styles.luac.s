MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-AnnotationListView"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["::UISizeConstraint"]
       26 DUPTABLE                         R9 K13 [{"MinSize"}]
       27 GETIMPORT                        R10 K16 [Vector2.new]
       29 LOADN                            R11 200
       30 LOADN                            R12 0
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["MinSize"]
       34 CALL                             R7 2 1
       35 MOVE                             R8 R2
       36 LOADK                            R9 K17 ["> #Header"]
       37 DUPTABLE                         R10 K21 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
       38 GETIMPORT                        R11 K23 [UDim2.new]
       40 LOADN                            R12 1
       41 LOADN                            R13 0
       42 LOADN                            R14 0
       43 LOADN                            R15 0
       44 CALL                             R11 4 1
       45 SETTABLEKS                       R11 R10 K18 ["Size"]
       47 GETIMPORT                        R11 K26 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R11 R10 K19 ["AutomaticSize"]
       51 LOADN                            R11 1
       52 SETTABLEKS                       R11 R10 K20 ["BackgroundTransparency"]
       54 NEWTABLE                         R11 0 2
       56 MOVE                             R12 R2
       57 LOADK                            R13 K27 ["::UIPadding"]
       58 DUPTABLE                         R14 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
       59 GETIMPORT                        R15 K34 [UDim.new]
       61 LOADN                            R16 0
       62 LOADN                            R17 16
       63 CALL                             R15 2 1
       64 SETTABLEKS                       R15 R14 K28 ["PaddingTop"]
       66 GETIMPORT                        R15 K34 [UDim.new]
       68 LOADN                            R16 0
       69 LOADN                            R17 8
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K29 ["PaddingLeft"]
       73 GETIMPORT                        R15 K34 [UDim.new]
       75 LOADN                            R16 0
       76 LOADN                            R17 8
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K30 ["PaddingRight"]
       80 GETIMPORT                        R15 K34 [UDim.new]
       82 LOADN                            R16 0
       83 LOADN                            R17 16
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K31 ["PaddingBottom"]
       87 CALL                             R12 2 1
       88 MOVE                             R13 R2
       89 LOADK                            R14 K35 ["> #ButtonGroup"]
       90 DUPTABLE                         R15 K38 [{"Position", "AnchorPoint", "BackgroundTransparency", "AutomaticSize"}]
       91 GETIMPORT                        R16 K40 [UDim2.fromScale]
       93 LOADN                            R17 1
       94 LOADK                            R18 K41 [0.5]
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K36 ["Position"]
       98 GETIMPORT                        R16 K16 [Vector2.new]
      100 LOADN                            R17 1
      101 LOADK                            R18 K41 [0.5]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K37 ["AnchorPoint"]
      105 LOADN                            R16 1
      106 SETTABLEKS                       R16 R15 K20 ["BackgroundTransparency"]
      108 GETIMPORT                        R16 K43 [Enum.AutomaticSize.XY]
      110 SETTABLEKS                       R16 R15 K19 ["AutomaticSize"]
      112 NEWTABLE                         R16 0 2
      114 MOVE                             R17 R2
      115 LOADK                            R18 K44 ["> #AddButton"]
      116 DUPTABLE                         R19 K47 [{"Size", "Position", "BorderSizePixel", "BackgroundTransparency", "BackgroundColor3"}]
      117 GETIMPORT                        R20 K49 [UDim2.fromOffset]
      119 LOADN                            R21 20
      120 LOADN                            R22 20
      121 CALL                             R20 2 1
      122 SETTABLEKS                       R20 R19 K18 ["Size"]
      124 GETIMPORT                        R20 K49 [UDim2.fromOffset]
      126 LOADN                            R21 20
      127 LOADN                            R22 0
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K36 ["Position"]
      131 LOADN                            R20 0
      132 SETTABLEKS                       R20 R19 K45 ["BorderSizePixel"]
      134 LOADK                            R20 K50 ["$Shift200Transparency"]
      135 SETTABLEKS                       R20 R19 K20 ["BackgroundTransparency"]
      137 LOADK                            R20 K51 ["$Shift200Color"]
      138 SETTABLEKS                       R20 R19 K46 ["BackgroundColor3"]
      140 NEWTABLE                         R20 0 4
      142 MOVE                             R21 R2
      143 LOADK                            R22 K27 ["::UIPadding"]
      144 DUPTABLE                         R23 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      145 GETIMPORT                        R24 K34 [UDim.new]
      147 LOADN                            R25 0
      148 LOADN                            R26 2
      149 CALL                             R24 2 1
      150 SETTABLEKS                       R24 R23 K28 ["PaddingTop"]
      152 GETIMPORT                        R24 K34 [UDim.new]
      154 LOADN                            R25 0
      155 LOADN                            R26 2
      156 CALL                             R24 2 1
      157 SETTABLEKS                       R24 R23 K29 ["PaddingLeft"]
      159 GETIMPORT                        R24 K34 [UDim.new]
      161 LOADN                            R25 0
      162 LOADN                            R26 2
      163 CALL                             R24 2 1
      164 SETTABLEKS                       R24 R23 K30 ["PaddingRight"]
      166 GETIMPORT                        R24 K34 [UDim.new]
      168 LOADN                            R25 0
      169 LOADN                            R26 2
      170 CALL                             R24 2 1
      171 SETTABLEKS                       R24 R23 K31 ["PaddingBottom"]
      173 CALL                             R21 2 1
      174 MOVE                             R22 R2
      175 LOADK                            R23 K52 ["::UICorner"]
      176 DUPTABLE                         R24 K54 [{"CornerRadius"}]
      177 GETIMPORT                        R25 K34 [UDim.new]
      179 LOADN                            R26 0
      180 LOADN                            R27 4
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K53 ["CornerRadius"]
      184 CALL                             R22 2 1
      185 MOVE                             R23 R2
      186 LOADK                            R24 K55 [":hover"]
      187 DUPTABLE                         R25 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      188 LOADK                            R26 K51 ["$Shift200Color"]
      189 SETTABLEKS                       R26 R25 K46 ["BackgroundColor3"]
      191 LOADK                            R26 K57 ["$Shift100Transparency"]
      192 SETTABLEKS                       R26 R25 K20 ["BackgroundTransparency"]
      194 CALL                             R23 2 1
      195 MOVE                             R24 R2
      196 LOADK                            R25 K58 [":press"]
      197 DUPTABLE                         R26 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      198 LOADK                            R27 K51 ["$Shift200Color"]
      199 SETTABLEKS                       R27 R26 K46 ["BackgroundColor3"]
      201 LOADK                            R27 K50 ["$Shift200Transparency"]
      202 SETTABLEKS                       R27 R26 K20 ["BackgroundTransparency"]
      204 CALL                             R24 2 -1
      205 SETLIST                          R20 R21 -1 [1]
      207 CALL                             R17 3 1
      208 MOVE                             R18 R2
      209 LOADK                            R19 K59 ["> #SettingsWrapper"]
      210 DUPTABLE                         R20 K60 [{"Size", "Position", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      211 GETIMPORT                        R21 K49 [UDim2.fromOffset]
      213 LOADN                            R22 20
      214 LOADN                            R23 20
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K18 ["Size"]
      218 GETIMPORT                        R21 K49 [UDim2.fromOffset]
      220 LOADN                            R22 46
      221 LOADN                            R23 0
      222 CALL                             R21 2 1
      223 SETTABLEKS                       R21 R20 K36 ["Position"]
      225 LOADK                            R21 K50 ["$Shift200Transparency"]
      226 SETTABLEKS                       R21 R20 K20 ["BackgroundTransparency"]
      228 LOADN                            R21 0
      229 SETTABLEKS                       R21 R20 K45 ["BorderSizePixel"]
      231 LOADK                            R21 K51 ["$Shift200Color"]
      232 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      234 NEWTABLE                         R21 0 4
      236 MOVE                             R22 R2
      237 LOADK                            R23 K52 ["::UICorner"]
      238 DUPTABLE                         R24 K54 [{"CornerRadius"}]
      239 GETIMPORT                        R25 K34 [UDim.new]
      241 LOADN                            R26 0
      242 LOADN                            R27 4
      243 CALL                             R25 2 1
      244 SETTABLEKS                       R25 R24 K53 ["CornerRadius"]
      246 CALL                             R22 2 1
      247 MOVE                             R23 R2
      248 LOADK                            R24 K61 ["> .Dropdown"]
      249 DUPTABLE                         R25 K62 [{"BackgroundTransparency", "AnchorPoint", "Position"}]
      250 LOADN                            R26 1
      251 SETTABLEKS                       R26 R25 K20 ["BackgroundTransparency"]
      253 GETIMPORT                        R26 K16 [Vector2.new]
      255 LOADK                            R27 K41 [0.5]
      256 LOADK                            R28 K41 [0.5]
      257 CALL                             R26 2 1
      258 SETTABLEKS                       R26 R25 K37 ["AnchorPoint"]
      260 GETIMPORT                        R26 K23 [UDim2.new]
      262 LOADK                            R27 K41 [0.5]
      263 LOADK                            R28 K63 [-0.5]
      264 LOADK                            R29 K41 [0.5]
      265 LOADN                            R30 0
      266 CALL                             R26 4 1
      267 SETTABLEKS                       R26 R25 K36 ["Position"]
      269 CALL                             R23 2 1
      270 MOVE                             R24 R2
      271 LOADK                            R25 K55 [":hover"]
      272 DUPTABLE                         R26 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      273 LOADK                            R27 K51 ["$Shift200Color"]
      274 SETTABLEKS                       R27 R26 K46 ["BackgroundColor3"]
      276 LOADK                            R27 K57 ["$Shift100Transparency"]
      277 SETTABLEKS                       R27 R26 K20 ["BackgroundTransparency"]
      279 CALL                             R24 2 1
      280 MOVE                             R25 R2
      281 LOADK                            R26 K58 [":press"]
      282 DUPTABLE                         R27 K56 [{"BackgroundColor3", "BackgroundTransparency"}]
      283 LOADK                            R28 K51 ["$Shift200Color"]
      284 SETTABLEKS                       R28 R27 K46 ["BackgroundColor3"]
      286 LOADK                            R28 K50 ["$Shift200Transparency"]
      287 SETTABLEKS                       R28 R27 K20 ["BackgroundTransparency"]
      289 CALL                             R25 2 -1
      290 SETLIST                          R21 R22 -1 [1]
      292 CALL                             R18 3 -1
      293 SETLIST                          R16 R17 -1 [1]
      295 CALL                             R13 3 -1
      296 SETLIST                          R11 R12 -1 [1]
      298 CALL                             R8 3 1
      299 MOVE                             R9 R2
      300 LOADK                            R10 K64 ["> #AnnotationList"]
      301 DUPTABLE                         R11 K65 [{"BackgroundTransparency", "Size"}]
      302 LOADN                            R12 1
      303 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
      305 GETIMPORT                        R12 K40 [UDim2.fromScale]
      307 LOADN                            R13 1
      308 LOADN                            R14 0
      309 CALL                             R12 2 1
      310 SETTABLEKS                       R12 R11 K18 ["Size"]
      312 NEWTABLE                         R12 0 2
      314 MOVE                             R13 R2
      315 LOADK                            R14 K66 ["::UIFlexItem"]
      316 DUPTABLE                         R15 K68 [{"FlexMode"}]
      317 GETIMPORT                        R16 K71 [Enum.UIFlexMode.Grow]
      319 SETTABLEKS                       R16 R15 K67 ["FlexMode"]
      321 CALL                             R13 2 1
      322 MOVE                             R14 R2
      323 LOADK                            R15 K72 [">> ScrollingFrame"]
      324 DUPTABLE                         R16 K75 [{"ScrollBarThickness", "ScrollBarImageColor3"}]
      325 LOADN                            R17 8
      326 SETTABLEKS                       R17 R16 K73 ["ScrollBarThickness"]
      328 LOADK                            R17 K76 ["$BackgroundDefault"]
      329 SETTABLEKS                       R17 R16 K74 ["ScrollBarImageColor3"]
      331 CALL                             R14 2 -1
      332 SETLIST                          R12 R13 -1 [1]
      334 CALL                             R9 3 1
      335 MOVE                             R10 R2
      336 LOADK                            R11 K77 [">> #EmptyState"]
      337 DUPTABLE                         R12 K78 [{"Size"}]
      338 GETIMPORT                        R13 K40 [UDim2.fromScale]
      340 LOADN                            R14 1
      341 LOADN                            R15 0
      342 CALL                             R13 2 1
      343 SETTABLEKS                       R13 R12 K18 ["Size"]
      345 NEWTABLE                         R13 0 5
      347 MOVE                             R14 R2
      348 LOADK                            R15 K66 ["::UIFlexItem"]
      349 DUPTABLE                         R16 K68 [{"FlexMode"}]
      350 GETIMPORT                        R17 K71 [Enum.UIFlexMode.Grow]
      352 SETTABLEKS                       R17 R16 K67 ["FlexMode"]
      354 CALL                             R14 2 1
      355 MOVE                             R15 R2
      356 LOADK                            R16 K79 ["> #AnnotationIcon"]
      357 DUPTABLE                         R17 K82 [{"Image", "ImageTransparency", "Size"}]
      358 LOADK                            R18 K83 ["$AnnotationLarge"]
      359 SETTABLEKS                       R18 R17 K80 ["Image"]
      361 LOADK                            R18 K84 [0.4]
      362 SETTABLEKS                       R18 R17 K81 ["ImageTransparency"]
      364 GETIMPORT                        R18 K49 [UDim2.fromOffset]
      366 LOADN                            R19 40
      367 LOADN                            R20 40
      368 CALL                             R18 2 1
      369 SETTABLEKS                       R18 R17 K18 ["Size"]
      371 CALL                             R15 2 1
      372 MOVE                             R16 R2
      373 LOADK                            R17 K85 ["> #NoCommentsYet"]
      374 DUPTABLE                         R18 K87 [{"Font", "Size"}]
      375 LOADK                            R19 K88 ["$FontBold"]
      376 SETTABLEKS                       R19 R18 K86 ["Font"]
      378 GETIMPORT                        R19 K23 [UDim2.new]
      380 LOADN                            R20 1
      381 LOADN                            R21 216
      382 LOADN                            R22 0
      383 LOADN                            R23 0
      384 CALL                             R19 4 1
      385 SETTABLEKS                       R19 R18 K18 ["Size"]
      387 CALL                             R16 2 1
      388 MOVE                             R17 R2
      389 LOADK                            R18 K89 ["> #ToAdd"]
      390 DUPTABLE                         R19 K93 [{"TextTransparency", "TextSize", "TextWrapped", "AutomaticSize", "Size"}]
      391 LOADK                            R20 K84 [0.4]
      392 SETTABLEKS                       R20 R19 K90 ["TextTransparency"]
      394 LOADK                            R20 K94 ["$FontSizeS"]
      395 SETTABLEKS                       R20 R19 K91 ["TextSize"]
      397 LOADB                            R20 1
      398 SETTABLEKS                       R20 R19 K92 ["TextWrapped"]
      400 GETIMPORT                        R20 K26 [Enum.AutomaticSize.Y]
      402 SETTABLEKS                       R20 R19 K19 ["AutomaticSize"]
      404 GETIMPORT                        R20 K23 [UDim2.new]
      406 LOADN                            R21 1
      407 LOADN                            R22 216
      408 LOADN                            R23 0
      409 LOADN                            R24 0
      410 CALL                             R20 4 1
      411 SETTABLEKS                       R20 R19 K18 ["Size"]
      413 CALL                             R17 2 1
      414 MOVE                             R18 R2
      415 LOADK                            R19 K95 ["> TextButton"]
      416 DUPTABLE                         R20 K97 [{"TextColor3", "TextSize", "Font", "AutomaticSize", "BackgroundColor3"}]
      417 LOADK                            R21 K98 ["$SemanticColorContentStaticLight"]
      418 SETTABLEKS                       R21 R20 K96 ["TextColor3"]
      420 LOADK                            R21 K99 ["$FontSizeM"]
      421 SETTABLEKS                       R21 R20 K91 ["TextSize"]
      423 LOADK                            R21 K88 ["$FontBold"]
      424 SETTABLEKS                       R21 R20 K86 ["Font"]
      426 GETIMPORT                        R21 K43 [Enum.AutomaticSize.XY]
      428 SETTABLEKS                       R21 R20 K19 ["AutomaticSize"]
      430 LOADK                            R21 K100 ["$EmptyStateButtonFill"]
      431 SETTABLEKS                       R21 R20 K46 ["BackgroundColor3"]
      433 NEWTABLE                         R21 0 4
      435 MOVE                             R22 R2
      436 LOADK                            R23 K52 ["::UICorner"]
      437 DUPTABLE                         R24 K54 [{"CornerRadius"}]
      438 GETIMPORT                        R25 K34 [UDim.new]
      440 LOADK                            R26 K101 [0.3]
      441 LOADN                            R27 0
      442 CALL                             R25 2 1
      443 SETTABLEKS                       R25 R24 K53 ["CornerRadius"]
      445 CALL                             R22 2 1
      446 MOVE                             R23 R2
      447 LOADK                            R24 K55 [":hover"]
      448 DUPTABLE                         R25 K102 [{"BackgroundColor3"}]
      449 LOADK                            R26 K103 ["$EmptyStateButtonHovered"]
      450 SETTABLEKS                       R26 R25 K46 ["BackgroundColor3"]
      452 CALL                             R23 2 1
      453 MOVE                             R24 R2
      454 LOADK                            R25 K58 [":press"]
      455 DUPTABLE                         R26 K102 [{"BackgroundColor3"}]
      456 LOADK                            R27 K104 ["$EmptyStateButtonSelected"]
      457 SETTABLEKS                       R27 R26 K46 ["BackgroundColor3"]
      459 CALL                             R24 2 1
      460 MOVE                             R25 R2
      461 LOADK                            R26 K27 ["::UIPadding"]
      462 DUPTABLE                         R27 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      463 GETIMPORT                        R28 K34 [UDim.new]
      465 LOADN                            R29 0
      466 LOADN                            R30 4
      467 CALL                             R28 2 1
      468 SETTABLEKS                       R28 R27 K28 ["PaddingTop"]
      470 GETIMPORT                        R28 K34 [UDim.new]
      472 LOADN                            R29 0
      473 LOADN                            R30 10
      474 CALL                             R28 2 1
      475 SETTABLEKS                       R28 R27 K29 ["PaddingLeft"]
      477 GETIMPORT                        R28 K34 [UDim.new]
      479 LOADN                            R29 0
      480 LOADN                            R30 10
      481 CALL                             R28 2 1
      482 SETTABLEKS                       R28 R27 K30 ["PaddingRight"]
      484 GETIMPORT                        R28 K34 [UDim.new]
      486 LOADN                            R29 0
      487 LOADN                            R30 4
      488 CALL                             R28 2 1
      489 SETTABLEKS                       R28 R27 K31 ["PaddingBottom"]
      491 CALL                             R25 2 -1
      492 SETLIST                          R21 R22 -1 [1]
      494 CALL                             R18 3 -1
      495 SETLIST                          R13 R14 -1 [1]
      497 CALL                             R10 3 1
      498 MOVE                             R11 R2
      499 LOADK                            R12 K105 ["> #ErrorWrapper >> #ErrorAlert"]
      500 DUPTABLE                         R13 K102 [{"BackgroundColor3"}]
      501 LOADK                            R14 K106 ["$BackgroundPaper"]
      502 SETTABLEKS                       R14 R13 K46 ["BackgroundColor3"]
      504 NEWTABLE                         R14 0 1
      506 MOVE                             R15 R2
      507 LOADK                            R16 K107 [">> TextButton"]
      508 DUPTABLE                         R17 K108 [{"AutomaticSize", "BackgroundColor3", "TextColor3", "TextSize", "Font", "BackgroundTransparency"}]
      509 GETIMPORT                        R18 K43 [Enum.AutomaticSize.XY]
      511 SETTABLEKS                       R18 R17 K19 ["AutomaticSize"]
      513 LOADK                            R18 K100 ["$EmptyStateButtonFill"]
      514 SETTABLEKS                       R18 R17 K46 ["BackgroundColor3"]
      516 LOADK                            R18 K98 ["$SemanticColorContentStaticLight"]
      517 SETTABLEKS                       R18 R17 K96 ["TextColor3"]
      519 LOADK                            R18 K94 ["$FontSizeS"]
      520 SETTABLEKS                       R18 R17 K91 ["TextSize"]
      522 LOADK                            R18 K88 ["$FontBold"]
      523 SETTABLEKS                       R18 R17 K86 ["Font"]
      525 LOADN                            R18 0
      526 SETTABLEKS                       R18 R17 K20 ["BackgroundTransparency"]
      528 NEWTABLE                         R18 0 4
      530 MOVE                             R19 R2
      531 LOADK                            R20 K52 ["::UICorner"]
      532 DUPTABLE                         R21 K54 [{"CornerRadius"}]
      533 GETIMPORT                        R22 K34 [UDim.new]
      535 LOADN                            R23 0
      536 LOADN                            R24 4
      537 CALL                             R22 2 1
      538 SETTABLEKS                       R22 R21 K53 ["CornerRadius"]
      540 CALL                             R19 2 1
      541 MOVE                             R20 R2
      542 LOADK                            R21 K27 ["::UIPadding"]
      543 DUPTABLE                         R22 K32 [{"PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom"}]
      544 GETIMPORT                        R23 K34 [UDim.new]
      546 LOADN                            R24 0
      547 LOADN                            R25 4
      548 CALL                             R23 2 1
      549 SETTABLEKS                       R23 R22 K28 ["PaddingTop"]
      551 GETIMPORT                        R23 K34 [UDim.new]
      553 LOADN                            R24 0
      554 LOADN                            R25 10
      555 CALL                             R23 2 1
      556 SETTABLEKS                       R23 R22 K29 ["PaddingLeft"]
      558 GETIMPORT                        R23 K34 [UDim.new]
      560 LOADN                            R24 0
      561 LOADN                            R25 10
      562 CALL                             R23 2 1
      563 SETTABLEKS                       R23 R22 K30 ["PaddingRight"]
      565 GETIMPORT                        R23 K34 [UDim.new]
      567 LOADN                            R24 0
      568 LOADN                            R25 4
      569 CALL                             R23 2 1
      570 SETTABLEKS                       R23 R22 K31 ["PaddingBottom"]
      572 CALL                             R20 2 1
      573 MOVE                             R21 R2
      574 LOADK                            R22 K55 [":hover"]
      575 DUPTABLE                         R23 K102 [{"BackgroundColor3"}]
      576 LOADK                            R24 K103 ["$EmptyStateButtonHovered"]
      577 SETTABLEKS                       R24 R23 K46 ["BackgroundColor3"]
      579 CALL                             R21 2 1
      580 MOVE                             R22 R2
      581 LOADK                            R23 K58 [":press"]
      582 DUPTABLE                         R24 K102 [{"BackgroundColor3"}]
      583 LOADK                            R25 K104 ["$EmptyStateButtonSelected"]
      584 SETTABLEKS                       R25 R24 K46 ["BackgroundColor3"]
      586 CALL                             R22 2 -1
      587 SETLIST                          R18 R19 -1 [1]
      589 CALL                             R15 3 -1
      590 SETLIST                          R14 R15 -1 [1]
      592 CALL                             R11 3 -1
      593 SETLIST                          R6 R7 -1 [1]
      595 CALL                             R3 3 -1
      596 RETURN                           R3 -1
