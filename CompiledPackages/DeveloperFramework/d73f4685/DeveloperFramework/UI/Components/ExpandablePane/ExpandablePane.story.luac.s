PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["expanded"]
        2 NOT                              R1 R2
        3 GETTABLEKS                       R2 R0 K1 ["expandedCount"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 ADDK                             R2 R2 K2 [1]
        7 DUPTABLE                         R3 K3 [{"expanded", "expandedCount"}]
        8 SETTABLEKS                       R1 R3 K0 ["expanded"]
       10 SETTABLEKS                       R2 R3 K1 ["expandedCount"]
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["expandedCount"] = 0}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K6 ["expandedChanged"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["Expanded"], ["OnExpandedChanged"], ["Text"] = "OnExpandedChanged"}]
        5 GETTABLEKS                       R4 R0 K5 ["state"]
        7 GETTABLEKS                       R4 R4 K6 ["expanded"]
        9 SETTABLEKS                       R4 R3 K1 ["Expanded"]
       11 GETTABLEKS                       R4 R0 K7 ["expandedChanged"]
       13 SETTABLEKS                       R4 R3 K2 ["OnExpandedChanged"]
       15 NEWTABLE                         R4 0 2
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 2
       21 NEWTABLE                         R7 2 0
       23 LOADK                            R8 K8 ["This has an OnExpandedChanged callback"]
       24 SETTABLEKS                       R8 R7 K3 ["Text"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K9 ["Tag"]
       29 LOADK                            R9 K10 ["X-FitY"]
       30 SETTABLE                         R9 R7 R8
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K0 ["createElement"]
       35 GETUPVAL                         R7 2
       36 NEWTABLE                         R8 2 0
       38 GETIMPORT                        R9 K13 [string.format]
       40 LOADK                            R10 K14 ["Expanded %d times"]
       41 GETTABLEKS                       R11 R0 K5 ["state"]
       43 GETTABLEKS                       R11 R11 K15 ["expandedCount"]
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K3 ["Text"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K9 ["Tag"]
       51 LOADK                            R10 K10 ["X-FitY"]
       52 SETTABLE                         R10 R8 R9
       53 CALL                             R6 2 -1
       54 SETLIST                          R4 R5 -1 [1]
       56 CALL                             R1 3 -1
       57 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K5 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 8}]
        6 GETIMPORT                        R5 K8 [Enum.HorizontalAlignment.Right]
        8 SETTABLEKS                       R5 R4 K1 ["HorizontalAlignment"]
       10 GETIMPORT                        R5 K11 [Enum.FillDirection.Horizontal]
       12 SETTABLEKS                       R5 R4 K2 ["Layout"]
       14 MOVE                             R5 R0
       15 CALL                             R3 2 1
       16 DUPTABLE                         R4 K14 [{"Icon", "Link"}]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K0 ["createElement"]
       20 GETUPVAL                         R6 3
       21 DUPTABLE                         R7 K20 [{["LayoutOrder"] = 1, ["Image"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png", ["Size"]}]
       22 GETIMPORT                        R8 K23 [UDim2.fromOffset]
       24 LOADN                            R9 20
       25 LOADN                            R10 20
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K19 ["Size"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K12 ["Icon"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K0 ["createElement"]
       35 GETUPVAL                         R6 4
       36 DUPTABLE                         R7 K28 [{["LayoutOrder"] = 2, ["OnClick"], ["Text"] = "1 warning"}]
       37 DUPCLOSURE                       R8 K29 [PROTO_4]
       38 SETTABLEKS                       R8 R7 K25 ["OnClick"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K13 ["Link"]
       43 CALL                             R1 3 -1
       44 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Style"]
       27 GETTABLEKS                       R4 R4 K10 ["Colors"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Style"]
       34 GETTABLEKS                       R5 R5 K11 ["Themes"]
       36 GETTABLEKS                       R5 R5 K12 ["BaseTheme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Style"]
       43 GETTABLEKS                       R6 R6 K11 ["Themes"]
       45 GETTABLEKS                       R6 R6 K13 ["StudioTheme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Style"]
       52 GETTABLEKS                       R7 R7 K14 ["ComponentSymbols"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K2 ["UI"]
       59 GETTABLEKS                       R8 R8 K15 ["Components"]
       61 GETTABLEKS                       R8 R8 K16 ["ExpandablePane"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R9 R0 K2 ["UI"]
       68 GETTABLEKS                       R9 R9 K15 ["Components"]
       70 GETTABLEKS                       R9 R9 K17 ["Image"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R10 R0 K2 ["UI"]
       77 GETTABLEKS                       R10 R10 K15 ["Components"]
       79 GETTABLEKS                       R10 R10 K18 ["LinkText"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K6 [require]
       84 GETTABLEKS                       R11 R0 K2 ["UI"]
       86 GETTABLEKS                       R11 R11 K15 ["Components"]
       88 GETTABLEKS                       R11 R11 K19 ["Pane"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K6 [require]
       93 GETTABLEKS                       R12 R0 K2 ["UI"]
       95 GETTABLEKS                       R12 R12 K15 ["Components"]
       97 GETTABLEKS                       R12 R12 K16 ["ExpandablePane"]
       99 GETTABLEKS                       R12 R12 K20 ["SimpleExpandablePane"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K6 [require]
      104 GETTABLEKS                       R13 R0 K2 ["UI"]
      106 GETTABLEKS                       R13 R13 K15 ["Components"]
      108 GETTABLEKS                       R13 R13 K21 ["TextLabel"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K6 [require]
      113 GETTABLEKS                       R14 R0 K2 ["UI"]
      115 GETTABLEKS                       R14 R14 K15 ["Components"]
      117 GETTABLEKS                       R14 R14 K22 ["UIFolderData"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K6 [require]
      122 GETTABLEKS                       R15 R13 K16 ["ExpandablePane"]
      124 GETTABLEKS                       R15 R15 K23 ["style"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K6 [require]
      129 GETTABLEKS                       R16 R0 K24 ["Util"]
      131 GETTABLEKS                       R16 R16 K25 ["StyleModifier"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K6 [require]
      136 GETTABLEKS                       R17 R0 K4 ["Parent"]
      138 GETTABLEKS                       R17 R17 K26 ["Dash"]
      140 CALL                             R16 1 1
      141 GETTABLEKS                       R17 R16 K27 ["join"]
      143 GETTABLEKS                       R18 R14 K28 ["&BorderBox"]
      145 GETTABLEKS                       R19 R14 K29 ["Header"]
      147 GETTABLEKS                       R20 R5 K30 ["new"]
      149 CALL                             R20 0 1
      150 NEWTABLE                         R23 1 0
      152 GETTABLEKS                       R24 R6 K16 ["ExpandablePane"]
      154 MOVE                             R25 R17
      155 GETTABLEKS                       R27 R6 K16 ["ExpandablePane"]
      157 GETTABLE                         R26 R4 R27
      158 NEWTABLE                         R27 1 0
      160 MOVE                             R28 R17
      161 MOVE                             R29 R18
      162 DUPTABLE                         R30 K33 [{"Background", "BorderColor", "Header"}]
      163 GETTABLEKS                       R31 R3 K34 ["darker"]
      165 GETTABLEKS                       R32 R3 K35 ["Blue_Dark"]
      167 LOADK                            R33 K36 [0.5]
      168 CALL                             R31 2 1
      169 SETTABLEKS                       R31 R30 K31 ["Background"]
      171 GETTABLEKS                       R31 R3 K37 ["Blue"]
      173 SETTABLEKS                       R31 R30 K32 ["BorderColor"]
      175 MOVE                             R31 R17
      176 MOVE                             R32 R19
      177 DUPTABLE                         R33 K41 [{["Arrow"], ["Height"] = 50}]
      178 NEWTABLE                         R34 4 0
      180 GETTABLEKS                       R35 R3 K42 ["White"]
      182 SETTABLEKS                       R35 R34 K43 ["Color"]
      184 LOADK                            R35 K44 ["rbxasset://textures/DeveloperFramework/Favorites/star_stroke.png"]
      185 SETTABLEKS                       R35 R34 K17 ["Image"]
      187 GETIMPORT                        R35 K47 [UDim2.fromOffset]
      189 LOADN                            R36 14
      190 LOADN                            R37 14
      191 CALL                             R35 2 1
      192 SETTABLEKS                       R35 R34 K48 ["Size"]
      194 GETTABLEKS                       R35 R15 K49 ["Selected"]
      196 DUPTABLE                         R36 K51 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"}]
      197 SETTABLE                         R36 R34 R35
      198 SETTABLEKS                       R34 R33 K38 ["Arrow"]
      200 CALL                             R31 2 1
      201 SETTABLEKS                       R31 R30 K29 ["Header"]
      203 CALL                             R28 2 1
      204 SETTABLEKS                       R28 R27 K52 ["&CustomStyle"]
      206 CALL                             R25 2 1
      207 SETTABLE                         R25 R23 R24
      208 NAMECALL                         R21 R20 K53 ["extend"]
      210 CALL                             R21 2 0
      211 GETTABLEKS                       R21 R1 K54 ["PureComponent"]
      213 LOADK                            R23 K55 ["ExpandedChangedStory"]
      214 NAMECALL                         R21 R21 K53 ["extend"]
      216 CALL                             R21 2 1
      217 DUPCLOSURE                       R22 K56 [PROTO_2]
      218 SETTABLEKS                       R22 R21 K57 ["init"]
      220 DUPCLOSURE                       R22 K58 [PROTO_3]
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R12
      224 SETTABLEKS                       R22 R21 K59 ["render"]
      226 DUPCLOSURE                       R22 K60 [PROTO_5]
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R9
      232 SETGLOBAL                        R22 K61 ["CustomHeader"]
      234 DUPTABLE                         R22 K63 [{"stories"}]
      235 NEWTABLE                         R23 0 7
      237 DUPTABLE                         R24 K67 [{["name"] = "Default", ["story"]}]
      238 GETTABLEKS                       R25 R1 K68 ["createElement"]
      240 MOVE                             R26 R11
      241 DUPTABLE                         R27 K71 [{["Text"] = "Title"}]
      242 NEWTABLE                         R28 0 1
      244 GETTABLEKS                       R29 R1 K68 ["createElement"]
      246 MOVE                             R30 R12
      247 NEWTABLE                         R31 2 0
      249 LOADK                            R32 K72 ["This has the Default style"]
      250 SETTABLEKS                       R32 R31 K69 ["Text"]
      252 GETTABLEKS                       R32 R1 K73 ["Tag"]
      254 LOADK                            R33 K74 ["X-Fit"]
      255 SETTABLE                         R33 R31 R32
      256 CALL                             R29 2 -1
      257 SETLIST                          R28 R29 -1 [1]
      259 CALL                             R25 3 1
      260 SETTABLEKS                       R25 R24 K66 ["story"]
      262 DUPTABLE                         R25 K76 [{["name"] = "OnExpandedChanged", ["story"]}]
      263 SETTABLEKS                       R21 R25 K66 ["story"]
      265 DUPTABLE                         R26 K78 [{["name"] = "Pane Styles", ["story"]}]
      266 GETTABLEKS                       R27 R1 K68 ["createElement"]
      268 MOVE                             R28 R10
      269 NEWTABLE                         R29 1 0
      271 GETTABLEKS                       R30 R1 K73 ["Tag"]
      273 LOADK                            R31 K79 ["Muted X-FitY X-ColumnM X-Pad"]
      274 SETTABLE                         R31 R29 R30
      275 DUPTABLE                         R30 K83 [{"Box", "RoundBox", "BorderBox"}]
      276 GETTABLEKS                       R31 R1 K68 ["createElement"]
      278 MOVE                             R32 R11
      279 DUPTABLE                         R33 K86 [{["LayoutOrder"] = 1, ["Style"] = "Box", ["Text"] = "Box"}]
      280 NEWTABLE                         R34 0 1
      282 GETTABLEKS                       R35 R1 K68 ["createElement"]
      284 MOVE                             R36 R12
      285 NEWTABLE                         R37 2 0
      287 LOADK                            R38 K87 ["This has a Box style"]
      288 SETTABLEKS                       R38 R37 K69 ["Text"]
      290 GETTABLEKS                       R38 R1 K73 ["Tag"]
      292 LOADK                            R39 K74 ["X-Fit"]
      293 SETTABLE                         R39 R37 R38
      294 CALL                             R35 2 -1
      295 SETLIST                          R34 R35 -1 [1]
      297 CALL                             R31 3 1
      298 SETTABLEKS                       R31 R30 K80 ["Box"]
      300 GETTABLEKS                       R31 R1 K68 ["createElement"]
      302 MOVE                             R32 R11
      303 DUPTABLE                         R33 K89 [{["LayoutOrder"] = 2, ["Style"] = "RoundBox", ["Text"] = "RoundBox"}]
      304 NEWTABLE                         R34 0 1
      306 GETTABLEKS                       R35 R1 K68 ["createElement"]
      308 MOVE                             R36 R12
      309 NEWTABLE                         R37 2 0
      311 LOADK                            R38 K90 ["This has a RoundBox style"]
      312 SETTABLEKS                       R38 R37 K69 ["Text"]
      314 GETTABLEKS                       R38 R1 K73 ["Tag"]
      316 LOADK                            R39 K74 ["X-Fit"]
      317 SETTABLE                         R39 R37 R38
      318 CALL                             R35 2 -1
      319 SETLIST                          R34 R35 -1 [1]
      321 CALL                             R31 3 1
      322 SETTABLEKS                       R31 R30 K81 ["RoundBox"]
      324 GETTABLEKS                       R31 R1 K68 ["createElement"]
      326 MOVE                             R32 R11
      327 DUPTABLE                         R33 K92 [{["LayoutOrder"] = 3, ["Style"] = "BorderBox", ["Text"] = "BorderBox"}]
      328 NEWTABLE                         R34 0 1
      330 GETTABLEKS                       R35 R1 K68 ["createElement"]
      332 MOVE                             R36 R12
      333 NEWTABLE                         R37 2 0
      335 LOADK                            R38 K93 ["This has a BorderBox style"]
      336 SETTABLEKS                       R38 R37 K69 ["Text"]
      338 GETTABLEKS                       R38 R1 K73 ["Tag"]
      340 LOADK                            R39 K74 ["X-Fit"]
      341 SETTABLE                         R39 R37 R38
      342 CALL                             R35 2 -1
      343 SETLIST                          R34 R35 -1 [1]
      345 CALL                             R31 3 1
      346 SETTABLEKS                       R31 R30 K82 ["BorderBox"]
      348 CALL                             R27 3 1
      349 SETTABLEKS                       R27 R26 K66 ["story"]
      351 DUPTABLE                         R27 K95 [{["name"] = "Other Styles", ["story"]}]
      352 GETTABLEKS                       R28 R1 K68 ["createElement"]
      354 MOVE                             R29 R10
      355 NEWTABLE                         R30 1 0
      357 GETTABLEKS                       R31 R1 K73 ["Tag"]
      359 LOADK                            R32 K79 ["Muted X-FitY X-ColumnM X-Pad"]
      360 SETTABLE                         R32 R30 R31
      361 DUPTABLE                         R31 K97 [{"Section"}]
      362 GETTABLEKS                       R32 R1 K68 ["createElement"]
      364 MOVE                             R33 R11
      365 DUPTABLE                         R34 K98 [{["LayoutOrder"] = 1, ["Style"] = "Section", ["Text"] = "Section"}]
      366 NEWTABLE                         R35 0 1
      368 GETTABLEKS                       R36 R1 K68 ["createElement"]
      370 MOVE                             R37 R12
      371 NEWTABLE                         R38 2 0
      373 LOADK                            R39 K99 ["This has a Section style"]
      374 SETTABLEKS                       R39 R38 K69 ["Text"]
      376 GETTABLEKS                       R39 R1 K73 ["Tag"]
      378 LOADK                            R40 K74 ["X-Fit"]
      379 SETTABLE                         R40 R38 R39
      380 CALL                             R36 2 -1
      381 SETLIST                          R35 R36 -1 [1]
      383 CALL                             R32 3 1
      384 SETTABLEKS                       R32 R31 K96 ["Section"]
      386 CALL                             R28 3 1
      387 SETTABLEKS                       R28 R27 K66 ["story"]
      389 DUPTABLE                         R28 K101 [{["name"] = "Custom Header", ["story"]}]
      390 GETTABLEKS                       R29 R1 K68 ["createElement"]
      392 MOVE                             R30 R11
      393 DUPTABLE                         R31 K103 [{["HeaderComponent"], ["Style"] = "BorderBox", ["Text"] = "Title"}]
      394 GETGLOBAL                        R32 K61 ["CustomHeader"]
      396 SETTABLEKS                       R32 R31 K102 ["HeaderComponent"]
      398 NEWTABLE                         R32 0 1
      400 GETTABLEKS                       R33 R1 K68 ["createElement"]
      402 MOVE                             R34 R12
      403 NEWTABLE                         R35 2 0
      405 LOADK                            R36 K104 ["This has a custom HeaderComponent"]
      406 SETTABLEKS                       R36 R35 K69 ["Text"]
      408 GETTABLEKS                       R36 R1 K73 ["Tag"]
      410 LOADK                            R37 K74 ["X-Fit"]
      411 SETTABLE                         R37 R35 R36
      412 CALL                             R33 2 -1
      413 SETLIST                          R32 R33 -1 [1]
      415 CALL                             R29 3 1
      416 SETTABLEKS                       R29 R28 K66 ["story"]
      418 DUPTABLE                         R29 K108 [{["name"] = "Custom Style", ["summary"] = "Custom header Height, Arrow style, BackgroundColor and BorderColor.", ["story"]}]
      419 GETTABLEKS                       R30 R2 K109 ["provide"]
      421 NEWTABLE                         R31 0 1
      423 MOVE                             R32 R20
      424 SETLIST                          R31 R32 1 [1]
      426 NEWTABLE                         R32 0 1
      428 GETTABLEKS                       R33 R1 K68 ["createElement"]
      430 MOVE                             R34 R11
      431 DUPTABLE                         R35 K111 [{["Style"] = "CustomStyle", ["Text"] = "Title"}]
      432 NEWTABLE                         R36 0 1
      434 GETTABLEKS                       R37 R1 K68 ["createElement"]
      436 MOVE                             R38 R12
      437 NEWTABLE                         R39 2 0
      439 LOADK                            R40 K112 ["This has a custom style"]
      440 SETTABLEKS                       R40 R39 K69 ["Text"]
      442 GETTABLEKS                       R40 R1 K73 ["Tag"]
      444 LOADK                            R41 K74 ["X-Fit"]
      445 SETTABLE                         R41 R39 R40
      446 CALL                             R37 2 -1
      447 SETLIST                          R36 R37 -1 [1]
      449 CALL                             R33 3 -1
      450 SETLIST                          R32 R33 -1 [1]
      452 CALL                             R30 2 1
      453 SETTABLEKS                       R30 R29 K66 ["story"]
      455 DUPTABLE                         R30 K115 [{["name"] = "Always Expanded", ["summary"] = "Can't collapse pane and arrow is hidden.", ["story"]}]
      456 GETTABLEKS                       R31 R1 K68 ["createElement"]
      458 MOVE                             R32 R11
      459 DUPTABLE                         R33 K118 [{["AlwaysExpanded"] = True, ["Style"] = "Section", ["Text"] = "Section"}]
      460 NEWTABLE                         R34 0 1
      462 GETTABLEKS                       R35 R1 K68 ["createElement"]
      464 MOVE                             R36 R12
      465 NEWTABLE                         R37 2 0
      467 LOADK                            R38 K119 ["This pane will stay open"]
      468 SETTABLEKS                       R38 R37 K69 ["Text"]
      470 GETTABLEKS                       R38 R1 K73 ["Tag"]
      472 LOADK                            R39 K74 ["X-Fit"]
      473 SETTABLE                         R39 R37 R38
      474 CALL                             R35 2 -1
      475 SETLIST                          R34 R35 -1 [1]
      477 CALL                             R31 3 1
      478 SETTABLEKS                       R31 R30 K66 ["story"]
      480 SETLIST                          R23 R24 7 [1]
      482 SETTABLEKS                       R23 R22 K62 ["stories"]
      484 RETURN                           R22 1
