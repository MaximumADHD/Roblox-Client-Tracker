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
      222 GETIMPORT                        R5 K64 [UDim2.new]
      224 LOADN                            R6 0
      225 MOVE                             R7 R2
      226 LOADN                            R8 0
      227 LOADN                            R9 34
      228 CALL                             R5 4 1
      229 SETTABLEKS                       R5 R4 K65 ["AddGroupInternalButtonSize"]
      231 SETTABLEKS                       R3 R4 K3 ["ScrollBarThickness"]
      233 DUPTABLE                         R5 K70 [{["GroupSetMembershipButtonWidth"] = 36, ["GroupNameLabelSize"], ["CursorGroupNameLabelSize"]}]
      234 GETIMPORT                        R6 K64 [UDim2.new]
      236 LOADN                            R7 1
      237 LOADN                            R8 -36
      238 LOADN                            R9 1
      239 LOADN                            R10 -2
      240 CALL                             R6 4 1
      241 SETTABLEKS                       R6 R5 K68 ["GroupNameLabelSize"]
      243 GETIMPORT                        R6 K64 [UDim2.new]
      245 LOADN                            R7 1
      246 LOADN                            R8 0
      247 LOADN                            R9 1
      248 LOADN                            R10 -2
      249 CALL                             R6 4 1
      250 SETTABLEKS                       R6 R5 K69 ["CursorGroupNameLabelSize"]
      252 SETTABLEKS                       R5 R4 K71 ["GroupLabelStyle"]
      254 DUPTABLE                         R5 K72 [{"Padding"}]
      255 DUPTABLE                         R6 K78 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 1, ["Right"] = 1}]
      256 SETTABLEKS                       R6 R5 K41 ["Padding"]
      258 SETTABLEKS                       R5 R4 K79 ["GroupLabelColumn"]
      260 DUPTABLE                         R5 K82 [{"Padding", "ScrollingFrameSize", "ScrollingFramePadding"}]
      261 DUPTABLE                         R6 K84 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"]}]
      262 SETTABLEKS                       R3 R6 K77 ["Right"]
      264 SETTABLEKS                       R6 R5 K41 ["Padding"]
      266 GETIMPORT                        R6 K64 [UDim2.new]
      268 LOADN                            R7 1
      269 GETUPVAL                         R10 0
      270 GETTABLEKS                       R10 R10 K85 ["GroupRowWidth"]
      272 MINUS                            R9 R10
      273 ADDK                             R8 R9 K74 [1]
      274 LOADN                            R9 0
      275 GETUPVAL                         R10 0
      276 GETTABLEKS                       R10 R10 K0 ["GroupRowHeight"]
      278 CALL                             R6 4 1
      279 SETTABLEKS                       R6 R5 K80 ["ScrollingFrameSize"]
      281 DUPTABLE                         R6 K86 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 0, ["Right"]}]
      282 SETTABLEKS                       R3 R6 K77 ["Right"]
      284 SETTABLEKS                       R6 R5 K81 ["ScrollingFramePadding"]
      286 SETTABLEKS                       R5 R4 K87 ["TableHeader"]
      288 DUPTABLE                         R5 K89 [{"Padding", "LabelPanePadding"}]
      289 DUPTABLE                         R6 K90 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"] = 0}]
      290 SETTABLEKS                       R6 R5 K41 ["Padding"]
      292 DUPTABLE                         R6 K93 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 12, ["right"] = 0}]
      293 SETTABLEKS                       R6 R5 K88 ["LabelPanePadding"]
      295 SETTABLEKS                       R5 R4 K94 ["ListHeader"]
      297 DUPTABLE                         R5 K98 [{"MiddlePaneSize", "GridFrameSize", "ListFrameSize"}]
      298 GETIMPORT                        R6 K64 [UDim2.new]
      300 LOADN                            R7 1
      301 LOADN                            R8 0
      302 LOADN                            R9 1
      303 MINUS                            R12 R0
      304 MULK                             R11 R12 K83 [2]
      305 MULK                             R12 R1 K83 [2]
      306 SUB                              R10 R11 R12
      307 CALL                             R6 4 1
      308 SETTABLEKS                       R6 R5 K95 ["MiddlePaneSize"]
      310 GETIMPORT                        R6 K64 [UDim2.new]
      312 LOADN                            R7 1
      313 GETUPVAL                         R9 0
      314 GETTABLEKS                       R9 R9 K85 ["GroupRowWidth"]
      316 MINUS                            R8 R9
      317 LOADN                            R9 1
      318 LOADN                            R10 0
      319 CALL                             R6 4 1
      320 SETTABLEKS                       R6 R5 K96 ["GridFrameSize"]
      322 GETIMPORT                        R6 K64 [UDim2.new]
      324 LOADN                            R7 1
      325 GETUPVAL                         R10 0
      326 GETTABLEKS                       R10 R10 K85 ["GroupRowWidth"]
      328 MINUS                            R9 R10
      329 SUB                              R8 R9 R3
      330 LOADN                            R9 1
      331 LOADN                            R10 0
      332 CALL                             R6 4 1
      333 SETTABLEKS                       R6 R5 K97 ["ListFrameSize"]
      335 SETTABLEKS                       R5 R4 K99 ["MainView"]
      337 DUPTABLE                         R5 K102 [{"MainPanePadding", "UnselectedViewPadding"}]
      338 DUPTABLE                         R6 K105 [{["Top"] = 2, ["Bottom"] = 5, ["Left"] = 4, ["Right"] = 4}]
      339 SETTABLEKS                       R6 R5 K100 ["MainPanePadding"]
      341 SETTABLEKS                       R3 R5 K101 ["UnselectedViewPadding"]
      343 SETTABLEKS                       R5 R4 K106 ["GroupListView"]
      345 GETUPVAL                         R5 3
      346 GETTABLEKS                       R5 R5 K6 ["join"]
      348 GETUPVAL                         R6 2
      349 GETTABLEKS                       R6 R6 K107 ["TableRow"]
      351 DUPTABLE                         R7 K113 [{"Border", "BackgroundOdd", "BackgroundEven", "CheckboxUncheckedImage", "CheckboxCheckedImage", "NoCheckboxPanelColor"}]
      352 GETUPVAL                         R8 4
      353 GETTABLEKS                       R8 R8 K12 ["SubBackground"]
      355 SETTABLEKS                       R8 R7 K13 ["Border"]
      357 GETUPVAL                         R8 4
      358 GETTABLEKS                       R8 R8 K34 ["MainBackground"]
      360 SETTABLEKS                       R8 R7 K108 ["BackgroundOdd"]
      362 GETUPVAL                         R8 4
      363 GETTABLEKS                       R8 R8 K114 ["SubBackground2"]
      365 SETTABLEKS                       R8 R7 K109 ["BackgroundEven"]
      367 GETUPVAL                         R8 4
      368 GETTABLEKS                       R8 R8 K110 ["CheckboxUncheckedImage"]
      370 SETTABLEKS                       R8 R7 K110 ["CheckboxUncheckedImage"]
      372 GETUPVAL                         R8 4
      373 GETTABLEKS                       R8 R8 K111 ["CheckboxCheckedImage"]
      375 SETTABLEKS                       R8 R7 K111 ["CheckboxCheckedImage"]
      377 GETUPVAL                         R8 4
      378 GETTABLEKS                       R8 R8 K14 ["ForegroundMain"]
      380 SETTABLEKS                       R8 R7 K112 ["NoCheckboxPanelColor"]
      382 CALL                             R5 2 1
      383 SETTABLEKS                       R5 R4 K115 ["CollisionCheckbox"]
      385 DUPTABLE                         R5 K122 [{["Size"], ["Padding"], ["Spacing"], ["ButtonWidth"], ["ButtonHeight"] = 34, ["GroupButtonsPaneSize"], ["TextButtonPane"]}]
      386 GETIMPORT                        R6 K64 [UDim2.new]
      388 LOADN                            R7 1
      389 LOADN                            R8 0
      390 LOADN                            R9 0
      391 MULK                             R11 R1 K83 [2]
      392 ADD                              R10 R0 R11
      393 CALL                             R6 4 1
      394 SETTABLEKS                       R6 R5 K39 ["Size"]
      396 SETTABLEKS                       R1 R5 K41 ["Padding"]
      398 SETTABLEKS                       R1 R5 K116 ["Spacing"]
      400 SETTABLEKS                       R2 R5 K117 ["ButtonWidth"]
      402 GETIMPORT                        R6 K64 [UDim2.new]
      404 LOADN                            R7 0
      405 LOADN                            R8 63
      406 LOADN                            R9 1
      407 LOADN                            R10 0
      408 CALL                             R6 4 1
      409 SETTABLEKS                       R6 R5 K120 ["GroupButtonsPaneSize"]
      411 DUPTABLE                         R6 K123 [{["Size"], ["Padding"] = 0, ["Spacing"]}]
      412 GETIMPORT                        R7 K64 [UDim2.new]
      414 LOADN                            R8 1
      415 LOADN                            R9 -66
      416 LOADN                            R10 1
      417 LOADN                            R11 0
      418 CALL                             R7 4 1
      419 SETTABLEKS                       R7 R6 K39 ["Size"]
      421 SETTABLEKS                       R1 R6 K116 ["Spacing"]
      423 SETTABLEKS                       R6 R5 K121 ["TextButtonPane"]
      425 SETTABLEKS                       R5 R4 K124 ["ControlsHeaderRow"]
      427 DUPTABLE                         R5 K127 [{["DialogMinimumSize"], ["Padding"] = 5, ["Spacing"] = 5, ["WarningTextSize"]}]
      428 GETIMPORT                        R6 K129 [Vector2.new]
      430 LOADN                            R7 450
      431 LOADN                            R8 200
      432 CALL                             R6 2 1
      433 SETTABLEKS                       R6 R5 K125 ["DialogMinimumSize"]
      435 GETIMPORT                        R6 K64 [UDim2.new]
      437 LOADN                            R7 1
      438 LOADN                            R8 0
      439 LOADN                            R9 1
      440 LOADN                            R10 -60
      441 CALL                             R6 4 1
      442 SETTABLEKS                       R6 R5 K126 ["WarningTextSize"]
      444 SETTABLEKS                       R5 R4 K130 ["GroupRenameDialog"]
      446 DUPTABLE                         R5 K131 [{"DialogMinimumSize"}]
      447 GETIMPORT                        R6 K129 [Vector2.new]
      449 LOADN                            R7 450
      450 LOADN                            R8 100
      451 CALL                             R6 2 1
      452 SETTABLEKS                       R6 R5 K125 ["DialogMinimumSize"]
      454 SETTABLEKS                       R5 R4 K132 ["CannotConfigureSelectionDialog"]
      456 DUPTABLE                         R5 K140 [{["CornerRadius"], ["StrokeColor"], ["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["Padding"], ["LinePadding"] = 4, ["LineSpacing"] = 4}]
      457 GETIMPORT                        R6 K142 [UDim.new]
      459 LOADN                            R7 0
      460 LOADN                            R8 4
      461 CALL                             R6 2 1
      462 SETTABLEKS                       R6 R5 K133 ["CornerRadius"]
      464 GETIMPORT                        R6 K144 [Color3.new]
      466 LOADN                            R7 1
      467 LOADN                            R8 0
      468 LOADN                            R9 0
      469 CALL                             R6 3 1
      470 SETTABLEKS                       R6 R5 K134 ["StrokeColor"]
      472 GETUPVAL                         R6 4
      473 GETTABLEKS                       R6 R6 K34 ["MainBackground"]
      475 SETTABLEKS                       R6 R5 K135 ["BackgroundColor"]
      477 DUPTABLE                         R6 K146 [{["Top"] = 2, ["Left"] = 4, ["Right"] = 4, ["Bottom"] = 6}]
      478 SETTABLEKS                       R6 R5 K41 ["Padding"]
      480 SETTABLEKS                       R5 R4 K147 ["CGEAlert"]
      482 RETURN                           R4 1

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
