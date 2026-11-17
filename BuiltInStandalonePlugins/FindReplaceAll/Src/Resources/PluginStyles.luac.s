MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R1 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 45
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 ["ImageButton"]
       35 DUPTABLE                         R8 K16 [{"Size"}]
       36 GETIMPORT                        R9 K19 [UDim2.fromOffset]
       38 LOADN                            R10 28
       39 LOADN                            R11 28
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 NEWTABLE                         R9 0 7
       45 MOVE                             R10 R3
       46 LOADK                            R11 K20 [".ClearTextIcon"]
       47 DUPTABLE                         R12 K23 [{["Image"] = "$ClearText"}]
       48 CALL                             R10 2 1
       49 MOVE                             R11 R3
       50 LOADK                            R12 K24 [">ImageLabel .MatchCaseIcon"]
       51 DUPTABLE                         R13 K26 [{["Image"] = "$MatchCase"}]
       52 CALL                             R11 2 1
       53 MOVE                             R12 R3
       54 LOADK                            R13 K27 [">ImageLabel .MatchWholeWordIcon"]
       55 DUPTABLE                         R14 K29 [{["Image"] = "$MatchWholeWord"}]
       56 CALL                             R12 2 1
       57 MOVE                             R13 R3
       58 LOADK                            R14 K30 [">ImageLabel .RegularExpressionIcon"]
       59 DUPTABLE                         R15 K32 [{["Image"] = "$RegularExpression"}]
       60 CALL                             R13 2 1
       61 MOVE                             R14 R3
       62 LOADK                            R15 K33 [">ImageLabel .FindPreviousIcon"]
       63 DUPTABLE                         R16 K35 [{["Image"] = "$ArrowUp"}]
       64 CALL                             R14 2 1
       65 MOVE                             R15 R3
       66 LOADK                            R16 K36 [">ImageLabel .FindNextIcon"]
       67 DUPTABLE                         R17 K38 [{["Image"] = "$ArrowDown"}]
       68 CALL                             R15 2 1
       69 MOVE                             R16 R3
       70 LOADK                            R17 K39 [">ImageLabel .ThreeDotsIcon"]
       71 DUPTABLE                         R18 K41 [{["Image"] = "$ThreeDots"}]
       72 CALL                             R16 2 -1
       73 SETLIST                          R9 R10 -1 [1]
       75 CALL                             R6 3 1
       76 MOVE                             R7 R3
       77 LOADK                            R8 K42 ["ImageLabel"]
       78 NEWTABLE                         R9 0 0
       80 NEWTABLE                         R10 0 3
       82 MOVE                             R11 R3
       83 LOADK                            R12 K43 [".CheckboxOffIcon"]
       84 DUPTABLE                         R13 K45 [{["Image"] = "$CheckboxOff"}]
       85 CALL                             R11 2 1
       86 MOVE                             R12 R3
       87 LOADK                            R13 K46 [".CheckboxOnIcon"]
       88 DUPTABLE                         R14 K48 [{["Image"] = "$CheckboxOn"}]
       89 CALL                             R12 2 1
       90 MOVE                             R13 R3
       91 LOADK                            R14 K49 [".FindBarSearchIcon"]
       92 DUPTABLE                         R15 K51 [{["Image"] = "$FindBarSearchIcon"}]
       93 CALL                             R13 2 -1
       94 SETLIST                          R10 R11 -1 [1]
       96 CALL                             R7 3 1
       97 MOVE                             R8 R3
       98 LOADK                            R9 K52 [".FindReplaceAll-ResultRowNode-Pill"]
       99 DUPTABLE                         R10 K59 [{["BackgroundColor3"] = "$SemanticColorShift300", ["BackgroundTransparency"] = "$SemanticColorShift300Transparency", ["TextColor3"] = "$SemanticColorContentEmphasis"}]
      100 NEWTABLE                         R11 0 1
      102 MOVE                             R12 R3
      103 LOADK                            R13 K60 ["::UICorner"]
      104 DUPTABLE                         R14 K62 [{"CornerRadius"}]
      105 GETIMPORT                        R15 K65 [UDim.new]
      107 LOADN                            R16 1
      108 LOADN                            R17 0
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K61 ["CornerRadius"]
      112 CALL                             R12 2 -1
      113 SETLIST                          R11 R12 -1 [1]
      115 CALL                             R8 3 1
      116 MOVE                             R9 R3
      117 LOADK                            R10 K66 [".FindReplaceAll-ResultRowNode"]
      118 DUPTABLE                         R11 K74 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AutoButtonColor"] = False, ["Text"] = ""}]
      119 CALL                             R9 2 1
      120 MOVE                             R10 R3
      121 LOADK                            R11 K75 [".FindReplaceAll-ScrollingFrame"]
      122 DUPTABLE                         R12 K86 [{["BottomImage"] = "$BottomImage", ["MidImage"] = "$MidImage", ["TopImage"] = "$TopImage", ["ScrollBarImageColor3"] = "$ColorActionStandardBackground", ["ScrollBarImageTransparency"] = "$ColorActionStandardBackgroundTransparency"}]
      123 CALL                             R10 2 1
      124 MOVE                             R11 R3
      125 LOADK                            R12 K87 [".FindReplaceAll-Content-Default"]
      126 DUPTABLE                         R13 K90 [{["ImageColor3"] = "$SemanticColorContentDefault", ["TextColor3"] = "$SemanticColorContentDefault"}]
      127 CALL                             R11 2 1
      128 MOVE                             R12 R3
      129 LOADK                            R13 K91 [".FindReplaceAll-Content-Emphasis"]
      130 DUPTABLE                         R14 K92 [{["ImageColor3"] = "$SemanticColorContentEmphasis", ["TextColor3"] = "$SemanticColorContentEmphasis"}]
      131 CALL                             R12 2 1
      132 MOVE                             R13 R3
      133 LOADK                            R14 K93 [".FindReplaceAll-Hovered"]
      134 DUPTABLE                         R15 K96 [{["BackgroundColor3"] = "$SemanticColorStatesHover", ["BackgroundTransparency"] = "$SemanticColorStatesHoverTransparency"}]
      135 CALL                             R13 2 1
      136 MOVE                             R14 R3
      137 LOADK                            R15 K97 [".FindReplaceAll-Selected"]
      138 DUPTABLE                         R16 K100 [{["BackgroundColor3"] = "$SemanticColorActionPrimaryBrandFill", ["BackgroundTransparency"] = 0.76}]
      139 CALL                             R14 2 1
      140 MOVE                             R15 R3
      141 LOADK                            R16 K101 [".FindReplaceAll-NotSelected"]
      142 DUPTABLE                         R17 K102 [{["BackgroundTransparency"] = 1}]
      143 CALL                             R15 2 1
      144 MOVE                             R16 R3
      145 LOADK                            R17 K103 [".FindReplaceAll-BG-Surface0"]
      146 DUPTABLE                         R18 K105 [{["BackgroundColor3"] = "$SemanticColorSurface0", ["BackgroundTransparency"] = 0}]
      147 CALL                             R16 2 1
      148 MOVE                             R17 R3
      149 LOADK                            R18 K106 [".FindReplaceAll-BG-Surface100"]
      150 DUPTABLE                         R19 K108 [{["BackgroundColor3"] = "$SemanticColorSurface100", ["BackgroundTransparency"] = 0}]
      151 CALL                             R17 2 1
      152 MOVE                             R18 R3
      153 LOADK                            R19 K109 [".FindReplaceAll-BG-Shift300"]
      154 DUPTABLE                         R20 K110 [{["BackgroundColor3"] = "$SemanticColorShift300", ["BackgroundTransparency"] = "$SemanticColorShift300Transparency"}]
      155 CALL                             R18 2 1
      156 MOVE                             R19 R3
      157 LOADK                            R20 K111 [".FindReplaceAll-BG-Input"]
      158 DUPTABLE                         R21 K114 [{["BackgroundColor3"] = "$SemanticColorComponentInputFill", ["BackgroundTransparency"] = "$SemanticColorComponentInputFillTransparency"}]
      159 CALL                             R19 2 1
      160 MOVE                             R20 R3
      161 LOADK                            R21 K115 [".FindReplaceAll-Button"]
      162 DUPTABLE                         R22 K116 [{["AutoButtonColor"] = False, ["BackgroundTransparency"] = 1, ["Text"] = ""}]
      163 CALL                             R20 2 1
      164 MOVE                             R21 R3
      165 LOADK                            R22 K117 [".FindReplaceAll-GrowX"]
      166 DUPTABLE                         R23 K16 [{"Size"}]
      167 GETIMPORT                        R24 K119 [UDim2.fromScale]
      169 LOADN                            R25 0
      170 LOADN                            R26 1
      171 CALL                             R24 2 1
      172 SETTABLEKS                       R24 R23 K15 ["Size"]
      174 NEWTABLE                         R24 0 1
      176 MOVE                             R25 R3
      177 LOADK                            R26 K120 ["::UIFlexItem"]
      178 DUPTABLE                         R27 K122 [{"FlexMode"}]
      179 GETIMPORT                        R28 K126 [Enum.UIFlexMode.Grow]
      181 SETTABLEKS                       R28 R27 K121 ["FlexMode"]
      183 CALL                             R25 2 -1
      184 SETLIST                          R24 R25 -1 [1]
      186 CALL                             R21 3 1
      187 SETLIST                          R5 R6 16 [1]
      189 MOVE                             R6 R3
      190 LOADK                            R7 K127 [".FindReplaceAll-ShrinkX"]
      191 DUPTABLE                         R8 K129 [{"AutomaticSize"}]
      192 GETIMPORT                        R9 K131 [Enum.AutomaticSize.X]
      194 SETTABLEKS                       R9 R8 K128 ["AutomaticSize"]
      196 NEWTABLE                         R9 0 1
      198 MOVE                             R10 R3
      199 LOADK                            R11 K120 ["::UIFlexItem"]
      200 DUPTABLE                         R12 K122 [{"FlexMode"}]
      201 GETIMPORT                        R13 K133 [Enum.UIFlexMode.Shrink]
      203 SETTABLEKS                       R13 R12 K121 ["FlexMode"]
      205 CALL                             R10 2 -1
      206 SETLIST                          R9 R10 -1 [1]
      208 CALL                             R6 3 1
      209 MOVE                             R7 R3
      210 LOADK                            R8 K134 [".FindReplaceAll-FillX"]
      211 DUPTABLE                         R9 K16 [{"Size"}]
      212 GETIMPORT                        R10 K119 [UDim2.fromScale]
      214 LOADN                            R11 1
      215 LOADN                            R12 1
      216 CALL                             R10 2 1
      217 SETTABLEKS                       R10 R9 K15 ["Size"]
      219 NEWTABLE                         R10 0 1
      221 MOVE                             R11 R3
      222 LOADK                            R12 K120 ["::UIFlexItem"]
      223 DUPTABLE                         R13 K122 [{"FlexMode"}]
      224 GETIMPORT                        R14 K136 [Enum.UIFlexMode.Fill]
      226 SETTABLEKS                       R14 R13 K121 ["FlexMode"]
      228 CALL                             R11 2 -1
      229 SETLIST                          R10 R11 -1 [1]
      231 CALL                             R7 3 1
      232 MOVE                             R8 R3
      233 LOADK                            R9 K137 [".FindReplaceAll-SidePadS ::UIPadding"]
      234 DUPTABLE                         R10 K140 [{"PaddingLeft", "PaddingRight"}]
      235 GETIMPORT                        R11 K65 [UDim.new]
      237 LOADN                            R12 0
      238 LOADN                            R13 4
      239 CALL                             R11 2 1
      240 SETTABLEKS                       R11 R10 K138 ["PaddingLeft"]
      242 GETIMPORT                        R11 K65 [UDim.new]
      244 LOADN                            R12 0
      245 LOADN                            R13 4
      246 CALL                             R11 2 1
      247 SETTABLEKS                       R11 R10 K139 ["PaddingRight"]
      249 CALL                             R8 2 1
      250 MOVE                             R9 R3
      251 LOADK                            R10 K141 [".FindReplaceAll-SidePadM ::UIPadding"]
      252 DUPTABLE                         R11 K140 [{"PaddingLeft", "PaddingRight"}]
      253 GETIMPORT                        R12 K65 [UDim.new]
      255 LOADN                            R13 0
      256 LOADN                            R14 8
      257 CALL                             R12 2 1
      258 SETTABLEKS                       R12 R11 K138 ["PaddingLeft"]
      260 GETIMPORT                        R12 K65 [UDim.new]
      262 LOADN                            R13 0
      263 LOADN                            R14 8
      264 CALL                             R12 2 1
      265 SETTABLEKS                       R12 R11 K139 ["PaddingRight"]
      267 CALL                             R9 2 1
      268 MOVE                             R10 R3
      269 LOADK                            R11 K142 [".FindReplaceAll-XColumnS"]
      270 NEWTABLE                         R12 0 0
      272 NEWTABLE                         R13 0 1
      274 MOVE                             R14 R3
      275 LOADK                            R15 K143 ["::UIListLayout"]
      276 DUPTABLE                         R16 K147 [{"FillDirection", "Padding", "SortOrder"}]
      277 GETIMPORT                        R17 K149 [Enum.FillDirection.Vertical]
      279 SETTABLEKS                       R17 R16 K144 ["FillDirection"]
      281 GETIMPORT                        R17 K65 [UDim.new]
      283 LOADN                            R18 0
      284 LOADN                            R19 4
      285 CALL                             R17 2 1
      286 SETTABLEKS                       R17 R16 K145 ["Padding"]
      288 GETIMPORT                        R17 K151 [Enum.SortOrder.LayoutOrder]
      290 SETTABLEKS                       R17 R16 K146 ["SortOrder"]
      292 CALL                             R14 2 -1
      293 SETLIST                          R13 R14 -1 [1]
      295 CALL                             R10 3 1
      296 MOVE                             R11 R3
      297 LOADK                            R12 K152 [".FindReplaceAll-TopPadM ::UIPadding"]
      298 DUPTABLE                         R13 K154 [{"PaddingTop"}]
      299 GETIMPORT                        R14 K65 [UDim.new]
      301 LOADN                            R15 0
      302 LOADN                            R16 8
      303 CALL                             R14 2 1
      304 SETTABLEKS                       R14 R13 K153 ["PaddingTop"]
      306 CALL                             R11 2 1
      307 MOVE                             R12 R3
      308 LOADK                            R13 K155 [".FindReplaceAll-XPad ::UIPadding"]
      309 DUPTABLE                         R14 K157 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      310 GETIMPORT                        R15 K65 [UDim.new]
      312 LOADN                            R16 0
      313 LOADN                            R17 8
      314 CALL                             R15 2 1
      315 SETTABLEKS                       R15 R14 K138 ["PaddingLeft"]
      317 GETIMPORT                        R15 K65 [UDim.new]
      319 LOADN                            R16 0
      320 LOADN                            R17 8
      321 CALL                             R15 2 1
      322 SETTABLEKS                       R15 R14 K139 ["PaddingRight"]
      324 GETIMPORT                        R15 K65 [UDim.new]
      326 LOADN                            R16 0
      327 LOADN                            R17 8
      328 CALL                             R15 2 1
      329 SETTABLEKS                       R15 R14 K153 ["PaddingTop"]
      331 GETIMPORT                        R15 K65 [UDim.new]
      333 LOADN                            R16 0
      334 LOADN                            R17 8
      335 CALL                             R15 2 1
      336 SETTABLEKS                       R15 R14 K156 ["PaddingBottom"]
      338 CALL                             R12 2 1
      339 MOVE                             R13 R3
      340 LOADK                            R14 K158 [".FindReplaceAll-PadRight ::UIPadding"]
      341 DUPTABLE                         R15 K159 [{"PaddingRight"}]
      342 GETIMPORT                        R16 K65 [UDim.new]
      344 LOADN                            R17 0
      345 LOADN                            R18 8
      346 CALL                             R16 2 1
      347 SETTABLEKS                       R16 R15 K139 ["PaddingRight"]
      349 CALL                             R13 2 1
      350 MOVE                             R14 R3
      351 LOADK                            R15 K160 [".FindReplaceAll-PadLeftS ::UIPadding"]
      352 DUPTABLE                         R16 K161 [{"PaddingLeft"}]
      353 GETIMPORT                        R17 K65 [UDim.new]
      355 LOADN                            R18 0
      356 LOADN                            R19 6
      357 CALL                             R17 2 1
      358 SETTABLEKS                       R17 R16 K138 ["PaddingLeft"]
      360 CALL                             R14 2 1
      361 MOVE                             R15 R3
      362 LOADK                            R16 K162 [".FindReplaceAll-Content-Disabled"]
      363 DUPTABLE                         R17 K164 [{["TextColor3"] = "$SemanticColorContentDisabled"}]
      364 CALL                             R15 2 1
      365 MOVE                             R16 R3
      366 LOADK                            R17 K165 [".FindReplaceAll-Content-Muted"]
      367 DUPTABLE                         R18 K167 [{["ImageColor3"] = "$SemanticColorContentMuted", ["TextColor3"] = "$SemanticColorContentMuted"}]
      368 CALL                             R16 2 1
      369 MOVE                             R17 R3
      370 LOADK                            R18 K168 [".FindReplaceAll-Content-PrimaryBrandFill"]
      371 DUPTABLE                         R19 K169 [{["ImageColor3"] = "$SemanticColorActionPrimaryBrandFill", ["TextColor3"] = "$SemanticColorActionPrimaryBrandFill"}]
      372 CALL                             R17 2 1
      373 MOVE                             R18 R3
      374 LOADK                            R19 K170 [".FindReplaceAll-Content-Standard"]
      375 DUPTABLE                         R20 K172 [{["ImageColor3"] = "$SemanticColorContentStandard"}]
      376 CALL                             R18 2 1
      377 MOVE                             R19 R3
      378 LOADK                            R20 K173 [".FindReplaceAll-Content-Surface-Outline"]
      379 DUPTABLE                         R21 K177 [{["ImageColor3"] = "$SemanticColorSurfaceOutline", ["ImageTransparency"] = "$SemanticColorSurfaceOutlineTransparency"}]
      380 CALL                             R19 2 1
      381 MOVE                             R20 R3
      382 LOADK                            R21 K178 [".FindReplaceAll-Content-Surface-Outline-No-Transparency"]
      383 DUPTABLE                         R22 K179 [{["ImageColor3"] = "$SemanticColorSurfaceOutline"}]
      384 CALL                             R20 2 1
      385 MOVE                             R21 R3
      386 LOADK                            R22 K180 [".FindReplaceAll-Text-Size-12"]
      387 DUPTABLE                         R23 K182 [{"TextSize"}]
      388 LOADN                            R25 12
      389 GETTABLEKS                       R26 R2 K183 ["defaultFontScale"]
      391 MUL                              R24 R25 R26
      392 SETTABLEKS                       R24 R23 K181 ["TextSize"]
      394 CALL                             R21 2 1
      395 SETLIST                          R5 R6 16 [17]
      397 MOVE                             R6 R3
      398 LOADK                            R7 K184 [".FindReplaceAll-Text-Size-14"]
      399 DUPTABLE                         R8 K182 [{"TextSize"}]
      400 LOADN                            R10 14
      401 GETTABLEKS                       R11 R2 K183 ["defaultFontScale"]
      403 MUL                              R9 R10 R11
      404 SETTABLEKS                       R9 R8 K181 ["TextSize"]
      406 CALL                             R6 2 1
      407 MOVE                             R7 R3
      408 LOADK                            R8 K185 [".FindReplaceAll-Text-Size-20"]
      409 DUPTABLE                         R9 K182 [{"TextSize"}]
      410 LOADN                            R11 20
      411 GETTABLEKS                       R12 R2 K183 ["defaultFontScale"]
      413 MUL                              R10 R11 R12
      414 SETTABLEKS                       R10 R9 K181 ["TextSize"]
      416 CALL                             R7 2 1
      417 MOVE                             R8 R3
      418 LOADK                            R9 K186 [".FindReplaceAll-View"]
      419 DUPTABLE                         R10 K187 [{["BackgroundTransparency"] = 1, ["Size"]}]
      420 GETIMPORT                        R11 K119 [UDim2.fromScale]
      422 LOADN                            R12 1
      423 LOADN                            R13 1
      424 CALL                             R11 2 1
      425 SETTABLEKS                       R11 R10 K15 ["Size"]
      427 CALL                             R8 2 1
      428 MOVE                             R9 R3
      429 LOADK                            R10 K188 [".FindReplaceAll-X-RowS"]
      430 NEWTABLE                         R11 0 0
      432 NEWTABLE                         R12 0 1
      434 MOVE                             R13 R3
      435 LOADK                            R14 K143 ["::UIListLayout"]
      436 DUPTABLE                         R15 K147 [{"FillDirection", "Padding", "SortOrder"}]
      437 GETIMPORT                        R16 K190 [Enum.FillDirection.Horizontal]
      439 SETTABLEKS                       R16 R15 K144 ["FillDirection"]
      441 GETIMPORT                        R16 K65 [UDim.new]
      443 LOADN                            R17 0
      444 LOADN                            R18 5
      445 CALL                             R16 2 1
      446 SETTABLEKS                       R16 R15 K145 ["Padding"]
      448 GETIMPORT                        R16 K151 [Enum.SortOrder.LayoutOrder]
      450 SETTABLEKS                       R16 R15 K146 ["SortOrder"]
      452 CALL                             R13 2 -1
      453 SETLIST                          R12 R13 -1 [1]
      455 CALL                             R9 3 1
      456 MOVE                             R10 R3
      457 LOADK                            R11 K191 [".FindReplaceAll-SessionView-ScrollingFrame"]
      458 DUPTABLE                         R12 K194 [{["ScrollBarImageColor3"] = "$SemanticColorActionSecondary", ["ScrollBarImageTransparency"] = "$SemanticColorActionSecondaryTransparency"}]
      459 CALL                             R10 2 1
      460 MOVE                             R11 R3
      461 LOADK                            R12 K195 [".FindReplaceAll-Square ::UIAspectRatioConstraint"]
      462 DUPTABLE                         R13 K197 [{["AspectRatio"] = 1}]
      463 CALL                             R11 2 1
      464 MOVE                             R12 R3
      465 LOADK                            R13 K198 [".FindReplaceAll-Icon"]
      466 DUPTABLE                         R14 K187 [{["BackgroundTransparency"] = 1, ["Size"]}]
      467 GETIMPORT                        R15 K19 [UDim2.fromOffset]
      469 LOADN                            R16 16
      470 LOADN                            R17 16
      471 CALL                             R15 2 1
      472 SETTABLEKS                       R15 R14 K15 ["Size"]
      474 CALL                             R12 2 1
      475 MOVE                             R13 R3
      476 LOADK                            R14 K199 [".FindReplaceAll-ToggleButton"]
      477 DUPTABLE                         R15 K187 [{["BackgroundTransparency"] = 1, ["Size"]}]
      478 GETIMPORT                        R16 K19 [UDim2.fromOffset]
      480 LOADN                            R17 24
      481 LOADN                            R18 24
      482 CALL                             R16 2 1
      483 SETTABLEKS                       R16 R15 K15 ["Size"]
      485 NEWTABLE                         R16 0 1
      487 MOVE                             R17 R3
      488 LOADK                            R18 K200 [":: UICorner"]
      489 DUPTABLE                         R19 K62 [{"CornerRadius"}]
      490 GETIMPORT                        R20 K65 [UDim.new]
      492 LOADN                            R21 0
      493 LOADN                            R22 5
      494 CALL                             R20 2 1
      495 SETTABLEKS                       R20 R19 K61 ["CornerRadius"]
      497 CALL                             R17 2 -1
      498 SETLIST                          R16 R17 -1 [1]
      500 CALL                             R13 3 1
      501 MOVE                             R14 R3
      502 LOADK                            R15 K201 [".FindReplaceAll-Rectangle ::UIAspectRatioConstraint"]
      503 DUPTABLE                         R16 K203 [{["AspectRatio"] = 2}]
      504 CALL                             R14 2 1
      505 MOVE                             R15 R3
      506 LOADK                            R16 K204 [">> .FindReplaceAll-StandardText"]
      507 DUPTABLE                         R17 K206 [{["Font"], ["TextColor3"] = "$SemanticColorContentStandard", ["TextSize"]}]
      508 GETTABLEKS                       R18 R2 K207 ["defaultFont"]
      510 SETTABLEKS                       R18 R17 K205 ["Font"]
      512 LOADN                            R19 12
      513 GETTABLEKS                       R20 R2 K183 ["defaultFontScale"]
      515 MUL                              R18 R19 R20
      516 SETTABLEKS                       R18 R17 K181 ["TextSize"]
      518 CALL                             R15 2 1
      519 MOVE                             R16 R3
      520 LOADK                            R17 K208 ["TextLabel"]
      521 DUPTABLE                         R18 K209 [{"Font"}]
      522 GETTABLEKS                       R19 R2 K207 ["defaultFont"]
      524 SETTABLEKS                       R19 R18 K205 ["Font"]
      526 CALL                             R16 2 1
      527 MOVE                             R17 R3
      528 LOADK                            R18 K210 ["TextButton"]
      529 DUPTABLE                         R19 K209 [{"Font"}]
      530 GETTABLEKS                       R20 R2 K207 ["defaultFont"]
      532 SETTABLEKS                       R20 R19 K205 ["Font"]
      534 CALL                             R17 2 1
      535 MOVE                             R18 R3
      536 LOADK                            R19 K211 [".FindReplaceAll-UIStroke"]
      537 DUPTABLE                         R20 K215 [{["Color"] = "$SemanticColorShift300", ["Transparency"] = "$SemanticColorShift300Transparency", ["Thickness"] = 1, ["BorderSizePixel"] = 0}]
      538 CALL                             R18 2 -1
      539 SETLIST                          R5 R6 -1 [33]
      541 NEWTABLE                         R6 0 0
      543 MOVE                             R7 R4
      544 LOADK                            R8 K216 ["FindReplaceAllPlugin"]
      545 MOVE                             R9 R5
      546 MOVE                             R10 R6
      547 CALL                             R7 3 -1
      548 RETURN                           R7 -1
