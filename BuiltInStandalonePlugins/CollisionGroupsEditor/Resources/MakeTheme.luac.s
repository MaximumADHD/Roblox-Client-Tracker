PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GroupRowHeight"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ControlsHeaderButtonWidth"]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K3 ["ScrollingFrame"]
       10 GETTABLE                         R3 R4 R5
       11 GETTABLEKS                       R2 R3 K2 ["ScrollBarThickness"]
       13 NEWTABLE                         R3 32 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["Pane"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K5 ["join"]
       21 GETUPVAL                         R7 1
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K4 ["Pane"]
       25 GETTABLE                         R6 R7 R8
       26 NEWTABLE                         R7 2 0
       28 GETUPVAL                         R10 1
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K4 ["Pane"]
       32 GETTABLE                         R9 R10 R11
       33 GETTABLEKS                       R8 R9 K6 ["&Box"]
       35 SETTABLEKS                       R8 R7 K7 ["&BorderBox"]
       37 NEWTABLE                         R8 8 0
       39 DUPTABLE                         R9 K9 [{"Color"}]
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K10 ["SubBackground"]
       43 SETTABLEKS                       R10 R9 K8 ["Color"]
       45 SETTABLEKS                       R9 R8 K11 ["Border"]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R9 R9 K12 ["ForegroundMain"]
       50 SETTABLEKS                       R9 R8 K13 ["Background"]
       52 GETUPVAL                         R9 5
       53 GETTABLEKS                       R9 R9 K14 ["Pressed"]
       55 DUPTABLE                         R10 K15 [{"Background"}]
       56 GETUPVAL                         R11 4
       57 GETTABLEKS                       R11 R11 K12 ["ForegroundMain"]
       59 SETTABLEKS                       R11 R10 K13 ["Background"]
       61 SETTABLE                         R10 R8 R9
       62 GETUPVAL                         R9 5
       63 GETTABLEKS                       R9 R9 K16 ["Hover"]
       65 DUPTABLE                         R10 K15 [{"Background"}]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K17 ["ButtonHover"]
       69 SETTABLEKS                       R11 R10 K13 ["Background"]
       71 SETTABLE                         R10 R8 R9
       72 GETUPVAL                         R9 5
       73 GETTABLEKS                       R9 R9 K18 ["Selected"]
       75 DUPTABLE                         R10 K15 [{"Background"}]
       76 GETUPVAL                         R11 4
       77 GETTABLEKS                       R11 R11 K19 ["ActionFocusBorder"]
       79 SETTABLEKS                       R11 R10 K13 ["Background"]
       81 SETTABLE                         R10 R8 R9
       82 SETTABLEKS                       R8 R7 K20 ["&GroupLabel"]
       84 CALL                             R5 2 1
       85 SETTABLE                         R5 R3 R4
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R4 R4 K21 ["TextLabel"]
       89 GETUPVAL                         R5 3
       90 GETTABLEKS                       R5 R5 K5 ["join"]
       92 GETUPVAL                         R7 1
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R8 R8 K21 ["TextLabel"]
       96 GETTABLE                         R6 R7 R8
       97 NEWTABLE                         R7 1 0
       99 NEWTABLE                         R8 2 0
      101 LOADN                            R9 14
      102 SETTABLEKS                       R9 R8 K22 ["TextSize"]
      104 GETUPVAL                         R9 5
      105 GETTABLEKS                       R9 R9 K18 ["Selected"]
      107 DUPTABLE                         R10 K24 [{"TextColor"}]
      108 GETUPVAL                         R12 6
      109 GETTABLEKS                       R12 R12 K25 ["White"]
      111 LOADN                            R13 0
      112 GETTABLE                         R11 R12 R13
      113 SETTABLEKS                       R11 R10 K23 ["TextColor"]
      115 SETTABLE                         R10 R8 R9
      116 SETTABLEKS                       R8 R7 K20 ["&GroupLabel"]
      118 CALL                             R5 2 1
      119 SETTABLE                         R5 R3 R4
      120 GETUPVAL                         R4 2
      121 GETTABLEKS                       R4 R4 K26 ["Button"]
      123 GETUPVAL                         R5 3
      124 GETTABLEKS                       R5 R5 K5 ["join"]
      126 GETUPVAL                         R7 1
      127 GETUPVAL                         R8 2
      128 GETTABLEKS                       R8 R8 K26 ["Button"]
      130 GETTABLE                         R6 R7 R8
      131 DUPTABLE                         R7 K29 [{["TextWrapped"] = True}]
      132 CALL                             R5 2 1
      133 SETTABLE                         R5 R3 R4
      134 GETUPVAL                         R4 2
      135 GETTABLEKS                       R4 R4 K30 ["Table"]
      137 DUPTABLE                         R5 K31 [{"Border"}]
      138 GETUPVAL                         R6 4
      139 GETTABLEKS                       R6 R6 K32 ["MainBackground"]
      141 SETTABLEKS                       R6 R5 K11 ["Border"]
      143 SETTABLE                         R5 R3 R4
      144 GETUPVAL                         R4 2
      145 GETTABLEKS                       R4 R4 K33 ["GroupButton"]
      147 NEWTABLE                         R5 8 0
      149 GETIMPORT                        R6 K36 [UDim2.fromOffset]
      151 LOADN                            R7 32
      152 LOADN                            R8 32
      153 CALL                             R6 2 1
      154 SETTABLEKS                       R6 R5 K37 ["Size"]
      156 GETIMPORT                        R6 K36 [UDim2.fromOffset]
      158 LOADN                            R7 26
      159 LOADN                            R8 26
      160 CALL                             R6 2 1
      161 SETTABLEKS                       R6 R5 K38 ["ImageSize"]
      163 LOADN                            R6 6
      164 SETTABLEKS                       R6 R5 K39 ["Padding"]
      166 DUPTABLE                         R6 K44 [{["Image"] = "rbxasset://textures/CollisionGroupsEditor/rename.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/rename-hover.png"}]
      167 SETTABLEKS                       R6 R5 K45 ["&Rename"]
      169 DUPTABLE                         R6 K49 [{["Padding"] = 10, ["ImageSize"], ["Image"] = "rbxasset://textures/CollisionGroupsEditor/assign.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/assign-hover.png"}]
      170 GETIMPORT                        R7 K36 [UDim2.fromOffset]
      172 LOADN                            R8 22
      173 LOADN                            R9 22
      174 CALL                             R7 2 1
      175 SETTABLEKS                       R7 R6 K38 ["ImageSize"]
      177 SETTABLEKS                       R6 R5 K50 ["&SetMembership"]
      179 DUPTABLE                         R6 K53 [{["Image"] = "rbxasset://textures/CollisionGroupsEditor/delete.png", ["HoveredImage"] = "rbxasset://textures/CollisionGroupsEditor/delete-hover.png"}]
      180 SETTABLEKS                       R6 R5 K54 ["&Delete"]
      182 SETTABLE                         R5 R3 R4
      183 GETUPVAL                         R4 3
      184 GETTABLEKS                       R4 R4 K5 ["join"]
      186 GETUPVAL                         R6 1
      187 GETUPVAL                         R7 2
      188 GETTABLEKS                       R7 R7 K3 ["ScrollingFrame"]
      190 GETTABLE                         R5 R6 R7
      191 DUPTABLE                         R6 K56 [{["ScrollBarThickness"] = 0}]
      192 CALL                             R4 2 1
      193 SETTABLEKS                       R4 R3 K57 ["ScrollingFrameNoBar"]
      195 GETUPVAL                         R4 4
      196 GETTABLEKS                       R4 R4 K12 ["ForegroundMain"]
      198 SETTABLEKS                       R4 R3 K58 ["TableEntryBackground"]
      200 GETUPVAL                         R4 4
      201 GETTABLEKS                       R4 R4 K19 ["ActionFocusBorder"]
      203 SETTABLEKS                       R4 R3 K59 ["TableEntrySelected"]
      205 GETUPVAL                         R4 4
      206 GETTABLEKS                       R4 R4 K17 ["ButtonHover"]
      208 SETTABLEKS                       R4 R3 K60 ["TableEntryHover"]
      210 GETIMPORT                        R4 K62 [UDim2.new]
      212 LOADN                            R5 0
      213 MOVE                             R6 R1
      214 LOADN                            R7 0
      215 LOADN                            R8 34
      216 CALL                             R4 4 1
      217 SETTABLEKS                       R4 R3 K63 ["AddGroupInternalButtonSize"]
      219 SETTABLEKS                       R2 R3 K2 ["ScrollBarThickness"]
      221 DUPTABLE                         R4 K68 [{["GroupSetMembershipButtonWidth"] = 36, ["GroupNameLabelSize"], ["CursorGroupNameLabelSize"]}]
      222 GETIMPORT                        R5 K62 [UDim2.new]
      224 LOADN                            R6 1
      225 LOADN                            R7 -36
      226 LOADN                            R8 1
      227 LOADN                            R9 -2
      228 CALL                             R5 4 1
      229 SETTABLEKS                       R5 R4 K66 ["GroupNameLabelSize"]
      231 GETIMPORT                        R5 K62 [UDim2.new]
      233 LOADN                            R6 1
      234 LOADN                            R7 0
      235 LOADN                            R8 1
      236 LOADN                            R9 -2
      237 CALL                             R5 4 1
      238 SETTABLEKS                       R5 R4 K67 ["CursorGroupNameLabelSize"]
      240 SETTABLEKS                       R4 R3 K69 ["GroupLabelStyle"]
      242 DUPTABLE                         R4 K70 [{"Padding"}]
      243 DUPTABLE                         R5 K76 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 1, ["Right"] = 1}]
      244 SETTABLEKS                       R5 R4 K39 ["Padding"]
      246 SETTABLEKS                       R4 R3 K77 ["GroupLabelColumn"]
      248 DUPTABLE                         R4 K80 [{"Padding", "ScrollingFrameSize", "ScrollingFramePadding"}]
      249 DUPTABLE                         R5 K82 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"]}]
      250 SETTABLEKS                       R2 R5 K75 ["Right"]
      252 SETTABLEKS                       R5 R4 K39 ["Padding"]
      254 GETIMPORT                        R5 K62 [UDim2.new]
      256 LOADN                            R6 1
      257 GETUPVAL                         R9 0
      258 GETTABLEKS                       R9 R9 K83 ["GroupRowWidth"]
      260 MINUS                            R8 R9
      261 ADDK                             R7 R8 K72 [1]
      262 LOADN                            R8 0
      263 GETUPVAL                         R9 0
      264 GETTABLEKS                       R9 R9 K0 ["GroupRowHeight"]
      266 CALL                             R5 4 1
      267 SETTABLEKS                       R5 R4 K78 ["ScrollingFrameSize"]
      269 DUPTABLE                         R5 K84 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 0, ["Right"]}]
      270 SETTABLEKS                       R2 R5 K75 ["Right"]
      272 SETTABLEKS                       R5 R4 K79 ["ScrollingFramePadding"]
      274 SETTABLEKS                       R4 R3 K85 ["TableHeader"]
      276 DUPTABLE                         R4 K87 [{"Padding", "LabelPanePadding"}]
      277 DUPTABLE                         R5 K88 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 2, ["Right"] = 0}]
      278 SETTABLEKS                       R5 R4 K39 ["Padding"]
      280 DUPTABLE                         R5 K91 [{["Top"] = 0, ["Bottom"] = 0, ["Left"] = 12, ["right"] = 0}]
      281 SETTABLEKS                       R5 R4 K86 ["LabelPanePadding"]
      283 SETTABLEKS                       R4 R3 K92 ["ListHeader"]
      285 DUPTABLE                         R4 K96 [{"MiddlePaneSize", "GridFrameSize", "ListFrameSize"}]
      286 GETIMPORT                        R5 K62 [UDim2.new]
      288 LOADN                            R6 1
      289 LOADN                            R7 0
      290 LOADN                            R8 1
      291 MINUS                            R11 R0
      292 MULK                             R10 R11 K81 [2]
      293 SUBK                             R9 R10 K89 [12]
      294 CALL                             R5 4 1
      295 SETTABLEKS                       R5 R4 K93 ["MiddlePaneSize"]
      297 GETIMPORT                        R5 K62 [UDim2.new]
      299 LOADN                            R6 1
      300 GETUPVAL                         R8 0
      301 GETTABLEKS                       R8 R8 K83 ["GroupRowWidth"]
      303 MINUS                            R7 R8
      304 LOADN                            R8 1
      305 LOADN                            R9 0
      306 CALL                             R5 4 1
      307 SETTABLEKS                       R5 R4 K94 ["GridFrameSize"]
      309 GETIMPORT                        R5 K62 [UDim2.new]
      311 LOADN                            R6 1
      312 GETUPVAL                         R9 0
      313 GETTABLEKS                       R9 R9 K83 ["GroupRowWidth"]
      315 MINUS                            R8 R9
      316 SUB                              R7 R8 R2
      317 LOADN                            R8 1
      318 LOADN                            R9 0
      319 CALL                             R5 4 1
      320 SETTABLEKS                       R5 R4 K95 ["ListFrameSize"]
      322 SETTABLEKS                       R4 R3 K97 ["MainView"]
      324 DUPTABLE                         R4 K100 [{"MainPanePadding", "UnselectedViewPadding"}]
      325 DUPTABLE                         R5 K103 [{["Top"] = 2, ["Bottom"] = 5, ["Left"] = 4, ["Right"] = 4}]
      326 SETTABLEKS                       R5 R4 K98 ["MainPanePadding"]
      328 SETTABLEKS                       R2 R4 K99 ["UnselectedViewPadding"]
      330 SETTABLEKS                       R4 R3 K104 ["GroupListView"]
      332 GETUPVAL                         R4 3
      333 GETTABLEKS                       R4 R4 K5 ["join"]
      335 GETUPVAL                         R5 2
      336 GETTABLEKS                       R5 R5 K105 ["TableRow"]
      338 DUPTABLE                         R6 K111 [{"Border", "BackgroundOdd", "BackgroundEven", "CheckboxUncheckedImage", "CheckboxCheckedImage", "NoCheckboxPanelColor"}]
      339 GETUPVAL                         R7 4
      340 GETTABLEKS                       R7 R7 K10 ["SubBackground"]
      342 SETTABLEKS                       R7 R6 K11 ["Border"]
      344 GETUPVAL                         R7 4
      345 GETTABLEKS                       R7 R7 K32 ["MainBackground"]
      347 SETTABLEKS                       R7 R6 K106 ["BackgroundOdd"]
      349 GETUPVAL                         R7 4
      350 GETTABLEKS                       R7 R7 K112 ["SubBackground2"]
      352 SETTABLEKS                       R7 R6 K107 ["BackgroundEven"]
      354 GETUPVAL                         R7 4
      355 GETTABLEKS                       R7 R7 K108 ["CheckboxUncheckedImage"]
      357 SETTABLEKS                       R7 R6 K108 ["CheckboxUncheckedImage"]
      359 GETUPVAL                         R7 4
      360 GETTABLEKS                       R7 R7 K109 ["CheckboxCheckedImage"]
      362 SETTABLEKS                       R7 R6 K109 ["CheckboxCheckedImage"]
      364 GETUPVAL                         R7 4
      365 GETTABLEKS                       R7 R7 K12 ["ForegroundMain"]
      367 SETTABLEKS                       R7 R6 K110 ["NoCheckboxPanelColor"]
      369 CALL                             R4 2 1
      370 SETTABLEKS                       R4 R3 K113 ["CollisionCheckbox"]
      372 DUPTABLE                         R4 K121 [{["Size"], ["Padding"] = 6, ["Spacing"] = 6, ["ButtonWidth"], ["ButtonHeight"] = 34, ["GroupButtonsPaneSize"], ["TextButtonPane"]}]
      373 GETIMPORT                        R5 K62 [UDim2.new]
      375 LOADN                            R6 1
      376 LOADN                            R7 0
      377 LOADN                            R8 0
      378 ADDK                             R9 R0 K89 [12]
      379 CALL                             R5 4 1
      380 SETTABLEKS                       R5 R4 K37 ["Size"]
      382 SETTABLEKS                       R1 R4 K116 ["ButtonWidth"]
      384 GETIMPORT                        R5 K62 [UDim2.new]
      386 LOADN                            R6 0
      387 LOADN                            R7 63
      388 LOADN                            R8 1
      389 LOADN                            R9 0
      390 CALL                             R5 4 1
      391 SETTABLEKS                       R5 R4 K119 ["GroupButtonsPaneSize"]
      393 DUPTABLE                         R5 K122 [{["Size"], ["Padding"] = 0, ["Spacing"] = 6}]
      394 GETIMPORT                        R6 K62 [UDim2.new]
      396 LOADN                            R7 1
      397 LOADN                            R8 -66
      398 LOADN                            R9 1
      399 LOADN                            R10 0
      400 CALL                             R6 4 1
      401 SETTABLEKS                       R6 R5 K37 ["Size"]
      403 SETTABLEKS                       R5 R4 K120 ["TextButtonPane"]
      405 SETTABLEKS                       R4 R3 K123 ["ControlsHeaderRow"]
      407 DUPTABLE                         R4 K126 [{["DialogMinimumSize"], ["Padding"] = 5, ["Spacing"] = 5, ["WarningTextSize"]}]
      408 GETIMPORT                        R5 K128 [Vector2.new]
      410 LOADN                            R6 450
      411 LOADN                            R7 200
      412 CALL                             R5 2 1
      413 SETTABLEKS                       R5 R4 K124 ["DialogMinimumSize"]
      415 GETIMPORT                        R5 K62 [UDim2.new]
      417 LOADN                            R6 1
      418 LOADN                            R7 0
      419 LOADN                            R8 1
      420 LOADN                            R9 -60
      421 CALL                             R5 4 1
      422 SETTABLEKS                       R5 R4 K125 ["WarningTextSize"]
      424 SETTABLEKS                       R4 R3 K129 ["GroupRenameDialog"]
      426 DUPTABLE                         R4 K130 [{"DialogMinimumSize"}]
      427 GETIMPORT                        R5 K128 [Vector2.new]
      429 LOADN                            R6 450
      430 LOADN                            R7 100
      431 CALL                             R5 2 1
      432 SETTABLEKS                       R5 R4 K124 ["DialogMinimumSize"]
      434 SETTABLEKS                       R4 R3 K131 ["CannotConfigureSelectionDialog"]
      436 DUPTABLE                         R4 K139 [{["CornerRadius"], ["StrokeColor"], ["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["Padding"], ["LinePadding"] = 4, ["LineSpacing"] = 4}]
      437 GETIMPORT                        R5 K141 [UDim.new]
      439 LOADN                            R6 0
      440 LOADN                            R7 4
      441 CALL                             R5 2 1
      442 SETTABLEKS                       R5 R4 K132 ["CornerRadius"]
      444 GETIMPORT                        R5 K143 [Color3.new]
      446 LOADN                            R6 1
      447 LOADN                            R7 0
      448 LOADN                            R8 0
      449 CALL                             R5 3 1
      450 SETTABLEKS                       R5 R4 K133 ["StrokeColor"]
      452 GETUPVAL                         R5 4
      453 GETTABLEKS                       R5 R5 K32 ["MainBackground"]
      455 SETTABLEKS                       R5 R4 K134 ["BackgroundColor"]
      457 DUPTABLE                         R5 K144 [{["Top"] = 2, ["Left"] = 4, ["Right"] = 4, ["Bottom"] = 6}]
      458 SETTABLEKS                       R5 R4 K39 ["Padding"]
      460 SETTABLEKS                       R4 R3 K145 ["CGEAlert"]
      462 RETURN                           R3 1

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
