PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GroupRowHeight"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ControlsHeaderRowPadding"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["ControlsHeaderButtonWidth"]
        9 GETUPVAL                         R5 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K4 ["ScrollingFrame"]
       13 GETTABLE                         R4 R5 R6
       14 GETTABLEKS                       R3 R4 K3 ["ScrollBarThickness"]
       16 NEWTABLE                         R4 32 0
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K5 ["Pane"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K6 ["join"]
       24 GETUPVAL                         R8 1
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R9 R9 K5 ["Pane"]
       28 GETTABLE                         R7 R8 R9
       29 NEWTABLE                         R8 4 0
       31 GETUPVAL                         R11 1
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R12 R12 K5 ["Pane"]
       35 GETTABLE                         R10 R11 R12
       36 GETTABLEKS                       R9 R10 K7 ["&Box"]
       38 SETTABLEKS                       R9 R8 K8 ["&BorderBox"]
       40 GETUPVAL                         R11 1
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R12 R12 K5 ["Pane"]
       44 GETTABLE                         R10 R11 R12
       45 GETTABLEKS                       R9 R10 K8 ["&BorderBox"]
       47 SETTABLEKS                       R9 R8 K9 ["&WorldPanel"]
       49 NEWTABLE                         R9 8 0
       51 DUPTABLE                         R10 K11 [{"Color"}]
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K12 ["SubBackground"]
       55 SETTABLEKS                       R11 R10 K10 ["Color"]
       57 SETTABLEKS                       R10 R9 K13 ["Border"]
       59 GETUPVAL                         R10 4
       60 GETTABLEKS                       R10 R10 K14 ["ForegroundMain"]
       62 SETTABLEKS                       R10 R9 K15 ["Background"]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K16 ["Pressed"]
       67 DUPTABLE                         R11 K17 [{"Background"}]
       68 GETUPVAL                         R12 4
       69 GETTABLEKS                       R12 R12 K14 ["ForegroundMain"]
       71 SETTABLEKS                       R12 R11 K15 ["Background"]
       73 SETTABLE                         R11 R9 R10
       74 GETUPVAL                         R10 5
       75 GETTABLEKS                       R10 R10 K18 ["Hover"]
       77 DUPTABLE                         R11 K17 [{"Background"}]
       78 GETUPVAL                         R12 4
       79 GETTABLEKS                       R12 R12 K19 ["ButtonHover"]
       81 SETTABLEKS                       R12 R11 K15 ["Background"]
       83 SETTABLE                         R11 R9 R10
       84 GETUPVAL                         R10 5
       85 GETTABLEKS                       R10 R10 K20 ["Selected"]
       87 DUPTABLE                         R11 K17 [{"Background"}]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K21 ["ActionFocusBorder"]
       91 SETTABLEKS                       R12 R11 K15 ["Background"]
       93 SETTABLE                         R11 R9 R10
       94 SETTABLEKS                       R9 R8 K22 ["&GroupLabel"]
       96 CALL                             R6 2 1
       97 SETTABLE                         R6 R4 R5
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R5 R5 K23 ["TextLabel"]
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K6 ["join"]
      104 GETUPVAL                         R8 1
      105 GETUPVAL                         R9 2
      106 GETTABLEKS                       R9 R9 K23 ["TextLabel"]
      108 GETTABLE                         R7 R8 R9
      109 NEWTABLE                         R8 1 0
      111 NEWTABLE                         R9 2 0
      113 LOADN                            R10 14
      114 SETTABLEKS                       R10 R9 K24 ["TextSize"]
      116 GETUPVAL                         R10 5
      117 GETTABLEKS                       R10 R10 K20 ["Selected"]
      119 DUPTABLE                         R11 K26 [{"TextColor"}]
      120 GETUPVAL                         R13 6
      121 GETTABLEKS                       R13 R13 K27 ["White"]
      123 LOADN                            R14 0
      124 GETTABLE                         R12 R13 R14
      125 SETTABLEKS                       R12 R11 K25 ["TextColor"]
      127 SETTABLE                         R11 R9 R10
      128 SETTABLEKS                       R9 R8 K22 ["&GroupLabel"]
      130 CALL                             R6 2 1
      131 SETTABLE                         R6 R4 R5
      132 GETUPVAL                         R5 2
      133 GETTABLEKS                       R5 R5 K28 ["Button"]
      135 GETUPVAL                         R6 3
      136 GETTABLEKS                       R6 R6 K6 ["join"]
      138 GETUPVAL                         R8 1
      139 GETUPVAL                         R9 2
      140 GETTABLEKS                       R9 R9 K28 ["Button"]
      142 GETTABLE                         R7 R8 R9
      143 DUPTABLE                         R8 K31 [{["TextWrapped"] = True}]
      144 CALL                             R6 2 1
      145 SETTABLE                         R6 R4 R5
      146 GETUPVAL                         R5 2
      147 GETTABLEKS                       R5 R5 K32 ["Table"]
      149 DUPTABLE                         R6 K33 [{"Border"}]
      150 GETUPVAL                         R7 4
      151 GETTABLEKS                       R7 R7 K34 ["MainBackground"]
      153 SETTABLEKS                       R7 R6 K13 ["Border"]
      155 SETTABLE                         R6 R4 R5
      156 GETUPVAL                         R5 2
      157 GETTABLEKS                       R5 R5 K35 ["GroupButton"]
      159 NEWTABLE                         R6 8 0
      161 GETIMPORT                        R7 K38 [UDim2.fromOffset]
      163 LOADN                            R8 32
      164 LOADN                            R9 32
      165 CALL                             R7 2 1
      166 SETTABLEKS                       R7 R6 K39 ["Size"]
      168 GETIMPORT                        R7 K38 [UDim2.fromOffset]
      170 LOADN                            R8 26
      171 LOADN                            R9 26
      172 CALL                             R7 2 1
      173 SETTABLEKS                       R7 R6 K40 ["ImageSize"]
      175 LOADN                            R7 6
      176 SETTABLEKS                       R7 R6 K41 ["Padding"]
      178 DUPTABLE                         R7 K46 [{["Image"] = "rbxasset://textures/CollisionGroupsEditor/rename.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/rename-hover.png"}]
      179 SETTABLEKS                       R7 R6 K47 ["&Rename"]
      181 DUPTABLE                         R7 K51 [{["Padding"] = 10, ["ImageSize"], ["Image"] = "rbxasset://textures/CollisionGroupsEditor/assign.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/assign-hover.png"}]
      182 GETIMPORT                        R8 K38 [UDim2.fromOffset]
      184 LOADN                            R9 22
      185 LOADN                            R10 22
      186 CALL                             R8 2 1
      187 SETTABLEKS                       R8 R7 K40 ["ImageSize"]
      189 SETTABLEKS                       R7 R6 K52 ["&SetMembership"]
      191 DUPTABLE                         R7 K55 [{["Image"] = "rbxasset://textures/CollisionGroupsEditor/delete.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/delete-hover.png"}]
      192 SETTABLEKS                       R7 R6 K56 ["&Delete"]
      194 SETTABLE                         R6 R4 R5
      195 GETUPVAL                         R5 3
      196 GETTABLEKS                       R5 R5 K6 ["join"]
      198 GETUPVAL                         R7 1
      199 GETUPVAL                         R8 2
      200 GETTABLEKS                       R8 R8 K4 ["ScrollingFrame"]
      202 GETTABLE                         R6 R7 R8
      203 DUPTABLE                         R7 K58 [{["ScrollBarThickness"] = 0}]
      204 CALL                             R5 2 1
      205 SETTABLEKS                       R5 R4 K59 ["ScrollingFrameNoBar"]
      207 GETUPVAL                         R5 4
      208 GETTABLEKS                       R5 R5 K14 ["ForegroundMain"]
      210 SETTABLEKS                       R5 R4 K60 ["TableEntryBackground"]
      212 GETUPVAL                         R5 4
      213 GETTABLEKS                       R5 R5 K21 ["ActionFocusBorder"]
      215 SETTABLEKS                       R5 R4 K61 ["TableEntrySelected"]
      217 GETUPVAL                         R5 4
      218 GETTABLEKS                       R5 R5 K19 ["ButtonHover"]
      220 SETTABLEKS                       R5 R4 K62 ["TableEntryHover"]
      222 GETUPVAL                         R5 4
      223 GETTABLEKS                       R5 R5 K14 ["ForegroundMain"]
      225 SETTABLEKS                       R5 R4 K63 ["RenameOverflowGradientColor"]
      227 GETUPVAL                         R5 4
      228 GETTABLEKS                       R5 R5 K64 ["MainText"]
      230 SETTABLEKS                       R5 R4 K65 ["RenameTextColor"]
      232 GETUPVAL                         R5 4
      233 GETTABLEKS                       R5 R5 K66 ["DimmedText"]
      235 SETTABLEKS                       R5 R4 K67 ["RenamePlaceholderColor"]
      237 GETIMPORT                        R5 K69 [UDim2.new]
      239 LOADN                            R6 0
      240 MOVE                             R7 R2
      241 LOADN                            R8 0
      242 LOADN                            R9 34
      243 CALL                             R5 4 1
      244 SETTABLEKS                       R5 R4 K70 ["AddGroupInternalButtonSize"]
      246 SETTABLEKS                       R3 R4 K3 ["ScrollBarThickness"]
      248 DUPTABLE                         R5 K75 [{["GroupSetMembershipButtonWidth"] = 36, ["GroupNameLabelSize"], ["CursorGroupNameLabelSize"]}]
      249 GETIMPORT                        R6 K69 [UDim2.new]
      251 LOADN                            R7 1
      252 LOADN                            R8 -36
      253 LOADN                            R9 1
      254 LOADN                            R10 -2
      255 CALL                             R6 4 1
      256 SETTABLEKS                       R6 R5 K73 ["GroupNameLabelSize"]
      258 GETIMPORT                        R6 K69 [UDim2.new]
      260 LOADN                            R7 1
      261 LOADN                            R8 0
      262 LOADN                            R9 1
      263 LOADN                            R10 -2
      264 CALL                             R6 4 1
      265 SETTABLEKS                       R6 R5 K74 ["CursorGroupNameLabelSize"]
      267 SETTABLEKS                       R5 R4 K76 ["GroupLabelStyle"]
      269 DUPTABLE                         R5 K77 [{"Padding"}]
      270 DUPTABLE                         R6 K83 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 1, ["Right"] = 1}]
      271 SETTABLEKS                       R6 R5 K41 ["Padding"]
      273 SETTABLEKS                       R5 R4 K84 ["GroupLabelColumn"]
      275 DUPTABLE                         R5 K87 [{"Padding", "ScrollingFrameSize", "ScrollingFramePadding"}]
      276 DUPTABLE                         R6 K89 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"]}]
      277 SETTABLEKS                       R3 R6 K82 ["Right"]
      279 SETTABLEKS                       R6 R5 K41 ["Padding"]
      281 GETIMPORT                        R6 K69 [UDim2.new]
      283 LOADN                            R7 1
      284 GETUPVAL                         R10 0
      285 GETTABLEKS                       R10 R10 K90 ["GroupRowWidth"]
      287 MINUS                            R9 R10
      288 ADDK                             R8 R9 K79 [1]
      289 LOADN                            R9 0
      290 GETUPVAL                         R10 0
      291 GETTABLEKS                       R10 R10 K0 ["GroupRowHeight"]
      293 CALL                             R6 4 1
      294 SETTABLEKS                       R6 R5 K85 ["ScrollingFrameSize"]
      296 DUPTABLE                         R6 K91 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 0, ["Right"]}]
      297 SETTABLEKS                       R3 R6 K82 ["Right"]
      299 SETTABLEKS                       R6 R5 K86 ["ScrollingFramePadding"]
      301 SETTABLEKS                       R5 R4 K92 ["TableHeader"]
      303 DUPTABLE                         R5 K94 [{"Padding", "LabelPanePadding"}]
      304 DUPTABLE                         R6 K95 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"] = 0}]
      305 SETTABLEKS                       R6 R5 K41 ["Padding"]
      307 DUPTABLE                         R6 K98 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 12, ["right"] = 0}]
      308 SETTABLEKS                       R6 R5 K93 ["LabelPanePadding"]
      310 SETTABLEKS                       R5 R4 K99 ["ListHeader"]
      312 DUPTABLE                         R5 K103 [{"MiddlePaneSize", "GridFrameSize", "ListFrameSize"}]
      313 GETIMPORT                        R6 K69 [UDim2.new]
      315 LOADN                            R7 1
      316 LOADN                            R8 0
      317 LOADN                            R9 1
      318 MINUS                            R12 R0
      319 MULK                             R11 R12 K88 [2]
      320 MULK                             R12 R1 K88 [2]
      321 SUB                              R10 R11 R12
      322 CALL                             R6 4 1
      323 SETTABLEKS                       R6 R5 K100 ["MiddlePaneSize"]
      325 GETIMPORT                        R6 K69 [UDim2.new]
      327 LOADN                            R7 1
      328 GETUPVAL                         R9 0
      329 GETTABLEKS                       R9 R9 K90 ["GroupRowWidth"]
      331 MINUS                            R8 R9
      332 LOADN                            R9 1
      333 LOADN                            R10 0
      334 CALL                             R6 4 1
      335 SETTABLEKS                       R6 R5 K101 ["GridFrameSize"]
      337 GETIMPORT                        R6 K69 [UDim2.new]
      339 LOADN                            R7 1
      340 GETUPVAL                         R10 0
      341 GETTABLEKS                       R10 R10 K90 ["GroupRowWidth"]
      343 MINUS                            R9 R10
      344 SUB                              R8 R9 R3
      345 LOADN                            R9 1
      346 LOADN                            R10 0
      347 CALL                             R6 4 1
      348 SETTABLEKS                       R6 R5 K102 ["ListFrameSize"]
      350 SETTABLEKS                       R5 R4 K104 ["MainView"]
      352 DUPTABLE                         R5 K107 [{"MainPanePadding", "UnselectedViewPadding"}]
      353 DUPTABLE                         R6 K110 [{["Top"] = 2, ["Bottom"] = 5, ["Left"] = 4, ["Right"] = 4}]
      354 SETTABLEKS                       R6 R5 K105 ["MainPanePadding"]
      356 SETTABLEKS                       R3 R5 K106 ["UnselectedViewPadding"]
      358 SETTABLEKS                       R5 R4 K111 ["GroupListView"]
      360 GETUPVAL                         R5 3
      361 GETTABLEKS                       R5 R5 K6 ["join"]
      363 GETUPVAL                         R6 2
      364 GETTABLEKS                       R6 R6 K112 ["TableRow"]
      366 DUPTABLE                         R7 K118 [{"Border", "BackgroundOdd", "BackgroundEven", "CheckboxUncheckedImage", "CheckboxCheckedImage", "NoCheckboxPanelColor"}]
      367 GETUPVAL                         R8 4
      368 GETTABLEKS                       R8 R8 K12 ["SubBackground"]
      370 SETTABLEKS                       R8 R7 K13 ["Border"]
      372 GETUPVAL                         R8 4
      373 GETTABLEKS                       R8 R8 K34 ["MainBackground"]
      375 SETTABLEKS                       R8 R7 K113 ["BackgroundOdd"]
      377 GETUPVAL                         R8 4
      378 GETTABLEKS                       R8 R8 K119 ["SubBackground2"]
      380 SETTABLEKS                       R8 R7 K114 ["BackgroundEven"]
      382 GETUPVAL                         R8 4
      383 GETTABLEKS                       R8 R8 K115 ["CheckboxUncheckedImage"]
      385 SETTABLEKS                       R8 R7 K115 ["CheckboxUncheckedImage"]
      387 GETUPVAL                         R8 4
      388 GETTABLEKS                       R8 R8 K116 ["CheckboxCheckedImage"]
      390 SETTABLEKS                       R8 R7 K116 ["CheckboxCheckedImage"]
      392 GETUPVAL                         R8 4
      393 GETTABLEKS                       R8 R8 K14 ["ForegroundMain"]
      395 SETTABLEKS                       R8 R7 K117 ["NoCheckboxPanelColor"]
      397 CALL                             R5 2 1
      398 SETTABLEKS                       R5 R4 K120 ["CollisionCheckbox"]
      400 DUPTABLE                         R5 K127 [{["Size"], ["Padding"], ["Spacing"], ["ButtonWidth"], ["ButtonHeight"] = 34, ["GroupButtonsPaneSize"], ["TextButtonPane"]}]
      401 GETIMPORT                        R6 K69 [UDim2.new]
      403 LOADN                            R7 1
      404 LOADN                            R8 0
      405 LOADN                            R9 0
      406 MULK                             R11 R1 K88 [2]
      407 ADD                              R10 R0 R11
      408 CALL                             R6 4 1
      409 SETTABLEKS                       R6 R5 K39 ["Size"]
      411 SETTABLEKS                       R1 R5 K41 ["Padding"]
      413 SETTABLEKS                       R1 R5 K121 ["Spacing"]
      415 SETTABLEKS                       R2 R5 K122 ["ButtonWidth"]
      417 GETIMPORT                        R6 K69 [UDim2.new]
      419 LOADN                            R7 0
      420 LOADN                            R8 63
      421 LOADN                            R9 1
      422 LOADN                            R10 0
      423 CALL                             R6 4 1
      424 SETTABLEKS                       R6 R5 K125 ["GroupButtonsPaneSize"]
      426 DUPTABLE                         R6 K128 [{["Size"], ["Padding"] = 0, ["Spacing"]}]
      427 GETIMPORT                        R7 K69 [UDim2.new]
      429 LOADN                            R8 1
      430 LOADN                            R9 -66
      431 LOADN                            R10 1
      432 LOADN                            R11 0
      433 CALL                             R7 4 1
      434 SETTABLEKS                       R7 R6 K39 ["Size"]
      436 SETTABLEKS                       R1 R6 K121 ["Spacing"]
      438 SETTABLEKS                       R6 R5 K126 ["TextButtonPane"]
      440 SETTABLEKS                       R5 R4 K129 ["ControlsHeaderRow"]
      442 DUPTABLE                         R5 K132 [{["DialogMinimumSize"], ["Padding"] = 5, ["Spacing"] = 5, ["WarningTextSize"]}]
      443 GETIMPORT                        R6 K134 [Vector2.new]
      445 LOADN                            R7 450
      446 LOADN                            R8 200
      447 CALL                             R6 2 1
      448 SETTABLEKS                       R6 R5 K130 ["DialogMinimumSize"]
      450 GETIMPORT                        R6 K69 [UDim2.new]
      452 LOADN                            R7 1
      453 LOADN                            R8 0
      454 LOADN                            R9 1
      455 LOADN                            R10 -60
      456 CALL                             R6 4 1
      457 SETTABLEKS                       R6 R5 K131 ["WarningTextSize"]
      459 SETTABLEKS                       R5 R4 K135 ["GroupRenameDialog"]
      461 DUPTABLE                         R5 K136 [{"DialogMinimumSize"}]
      462 GETIMPORT                        R6 K134 [Vector2.new]
      464 LOADN                            R7 450
      465 LOADN                            R8 100
      466 CALL                             R6 2 1
      467 SETTABLEKS                       R6 R5 K130 ["DialogMinimumSize"]
      469 SETTABLEKS                       R5 R4 K137 ["CannotConfigureSelectionDialog"]
      471 DUPTABLE                         R5 K145 [{["CornerRadius"], ["StrokeColor"], ["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["Padding"], ["LinePadding"] = 4, ["LineSpacing"] = 4}]
      472 GETIMPORT                        R6 K147 [UDim.new]
      474 LOADN                            R7 0
      475 LOADN                            R8 4
      476 CALL                             R6 2 1
      477 SETTABLEKS                       R6 R5 K138 ["CornerRadius"]
      479 GETIMPORT                        R6 K149 [Color3.new]
      481 LOADN                            R7 1
      482 LOADN                            R8 0
      483 LOADN                            R9 0
      484 CALL                             R6 3 1
      485 SETTABLEKS                       R6 R5 K139 ["StrokeColor"]
      487 GETUPVAL                         R6 4
      488 GETTABLEKS                       R6 R6 K34 ["MainBackground"]
      490 SETTABLEKS                       R6 R5 K140 ["BackgroundColor"]
      492 DUPTABLE                         R6 K151 [{["Top"] = 2, ["Left"] = 4, ["Right"] = 4, ["Bottom"] = 6}]
      493 SETTABLEKS                       R6 R5 K41 ["Padding"]
      495 SETTABLEKS                       R5 R4 K152 ["CGEAlert"]
      497 RETURN                           R4 1

PROTO_1:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 NAMECALL                         R2 R1 K2 ["extend"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K8 ["Util"]
       23 GETTABLEKS                       R3 R3 K9 ["StyleModifier"]
       25 GETTABLEKS                       R4 R1 K10 ["Style"]
       27 GETTABLEKS                       R5 R4 K11 ["Themes"]
       29 GETTABLEKS                       R5 R5 K12 ["BaseTheme"]
       31 GETTABLEKS                       R6 R4 K11 ["Themes"]
       33 GETTABLEKS                       R6 R6 K13 ["StudioTheme"]
       35 GETTABLEKS                       R7 R4 K14 ["ColorSystem"]
       37 GETTABLEKS                       R8 R4 K15 ["StyleKey"]
       39 GETTABLEKS                       R9 R4 K16 ["ComponentSymbols"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R0 K17 ["Plugin"]
       45 GETTABLEKS                       R11 R11 K18 ["Constants"]
       47 CALL                             R10 1 1
       48 LOADK                            R13 K19 ["GroupButton"]
       49 NAMECALL                         R11 R9 K20 ["add"]
       51 CALL                             R11 2 0
       52 DUPCLOSURE                       R11 K21 [PROTO_0]
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R12 K22 [PROTO_1]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R11
       63 RETURN                           R12 1
