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
       84 DUPTABLE                         R17 K30 [{["BackgroundColor3"] = "$RDLSemanticColorSurface0", ["BackgroundTransparency"] = 0}]
       85 CALL                             R15 2 1
       86 MOVE                             R16 R10
       87 LOADK                            R17 K31 [".Explorer-BG-Surface100"]
       88 DUPTABLE                         R18 K32 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0}]
       89 MOVE                             R20 R9
       90 CALL                             R20 0 1
       91 JUMPIFNOT                        R20 ; [+2]
       92 LOADK                            R19 K33 ["$RDLSemanticColorSurface100"]
       93 JUMP                             ; [+1]
       94 LOADK                            R19 K34 ["$LegacyMainBackground"]
       95 SETTABLEKS                       R19 R18 K26 ["BackgroundColor3"]
       97 CALL                             R16 2 1
       98 MOVE                             R17 R10
       99 LOADK                            R18 K35 [".Explorer-BG-Shift300"]
      100 DUPTABLE                         R19 K38 [{["BackgroundColor3"] = "$RDLSemanticColorShift300", ["BackgroundTransparency"] = "$RDLSemanticColorShift300Transparency"}]
      101 CALL                             R17 2 1
      102 MOVE                             R18 R10
      103 LOADK                            R19 K39 [".Explorer-BG-Action-Soft-Emphasis"]
      104 DUPTABLE                         R20 K42 [{["BackgroundColor3"] = "$RDLSemanticColorSystemEmphasis", ["BackgroundTransparency"] = 0.6}]
      105 CALL                             R18 2 1
      106 MOVE                             R19 R10
      107 LOADK                            R20 K43 [".Explorer-BG-SystemEmphasis"]
      108 DUPTABLE                         R21 K44 [{["BackgroundColor3"] = "$RDLSemanticColorSystemEmphasis", ["BackgroundTransparency"] = 0}]
      109 CALL                             R19 2 1
      110 MOVE                             R20 R10
      111 LOADK                            R21 K45 [".Explorer-BG-Input"]
      112 DUPTABLE                         R22 K48 [{["BackgroundColor3"] = "$RDLSemanticColorComponentInputFill", ["BackgroundTransparency"] = "$RDLSemanticColorComponentInputFillTransparency"}]
      113 CALL                             R20 2 1
      114 MOVE                             R21 R10
      115 LOADK                            R22 K49 [".Explorer-BG-Hover"]
      116 DUPTABLE                         R23 K52 [{["BackgroundColor3"] = "$RDLSemanticColorStatesHover", ["BackgroundTransparency"] = "$RDLSemanticColorStatesHoverTransparency"}]
      117 CALL                             R21 2 1
      118 MOVE                             R22 R10
      119 LOADK                            R23 K53 [".Explorer-Border-SystemEmphasis"]
      120 DUPTABLE                         R24 K55 [{["BorderColor3"] = "$RDLSemanticColorSystemEmphasis"}]
      121 CALL                             R22 2 1
      122 MOVE                             R23 R10
      123 LOADK                            R24 K56 [".Explorer-Button"]
      124 DUPTABLE                         R25 K62 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = 1, ["Text"] = ""}]
      125 CALL                             R23 2 1
      126 MOVE                             R24 R10
      127 LOADK                            R25 K63 [".Explorer-GrowX"]
      128 DUPTABLE                         R26 K65 [{"Size"}]
      129 GETIMPORT                        R27 K68 [UDim2.fromScale]
      131 LOADN                            R28 0
      132 LOADN                            R29 1
      133 CALL                             R27 2 1
      134 SETTABLEKS                       R27 R26 K64 ["Size"]
      136 NEWTABLE                         R27 0 1
      138 MOVE                             R28 R10
      139 LOADK                            R29 K69 ["::UIFlexItem"]
      140 DUPTABLE                         R30 K71 [{"FlexMode"}]
      141 GETIMPORT                        R31 K75 [Enum.UIFlexMode.Grow]
      143 SETTABLEKS                       R31 R30 K70 ["FlexMode"]
      145 CALL                             R28 2 -1
      146 SETLIST                          R27 R28 -1 [1]
      148 CALL                             R24 3 1
      149 MOVE                             R25 R10
      150 LOADK                            R26 K76 [".Explorer-ShrinkX"]
      151 DUPTABLE                         R27 K78 [{"AutomaticSize"}]
      152 GETIMPORT                        R28 K80 [Enum.AutomaticSize.X]
      154 SETTABLEKS                       R28 R27 K77 ["AutomaticSize"]
      156 NEWTABLE                         R28 0 1
      158 MOVE                             R29 R10
      159 LOADK                            R30 K69 ["::UIFlexItem"]
      160 DUPTABLE                         R31 K71 [{"FlexMode"}]
      161 GETIMPORT                        R32 K82 [Enum.UIFlexMode.Shrink]
      163 SETTABLEKS                       R32 R31 K70 ["FlexMode"]
      165 CALL                             R29 2 -1
      166 SETLIST                          R28 R29 -1 [1]
      168 CALL                             R25 3 1
      169 MOVE                             R26 R10
      170 LOADK                            R27 K83 [".Explorer-FillX"]
      171 DUPTABLE                         R28 K65 [{"Size"}]
      172 GETIMPORT                        R29 K68 [UDim2.fromScale]
      174 LOADN                            R30 0
      175 LOADN                            R31 1
      176 CALL                             R29 2 1
      177 SETTABLEKS                       R29 R28 K64 ["Size"]
      179 NEWTABLE                         R29 0 1
      181 MOVE                             R30 R10
      182 LOADK                            R31 K69 ["::UIFlexItem"]
      183 DUPTABLE                         R32 K71 [{"FlexMode"}]
      184 GETIMPORT                        R33 K85 [Enum.UIFlexMode.Fill]
      186 SETTABLEKS                       R33 R32 K70 ["FlexMode"]
      188 CALL                             R30 2 -1
      189 SETLIST                          R29 R30 -1 [1]
      191 CALL                             R26 3 1
      192 MOVE                             R27 R10
      193 LOADK                            R28 K86 [".Explorer-SidePadS ::UIPadding"]
      194 DUPTABLE                         R29 K89 [{"PaddingLeft", "PaddingRight"}]
      195 GETIMPORT                        R30 K92 [UDim.new]
      197 LOADN                            R31 0
      198 LOADN                            R32 5
      199 CALL                             R30 2 1
      200 SETTABLEKS                       R30 R29 K87 ["PaddingLeft"]
      202 GETIMPORT                        R30 K92 [UDim.new]
      204 LOADN                            R31 0
      205 LOADN                            R32 5
      206 CALL                             R30 2 1
      207 SETTABLEKS                       R30 R29 K88 ["PaddingRight"]
      209 CALL                             R27 2 1
      210 MOVE                             R28 R10
      211 LOADK                            R29 K93 [".Explorer-Content-Default"]
      212 DUPTABLE                         R30 K97 [{["ImageColor3"] = "$ExplorerContentDefault", ["TextColor3"] = "$ExplorerContentDefault"}]
      213 CALL                             R28 2 1
      214 MOVE                             R29 R10
      215 LOADK                            R30 K98 [".Explorer-Content-Disabled"]
      216 DUPTABLE                         R31 K102 [{["ImageTransparency"] = 0.62, ["TextColor3"] = "$RDLSemanticColorContentDisabled", ["ImageColor3"]}]
      217 MOVE                             R33 R4
      218 CALL                             R33 0 1
      219 JUMPIFNOT                        R33 ; [+2]
      220 LOADK                            R32 K101 ["$RDLSemanticColorContentDisabled"]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R32
      223 SETTABLEKS                       R32 R31 K94 ["ImageColor3"]
      225 CALL                             R29 2 1
      226 MOVE                             R30 R10
      227 LOADK                            R31 K103 [".Explorer-Content-Emphasis"]
      228 DUPTABLE                         R32 K105 [{["ImageColor3"] = "$ExplorerContentEmphasis", ["TextColor3"] = "$ExplorerContentEmphasis"}]
      229 CALL                             R30 2 1
      230 SETLIST                          R14 R15 16 [1]
      232 MOVE                             R15 R10
      233 LOADK                            R16 K106 [".Explorer-Content-Muted"]
      234 DUPTABLE                         R17 K108 [{["ImageColor3"] = "$RDLSemanticColorContentMuted", ["TextColor3"] = "$RDLSemanticColorContentMuted"}]
      235 CALL                             R15 2 1
      236 MOVE                             R16 R10
      237 LOADK                            R17 K109 [".Explorer-BG-PrimaryBrandFill"]
      238 DUPTABLE                         R18 K111 [{["BackgroundColor3"] = "$RDLSemanticColorActionPrimaryBrandFill"}]
      239 CALL                             R16 2 1
      240 MOVE                             R17 R10
      241 LOADK                            R18 K112 [".Explorer-Content-PrimaryBrandFill"]
      242 DUPTABLE                         R19 K113 [{["ImageColor3"] = "$RDLSemanticColorActionPrimaryBrandFill", ["TextColor3"] = "$RDLSemanticColorActionPrimaryBrandFill"}]
      243 CALL                             R17 2 1
      244 MOVE                             R18 R10
      245 LOADK                            R19 K114 [".Explorer-Content-Standard"]
      246 DUPTABLE                         R20 K116 [{["ImageColor3"] = "$RDLSemanticColorContentStandard", ["TextColor3"] = "$RDLSemanticColorContentStandard"}]
      247 CALL                             R18 2 1
      248 MOVE                             R19 R10
      249 LOADK                            R20 K117 [".Explorer-Content-Surface-Outline"]
      250 DUPTABLE                         R21 K120 [{["ImageColor3"] = "$RDLSemanticColorSurfaceOutline", ["ImageTransparency"] = "$RDLSemanticColorSurfaceOutlineTransparency"}]
      251 CALL                             R19 2 1
      252 MOVE                             R20 R10
      253 LOADK                            R21 K121 [".DEPRECATED_Explorer-Text-Size-14"]
      254 DUPTABLE                         R22 K123 [{"TextSize"}]
      255 MOVE                             R24 R5
      256 CALL                             R24 0 1
      257 JUMPIFNOT                        R24 ; [+2]
      258 LOADN                            R23 17
      259 JUMP                             ; [+1]
      260 LOADK                            R23 K124 [17.598]
      261 SETTABLEKS                       R23 R22 K122 ["TextSize"]
      263 CALL                             R20 2 1
      264 MOVE                             R21 R10
      265 LOADK                            R22 K125 [".Explorer-View"]
      266 DUPTABLE                         R23 K126 [{["BackgroundTransparency"] = 1, ["Size"]}]
      267 GETIMPORT                        R24 K68 [UDim2.fromScale]
      269 LOADN                            R25 1
      270 LOADN                            R26 1
      271 CALL                             R24 2 1
      272 SETTABLEKS                       R24 R23 K64 ["Size"]
      274 CALL                             R21 2 1
      275 MOVE                             R22 R10
      276 LOADK                            R23 K127 [".Explorer-ScrollingFrame"]
      277 DUPTABLE                         R24 K134 [{["BorderColor3"], ["BottomImage"], ["MidImage"], ["TopImage"], ["ScrollBarImageColor3"] = "$ExplorerScrollBar", ["ScrollBarImageTransparency"] = 0}]
      278 MOVE                             R26 R9
      279 CALL                             R26 0 1
      280 JUMPIFNOT                        R26 ; [+2]
      281 LOADK                            R25 K33 ["$RDLSemanticColorSurface100"]
      282 JUMP                             ; [+1]
      283 LOADK                            R25 K34 ["$LegacyMainBackground"]
      284 SETTABLEKS                       R25 R24 K54 ["BorderColor3"]
      286 GETTABLEKS                       R25 R3 K135 ["standard"]
      288 LOADK                            R26 K136 ["scrollBottom"]
      289 CALL                             R25 1 1
      290 SETTABLEKS                       R25 R24 K128 ["BottomImage"]
      292 GETTABLEKS                       R25 R3 K135 ["standard"]
      294 LOADK                            R26 K137 ["scrollMid"]
      295 CALL                             R25 1 1
      296 SETTABLEKS                       R25 R24 K129 ["MidImage"]
      298 GETTABLEKS                       R25 R3 K135 ["standard"]
      300 LOADK                            R26 K138 ["scrollTop"]
      301 CALL                             R25 1 1
      302 SETTABLEKS                       R25 R24 K130 ["TopImage"]
      304 CALL                             R22 2 1
      305 MOVE                             R23 R10
      306 LOADK                            R24 K139 [".Explorer-Square ::UIAspectRatioConstraint"]
      307 DUPTABLE                         R25 K141 [{["AspectRatio"] = 1}]
      308 CALL                             R23 2 1
      309 MOVE                             R24 R10
      310 LOADK                            R25 K142 [".Explorer-Icon"]
      311 DUPTABLE                         R26 K126 [{["BackgroundTransparency"] = 1, ["Size"]}]
      312 GETIMPORT                        R27 K144 [UDim2.fromOffset]
      314 LOADN                            R28 16
      315 LOADN                            R29 16
      316 CALL                             R27 2 1
      317 SETTABLEKS                       R27 R26 K64 ["Size"]
      319 CALL                             R24 2 1
      320 MOVE                             R25 R10
      321 LOADK                            R26 K145 [".Explorer-Radius-Small ::UICorner"]
      322 DUPTABLE                         R27 K147 [{"CornerRadius"}]
      323 GETIMPORT                        R28 K92 [UDim.new]
      325 LOADN                            R29 0
      326 LOADN                            R30 4
      327 CALL                             R28 2 1
      328 SETTABLEKS                       R28 R27 K146 ["CornerRadius"]
      330 CALL                             R25 2 1
      331 MOVE                             R26 R10
      332 LOADK                            R27 K148 [">> .DEPRECATED_Explorer-StandardText"]
      333 DUPTABLE                         R28 K150 [{["Font"], ["TextColor3"] = "$RDLSemanticColorContentStandard", ["TextSize"]}]
      334 GETTABLEKS                       R29 R1 K151 ["defaultFont"]
      336 SETTABLEKS                       R29 R28 K149 ["Font"]
      338 GETTABLEKS                       R29 R1 K152 ["standardTextSize"]
      340 SETTABLEKS                       R29 R28 K122 ["TextSize"]
      342 CALL                             R26 2 1
      343 MOVE                             R27 R10
      344 LOADK                            R28 K153 [".Explorer-Stroke-Standard"]
      345 DUPTABLE                         R29 K155 [{["BorderSizePixel"] = 0}]
      346 NEWTABLE                         R30 0 1
      348 MOVE                             R31 R10
      349 LOADK                            R32 K156 ["::UIStroke"]
      350 DUPTABLE                         R33 K158 [{["Thickness"] = 1}]
      351 CALL                             R31 2 -1
      352 SETLIST                          R30 R31 -1 [1]
      354 CALL                             R27 3 1
      355 MOVE                             R28 R10
      356 LOADK                            R29 K159 [".Explorer-Stroke-Thick"]
      357 DUPTABLE                         R30 K155 [{["BorderSizePixel"] = 0}]
      358 NEWTABLE                         R31 0 1
      360 MOVE                             R32 R10
      361 LOADK                            R33 K156 ["::UIStroke"]
      362 DUPTABLE                         R34 K161 [{["Thickness"] = 1.5}]
      363 CALL                             R32 2 -1
      364 SETLIST                          R31 R32 -1 [1]
      366 CALL                             R28 3 1
      367 MOVE                             R29 R10
      368 LOADK                            R30 K162 [".Explorer-Stroke-Emphasis ::UIStroke"]
      369 DUPTABLE                         R31 K167 [{["Color"] = "$RDLSemanticColorStrokeEmphasis", ["Transparency"] = "$RDLSemanticColorStrokeEmphasisTransparency"}]
      370 CALL                             R29 2 1
      371 MOVE                             R30 R10
      372 LOADK                            R31 K168 [".Explorer-Stroke-System-Emphasis ::UIStroke"]
      373 DUPTABLE                         R32 K169 [{["Color"] = "$RDLSemanticColorSystemEmphasis"}]
      374 CALL                             R30 2 1
      375 SETLIST                          R14 R15 16 [17]
      377 MOVE                             R16 R7
      378 CALL                             R16 0 1
      379 JUMPIFNOT                        R16 ; [+21]
      380 MOVE                             R15 R10
      381 LOADK                            R16 K170 [".Explorer-Selection-Background"]
      382 DUPTABLE                         R17 K171 [{["BackgroundTransparency"] = 1}]
      383 NEWTABLE                         R18 0 3
      385 MOVE                             R19 R10
      386 LOADK                            R20 K172 [".Explorer-HoveredKind-Hovered"]
      387 DUPTABLE                         R21 K52 [{["BackgroundColor3"] = "$RDLSemanticColorStatesHover", ["BackgroundTransparency"] = "$RDLSemanticColorStatesHoverTransparency"}]
      388 CALL                             R19 2 1
      389 MOVE                             R20 R10
      390 LOADK                            R21 K173 [".Explorer-SelectionKind-Selected"]
      391 DUPTABLE                         R22 K175 [{["BackgroundColor3"] = "$ExplorerSelected", ["BackgroundTransparency"] = 0}]
      392 CALL                             R20 2 1
      393 MOVE                             R21 R10
      394 LOADK                            R22 K176 [".Explorer-SelectionKind-ParentSelected"]
      395 DUPTABLE                         R23 K178 [{["BackgroundColor3"] = "$ExplorerSelected", ["BackgroundTransparency"] = 0.8}]
      396 CALL                             R21 2 -1
      397 SETLIST                          R18 R19 -1 [1]
      399 CALL                             R15 3 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R15
      402 MOVE                             R16 R10
      403 LOADK                            R17 K179 ["TextLabel"]
      404 DUPTABLE                         R18 K180 [{"Font", "TextSize"}]
      405 MOVE                             R20 R8
      406 CALL                             R20 0 1
      407 JUMPIFNOT                        R20 ; [+3]
      408 GETTABLEKS                       R19 R1 K151 ["defaultFont"]
      410 JUMP                             ; [+2]
      411 GETIMPORT                        R19 K182 [Enum.Font.SourceSans]
      413 SETTABLEKS                       R19 R18 K149 ["Font"]
      415 MOVE                             R20 R8
      416 CALL                             R20 0 1
      417 JUMPIFNOT                        R20 ; [+3]
      418 GETTABLEKS                       R19 R1 K152 ["standardTextSize"]
      420 JUMP                             ; [+1]
      421 LOADNIL                          R19
      422 SETTABLEKS                       R19 R18 K122 ["TextSize"]
      424 CALL                             R16 2 1
      425 MOVE                             R17 R10
      426 LOADK                            R18 K183 ["TextBox"]
      427 DUPTABLE                         R19 K180 [{"Font", "TextSize"}]
      428 MOVE                             R21 R8
      429 CALL                             R21 0 1
      430 JUMPIFNOT                        R21 ; [+3]
      431 GETTABLEKS                       R20 R1 K151 ["defaultFont"]
      433 JUMP                             ; [+1]
      434 LOADNIL                          R20
      435 SETTABLEKS                       R20 R19 K149 ["Font"]
      437 MOVE                             R21 R8
      438 CALL                             R21 0 1
      439 JUMPIFNOT                        R21 ; [+3]
      440 GETTABLEKS                       R20 R1 K152 ["standardTextSize"]
      442 JUMP                             ; [+1]
      443 LOADNIL                          R20
      444 SETTABLEKS                       R20 R19 K122 ["TextSize"]
      446 CALL                             R17 2 -1
      447 SETLIST                          R14 R15 -1 [33]
      449 NEWTABLE                         R15 0 0
      451 CALL                             R12 3 1
      452 SETTABLEKS                       R12 R11 K20 ["Base"]
      454 MOVE                             R13 R6
      455 CALL                             R13 0 1
      456 JUMPIFNOT                        R13 ; [+2]
      457 LOADNIL                          R12
      458 JUMP                             ; [+129]
      459 GETTABLEKS                       R12 R2 K18 ["Styling"]
      461 GETTABLEKS                       R12 R12 K24 ["createStyleSheet"]
      463 LOADK                            R13 K184 ["ExplorerDark"]
      464 NEWTABLE                         R14 0 0
      466 DUPTABLE                         R15 K214 [{["LegacyMainBackground"], ["ExplorerContentDefault"], ["ExplorerContentEmphasis"], ["ExplorerScrollBar"], ["ExplorerSelected"], ["RDLSemanticColorActionPrimaryBrandFill"], ["RDLSemanticColorActionSecondary"], ["RDLSemanticColorActionSecondaryTransparency"] = 0.88, ["RDLSemanticColorComponentInputFill"], ["RDLSemanticColorComponentInputFillTransparency"] = 0.88, ["RDLSemanticColorContentDefault"], ["RDLSemanticColorContentDisabled"], ["RDLSemanticColorContentEmphasis"], ["RDLSemanticColorContentMuted"], ["RDLSemanticColorContentStandard"], ["RDLSemanticColorShift300"], ["RDLSemanticColorShift300Transparency"] = 0.88, ["RDLSemanticColorStatesHover"], ["RDLSemanticColorStatesHoverTransparency"] = 0.92, ["RDLSemanticColorStrokeEmphasis"], ["RDLSemanticColorStrokeEmphasisTransparency"] = 0.84, ["RDLSemanticColorSurface0"], ["RDLSemanticColorSurface100"], ["RDLSemanticColorSurfaceOutline"], ["RDLSemanticColorSurfaceOutlineTransparency"] = 0.88, ["RDLSemanticColorSystemEmphasis"]}]
      467 GETIMPORT                        R16 K217 [Color3.fromHex]
      469 LOADK                            R17 K218 ["#2E2E2E"]
      470 CALL                             R16 1 1
      471 SETTABLEKS                       R16 R15 K185 ["LegacyMainBackground"]
      473 GETIMPORT                        R16 K217 [Color3.fromHex]
      475 LOADK                            R17 K219 ["#D5D7DD"]
      476 CALL                             R16 1 1
      477 SETTABLEKS                       R16 R15 K186 ["ExplorerContentDefault"]
      479 GETIMPORT                        R16 K217 [Color3.fromHex]
      481 LOADK                            R17 K220 ["#EEEFF1"]
      482 CALL                             R16 1 1
      483 SETTABLEKS                       R16 R15 K187 ["ExplorerContentEmphasis"]
      485 GETIMPORT                        R16 K217 [Color3.fromHex]
      487 LOADK                            R17 K221 ["#747476"]
      488 CALL                             R16 1 1
      489 SETTABLEKS                       R16 R15 K188 ["ExplorerScrollBar"]
      491 GETIMPORT                        R16 K217 [Color3.fromHex]
      493 LOADK                            R17 K222 ["#005CB5"]
      494 CALL                             R16 1 1
      495 SETTABLEKS                       R16 R15 K189 ["ExplorerSelected"]
      497 GETIMPORT                        R16 K217 [Color3.fromHex]
      499 LOADK                            R17 K223 ["#3C64FA"]
      500 CALL                             R16 1 1
      501 SETTABLEKS                       R16 R15 K190 ["RDLSemanticColorActionPrimaryBrandFill"]
      503 GETIMPORT                        R16 K217 [Color3.fromHex]
      505 LOADK                            R17 K224 ["#BBC2D1"]
      506 CALL                             R16 1 1
      507 SETTABLEKS                       R16 R15 K191 ["RDLSemanticColorActionSecondary"]
      509 GETIMPORT                        R16 K217 [Color3.fromHex]
      511 LOADK                            R17 K224 ["#BBC2D1"]
      512 CALL                             R16 1 1
      513 SETTABLEKS                       R16 R15 K194 ["RDLSemanticColorComponentInputFill"]
      515 GETIMPORT                        R16 K217 [Color3.fromHex]
      517 LOADK                            R17 K219 ["#D5D7DD"]
      518 CALL                             R16 1 1
      519 SETTABLEKS                       R16 R15 K196 ["RDLSemanticColorContentDefault"]
      521 GETIMPORT                        R16 K217 [Color3.fromHex]
      523 LOADK                            R17 K225 ["#696A6D"]
      524 CALL                             R16 1 1
      525 SETTABLEKS                       R16 R15 K197 ["RDLSemanticColorContentDisabled"]
      527 GETIMPORT                        R16 K217 [Color3.fromHex]
      529 LOADK                            R17 K220 ["#EEEFF1"]
      530 CALL                             R16 1 1
      531 SETTABLEKS                       R16 R15 K198 ["RDLSemanticColorContentEmphasis"]
      533 GETIMPORT                        R16 K217 [Color3.fromHex]
      535 LOADK                            R17 K226 ["#BBBCBE"]
      536 CALL                             R16 1 1
      537 SETTABLEKS                       R16 R15 K199 ["RDLSemanticColorContentMuted"]
      539 GETIMPORT                        R16 K217 [Color3.fromHex]
      541 LOADK                            R17 K227 ["#F9F9F9"]
      542 CALL                             R16 1 1
      543 SETTABLEKS                       R16 R15 K200 ["RDLSemanticColorContentStandard"]
      545 GETIMPORT                        R16 K217 [Color3.fromHex]
      547 LOADK                            R17 K228 ["#D0D9FB"]
      548 CALL                             R16 1 1
      549 SETTABLEKS                       R16 R15 K201 ["RDLSemanticColorShift300"]
      551 GETIMPORT                        R16 K217 [Color3.fromHex]
      553 LOADK                            R17 K224 ["#BBC2D1"]
      554 CALL                             R16 1 1
      555 SETTABLEKS                       R16 R15 K203 ["RDLSemanticColorStatesHover"]
      557 GETIMPORT                        R16 K217 [Color3.fromHex]
      559 LOADK                            R17 K228 ["#D0D9FB"]
      560 CALL                             R16 1 1
      561 SETTABLEKS                       R16 R15 K206 ["RDLSemanticColorStrokeEmphasis"]
      563 GETIMPORT                        R16 K217 [Color3.fromHex]
      565 LOADK                            R17 K229 ["#111216"]
      566 CALL                             R16 1 1
      567 SETTABLEKS                       R16 R15 K209 ["RDLSemanticColorSurface0"]
      569 GETIMPORT                        R16 K217 [Color3.fromHex]
      571 LOADK                            R17 K230 ["#1F2024"]
      572 CALL                             R16 1 1
      573 SETTABLEKS                       R16 R15 K210 ["RDLSemanticColorSurface100"]
      575 GETIMPORT                        R16 K217 [Color3.fromHex]
      577 LOADK                            R17 K231 ["#FFFFFF"]
      578 CALL                             R16 1 1
      579 SETTABLEKS                       R16 R15 K211 ["RDLSemanticColorSurfaceOutline"]
      581 GETIMPORT                        R16 K217 [Color3.fromHex]
      583 LOADK                            R17 K232 ["#335FFF"]
      584 CALL                             R16 1 1
      585 SETTABLEKS                       R16 R15 K213 ["RDLSemanticColorSystemEmphasis"]
      587 CALL                             R12 3 1
      588 SETTABLEKS                       R12 R11 K21 ["Dark"]
      590 MOVE                             R13 R6
      591 CALL                             R13 0 1
      592 JUMPIFNOT                        R13 ; [+2]
      593 LOADNIL                          R12
      594 JUMP                             ; [+129]
      595 GETTABLEKS                       R12 R2 K18 ["Styling"]
      597 GETTABLEKS                       R12 R12 K24 ["createStyleSheet"]
      599 LOADK                            R13 K233 ["ExplorerLight"]
      600 NEWTABLE                         R14 0 0
      602 DUPTABLE                         R15 K234 [{["LegacyMainBackground"], ["ExplorerContentDefault"], ["ExplorerContentEmphasis"], ["ExplorerScrollBar"], ["ExplorerSelected"], ["RDLSemanticColorActionPrimaryBrandFill"], ["RDLSemanticColorActionSecondary"], ["RDLSemanticColorActionSecondaryTransparency"] = 0.92, ["RDLSemanticColorComponentInputFill"], ["RDLSemanticColorComponentInputFillTransparency"] = 0.92, ["RDLSemanticColorContentDefault"], ["RDLSemanticColorContentDisabled"], ["RDLSemanticColorContentEmphasis"], ["RDLSemanticColorContentMuted"], ["RDLSemanticColorContentStandard"], ["RDLSemanticColorShift300"], ["RDLSemanticColorShift300Transparency"] = 0.88, ["RDLSemanticColorStatesHover"], ["RDLSemanticColorStatesHoverTransparency"] = 0.92, ["RDLSemanticColorStrokeEmphasis"], ["RDLSemanticColorStrokeEmphasisTransparency"] = 0.84, ["RDLSemanticColorSurface0"], ["RDLSemanticColorSurface100"], ["RDLSemanticColorSurfaceOutline"], ["RDLSemanticColorSurfaceOutlineTransparency"] = 0.88, ["RDLSemanticColorSystemEmphasis"]}]
      603 GETIMPORT                        R16 K217 [Color3.fromHex]
      605 LOADK                            R17 K231 ["#FFFFFF"]
      606 CALL                             R16 1 1
      607 SETTABLEKS                       R16 R15 K185 ["LegacyMainBackground"]
      609 GETIMPORT                        R16 K217 [Color3.fromHex]
      611 LOADK                            R17 K235 ["#000000"]
      612 CALL                             R16 1 1
      613 SETTABLEKS                       R16 R15 K186 ["ExplorerContentDefault"]
      615 GETIMPORT                        R16 K217 [Color3.fromHex]
      617 LOADK                            R17 K231 ["#FFFFFF"]
      618 CALL                             R16 1 1
      619 SETTABLEKS                       R16 R15 K187 ["ExplorerContentEmphasis"]
      621 GETIMPORT                        R16 K217 [Color3.fromHex]
      623 LOADK                            R17 K236 ["#949496"]
      624 CALL                             R16 1 1
      625 SETTABLEKS                       R16 R15 K188 ["ExplorerScrollBar"]
      627 GETIMPORT                        R16 K217 [Color3.fromHex]
      629 LOADK                            R17 K237 ["#5A95DF"]
      630 CALL                             R16 1 1
      631 SETTABLEKS                       R16 R15 K189 ["ExplorerSelected"]
      633 GETIMPORT                        R16 K217 [Color3.fromHex]
      635 LOADK                            R17 K223 ["#3C64FA"]
      636 CALL                             R16 1 1
      637 SETTABLEKS                       R16 R15 K190 ["RDLSemanticColorActionPrimaryBrandFill"]
      639 GETIMPORT                        R16 K217 [Color3.fromHex]
      641 LOADK                            R17 K238 ["#333B4C"]
      642 CALL                             R16 1 1
      643 SETTABLEKS                       R16 R15 K191 ["RDLSemanticColorActionSecondary"]
      645 GETIMPORT                        R16 K217 [Color3.fromHex]
      647 LOADK                            R17 K238 ["#333B4C"]
      648 CALL                             R16 1 1
      649 SETTABLEKS                       R16 R15 K194 ["RDLSemanticColorComponentInputFill"]
      651 GETIMPORT                        R16 K217 [Color3.fromHex]
      653 LOADK                            R17 K239 ["#494D5A"]
      654 CALL                             R16 1 1
      655 SETTABLEKS                       R16 R15 K196 ["RDLSemanticColorContentDefault"]
      657 GETIMPORT                        R16 K217 [Color3.fromHex]
      659 LOADK                            R17 K226 ["#BBBCBE"]
      660 CALL                             R16 1 1
      661 SETTABLEKS                       R16 R15 K197 ["RDLSemanticColorContentDisabled"]
      663 GETIMPORT                        R16 K217 [Color3.fromHex]
      665 LOADK                            R17 K240 ["#202227"]
      666 CALL                             R16 1 1
      667 SETTABLEKS                       R16 R15 K198 ["RDLSemanticColorContentEmphasis"]
      669 GETIMPORT                        R16 K217 [Color3.fromHex]
      671 LOADK                            R17 K225 ["#696A6D"]
      672 CALL                             R16 1 1
      673 SETTABLEKS                       R16 R15 K199 ["RDLSemanticColorContentMuted"]
      675 GETIMPORT                        R16 K217 [Color3.fromHex]
      677 LOADK                            R17 K229 ["#111216"]
      678 CALL                             R16 1 1
      679 SETTABLEKS                       R16 R15 K200 ["RDLSemanticColorContentStandard"]
      681 GETIMPORT                        R16 K217 [Color3.fromHex]
      683 LOADK                            R17 K241 ["#1B254B"]
      684 CALL                             R16 1 1
      685 SETTABLEKS                       R16 R15 K201 ["RDLSemanticColorShift300"]
      687 GETIMPORT                        R16 K217 [Color3.fromHex]
      689 LOADK                            R17 K238 ["#333B4C"]
      690 CALL                             R16 1 1
      691 SETTABLEKS                       R16 R15 K203 ["RDLSemanticColorStatesHover"]
      693 GETIMPORT                        R16 K217 [Color3.fromHex]
      695 LOADK                            R17 K241 ["#1B254B"]
      696 CALL                             R16 1 1
      697 SETTABLEKS                       R16 R15 K206 ["RDLSemanticColorStrokeEmphasis"]
      699 GETIMPORT                        R16 K217 [Color3.fromHex]
      701 LOADK                            R17 K242 ["#F2F2F3"]
      702 CALL                             R16 1 1
      703 SETTABLEKS                       R16 R15 K209 ["RDLSemanticColorSurface0"]
      705 GETIMPORT                        R16 K217 [Color3.fromHex]
      707 LOADK                            R17 K231 ["#FFFFFF"]
      708 CALL                             R16 1 1
      709 SETTABLEKS                       R16 R15 K210 ["RDLSemanticColorSurface100"]
      711 GETIMPORT                        R16 K217 [Color3.fromHex]
      713 LOADK                            R17 K235 ["#000000"]
      714 CALL                             R16 1 1
      715 SETTABLEKS                       R16 R15 K211 ["RDLSemanticColorSurfaceOutline"]
      717 GETIMPORT                        R16 K217 [Color3.fromHex]
      719 LOADK                            R17 K232 ["#335FFF"]
      720 CALL                             R16 1 1
      721 SETTABLEKS                       R16 R15 K213 ["RDLSemanticColorSystemEmphasis"]
      723 CALL                             R12 3 1
      724 SETTABLEKS                       R12 R11 K22 ["Light"]
      726 RETURN                           R11 1
