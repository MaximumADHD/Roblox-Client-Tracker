MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["ImageUrl"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagExplorerContentDisabledIncludesImageColor"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagExplorerFixBlurryTextHopefully"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagExplorerFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagExplorerStreaming"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagExplorerUseBuilderSans"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Flags"]
       67 GETTABLEKS                       R10 R10 K17 ["getFFlagLuaExplorerUseRDLColors"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K18 ["Styling"]
       72 GETTABLEKS                       R10 R10 K19 ["createStyleRule"]
       74 DUPTABLE                         R11 K23 [{"Base", "Dark", "Light"}]
       75 GETTABLEKS                       R12 R2 K18 ["Styling"]
       77 GETTABLEKS                       R12 R12 K24 ["createStyleSheet"]
       79 LOADK                            R13 K2 ["Explorer"]
       80 NEWTABLE                         R14 0 35
       82 MOVE                             R15 R10
       83 LOADK                            R16 K25 [".Explorer-BG-Surface0"]
       84 DUPTABLE                         R17 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
       85 LOADK                            R18 K29 ["$RDLSemanticColorSurface0"]
       86 SETTABLEKS                       R18 R17 K26 ["BackgroundColor3"]
       88 LOADN                            R18 0
       89 SETTABLEKS                       R18 R17 K27 ["BackgroundTransparency"]
       91 CALL                             R15 2 1
       92 MOVE                             R16 R10
       93 LOADK                            R17 K30 [".Explorer-BG-Surface100"]
       94 DUPTABLE                         R18 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
       95 MOVE                             R20 R9
       96 CALL                             R20 0 1
       97 JUMPIFNOT                        R20 ; [+2]
       98 LOADK                            R19 K31 ["$RDLSemanticColorSurface100"]
       99 JUMP                             ; [+1]
      100 LOADK                            R19 K32 ["$LegacyMainBackground"]
      101 SETTABLEKS                       R19 R18 K26 ["BackgroundColor3"]
      103 LOADN                            R19 0
      104 SETTABLEKS                       R19 R18 K27 ["BackgroundTransparency"]
      106 CALL                             R16 2 1
      107 MOVE                             R17 R10
      108 LOADK                            R18 K33 [".Explorer-BG-Shift300"]
      109 DUPTABLE                         R19 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      110 LOADK                            R20 K34 ["$RDLSemanticColorShift300"]
      111 SETTABLEKS                       R20 R19 K26 ["BackgroundColor3"]
      113 LOADK                            R20 K35 ["$RDLSemanticColorShift300Transparency"]
      114 SETTABLEKS                       R20 R19 K27 ["BackgroundTransparency"]
      116 CALL                             R17 2 1
      117 MOVE                             R18 R10
      118 LOADK                            R19 K36 [".Explorer-BG-Action-Soft-Emphasis"]
      119 DUPTABLE                         R20 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      120 LOADK                            R21 K37 ["$RDLSemanticColorSystemEmphasis"]
      121 SETTABLEKS                       R21 R20 K26 ["BackgroundColor3"]
      123 LOADK                            R21 K38 [0.6]
      124 SETTABLEKS                       R21 R20 K27 ["BackgroundTransparency"]
      126 CALL                             R18 2 1
      127 MOVE                             R19 R10
      128 LOADK                            R20 K39 [".Explorer-BG-SystemEmphasis"]
      129 DUPTABLE                         R21 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      130 LOADK                            R22 K37 ["$RDLSemanticColorSystemEmphasis"]
      131 SETTABLEKS                       R22 R21 K26 ["BackgroundColor3"]
      133 LOADN                            R22 0
      134 SETTABLEKS                       R22 R21 K27 ["BackgroundTransparency"]
      136 CALL                             R19 2 1
      137 MOVE                             R20 R10
      138 LOADK                            R21 K40 [".Explorer-BG-Input"]
      139 DUPTABLE                         R22 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      140 LOADK                            R23 K41 ["$RDLSemanticColorComponentInputFill"]
      141 SETTABLEKS                       R23 R22 K26 ["BackgroundColor3"]
      143 LOADK                            R23 K42 ["$RDLSemanticColorComponentInputFillTransparency"]
      144 SETTABLEKS                       R23 R22 K27 ["BackgroundTransparency"]
      146 CALL                             R20 2 1
      147 MOVE                             R21 R10
      148 LOADK                            R22 K43 [".Explorer-BG-Hover"]
      149 DUPTABLE                         R23 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      150 LOADK                            R24 K44 ["$RDLSemanticColorStatesHover"]
      151 SETTABLEKS                       R24 R23 K26 ["BackgroundColor3"]
      153 LOADK                            R24 K45 ["$RDLSemanticColorStatesHoverTransparency"]
      154 SETTABLEKS                       R24 R23 K27 ["BackgroundTransparency"]
      156 CALL                             R21 2 1
      157 MOVE                             R22 R10
      158 LOADK                            R23 K46 [".Explorer-Border-SystemEmphasis"]
      159 DUPTABLE                         R24 K48 [{"BorderColor3"}]
      160 LOADK                            R25 K37 ["$RDLSemanticColorSystemEmphasis"]
      161 SETTABLEKS                       R25 R24 K47 ["BorderColor3"]
      163 CALL                             R22 2 1
      164 MOVE                             R23 R10
      165 LOADK                            R24 K49 [".Explorer-Button"]
      166 DUPTABLE                         R25 K52 [{"AutoButtonColor", "BackgroundTransparency", "Text"}]
      167 LOADB                            R26 0
      168 SETTABLEKS                       R26 R25 K50 ["AutoButtonColor"]
      170 LOADN                            R26 1
      171 SETTABLEKS                       R26 R25 K27 ["BackgroundTransparency"]
      173 LOADK                            R26 K53 [""]
      174 SETTABLEKS                       R26 R25 K51 ["Text"]
      176 CALL                             R23 2 1
      177 MOVE                             R24 R10
      178 LOADK                            R25 K54 [".Explorer-GrowX"]
      179 DUPTABLE                         R26 K56 [{"Size"}]
      180 GETIMPORT                        R27 K59 [UDim2.fromScale]
      182 LOADN                            R28 0
      183 LOADN                            R29 1
      184 CALL                             R27 2 1
      185 SETTABLEKS                       R27 R26 K55 ["Size"]
      187 NEWTABLE                         R27 0 1
      189 MOVE                             R28 R10
      190 LOADK                            R29 K60 ["::UIFlexItem"]
      191 DUPTABLE                         R30 K62 [{"FlexMode"}]
      192 GETIMPORT                        R31 K66 [Enum.UIFlexMode.Grow]
      194 SETTABLEKS                       R31 R30 K61 ["FlexMode"]
      196 CALL                             R28 2 -1
      197 SETLIST                          R27 R28 -1 [1]
      199 CALL                             R24 3 1
      200 MOVE                             R25 R10
      201 LOADK                            R26 K67 [".Explorer-ShrinkX"]
      202 DUPTABLE                         R27 K69 [{"AutomaticSize"}]
      203 GETIMPORT                        R28 K71 [Enum.AutomaticSize.X]
      205 SETTABLEKS                       R28 R27 K68 ["AutomaticSize"]
      207 NEWTABLE                         R28 0 1
      209 MOVE                             R29 R10
      210 LOADK                            R30 K60 ["::UIFlexItem"]
      211 DUPTABLE                         R31 K62 [{"FlexMode"}]
      212 GETIMPORT                        R32 K73 [Enum.UIFlexMode.Shrink]
      214 SETTABLEKS                       R32 R31 K61 ["FlexMode"]
      216 CALL                             R29 2 -1
      217 SETLIST                          R28 R29 -1 [1]
      219 CALL                             R25 3 1
      220 MOVE                             R26 R10
      221 LOADK                            R27 K74 [".Explorer-FillX"]
      222 DUPTABLE                         R28 K56 [{"Size"}]
      223 GETIMPORT                        R29 K59 [UDim2.fromScale]
      225 LOADN                            R30 0
      226 LOADN                            R31 1
      227 CALL                             R29 2 1
      228 SETTABLEKS                       R29 R28 K55 ["Size"]
      230 NEWTABLE                         R29 0 1
      232 MOVE                             R30 R10
      233 LOADK                            R31 K60 ["::UIFlexItem"]
      234 DUPTABLE                         R32 K62 [{"FlexMode"}]
      235 GETIMPORT                        R33 K76 [Enum.UIFlexMode.Fill]
      237 SETTABLEKS                       R33 R32 K61 ["FlexMode"]
      239 CALL                             R30 2 -1
      240 SETLIST                          R29 R30 -1 [1]
      242 CALL                             R26 3 1
      243 MOVE                             R27 R10
      244 LOADK                            R28 K77 [".Explorer-SidePadS ::UIPadding"]
      245 DUPTABLE                         R29 K80 [{"PaddingLeft", "PaddingRight"}]
      246 GETIMPORT                        R30 K83 [UDim.new]
      248 LOADN                            R31 0
      249 LOADN                            R32 5
      250 CALL                             R30 2 1
      251 SETTABLEKS                       R30 R29 K78 ["PaddingLeft"]
      253 GETIMPORT                        R30 K83 [UDim.new]
      255 LOADN                            R31 0
      256 LOADN                            R32 5
      257 CALL                             R30 2 1
      258 SETTABLEKS                       R30 R29 K79 ["PaddingRight"]
      260 CALL                             R27 2 1
      261 MOVE                             R28 R10
      262 LOADK                            R29 K84 [".Explorer-Content-Default"]
      263 DUPTABLE                         R30 K87 [{"ImageColor3", "TextColor3"}]
      264 LOADK                            R31 K88 ["$ExplorerContentDefault"]
      265 SETTABLEKS                       R31 R30 K85 ["ImageColor3"]
      267 LOADK                            R31 K88 ["$ExplorerContentDefault"]
      268 SETTABLEKS                       R31 R30 K86 ["TextColor3"]
      270 CALL                             R28 2 1
      271 MOVE                             R29 R10
      272 LOADK                            R30 K89 [".Explorer-Content-Disabled"]
      273 DUPTABLE                         R31 K91 [{"ImageTransparency", "TextColor3", "ImageColor3"}]
      274 LOADK                            R32 K92 [0.62]
      275 SETTABLEKS                       R32 R31 K90 ["ImageTransparency"]
      277 LOADK                            R32 K93 ["$RDLSemanticColorContentDisabled"]
      278 SETTABLEKS                       R32 R31 K86 ["TextColor3"]
      280 MOVE                             R33 R4
      281 CALL                             R33 0 1
      282 JUMPIFNOT                        R33 ; [+2]
      283 LOADK                            R32 K93 ["$RDLSemanticColorContentDisabled"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R32
      286 SETTABLEKS                       R32 R31 K85 ["ImageColor3"]
      288 CALL                             R29 2 1
      289 MOVE                             R30 R10
      290 LOADK                            R31 K94 [".Explorer-Content-Emphasis"]
      291 DUPTABLE                         R32 K87 [{"ImageColor3", "TextColor3"}]
      292 LOADK                            R33 K95 ["$ExplorerContentEmphasis"]
      293 SETTABLEKS                       R33 R32 K85 ["ImageColor3"]
      295 LOADK                            R33 K95 ["$ExplorerContentEmphasis"]
      296 SETTABLEKS                       R33 R32 K86 ["TextColor3"]
      298 CALL                             R30 2 1
      299 SETLIST                          R14 R15 16 [1]
      301 MOVE                             R15 R10
      302 LOADK                            R16 K96 [".Explorer-Content-Muted"]
      303 DUPTABLE                         R17 K87 [{"ImageColor3", "TextColor3"}]
      304 LOADK                            R18 K97 ["$RDLSemanticColorContentMuted"]
      305 SETTABLEKS                       R18 R17 K85 ["ImageColor3"]
      307 LOADK                            R18 K97 ["$RDLSemanticColorContentMuted"]
      308 SETTABLEKS                       R18 R17 K86 ["TextColor3"]
      310 CALL                             R15 2 1
      311 MOVE                             R16 R10
      312 LOADK                            R17 K98 [".Explorer-BG-PrimaryBrandFill"]
      313 DUPTABLE                         R18 K99 [{"BackgroundColor3"}]
      314 LOADK                            R19 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
      315 SETTABLEKS                       R19 R18 K26 ["BackgroundColor3"]
      317 CALL                             R16 2 1
      318 MOVE                             R17 R10
      319 LOADK                            R18 K101 [".Explorer-Content-PrimaryBrandFill"]
      320 DUPTABLE                         R19 K87 [{"ImageColor3", "TextColor3"}]
      321 LOADK                            R20 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
      322 SETTABLEKS                       R20 R19 K85 ["ImageColor3"]
      324 LOADK                            R20 K100 ["$RDLSemanticColorActionPrimaryBrandFill"]
      325 SETTABLEKS                       R20 R19 K86 ["TextColor3"]
      327 CALL                             R17 2 1
      328 MOVE                             R18 R10
      329 LOADK                            R19 K102 [".Explorer-Content-Standard"]
      330 DUPTABLE                         R20 K87 [{"ImageColor3", "TextColor3"}]
      331 LOADK                            R21 K103 ["$RDLSemanticColorContentStandard"]
      332 SETTABLEKS                       R21 R20 K85 ["ImageColor3"]
      334 LOADK                            R21 K103 ["$RDLSemanticColorContentStandard"]
      335 SETTABLEKS                       R21 R20 K86 ["TextColor3"]
      337 CALL                             R18 2 1
      338 MOVE                             R19 R10
      339 LOADK                            R20 K104 [".Explorer-Content-Surface-Outline"]
      340 DUPTABLE                         R21 K105 [{"ImageColor3", "ImageTransparency"}]
      341 LOADK                            R22 K106 ["$RDLSemanticColorSurfaceOutline"]
      342 SETTABLEKS                       R22 R21 K85 ["ImageColor3"]
      344 LOADK                            R22 K107 ["$RDLSemanticColorSurfaceOutlineTransparency"]
      345 SETTABLEKS                       R22 R21 K90 ["ImageTransparency"]
      347 CALL                             R19 2 1
      348 MOVE                             R20 R10
      349 LOADK                            R21 K108 [".DEPRECATED_Explorer-Text-Size-14"]
      350 DUPTABLE                         R22 K110 [{"TextSize"}]
      351 MOVE                             R24 R5
      352 CALL                             R24 0 1
      353 JUMPIFNOT                        R24 ; [+2]
      354 LOADN                            R23 17
      355 JUMP                             ; [+1]
      356 LOADK                            R23 K111 [17.598]
      357 SETTABLEKS                       R23 R22 K109 ["TextSize"]
      359 CALL                             R20 2 1
      360 MOVE                             R21 R10
      361 LOADK                            R22 K112 [".Explorer-View"]
      362 DUPTABLE                         R23 K113 [{"BackgroundTransparency", "Size"}]
      363 LOADN                            R24 1
      364 SETTABLEKS                       R24 R23 K27 ["BackgroundTransparency"]
      366 GETIMPORT                        R24 K59 [UDim2.fromScale]
      368 LOADN                            R25 1
      369 LOADN                            R26 1
      370 CALL                             R24 2 1
      371 SETTABLEKS                       R24 R23 K55 ["Size"]
      373 CALL                             R21 2 1
      374 MOVE                             R22 R10
      375 LOADK                            R23 K114 [".Explorer-ScrollingFrame"]
      376 DUPTABLE                         R24 K120 [{"BorderColor3", "BottomImage", "MidImage", "TopImage", "ScrollBarImageColor3", "ScrollBarImageTransparency"}]
      377 MOVE                             R26 R9
      378 CALL                             R26 0 1
      379 JUMPIFNOT                        R26 ; [+2]
      380 LOADK                            R25 K31 ["$RDLSemanticColorSurface100"]
      381 JUMP                             ; [+1]
      382 LOADK                            R25 K32 ["$LegacyMainBackground"]
      383 SETTABLEKS                       R25 R24 K47 ["BorderColor3"]
      385 GETTABLEKS                       R25 R3 K121 ["standard"]
      387 LOADK                            R26 K122 ["scrollBottom"]
      388 CALL                             R25 1 1
      389 SETTABLEKS                       R25 R24 K115 ["BottomImage"]
      391 GETTABLEKS                       R25 R3 K121 ["standard"]
      393 LOADK                            R26 K123 ["scrollMid"]
      394 CALL                             R25 1 1
      395 SETTABLEKS                       R25 R24 K116 ["MidImage"]
      397 GETTABLEKS                       R25 R3 K121 ["standard"]
      399 LOADK                            R26 K124 ["scrollTop"]
      400 CALL                             R25 1 1
      401 SETTABLEKS                       R25 R24 K117 ["TopImage"]
      403 LOADK                            R25 K125 ["$ExplorerScrollBar"]
      404 SETTABLEKS                       R25 R24 K118 ["ScrollBarImageColor3"]
      406 LOADN                            R25 0
      407 SETTABLEKS                       R25 R24 K119 ["ScrollBarImageTransparency"]
      409 CALL                             R22 2 1
      410 MOVE                             R23 R10
      411 LOADK                            R24 K126 [".Explorer-Square ::UIAspectRatioConstraint"]
      412 DUPTABLE                         R25 K128 [{"AspectRatio"}]
      413 LOADN                            R26 1
      414 SETTABLEKS                       R26 R25 K127 ["AspectRatio"]
      416 CALL                             R23 2 1
      417 MOVE                             R24 R10
      418 LOADK                            R25 K129 [".Explorer-Icon"]
      419 DUPTABLE                         R26 K113 [{"BackgroundTransparency", "Size"}]
      420 LOADN                            R27 1
      421 SETTABLEKS                       R27 R26 K27 ["BackgroundTransparency"]
      423 GETIMPORT                        R27 K131 [UDim2.fromOffset]
      425 LOADN                            R28 16
      426 LOADN                            R29 16
      427 CALL                             R27 2 1
      428 SETTABLEKS                       R27 R26 K55 ["Size"]
      430 CALL                             R24 2 1
      431 MOVE                             R25 R10
      432 LOADK                            R26 K132 [".Explorer-Radius-Small ::UICorner"]
      433 DUPTABLE                         R27 K134 [{"CornerRadius"}]
      434 GETIMPORT                        R28 K83 [UDim.new]
      436 LOADN                            R29 0
      437 LOADN                            R30 4
      438 CALL                             R28 2 1
      439 SETTABLEKS                       R28 R27 K133 ["CornerRadius"]
      441 CALL                             R25 2 1
      442 MOVE                             R26 R10
      443 LOADK                            R27 K135 [">> .DEPRECATED_Explorer-StandardText"]
      444 DUPTABLE                         R28 K137 [{"Font", "TextColor3", "TextSize"}]
      445 GETTABLEKS                       R29 R1 K138 ["defaultFont"]
      447 SETTABLEKS                       R29 R28 K136 ["Font"]
      449 LOADK                            R29 K103 ["$RDLSemanticColorContentStandard"]
      450 SETTABLEKS                       R29 R28 K86 ["TextColor3"]
      452 GETTABLEKS                       R29 R1 K139 ["standardTextSize"]
      454 SETTABLEKS                       R29 R28 K109 ["TextSize"]
      456 CALL                             R26 2 1
      457 MOVE                             R27 R10
      458 LOADK                            R28 K140 [".Explorer-Stroke-Standard"]
      459 DUPTABLE                         R29 K142 [{"BorderSizePixel"}]
      460 LOADN                            R30 0
      461 SETTABLEKS                       R30 R29 K141 ["BorderSizePixel"]
      463 NEWTABLE                         R30 0 1
      465 MOVE                             R31 R10
      466 LOADK                            R32 K143 ["::UIStroke"]
      467 DUPTABLE                         R33 K145 [{"Thickness"}]
      468 LOADN                            R34 1
      469 SETTABLEKS                       R34 R33 K144 ["Thickness"]
      471 CALL                             R31 2 -1
      472 SETLIST                          R30 R31 -1 [1]
      474 CALL                             R27 3 1
      475 MOVE                             R28 R10
      476 LOADK                            R29 K146 [".Explorer-Stroke-Thick"]
      477 DUPTABLE                         R30 K142 [{"BorderSizePixel"}]
      478 LOADN                            R31 0
      479 SETTABLEKS                       R31 R30 K141 ["BorderSizePixel"]
      481 NEWTABLE                         R31 0 1
      483 MOVE                             R32 R10
      484 LOADK                            R33 K143 ["::UIStroke"]
      485 DUPTABLE                         R34 K145 [{"Thickness"}]
      486 LOADK                            R35 K147 [1.5]
      487 SETTABLEKS                       R35 R34 K144 ["Thickness"]
      489 CALL                             R32 2 -1
      490 SETLIST                          R31 R32 -1 [1]
      492 CALL                             R28 3 1
      493 MOVE                             R29 R10
      494 LOADK                            R30 K148 [".Explorer-Stroke-Emphasis ::UIStroke"]
      495 DUPTABLE                         R31 K151 [{"Color", "Transparency"}]
      496 LOADK                            R32 K152 ["$RDLSemanticColorStrokeEmphasis"]
      497 SETTABLEKS                       R32 R31 K149 ["Color"]
      499 LOADK                            R32 K153 ["$RDLSemanticColorStrokeEmphasisTransparency"]
      500 SETTABLEKS                       R32 R31 K150 ["Transparency"]
      502 CALL                             R29 2 1
      503 MOVE                             R30 R10
      504 LOADK                            R31 K154 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
      505 DUPTABLE                         R32 K155 [{"Color"}]
      506 LOADK                            R33 K37 ["$RDLSemanticColorSystemEmphasis"]
      507 SETTABLEKS                       R33 R32 K149 ["Color"]
      509 CALL                             R30 2 1
      510 SETLIST                          R14 R15 16 [17]
      512 MOVE                             R16 R7
      513 CALL                             R16 0 1
      514 JUMPIFNOT                        R16 ; [+42]
      515 MOVE                             R15 R10
      516 LOADK                            R16 K156 [".Explorer-Selection-Background"]
      517 DUPTABLE                         R17 K157 [{"BackgroundTransparency"}]
      518 LOADN                            R18 1
      519 SETTABLEKS                       R18 R17 K27 ["BackgroundTransparency"]
      521 NEWTABLE                         R18 0 3
      523 MOVE                             R19 R10
      524 LOADK                            R20 K158 [".Explorer-HoveredKind-Hovered"]
      525 DUPTABLE                         R21 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      526 LOADK                            R22 K44 ["$RDLSemanticColorStatesHover"]
      527 SETTABLEKS                       R22 R21 K26 ["BackgroundColor3"]
      529 LOADK                            R22 K45 ["$RDLSemanticColorStatesHoverTransparency"]
      530 SETTABLEKS                       R22 R21 K27 ["BackgroundTransparency"]
      532 CALL                             R19 2 1
      533 MOVE                             R20 R10
      534 LOADK                            R21 K159 [".Explorer-SelectionKind-Selected"]
      535 DUPTABLE                         R22 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      536 LOADK                            R23 K160 ["$ExplorerSelected"]
      537 SETTABLEKS                       R23 R22 K26 ["BackgroundColor3"]
      539 LOADN                            R23 0
      540 SETTABLEKS                       R23 R22 K27 ["BackgroundTransparency"]
      542 CALL                             R20 2 1
      543 MOVE                             R21 R10
      544 LOADK                            R22 K161 [".Explorer-SelectionKind-ParentSelected"]
      545 DUPTABLE                         R23 K28 [{"BackgroundColor3", "BackgroundTransparency"}]
      546 LOADK                            R24 K160 ["$ExplorerSelected"]
      547 SETTABLEKS                       R24 R23 K26 ["BackgroundColor3"]
      549 LOADK                            R24 K162 [0.8]
      550 SETTABLEKS                       R24 R23 K27 ["BackgroundTransparency"]
      552 CALL                             R21 2 -1
      553 SETLIST                          R18 R19 -1 [1]
      555 CALL                             R15 3 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R15
      558 MOVE                             R16 R10
      559 LOADK                            R17 K163 ["TextLabel"]
      560 DUPTABLE                         R18 K164 [{"Font", "TextSize"}]
      561 MOVE                             R20 R8
      562 CALL                             R20 0 1
      563 JUMPIFNOT                        R20 ; [+3]
      564 GETTABLEKS                       R19 R1 K138 ["defaultFont"]
      566 JUMP                             ; [+2]
      567 GETIMPORT                        R19 K166 [Enum.Font.SourceSans]
      569 SETTABLEKS                       R19 R18 K136 ["Font"]
      571 MOVE                             R20 R8
      572 CALL                             R20 0 1
      573 JUMPIFNOT                        R20 ; [+3]
      574 GETTABLEKS                       R19 R1 K139 ["standardTextSize"]
      576 JUMP                             ; [+1]
      577 LOADNIL                          R19
      578 SETTABLEKS                       R19 R18 K109 ["TextSize"]
      580 CALL                             R16 2 1
      581 MOVE                             R17 R10
      582 LOADK                            R18 K167 ["TextBox"]
      583 DUPTABLE                         R19 K164 [{"Font", "TextSize"}]
      584 MOVE                             R21 R8
      585 CALL                             R21 0 1
      586 JUMPIFNOT                        R21 ; [+3]
      587 GETTABLEKS                       R20 R1 K138 ["defaultFont"]
      589 JUMP                             ; [+1]
      590 LOADNIL                          R20
      591 SETTABLEKS                       R20 R19 K136 ["Font"]
      593 MOVE                             R21 R8
      594 CALL                             R21 0 1
      595 JUMPIFNOT                        R21 ; [+3]
      596 GETTABLEKS                       R20 R1 K139 ["standardTextSize"]
      598 JUMP                             ; [+1]
      599 LOADNIL                          R20
      600 SETTABLEKS                       R20 R19 K109 ["TextSize"]
      602 CALL                             R17 2 -1
      603 SETLIST                          R14 R15 -1 [33]
      605 NEWTABLE                         R15 0 0
      607 CALL                             R12 3 1
      608 SETTABLEKS                       R12 R11 K20 ["Base"]
      610 MOVE                             R13 R6
      611 CALL                             R13 0 1
      612 JUMPIFNOT                        R13 ; [+2]
      613 LOADNIL                          R12
      614 JUMP                             ; [+147]
      615 GETTABLEKS                       R12 R2 K18 ["Styling"]
      617 GETTABLEKS                       R12 R12 K24 ["createStyleSheet"]
      619 LOADK                            R13 K168 ["ExplorerDark"]
      620 NEWTABLE                         R14 0 0
      622 DUPTABLE                         R15 K195 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
      623 GETIMPORT                        R16 K198 [Color3.fromHex]
      625 LOADK                            R17 K199 ["#2E2E2E"]
      626 CALL                             R16 1 1
      627 SETTABLEKS                       R16 R15 K169 ["LegacyMainBackground"]
      629 GETIMPORT                        R16 K198 [Color3.fromHex]
      631 LOADK                            R17 K200 ["#D5D7DD"]
      632 CALL                             R16 1 1
      633 SETTABLEKS                       R16 R15 K170 ["ExplorerContentDefault"]
      635 GETIMPORT                        R16 K198 [Color3.fromHex]
      637 LOADK                            R17 K201 ["#EEEFF1"]
      638 CALL                             R16 1 1
      639 SETTABLEKS                       R16 R15 K171 ["ExplorerContentEmphasis"]
      641 GETIMPORT                        R16 K198 [Color3.fromHex]
      643 LOADK                            R17 K202 ["#747476"]
      644 CALL                             R16 1 1
      645 SETTABLEKS                       R16 R15 K172 ["ExplorerScrollBar"]
      647 GETIMPORT                        R16 K198 [Color3.fromHex]
      649 LOADK                            R17 K203 ["#005CB5"]
      650 CALL                             R16 1 1
      651 SETTABLEKS                       R16 R15 K173 ["ExplorerSelected"]
      653 GETIMPORT                        R16 K198 [Color3.fromHex]
      655 LOADK                            R17 K204 ["#3C64FA"]
      656 CALL                             R16 1 1
      657 SETTABLEKS                       R16 R15 K174 ["RDLSemanticColorActionPrimaryBrandFill"]
      659 GETIMPORT                        R16 K198 [Color3.fromHex]
      661 LOADK                            R17 K205 ["#BBC2D1"]
      662 CALL                             R16 1 1
      663 SETTABLEKS                       R16 R15 K175 ["RDLSemanticColorActionSecondary"]
      665 LOADK                            R16 K206 [0.88]
      666 SETTABLEKS                       R16 R15 K176 ["RDLSemanticColorActionSecondaryTransparency"]
      668 GETIMPORT                        R16 K198 [Color3.fromHex]
      670 LOADK                            R17 K205 ["#BBC2D1"]
      671 CALL                             R16 1 1
      672 SETTABLEKS                       R16 R15 K177 ["RDLSemanticColorComponentInputFill"]
      674 LOADK                            R16 K206 [0.88]
      675 SETTABLEKS                       R16 R15 K178 ["RDLSemanticColorComponentInputFillTransparency"]
      677 GETIMPORT                        R16 K198 [Color3.fromHex]
      679 LOADK                            R17 K200 ["#D5D7DD"]
      680 CALL                             R16 1 1
      681 SETTABLEKS                       R16 R15 K179 ["RDLSemanticColorContentDefault"]
      683 GETIMPORT                        R16 K198 [Color3.fromHex]
      685 LOADK                            R17 K207 ["#696A6D"]
      686 CALL                             R16 1 1
      687 SETTABLEKS                       R16 R15 K180 ["RDLSemanticColorContentDisabled"]
      689 GETIMPORT                        R16 K198 [Color3.fromHex]
      691 LOADK                            R17 K201 ["#EEEFF1"]
      692 CALL                             R16 1 1
      693 SETTABLEKS                       R16 R15 K181 ["RDLSemanticColorContentEmphasis"]
      695 GETIMPORT                        R16 K198 [Color3.fromHex]
      697 LOADK                            R17 K208 ["#BBBCBE"]
      698 CALL                             R16 1 1
      699 SETTABLEKS                       R16 R15 K182 ["RDLSemanticColorContentMuted"]
      701 GETIMPORT                        R16 K198 [Color3.fromHex]
      703 LOADK                            R17 K209 ["#F9F9F9"]
      704 CALL                             R16 1 1
      705 SETTABLEKS                       R16 R15 K183 ["RDLSemanticColorContentStandard"]
      707 GETIMPORT                        R16 K198 [Color3.fromHex]
      709 LOADK                            R17 K210 ["#D0D9FB"]
      710 CALL                             R16 1 1
      711 SETTABLEKS                       R16 R15 K184 ["RDLSemanticColorShift300"]
      713 LOADK                            R16 K206 [0.88]
      714 SETTABLEKS                       R16 R15 K185 ["RDLSemanticColorShift300Transparency"]
      716 GETIMPORT                        R16 K198 [Color3.fromHex]
      718 LOADK                            R17 K205 ["#BBC2D1"]
      719 CALL                             R16 1 1
      720 SETTABLEKS                       R16 R15 K186 ["RDLSemanticColorStatesHover"]
      722 LOADK                            R16 K211 [0.92]
      723 SETTABLEKS                       R16 R15 K187 ["RDLSemanticColorStatesHoverTransparency"]
      725 GETIMPORT                        R16 K198 [Color3.fromHex]
      727 LOADK                            R17 K210 ["#D0D9FB"]
      728 CALL                             R16 1 1
      729 SETTABLEKS                       R16 R15 K188 ["RDLSemanticColorStrokeEmphasis"]
      731 LOADK                            R16 K212 [0.84]
      732 SETTABLEKS                       R16 R15 K189 ["RDLSemanticColorStrokeEmphasisTransparency"]
      734 GETIMPORT                        R16 K198 [Color3.fromHex]
      736 LOADK                            R17 K213 ["#111216"]
      737 CALL                             R16 1 1
      738 SETTABLEKS                       R16 R15 K190 ["RDLSemanticColorSurface0"]
      740 GETIMPORT                        R16 K198 [Color3.fromHex]
      742 LOADK                            R17 K214 ["#1F2024"]
      743 CALL                             R16 1 1
      744 SETTABLEKS                       R16 R15 K191 ["RDLSemanticColorSurface100"]
      746 GETIMPORT                        R16 K198 [Color3.fromHex]
      748 LOADK                            R17 K215 ["#FFFFFF"]
      749 CALL                             R16 1 1
      750 SETTABLEKS                       R16 R15 K192 ["RDLSemanticColorSurfaceOutline"]
      752 LOADK                            R16 K206 [0.88]
      753 SETTABLEKS                       R16 R15 K193 ["RDLSemanticColorSurfaceOutlineTransparency"]
      755 GETIMPORT                        R16 K198 [Color3.fromHex]
      757 LOADK                            R17 K216 ["#335FFF"]
      758 CALL                             R16 1 1
      759 SETTABLEKS                       R16 R15 K194 ["RDLSemanticColorSystemEmphasis"]
      761 CALL                             R12 3 1
      762 SETTABLEKS                       R12 R11 K21 ["Dark"]
      764 MOVE                             R13 R6
      765 CALL                             R13 0 1
      766 JUMPIFNOT                        R13 ; [+2]
      767 LOADNIL                          R12
      768 JUMP                             ; [+147]
      769 GETTABLEKS                       R12 R2 K18 ["Styling"]
      771 GETTABLEKS                       R12 R12 K24 ["createStyleSheet"]
      773 LOADK                            R13 K217 ["ExplorerLight"]
      774 NEWTABLE                         R14 0 0
      776 DUPTABLE                         R15 K195 [{"LegacyMainBackground", "ExplorerContentDefault", "ExplorerContentEmphasis", "ExplorerScrollBar", "ExplorerSelected", "RDLSemanticColorActionPrimaryBrandFill", "RDLSemanticColorActionSecondary", "RDLSemanticColorActionSecondaryTransparency", "RDLSemanticColorComponentInputFill", "RDLSemanticColorComponentInputFillTransparency", "RDLSemanticColorContentDefault", "RDLSemanticColorContentDisabled", "RDLSemanticColorContentEmphasis", "RDLSemanticColorContentMuted", "RDLSemanticColorContentStandard", "RDLSemanticColorShift300", "RDLSemanticColorShift300Transparency", "RDLSemanticColorStatesHover", "RDLSemanticColorStatesHoverTransparency", "RDLSemanticColorStrokeEmphasis", "RDLSemanticColorStrokeEmphasisTransparency", "RDLSemanticColorSurface0", "RDLSemanticColorSurface100", "RDLSemanticColorSurfaceOutline", "RDLSemanticColorSurfaceOutlineTransparency", "RDLSemanticColorSystemEmphasis"}]
      777 GETIMPORT                        R16 K198 [Color3.fromHex]
      779 LOADK                            R17 K215 ["#FFFFFF"]
      780 CALL                             R16 1 1
      781 SETTABLEKS                       R16 R15 K169 ["LegacyMainBackground"]
      783 GETIMPORT                        R16 K198 [Color3.fromHex]
      785 LOADK                            R17 K218 ["#000000"]
      786 CALL                             R16 1 1
      787 SETTABLEKS                       R16 R15 K170 ["ExplorerContentDefault"]
      789 GETIMPORT                        R16 K198 [Color3.fromHex]
      791 LOADK                            R17 K215 ["#FFFFFF"]
      792 CALL                             R16 1 1
      793 SETTABLEKS                       R16 R15 K171 ["ExplorerContentEmphasis"]
      795 GETIMPORT                        R16 K198 [Color3.fromHex]
      797 LOADK                            R17 K219 ["#949496"]
      798 CALL                             R16 1 1
      799 SETTABLEKS                       R16 R15 K172 ["ExplorerScrollBar"]
      801 GETIMPORT                        R16 K198 [Color3.fromHex]
      803 LOADK                            R17 K220 ["#5A95DF"]
      804 CALL                             R16 1 1
      805 SETTABLEKS                       R16 R15 K173 ["ExplorerSelected"]
      807 GETIMPORT                        R16 K198 [Color3.fromHex]
      809 LOADK                            R17 K204 ["#3C64FA"]
      810 CALL                             R16 1 1
      811 SETTABLEKS                       R16 R15 K174 ["RDLSemanticColorActionPrimaryBrandFill"]
      813 GETIMPORT                        R16 K198 [Color3.fromHex]
      815 LOADK                            R17 K221 ["#333B4C"]
      816 CALL                             R16 1 1
      817 SETTABLEKS                       R16 R15 K175 ["RDLSemanticColorActionSecondary"]
      819 LOADK                            R16 K211 [0.92]
      820 SETTABLEKS                       R16 R15 K176 ["RDLSemanticColorActionSecondaryTransparency"]
      822 GETIMPORT                        R16 K198 [Color3.fromHex]
      824 LOADK                            R17 K221 ["#333B4C"]
      825 CALL                             R16 1 1
      826 SETTABLEKS                       R16 R15 K177 ["RDLSemanticColorComponentInputFill"]
      828 LOADK                            R16 K211 [0.92]
      829 SETTABLEKS                       R16 R15 K178 ["RDLSemanticColorComponentInputFillTransparency"]
      831 GETIMPORT                        R16 K198 [Color3.fromHex]
      833 LOADK                            R17 K222 ["#494D5A"]
      834 CALL                             R16 1 1
      835 SETTABLEKS                       R16 R15 K179 ["RDLSemanticColorContentDefault"]
      837 GETIMPORT                        R16 K198 [Color3.fromHex]
      839 LOADK                            R17 K208 ["#BBBCBE"]
      840 CALL                             R16 1 1
      841 SETTABLEKS                       R16 R15 K180 ["RDLSemanticColorContentDisabled"]
      843 GETIMPORT                        R16 K198 [Color3.fromHex]
      845 LOADK                            R17 K223 ["#202227"]
      846 CALL                             R16 1 1
      847 SETTABLEKS                       R16 R15 K181 ["RDLSemanticColorContentEmphasis"]
      849 GETIMPORT                        R16 K198 [Color3.fromHex]
      851 LOADK                            R17 K207 ["#696A6D"]
      852 CALL                             R16 1 1
      853 SETTABLEKS                       R16 R15 K182 ["RDLSemanticColorContentMuted"]
      855 GETIMPORT                        R16 K198 [Color3.fromHex]
      857 LOADK                            R17 K213 ["#111216"]
      858 CALL                             R16 1 1
      859 SETTABLEKS                       R16 R15 K183 ["RDLSemanticColorContentStandard"]
      861 GETIMPORT                        R16 K198 [Color3.fromHex]
      863 LOADK                            R17 K224 ["#1B254B"]
      864 CALL                             R16 1 1
      865 SETTABLEKS                       R16 R15 K184 ["RDLSemanticColorShift300"]
      867 LOADK                            R16 K206 [0.88]
      868 SETTABLEKS                       R16 R15 K185 ["RDLSemanticColorShift300Transparency"]
      870 GETIMPORT                        R16 K198 [Color3.fromHex]
      872 LOADK                            R17 K221 ["#333B4C"]
      873 CALL                             R16 1 1
      874 SETTABLEKS                       R16 R15 K186 ["RDLSemanticColorStatesHover"]
      876 LOADK                            R16 K211 [0.92]
      877 SETTABLEKS                       R16 R15 K187 ["RDLSemanticColorStatesHoverTransparency"]
      879 GETIMPORT                        R16 K198 [Color3.fromHex]
      881 LOADK                            R17 K224 ["#1B254B"]
      882 CALL                             R16 1 1
      883 SETTABLEKS                       R16 R15 K188 ["RDLSemanticColorStrokeEmphasis"]
      885 LOADK                            R16 K212 [0.84]
      886 SETTABLEKS                       R16 R15 K189 ["RDLSemanticColorStrokeEmphasisTransparency"]
      888 GETIMPORT                        R16 K198 [Color3.fromHex]
      890 LOADK                            R17 K225 ["#F2F2F3"]
      891 CALL                             R16 1 1
      892 SETTABLEKS                       R16 R15 K190 ["RDLSemanticColorSurface0"]
      894 GETIMPORT                        R16 K198 [Color3.fromHex]
      896 LOADK                            R17 K215 ["#FFFFFF"]
      897 CALL                             R16 1 1
      898 SETTABLEKS                       R16 R15 K191 ["RDLSemanticColorSurface100"]
      900 GETIMPORT                        R16 K198 [Color3.fromHex]
      902 LOADK                            R17 K218 ["#000000"]
      903 CALL                             R16 1 1
      904 SETTABLEKS                       R16 R15 K192 ["RDLSemanticColorSurfaceOutline"]
      906 LOADK                            R16 K206 [0.88]
      907 SETTABLEKS                       R16 R15 K193 ["RDLSemanticColorSurfaceOutlineTransparency"]
      909 GETIMPORT                        R16 K198 [Color3.fromHex]
      911 LOADK                            R17 K216 ["#335FFF"]
      912 CALL                             R16 1 1
      913 SETTABLEKS                       R16 R15 K194 ["RDLSemanticColorSystemEmphasis"]
      915 CALL                             R12 3 1
      916 SETTABLEKS                       R12 R11 K22 ["Light"]
      918 RETURN                           R11 1
