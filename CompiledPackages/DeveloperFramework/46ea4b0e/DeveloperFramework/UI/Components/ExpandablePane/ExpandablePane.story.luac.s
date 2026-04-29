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
        0 DUPTABLE                         R1 K2 [{"expanded", "expandedCount"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["expanded"]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["expandedCount"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["expandedChanged"]
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Expanded", "OnExpandedChanged", "Text"}]
        5 GETTABLEKS                       R5 R0 K5 ["state"]
        7 GETTABLEKS                       R4 R5 K6 ["expanded"]
        9 SETTABLEKS                       R4 R3 K1 ["Expanded"]
       11 GETTABLEKS                       R4 R0 K7 ["expandedChanged"]
       13 SETTABLEKS                       R4 R3 K2 ["OnExpandedChanged"]
       15 LOADK                            R4 K2 ["OnExpandedChanged"]
       16 SETTABLEKS                       R4 R3 K3 ["Text"]
       18 NEWTABLE                         R4 0 2
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["createElement"]
       23 GETUPVAL                         R6 2
       24 NEWTABLE                         R7 2 0
       26 LOADK                            R8 K8 ["This has an OnExpandedChanged callback"]
       27 SETTABLEKS                       R8 R7 K3 ["Text"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K9 ["Tag"]
       32 LOADK                            R9 K10 ["X-FitY"]
       33 SETTABLE                         R9 R7 R8
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K0 ["createElement"]
       38 GETUPVAL                         R7 2
       39 NEWTABLE                         R8 2 0
       41 GETIMPORT                        R9 K13 [string.format]
       43 LOADK                            R10 K14 ["Expanded %d times"]
       44 GETTABLEKS                       R12 R0 K5 ["state"]
       46 GETTABLEKS                       R11 R12 K15 ["expandedCount"]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K3 ["Text"]
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R9 R10 K9 ["Tag"]
       54 LOADK                            R10 K10 ["X-FitY"]
       55 SETTABLE                         R10 R8 R9
       56 CALL                             R6 2 -1
       57 SETLIST                          R4 R5 -1 [1]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Link clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K4 [{"HorizontalAlignment", "Layout", "Spacing"}]
        6 GETIMPORT                        R5 K7 [Enum.HorizontalAlignment.Right]
        8 SETTABLEKS                       R5 R4 K1 ["HorizontalAlignment"]
       10 GETIMPORT                        R5 K10 [Enum.FillDirection.Horizontal]
       12 SETTABLEKS                       R5 R4 K2 ["Layout"]
       14 LOADN                            R5 8
       15 SETTABLEKS                       R5 R4 K3 ["Spacing"]
       17 MOVE                             R5 R0
       18 CALL                             R3 2 1
       19 DUPTABLE                         R4 K13 [{"Icon", "Link"}]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["createElement"]
       23 GETUPVAL                         R6 3
       24 DUPTABLE                         R7 K17 [{"LayoutOrder", "Image", "Size"}]
       25 LOADN                            R8 1
       26 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       28 LOADK                            R8 K18 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
       29 SETTABLEKS                       R8 R7 K15 ["Image"]
       31 GETIMPORT                        R8 K21 [UDim2.fromOffset]
       33 LOADN                            R9 20
       34 LOADN                            R10 20
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K16 ["Size"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K11 ["Icon"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K0 ["createElement"]
       44 GETUPVAL                         R6 4
       45 DUPTABLE                         R7 K24 [{"LayoutOrder", "OnClick", "Text"}]
       46 LOADN                            R8 2
       47 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       49 DUPCLOSURE                       R8 K25 [PROTO_4]
       50 SETTABLEKS                       R8 R7 K22 ["OnClick"]
       52 LOADK                            R8 K26 ["1 warning"]
       53 SETTABLEKS                       R8 R7 K23 ["Text"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K12 ["Link"]
       58 CALL                             R1 3 -1
       59 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Style"]
       27 GETTABLEKS                       R4 R5 K10 ["Colors"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Style"]
       34 GETTABLEKS                       R6 R7 K11 ["Themes"]
       36 GETTABLEKS                       R5 R6 K12 ["BaseTheme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Style"]
       43 GETTABLEKS                       R7 R8 K11 ["Themes"]
       45 GETTABLEKS                       R6 R7 K13 ["StudioTheme"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R8 R0 K9 ["Style"]
       52 GETTABLEKS                       R7 R8 K14 ["ComponentSymbols"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R10 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R10 K15 ["Components"]
       61 GETTABLEKS                       R8 R9 K16 ["ExpandablePane"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R11 R0 K2 ["UI"]
       68 GETTABLEKS                       R10 R11 K15 ["Components"]
       70 GETTABLEKS                       R9 R10 K17 ["Image"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K6 [require]
       75 GETTABLEKS                       R12 R0 K2 ["UI"]
       77 GETTABLEKS                       R11 R12 K15 ["Components"]
       79 GETTABLEKS                       R10 R11 K18 ["LinkText"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K6 [require]
       84 GETTABLEKS                       R13 R0 K2 ["UI"]
       86 GETTABLEKS                       R12 R13 K15 ["Components"]
       88 GETTABLEKS                       R11 R12 K19 ["Pane"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K6 [require]
       93 GETTABLEKS                       R15 R0 K2 ["UI"]
       95 GETTABLEKS                       R14 R15 K15 ["Components"]
       97 GETTABLEKS                       R13 R14 K16 ["ExpandablePane"]
       99 GETTABLEKS                       R12 R13 K20 ["SimpleExpandablePane"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K6 [require]
      104 GETTABLEKS                       R15 R0 K2 ["UI"]
      106 GETTABLEKS                       R14 R15 K15 ["Components"]
      108 GETTABLEKS                       R13 R14 K21 ["TextLabel"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K6 [require]
      113 GETTABLEKS                       R16 R0 K2 ["UI"]
      115 GETTABLEKS                       R15 R16 K15 ["Components"]
      117 GETTABLEKS                       R14 R15 K22 ["UIFolderData"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K6 [require]
      122 GETTABLEKS                       R16 R13 K16 ["ExpandablePane"]
      124 GETTABLEKS                       R15 R16 K23 ["style"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K6 [require]
      129 GETTABLEKS                       R17 R0 K24 ["Util"]
      131 GETTABLEKS                       R16 R17 K25 ["StyleModifier"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K6 [require]
      136 GETTABLEKS                       R18 R0 K4 ["Parent"]
      138 GETTABLEKS                       R17 R18 K26 ["Dash"]
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
      177 DUPTABLE                         R33 K40 [{"Arrow", "Height"}]
      178 NEWTABLE                         R34 4 0
      180 GETTABLEKS                       R35 R3 K41 ["White"]
      182 SETTABLEKS                       R35 R34 K42 ["Color"]
      184 LOADK                            R35 K43 ["rbxasset://textures/DeveloperFramework/Favorites/star_stroke.png"]
      185 SETTABLEKS                       R35 R34 K17 ["Image"]
      187 GETIMPORT                        R35 K46 [UDim2.fromOffset]
      189 LOADN                            R36 14
      190 LOADN                            R37 14
      191 CALL                             R35 2 1
      192 SETTABLEKS                       R35 R34 K47 ["Size"]
      194 GETTABLEKS                       R35 R15 K48 ["Selected"]
      196 DUPTABLE                         R36 K49 [{"Image"}]
      197 LOADK                            R37 K50 ["rbxasset://textures/DeveloperFramework/Favorites/star_filled.png"]
      198 SETTABLEKS                       R37 R36 K17 ["Image"]
      200 SETTABLE                         R36 R34 R35
      201 SETTABLEKS                       R34 R33 K38 ["Arrow"]
      203 LOADN                            R34 50
      204 SETTABLEKS                       R34 R33 K39 ["Height"]
      206 CALL                             R31 2 1
      207 SETTABLEKS                       R31 R30 K29 ["Header"]
      209 CALL                             R28 2 1
      210 SETTABLEKS                       R28 R27 K51 ["&CustomStyle"]
      212 CALL                             R25 2 1
      213 SETTABLE                         R25 R23 R24
      214 NAMECALL                         R21 R20 K52 ["extend"]
      216 CALL                             R21 2 0
      217 GETTABLEKS                       R21 R1 K53 ["PureComponent"]
      219 LOADK                            R23 K54 ["ExpandedChangedStory"]
      220 NAMECALL                         R21 R21 K52 ["extend"]
      222 CALL                             R21 2 1
      223 DUPCLOSURE                       R22 K55 [PROTO_2]
      224 SETTABLEKS                       R22 R21 K56 ["init"]
      226 DUPCLOSURE                       R22 K57 [PROTO_3]
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R12
      230 SETTABLEKS                       R22 R21 K58 ["render"]
      232 DUPCLOSURE                       R22 K59 [PROTO_5]
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R10
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R8
      237 CAPTURE                          VAL R9
      238 SETGLOBAL                        R22 K60 ["CustomHeader"]
      240 DUPTABLE                         R22 K62 [{"stories"}]
      241 NEWTABLE                         R23 0 7
      243 DUPTABLE                         R24 K65 [{"name", "story"}]
      244 LOADK                            R25 K66 ["Default"]
      245 SETTABLEKS                       R25 R24 K63 ["name"]
      247 GETTABLEKS                       R25 R1 K67 ["createElement"]
      249 MOVE                             R26 R11
      250 DUPTABLE                         R27 K69 [{"Text"}]
      251 LOADK                            R28 K70 ["Title"]
      252 SETTABLEKS                       R28 R27 K68 ["Text"]
      254 NEWTABLE                         R28 0 1
      256 GETTABLEKS                       R29 R1 K67 ["createElement"]
      258 MOVE                             R30 R12
      259 NEWTABLE                         R31 2 0
      261 LOADK                            R32 K71 ["This has the Default style"]
      262 SETTABLEKS                       R32 R31 K68 ["Text"]
      264 GETTABLEKS                       R32 R1 K72 ["Tag"]
      266 LOADK                            R33 K73 ["X-Fit"]
      267 SETTABLE                         R33 R31 R32
      268 CALL                             R29 2 -1
      269 SETLIST                          R28 R29 -1 [1]
      271 CALL                             R25 3 1
      272 SETTABLEKS                       R25 R24 K64 ["story"]
      274 DUPTABLE                         R25 K65 [{"name", "story"}]
      275 LOADK                            R26 K74 ["OnExpandedChanged"]
      276 SETTABLEKS                       R26 R25 K63 ["name"]
      278 SETTABLEKS                       R21 R25 K64 ["story"]
      280 DUPTABLE                         R26 K65 [{"name", "story"}]
      281 LOADK                            R27 K75 ["Pane Styles"]
      282 SETTABLEKS                       R27 R26 K63 ["name"]
      284 GETTABLEKS                       R27 R1 K67 ["createElement"]
      286 MOVE                             R28 R10
      287 NEWTABLE                         R29 1 0
      289 GETTABLEKS                       R30 R1 K72 ["Tag"]
      291 LOADK                            R31 K76 ["Muted X-FitY X-ColumnM X-Pad"]
      292 SETTABLE                         R31 R29 R30
      293 DUPTABLE                         R30 K80 [{"Box", "RoundBox", "BorderBox"}]
      294 GETTABLEKS                       R31 R1 K67 ["createElement"]
      296 MOVE                             R32 R11
      297 DUPTABLE                         R33 K82 [{"LayoutOrder", "Style", "Text"}]
      298 LOADN                            R34 1
      299 SETTABLEKS                       R34 R33 K81 ["LayoutOrder"]
      301 LOADK                            R34 K77 ["Box"]
      302 SETTABLEKS                       R34 R33 K9 ["Style"]
      304 LOADK                            R34 K77 ["Box"]
      305 SETTABLEKS                       R34 R33 K68 ["Text"]
      307 NEWTABLE                         R34 0 1
      309 GETTABLEKS                       R35 R1 K67 ["createElement"]
      311 MOVE                             R36 R12
      312 NEWTABLE                         R37 2 0
      314 LOADK                            R38 K83 ["This has a Box style"]
      315 SETTABLEKS                       R38 R37 K68 ["Text"]
      317 GETTABLEKS                       R38 R1 K72 ["Tag"]
      319 LOADK                            R39 K73 ["X-Fit"]
      320 SETTABLE                         R39 R37 R38
      321 CALL                             R35 2 -1
      322 SETLIST                          R34 R35 -1 [1]
      324 CALL                             R31 3 1
      325 SETTABLEKS                       R31 R30 K77 ["Box"]
      327 GETTABLEKS                       R31 R1 K67 ["createElement"]
      329 MOVE                             R32 R11
      330 DUPTABLE                         R33 K82 [{"LayoutOrder", "Style", "Text"}]
      331 LOADN                            R34 2
      332 SETTABLEKS                       R34 R33 K81 ["LayoutOrder"]
      334 LOADK                            R34 K78 ["RoundBox"]
      335 SETTABLEKS                       R34 R33 K9 ["Style"]
      337 LOADK                            R34 K78 ["RoundBox"]
      338 SETTABLEKS                       R34 R33 K68 ["Text"]
      340 NEWTABLE                         R34 0 1
      342 GETTABLEKS                       R35 R1 K67 ["createElement"]
      344 MOVE                             R36 R12
      345 NEWTABLE                         R37 2 0
      347 LOADK                            R38 K84 ["This has a RoundBox style"]
      348 SETTABLEKS                       R38 R37 K68 ["Text"]
      350 GETTABLEKS                       R38 R1 K72 ["Tag"]
      352 LOADK                            R39 K73 ["X-Fit"]
      353 SETTABLE                         R39 R37 R38
      354 CALL                             R35 2 -1
      355 SETLIST                          R34 R35 -1 [1]
      357 CALL                             R31 3 1
      358 SETTABLEKS                       R31 R30 K78 ["RoundBox"]
      360 GETTABLEKS                       R31 R1 K67 ["createElement"]
      362 MOVE                             R32 R11
      363 DUPTABLE                         R33 K82 [{"LayoutOrder", "Style", "Text"}]
      364 LOADN                            R34 3
      365 SETTABLEKS                       R34 R33 K81 ["LayoutOrder"]
      367 LOADK                            R34 K79 ["BorderBox"]
      368 SETTABLEKS                       R34 R33 K9 ["Style"]
      370 LOADK                            R34 K79 ["BorderBox"]
      371 SETTABLEKS                       R34 R33 K68 ["Text"]
      373 NEWTABLE                         R34 0 1
      375 GETTABLEKS                       R35 R1 K67 ["createElement"]
      377 MOVE                             R36 R12
      378 NEWTABLE                         R37 2 0
      380 LOADK                            R38 K85 ["This has a BorderBox style"]
      381 SETTABLEKS                       R38 R37 K68 ["Text"]
      383 GETTABLEKS                       R38 R1 K72 ["Tag"]
      385 LOADK                            R39 K73 ["X-Fit"]
      386 SETTABLE                         R39 R37 R38
      387 CALL                             R35 2 -1
      388 SETLIST                          R34 R35 -1 [1]
      390 CALL                             R31 3 1
      391 SETTABLEKS                       R31 R30 K79 ["BorderBox"]
      393 CALL                             R27 3 1
      394 SETTABLEKS                       R27 R26 K64 ["story"]
      396 DUPTABLE                         R27 K65 [{"name", "story"}]
      397 LOADK                            R28 K86 ["Other Styles"]
      398 SETTABLEKS                       R28 R27 K63 ["name"]
      400 GETTABLEKS                       R28 R1 K67 ["createElement"]
      402 MOVE                             R29 R10
      403 NEWTABLE                         R30 1 0
      405 GETTABLEKS                       R31 R1 K72 ["Tag"]
      407 LOADK                            R32 K76 ["Muted X-FitY X-ColumnM X-Pad"]
      408 SETTABLE                         R32 R30 R31
      409 DUPTABLE                         R31 K88 [{"Section"}]
      410 GETTABLEKS                       R32 R1 K67 ["createElement"]
      412 MOVE                             R33 R11
      413 DUPTABLE                         R34 K82 [{"LayoutOrder", "Style", "Text"}]
      414 LOADN                            R35 1
      415 SETTABLEKS                       R35 R34 K81 ["LayoutOrder"]
      417 LOADK                            R35 K87 ["Section"]
      418 SETTABLEKS                       R35 R34 K9 ["Style"]
      420 LOADK                            R35 K87 ["Section"]
      421 SETTABLEKS                       R35 R34 K68 ["Text"]
      423 NEWTABLE                         R35 0 1
      425 GETTABLEKS                       R36 R1 K67 ["createElement"]
      427 MOVE                             R37 R12
      428 NEWTABLE                         R38 2 0
      430 LOADK                            R39 K89 ["This has a Section style"]
      431 SETTABLEKS                       R39 R38 K68 ["Text"]
      433 GETTABLEKS                       R39 R1 K72 ["Tag"]
      435 LOADK                            R40 K73 ["X-Fit"]
      436 SETTABLE                         R40 R38 R39
      437 CALL                             R36 2 -1
      438 SETLIST                          R35 R36 -1 [1]
      440 CALL                             R32 3 1
      441 SETTABLEKS                       R32 R31 K87 ["Section"]
      443 CALL                             R28 3 1
      444 SETTABLEKS                       R28 R27 K64 ["story"]
      446 DUPTABLE                         R28 K65 [{"name", "story"}]
      447 LOADK                            R29 K90 ["Custom Header"]
      448 SETTABLEKS                       R29 R28 K63 ["name"]
      450 GETTABLEKS                       R29 R1 K67 ["createElement"]
      452 MOVE                             R30 R11
      453 DUPTABLE                         R31 K92 [{"HeaderComponent", "Style", "Text"}]
      454 GETGLOBAL                        R32 K60 ["CustomHeader"]
      456 SETTABLEKS                       R32 R31 K91 ["HeaderComponent"]
      458 LOADK                            R32 K79 ["BorderBox"]
      459 SETTABLEKS                       R32 R31 K9 ["Style"]
      461 LOADK                            R32 K70 ["Title"]
      462 SETTABLEKS                       R32 R31 K68 ["Text"]
      464 NEWTABLE                         R32 0 1
      466 GETTABLEKS                       R33 R1 K67 ["createElement"]
      468 MOVE                             R34 R12
      469 NEWTABLE                         R35 2 0
      471 LOADK                            R36 K93 ["This has a custom HeaderComponent"]
      472 SETTABLEKS                       R36 R35 K68 ["Text"]
      474 GETTABLEKS                       R36 R1 K72 ["Tag"]
      476 LOADK                            R37 K73 ["X-Fit"]
      477 SETTABLE                         R37 R35 R36
      478 CALL                             R33 2 -1
      479 SETLIST                          R32 R33 -1 [1]
      481 CALL                             R29 3 1
      482 SETTABLEKS                       R29 R28 K64 ["story"]
      484 DUPTABLE                         R29 K95 [{"name", "summary", "story"}]
      485 LOADK                            R30 K96 ["Custom Style"]
      486 SETTABLEKS                       R30 R29 K63 ["name"]
      488 LOADK                            R30 K97 ["Custom header Height, Arrow style, BackgroundColor and BorderColor."]
      489 SETTABLEKS                       R30 R29 K94 ["summary"]
      491 GETTABLEKS                       R30 R2 K98 ["provide"]
      493 NEWTABLE                         R31 0 1
      495 MOVE                             R32 R20
      496 SETLIST                          R31 R32 1 [1]
      498 NEWTABLE                         R32 0 1
      500 GETTABLEKS                       R33 R1 K67 ["createElement"]
      502 MOVE                             R34 R11
      503 DUPTABLE                         R35 K99 [{"Style", "Text"}]
      504 LOADK                            R36 K100 ["CustomStyle"]
      505 SETTABLEKS                       R36 R35 K9 ["Style"]
      507 LOADK                            R36 K70 ["Title"]
      508 SETTABLEKS                       R36 R35 K68 ["Text"]
      510 NEWTABLE                         R36 0 1
      512 GETTABLEKS                       R37 R1 K67 ["createElement"]
      514 MOVE                             R38 R12
      515 NEWTABLE                         R39 2 0
      517 LOADK                            R40 K101 ["This has a custom style"]
      518 SETTABLEKS                       R40 R39 K68 ["Text"]
      520 GETTABLEKS                       R40 R1 K72 ["Tag"]
      522 LOADK                            R41 K73 ["X-Fit"]
      523 SETTABLE                         R41 R39 R40
      524 CALL                             R37 2 -1
      525 SETLIST                          R36 R37 -1 [1]
      527 CALL                             R33 3 -1
      528 SETLIST                          R32 R33 -1 [1]
      530 CALL                             R30 2 1
      531 SETTABLEKS                       R30 R29 K64 ["story"]
      533 DUPTABLE                         R30 K95 [{"name", "summary", "story"}]
      534 LOADK                            R31 K102 ["Always Expanded"]
      535 SETTABLEKS                       R31 R30 K63 ["name"]
      537 LOADK                            R31 K103 ["Can't collapse pane and arrow is hidden."]
      538 SETTABLEKS                       R31 R30 K94 ["summary"]
      540 GETTABLEKS                       R31 R1 K67 ["createElement"]
      542 MOVE                             R32 R11
      543 DUPTABLE                         R33 K105 [{"AlwaysExpanded", "Style", "Text"}]
      544 LOADB                            R34 1
      545 SETTABLEKS                       R34 R33 K104 ["AlwaysExpanded"]
      547 LOADK                            R34 K87 ["Section"]
      548 SETTABLEKS                       R34 R33 K9 ["Style"]
      550 LOADK                            R34 K87 ["Section"]
      551 SETTABLEKS                       R34 R33 K68 ["Text"]
      553 NEWTABLE                         R34 0 1
      555 GETTABLEKS                       R35 R1 K67 ["createElement"]
      557 MOVE                             R36 R12
      558 NEWTABLE                         R37 2 0
      560 LOADK                            R38 K106 ["This pane will stay open"]
      561 SETTABLEKS                       R38 R37 K68 ["Text"]
      563 GETTABLEKS                       R38 R1 K72 ["Tag"]
      565 LOADK                            R39 K73 ["X-Fit"]
      566 SETTABLE                         R39 R37 R38
      567 CALL                             R35 2 -1
      568 SETLIST                          R34 R35 -1 [1]
      570 CALL                             R31 3 1
      571 SETTABLEKS                       R31 R30 K64 ["story"]
      573 SETLIST                          R23 R24 7 [1]
      575 SETTABLEKS                       R23 R22 K61 ["stories"]
      577 RETURN                           R22 1
