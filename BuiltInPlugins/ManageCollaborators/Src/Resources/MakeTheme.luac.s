PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 NEWTABLE                         R4 8 0
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["CloseWidget"]
        8 LOADK                            R6 K1 ["rbxasset://textures/ManageCollaborators/closeWidget_dark.png"]
        9 SETTABLE                         R6 R4 R5
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["RightArrow"]
       13 LOADK                            R6 K3 ["rbxasset://textures/ManageCollaborators/arrowRight_dark.png"]
       14 SETTABLE                         R6 R4 R5
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["DownArrow"]
       18 LOADK                            R6 K5 ["rbxasset://textures/ManageCollaborators/arrowDown_dark.png"]
       19 SETTABLE                         R6 R4 R5
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K6 ["FriendIcon"]
       23 LOADK                            R6 K7 ["rbxasset://textures/ManageCollaborators/friendIcon_dark.png"]
       24 SETTABLE                         R6 R4 R5
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K8 ["FooterBorder"]
       28 GETIMPORT                        R6 K11 [Color3.fromRGB]
       30 LOADN                            R7 0
       31 LOADN                            R8 0
       32 LOADN                            R9 0
       33 CALL                             R6 3 1
       34 SETTABLE                         R6 R4 R5
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K12 ["Border"]
       38 GETUPVAL                         R8 3
       39 GETTABLEKS                       R7 R8 K13 ["Gray"]
       41 GETTABLEN                        R6 R7 70
       42 SETTABLE                         R6 R4 R5
       43 CALL                             R2 2 1
       44 GETUPVAL                         R3 0
       45 GETUPVAL                         R4 4
       46 NEWTABLE                         R5 8 0
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R6 R7 K0 ["CloseWidget"]
       51 LOADK                            R7 K14 ["rbxasset://textures/ManageCollaborators/closeWidget_light.png"]
       52 SETTABLE                         R7 R5 R6
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R6 R7 K2 ["RightArrow"]
       56 LOADK                            R7 K15 ["rbxasset://textures/ManageCollaborators/arrowRight_light.png"]
       57 SETTABLE                         R7 R5 R6
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R6 R7 K4 ["DownArrow"]
       61 LOADK                            R7 K16 ["rbxasset://textures/ManageCollaborators/arrowDown_light.png"]
       62 SETTABLE                         R7 R5 R6
       63 GETUPVAL                         R7 2
       64 GETTABLEKS                       R6 R7 K6 ["FriendIcon"]
       66 LOADK                            R7 K17 ["rbxasset://textures/ManageCollaborators/friendIcon_light.png"]
       67 SETTABLE                         R7 R5 R6
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R6 R7 K8 ["FooterBorder"]
       71 GETIMPORT                        R7 K11 [Color3.fromRGB]
       73 LOADN                            R8 244
       74 LOADN                            R9 244
       75 LOADN                            R10 244
       76 CALL                             R7 3 1
       77 SETTABLE                         R7 R5 R6
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R6 R7 K18 ["Dropdown"]
       81 GETIMPORT                        R7 K11 [Color3.fromRGB]
       83 LOADN                            R8 228
       84 LOADN                            R9 238
       85 LOADN                            R10 254
       86 CALL                             R7 3 1
       87 SETTABLE                         R7 R5 R6
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R6 R7 K12 ["Border"]
       91 GETUPVAL                         R9 3
       92 GETTABLEKS                       R8 R9 K13 ["Gray"]
       94 GETTABLEN                        R7 R8 40
       95 SETTABLE                         R7 R5 R6
       96 CALL                             R3 2 1
       97 JUMPIFNOT                        R0 ; [+8]
       98 GETUPVAL                         R5 5
       99 GETTABLEKS                       R4 R5 K19 ["mock"]
      101 MOVE                             R5 R2
      102 MOVE                             R6 R3
      103 CALL                             R4 2 1
      104 MOVE                             R1 R4
      105 JUMP                             ; [+7]
      106 GETUPVAL                         R5 5
      107 GETTABLEKS                       R4 R5 K20 ["new"]
      109 MOVE                             R5 R2
      110 MOVE                             R6 R3
      111 CALL                             R4 2 1
      112 MOVE                             R1 R4
      113 GETUPVAL                         R6 6
      114 NAMECALL                         R4 R1 K21 ["extend"]
      116 CALL                             R4 2 -1
      117 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["getRawComponentStyle"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R6 K9 ["Cryo"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R1 K10 ["UIData"]
       29 GETTABLEKS                       R6 R2 K11 ["ComponentSymbols"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R9 R5 K12 ["ExpandablePane"]
       35 GETTABLEKS                       R8 R9 K13 ["style"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K14 ["&Default"]
       40 GETTABLEKS                       R9 R7 K15 ["Header"]
       42 GETIMPORT                        R10 K4 [require]
       44 GETTABLEKS                       R12 R5 K16 ["Button"]
       46 GETTABLEKS                       R11 R12 K13 ["style"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R11 R10 K17 ["&RoundPrimary"]
       51 GETTABLEKS                       R12 R10 K18 ["&Round"]
       53 GETTABLEKS                       R13 R1 K7 ["Style"]
       55 GETTABLEKS                       R15 R13 K19 ["Themes"]
       57 GETTABLEKS                       R14 R15 K20 ["BaseTheme"]
       59 GETTABLEKS                       R16 R13 K19 ["Themes"]
       61 GETTABLEKS                       R15 R16 K21 ["StudioTheme"]
       63 GETTABLEKS                       R17 R13 K19 ["Themes"]
       65 GETTABLEKS                       R16 R17 K22 ["DarkTheme"]
       67 GETTABLEKS                       R18 R13 K19 ["Themes"]
       69 GETTABLEKS                       R17 R18 K23 ["LightTheme"]
       71 GETTABLEKS                       R18 R13 K24 ["StyleKey"]
       73 GETTABLEKS                       R19 R13 K25 ["ColorSystem"]
       75 GETTABLEKS                       R20 R1 K26 ["Dash"]
       77 GETTABLEKS                       R21 R20 K27 ["join"]
       79 GETIMPORT                        R22 K29 [game]
       81 LOADK                            R24 K30 ["Collab8818_ShowSearchItemDisplayName"]
       82 NAMECALL                         R22 R22 K31 ["GetFastFlag"]
       84 CALL                             R22 2 1
       85 GETIMPORT                        R23 K29 [game]
       87 LOADK                            R25 K32 ["Collab9031_ManageCollaboratorsEarlyFoundationMigration1"]
       88 NAMECALL                         R23 R23 K31 ["GetFastFlag"]
       90 CALL                             R23 2 1
       91 GETIMPORT                        R24 K29 [game]
       93 LOADK                            R26 K33 ["UpsellCollabSafety2"]
       94 NAMECALL                         R24 R24 K31 ["GetFastFlag"]
       96 CALL                             R24 2 1
       97 GETIMPORT                        R25 K29 [game]
       99 LOADK                            R27 K34 ["ManageCollabFilterWidgetSpacingFix"]
      100 NAMECALL                         R25 R25 K31 ["GetFastFlag"]
      102 CALL                             R25 2 1
      103 JUMPIFNOT                        R23 ; [+3]
      104 GETIMPORT                        R26 K38 [Enum.Font.BuilderSans]
      106 JUMP                             ; [+2]
      107 GETIMPORT                        R26 K40 [Enum.Font.SourceSans]
      109 JUMPIFNOT                        R23 ; [+3]
      110 GETIMPORT                        R27 K42 [Enum.Font.BuilderSansMedium]
      112 JUMP                             ; [+2]
      113 GETIMPORT                        R27 K44 [Enum.Font.SourceSansSemibold]
      115 NEWTABLE                         R28 32 0
      117 GETTABLEKS                       R29 R6 K12 ["ExpandablePane"]
      119 MOVE                             R30 R21
      120 GETTABLEKS                       R32 R6 K12 ["ExpandablePane"]
      122 GETTABLE                         R31 R14 R32
      123 NEWTABLE                         R32 1 0
      125 MOVE                             R33 R21
      126 MOVE                             R34 R8
      127 DUPTABLE                         R35 K45 [{"Header"}]
      128 MOVE                             R36 R21
      129 MOVE                             R37 R9
      130 DUPTABLE                         R38 K49 [{"Arrow", "HorizontalAlignment", "Padding"}]
      131 DUPTABLE                         R39 K51 [{"Size"}]
      132 GETIMPORT                        R40 K54 [UDim2.fromOffset]
      134 LOADN                            R41 0
      135 LOADN                            R42 0
      136 CALL                             R40 2 1
      137 SETTABLEKS                       R40 R39 K50 ["Size"]
      139 SETTABLEKS                       R39 R38 K46 ["Arrow"]
      141 GETIMPORT                        R39 K56 [Enum.HorizontalAlignment.Right]
      143 SETTABLEKS                       R39 R38 K47 ["HorizontalAlignment"]
      145 LOADN                            R39 0
      146 SETTABLEKS                       R39 R38 K48 ["Padding"]
      148 CALL                             R36 2 1
      149 SETTABLEKS                       R36 R35 K15 ["Header"]
      151 CALL                             R33 2 1
      152 SETTABLEKS                       R33 R32 K57 ["&Arrowless"]
      154 CALL                             R30 2 1
      155 SETTABLE                         R30 R28 R29
      156 GETTABLEKS                       R29 R6 K58 ["SelectInput"]
      158 MOVE                             R30 R21
      159 GETTABLEKS                       R32 R6 K58 ["SelectInput"]
      161 GETTABLE                         R31 R14 R32
      162 NEWTABLE                         R32 2 0
      164 MOVE                             R33 R21
      165 MOVE                             R34 R8
      166 DUPTABLE                         R35 K60 [{"PlaceholderTextColor"}]
      167 GETTABLEKS                       R36 R18 K61 ["TitlebarText"]
      169 SETTABLEKS                       R36 R35 K59 ["PlaceholderTextColor"]
      171 CALL                             R33 2 1
      172 SETTABLEKS                       R33 R32 K62 ["&Editable"]
      174 MOVE                             R33 R21
      175 MOVE                             R34 R8
      176 DUPTABLE                         R35 K60 [{"PlaceholderTextColor"}]
      177 GETTABLEKS                       R36 R18 K63 ["DimmedText"]
      179 SETTABLEKS                       R36 R35 K59 ["PlaceholderTextColor"]
      181 CALL                             R33 2 1
      182 SETTABLEKS                       R33 R32 K64 ["&NonEditable"]
      184 CALL                             R30 2 1
      185 SETTABLE                         R30 R28 R29
      186 GETTABLEKS                       R29 R6 K16 ["Button"]
      188 MOVE                             R30 R21
      189 GETTABLEKS                       R32 R6 K16 ["Button"]
      191 GETTABLE                         R31 R14 R32
      192 NEWTABLE                         R32 4 0
      194 MOVE                             R33 R21
      195 MOVE                             R34 R11
      196 DUPTABLE                         R35 K66 [{"Font", "TextSize"}]
      197 SETTABLEKS                       R26 R35 K36 ["Font"]
      199 LOADN                            R36 24
      200 SETTABLEKS                       R36 R35 K65 ["TextSize"]
      202 CALL                             R33 2 1
      203 SETTABLEKS                       R33 R32 K67 ["&Active"]
      205 MOVE                             R33 R21
      206 MOVE                             R34 R11
      207 DUPTABLE                         R35 K66 [{"Font", "TextSize"}]
      208 SETTABLEKS                       R26 R35 K36 ["Font"]
      210 LOADN                            R36 24
      211 SETTABLEKS                       R36 R35 K65 ["TextSize"]
      213 CALL                             R33 2 1
      214 SETTABLEKS                       R33 R32 K68 ["&Passive"]
      216 MOVE                             R33 R21
      217 MOVE                             R34 R12
      218 DUPTABLE                         R35 K66 [{"Font", "TextSize"}]
      219 SETTABLEKS                       R26 R35 K36 ["Font"]
      221 LOADN                            R36 24
      222 SETTABLEKS                       R36 R35 K65 ["TextSize"]
      224 CALL                             R33 2 1
      225 SETTABLEKS                       R33 R32 K69 ["&Cancel"]
      227 MOVE                             R33 R21
      228 MOVE                             R34 R12
      229 DUPTABLE                         R35 K71 [{"Font", "TextSize", "border"}]
      230 SETTABLEKS                       R26 R35 K36 ["Font"]
      232 LOADN                            R36 22
      233 SETTABLEKS                       R36 R35 K65 ["TextSize"]
      235 GETTABLEKS                       R36 R18 K72 ["Border"]
      237 SETTABLEKS                       R36 R35 K70 ["border"]
      239 CALL                             R33 2 1
      240 SETTABLEKS                       R33 R32 K73 ["&Pill"]
      242 CALL                             R30 2 1
      243 SETTABLE                         R30 R28 R29
      244 GETTABLEKS                       R29 R6 K74 ["StyledDialog"]
      246 GETTABLEKS                       R31 R4 K75 ["Dictionary"]
      248 GETTABLEKS                       R30 R31 K27 ["join"]
      250 MOVE                             R31 R3
      251 LOADK                            R32 K74 ["StyledDialog"]
      252 CALL                             R31 1 1
      253 NEWTABLE                         R32 2 0
      255 DUPTABLE                         R33 K79 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
      256 GETIMPORT                        R34 K40 [Enum.Font.SourceSans]
      258 SETTABLEKS                       R34 R33 K36 ["Font"]
      260 LOADN                            R34 24
      261 SETTABLEKS                       R34 R33 K76 ["ButtonPadding"]
      263 LOADN                            R34 0
      264 SETTABLEKS                       R34 R33 K77 ["ContentPadding"]
      266 GETIMPORT                        R34 K81 [Enum.HorizontalAlignment.Center]
      268 SETTABLEKS                       R34 R33 K78 ["ButtonHorizontalAlignment"]
      270 SETTABLEKS                       R33 R32 K82 ["&CancelDialog"]
      272 DUPTABLE                         R33 K79 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
      273 GETIMPORT                        R34 K40 [Enum.Font.SourceSans]
      275 SETTABLEKS                       R34 R33 K36 ["Font"]
      277 LOADN                            R34 24
      278 SETTABLEKS                       R34 R33 K76 ["ButtonPadding"]
      280 LOADN                            R34 0
      281 SETTABLEKS                       R34 R33 K77 ["ContentPadding"]
      283 GETIMPORT                        R34 K81 [Enum.HorizontalAlignment.Center]
      285 SETTABLEKS                       R34 R33 K78 ["ButtonHorizontalAlignment"]
      287 SETTABLEKS                       R33 R32 K83 ["&EnableTeamCreateDialog"]
      289 CALL                             R30 2 1
      290 SETTABLE                         R30 R28 R29
      291 GETTABLEKS                       R29 R6 K84 ["DropdownMenu"]
      293 GETTABLEKS                       R31 R4 K75 ["Dictionary"]
      295 GETTABLEKS                       R30 R31 K27 ["join"]
      297 MOVE                             R31 R3
      298 LOADK                            R32 K84 ["DropdownMenu"]
      299 CALL                             R31 1 1
      300 NEWTABLE                         R32 1 0
      302 DUPTABLE                         R33 K87 [{"Offset", "BackgroundColor"}]
      303 GETIMPORT                        R34 K90 [Vector2.new]
      305 LOADN                            R35 244
      306 LOADN                            R36 0
      307 CALL                             R34 2 1
      308 SETTABLEKS                       R34 R33 K85 ["Offset"]
      310 JUMPIFNOT                        R22 ; [+3]
      311 GETTABLEKS                       R34 R18 K91 ["MainBackground"]
      313 JUMP                             ; [+1]
      314 LOADNIL                          R34
      315 SETTABLEKS                       R34 R33 K86 ["BackgroundColor"]
      317 SETTABLEKS                       R33 R32 K92 ["&Search"]
      319 CALL                             R30 2 1
      320 SETTABLE                         R30 R28 R29
      321 GETTABLEKS                       R29 R18 K91 ["MainBackground"]
      323 SETTABLEKS                       R29 R28 K93 ["backgroundColor"]
      325 DUPTABLE                         R29 K97 [{"Subtitle", "Normal", "Subtext"}]
      326 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      327 SETTABLEKS                       R26 R30 K36 ["Font"]
      329 LOADN                            R31 22
      330 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      332 GETTABLEKS                       R31 R18 K100 ["SubText"]
      334 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      336 SETTABLEKS                       R30 R29 K94 ["Subtitle"]
      338 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      339 SETTABLEKS                       R26 R30 K36 ["Font"]
      341 LOADN                            R31 20
      342 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      344 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      346 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      348 SETTABLEKS                       R30 R29 K95 ["Normal"]
      350 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      351 SETTABLEKS                       R26 R30 K36 ["Font"]
      353 LOADN                            R31 16
      354 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      356 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      358 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      360 SETTABLEKS                       R30 R29 K96 ["Subtext"]
      362 SETTABLEKS                       R29 R28 K101 ["fontStyle"]
      364 DUPTABLE                         R29 K104 [{"padding", "edgePadding"}]
      365 LOADN                            R30 10
      366 SETTABLEKS                       R30 R29 K102 ["padding"]
      368 JUMPIFNOT                        R23 ; [+2]
      369 LOADN                            R30 20
      370 JUMP                             ; [+1]
      371 LOADN                            R30 67
      372 SETTABLEKS                       R30 R29 K103 ["edgePadding"]
      374 SETTABLEKS                       R29 R28 K105 ["buttonBar"]
      376 DUPTABLE                         R29 K108 [{"TitleText", "DescriptionText"}]
      377 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      378 SETTABLEKS                       R27 R30 K36 ["Font"]
      380 LOADN                            R31 22
      381 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      383 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      385 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      387 SETTABLEKS                       R30 R29 K106 ["TitleText"]
      389 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      390 SETTABLEKS                       R26 R30 K36 ["Font"]
      392 LOADN                            R31 18
      393 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      395 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      397 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      399 SETTABLEKS                       R30 R29 K107 ["DescriptionText"]
      401 SETTABLEKS                       R29 R28 K109 ["confirmTcDialog"]
      403 DUPTABLE                         R29 K112 [{"Text", "Size", "Position"}]
      404 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      405 GETIMPORT                        R31 K40 [Enum.Font.SourceSans]
      407 SETTABLEKS                       R31 R30 K36 ["Font"]
      409 LOADN                            R31 24
      410 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      412 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      414 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      416 SETTABLEKS                       R30 R29 K110 ["Text"]
      418 GETIMPORT                        R30 K90 [Vector2.new]
      420 LOADN                            R31 87
      421 LOADN                            R32 65
      422 CALL                             R30 2 1
      423 SETTABLEKS                       R30 R29 K50 ["Size"]
      425 GETIMPORT                        R30 K113 [UDim2.new]
      427 LOADK                            R31 K114 [0.5]
      428 LOADN                            R32 0
      429 LOADK                            R33 K114 [0.5]
      430 LOADN                            R34 10
      431 CALL                             R30 4 1
      432 SETTABLEKS                       R30 R29 K111 ["Position"]
      434 SETTABLEKS                       R29 R28 K115 ["cancelDialog"]
      436 DUPTABLE                         R29 K112 [{"Text", "Size", "Position"}]
      437 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      438 GETIMPORT                        R31 K40 [Enum.Font.SourceSans]
      440 SETTABLEKS                       R31 R30 K36 ["Font"]
      442 LOADN                            R31 24
      443 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      445 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      447 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      449 SETTABLEKS                       R30 R29 K110 ["Text"]
      451 GETIMPORT                        R30 K90 [Vector2.new]
      453 LOADN                            R31 87
      454 LOADN                            R32 65
      455 CALL                             R30 2 1
      456 SETTABLEKS                       R30 R29 K50 ["Size"]
      458 GETIMPORT                        R30 K113 [UDim2.new]
      460 LOADK                            R31 K114 [0.5]
      461 LOADN                            R32 0
      462 LOADK                            R33 K114 [0.5]
      463 LOADN                            R34 10
      464 CALL                             R30 4 1
      465 SETTABLEKS                       R30 R29 K111 ["Position"]
      467 SETTABLEKS                       R29 R28 K116 ["enableTeamCreateDialog"]
      469 DUPTABLE                         R29 K118 [{"Text", "publishButton"}]
      470 DUPTABLE                         R30 K120 [{"Font", "TextSize", "TextColor3", "YOffset"}]
      471 SETTABLEKS                       R26 R30 K36 ["Font"]
      473 LOADN                            R31 20
      474 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      476 GETTABLEKS                       R31 R18 K121 ["MainText"]
      478 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      480 LOADN                            R31 70
      481 SETTABLEKS                       R31 R30 K119 ["YOffset"]
      483 SETTABLEKS                       R30 R29 K110 ["Text"]
      485 DUPTABLE                         R30 K125 [{"offset", "paddingX", "paddingY"}]
      486 LOADN                            R31 125
      487 SETTABLEKS                       R31 R30 K122 ["offset"]
      489 LOADN                            R31 75
      490 SETTABLEKS                       R31 R30 K123 ["paddingX"]
      492 LOADN                            R31 15
      493 SETTABLEKS                       R31 R30 K124 ["paddingY"]
      495 SETTABLEKS                       R30 R29 K117 ["publishButton"]
      497 SETTABLEKS                       R29 R28 K126 ["saveToRobloxView"]
      499 DUPTABLE                         R29 K127 [{"Padding"}]
      500 JUMPIFNOT                        R23 ; [+2]
      501 LOADN                            R30 0
      502 JUMP                             ; [+1]
      503 LOADN                            R30 2
      504 SETTABLEKS                       R30 R29 K48 ["Padding"]
      506 SETTABLEKS                       R29 R28 K128 ["permissionsView"]
      508 DUPTABLE                         R29 K130 [{"hover"}]
      509 GETTABLEKS                       R30 R18 K131 ["MenuEntryHover"]
      511 SETTABLEKS                       R30 R29 K129 ["hover"]
      513 SETTABLEKS                       R29 R28 K132 ["menuEntry"]
      515 DUPTABLE                         R29 K136 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      516 JUMPIFNOT                        R23 ; [+6]
      517 GETIMPORT                        R30 K138 [UDim.new]
      519 LOADN                            R31 0
      520 LOADN                            R32 5
      521 CALL                             R30 2 1
      522 JUMP                             ; [+5]
      523 GETIMPORT                        R30 K138 [UDim.new]
      525 LOADN                            R31 0
      526 LOADN                            R32 32
      527 CALL                             R30 2 1
      528 SETTABLEKS                       R30 R29 K133 ["paddingTop"]
      530 JUMPIFNOT                        R23 ; [+6]
      531 GETIMPORT                        R30 K138 [UDim.new]
      533 LOADN                            R31 0
      534 LOADN                            R32 15
      535 CALL                             R30 2 1
      536 JUMP                             ; [+5]
      537 GETIMPORT                        R30 K138 [UDim.new]
      539 LOADN                            R31 0
      540 LOADN                            R32 67
      541 CALL                             R30 2 1
      542 SETTABLEKS                       R30 R29 K134 ["paddingHorizontal"]
      544 DUPTABLE                         R30 K140 [{"fontStyle", "Height"}]
      545 DUPTABLE                         R31 K99 [{"Font", "TextSize", "TextColor3"}]
      546 SETTABLEKS                       R26 R31 K36 ["Font"]
      548 LOADN                            R32 16
      549 SETTABLEKS                       R32 R31 K65 ["TextSize"]
      551 GETTABLEKS                       R32 R18 K121 ["MainText"]
      553 SETTABLEKS                       R32 R31 K98 ["TextColor3"]
      555 SETTABLEKS                       R31 R30 K101 ["fontStyle"]
      557 LOADN                            R31 15
      558 SETTABLEKS                       R31 R30 K139 ["Height"]
      560 SETTABLEKS                       R30 R29 K135 ["ageWarning"]
      562 SETTABLEKS                       R29 R28 K141 ["searchWidget"]
      564 DUPTABLE                         R29 K162 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
      565 GETTABLEKS                       R30 R18 K72 ["Border"]
      567 SETTABLEKS                       R30 R29 K70 ["border"]
      569 GETTABLEKS                       R30 R18 K163 ["DialogMainButton"]
      571 SETTABLEKS                       R30 R29 K142 ["borderHover"]
      573 GETTABLEKS                       R30 R18 K163 ["DialogMainButton"]
      575 SETTABLEKS                       R30 R29 K143 ["borderSelected"]
      577 GETTABLEKS                       R30 R18 K63 ["DimmedText"]
      579 SETTABLEKS                       R30 R29 K144 ["placeholderText"]
      581 GETTABLEKS                       R30 R18 K164 ["SubBackground2"]
      583 SETTABLEKS                       R30 R29 K93 ["backgroundColor"]
      585 GETIMPORT                        R30 K113 [UDim2.new]
      587 LOADN                            R31 0
      588 LOADN                            R32 26
      589 LOADN                            R33 0
      590 LOADN                            R34 14
      591 CALL                             R30 4 1
      592 SETTABLEKS                       R30 R29 K145 ["collabTypeTextPosition"]
      594 GETIMPORT                        R30 K113 [UDim2.new]
      596 LOADN                            R31 1
      597 LOADN                            R32 228
      598 LOADN                            R33 0
      599 LOADN                            R34 14
      600 CALL                             R30 4 1
      601 SETTABLEKS                       R30 R29 K146 ["friendsAccessTextPosition"]
      603 GETTABLEKS                       R30 R18 K100 ["SubText"]
      605 SETTABLEKS                       R30 R29 K147 ["searchIcon"]
      607 DUPTABLE                         R30 K170 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
      608 GETTABLEKS                       R31 R18 K171 ["FriendIcon"]
      610 SETTABLEKS                       R31 R30 K165 ["Image"]
      612 LOADN                            R31 20
      613 SETTABLEKS                       R31 R30 K166 ["LabelWidth"]
      615 LOADN                            R31 13
      616 SETTABLEKS                       R31 R30 K167 ["LabelHeight"]
      618 LOADN                            R31 37
      619 SETTABLEKS                       R31 R30 K168 ["FrameWidth"]
      621 LOADN                            R31 17
      622 SETTABLEKS                       R31 R30 K169 ["Width"]
      624 LOADN                            R31 10
      625 SETTABLEKS                       R31 R30 K139 ["Height"]
      627 SETTABLEKS                       R30 R29 K148 ["friendIcon"]
      629 DUPTABLE                         R30 K174 [{"imageSelected", "image"}]
      630 GETTABLEKS                       R31 R18 K100 ["SubText"]
      632 SETTABLEKS                       R31 R30 K172 ["imageSelected"]
      634 GETTABLEKS                       R31 R18 K100 ["SubText"]
      636 SETTABLEKS                       R31 R30 K173 ["image"]
      638 SETTABLEKS                       R30 R29 K149 ["clearButton"]
      640 LOADN                            R30 25
      641 SETTABLEKS                       R30 R29 K150 ["headerHeight"]
      643 LOADN                            R30 75
      644 SETTABLEKS                       R30 R29 K151 ["itemHeight"]
      646 LOADN                            R30 5
      647 SETTABLEKS                       R30 R29 K152 ["ribbonWidth"]
      649 LOADN                            R30 48
      650 SETTABLEKS                       R30 R29 K153 ["thumbnailSize"]
      652 LOADN                            R30 40
      653 SETTABLEKS                       R30 R29 K154 ["thumbnailPaddingLeft"]
      655 LOADN                            R30 19
      656 SETTABLEKS                       R30 R29 K155 ["renderItemTextPadding"]
      658 LOADN                            R30 40
      659 SETTABLEKS                       R30 R29 K156 ["searchBarHeight"]
      661 LOADN                            R30 32
      662 SETTABLEKS                       R30 R29 K157 ["clearButtonIconSize"]
      664 LOADN                            R30 16
      665 SETTABLEKS                       R30 R29 K158 ["textPadding"]
      667 LOADN                            R30 204
      668 SETTABLEKS                       R30 R29 K159 ["nameLabelWidth"]
      670 LOADN                            R30 55
      671 SETTABLEKS                       R30 R29 K160 ["nameHeight"]
      673 DUPTABLE                         R30 K183 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
      674 DUPTABLE                         R31 K99 [{"Font", "TextSize", "TextColor3"}]
      675 SETTABLEKS                       R26 R31 K36 ["Font"]
      677 LOADN                            R32 16
      678 SETTABLEKS                       R32 R31 K65 ["TextSize"]
      680 GETTABLEKS                       R32 R18 K121 ["MainText"]
      682 SETTABLEKS                       R32 R31 K98 ["TextColor3"]
      684 SETTABLEKS                       R31 R30 K175 ["collaboratorTypeText"]
      686 GETTABLEKS                       R31 R18 K184 ["InputFieldBackground"]
      688 SETTABLEKS                       R31 R30 K93 ["backgroundColor"]
      690 GETTABLEKS                       R31 R18 K121 ["MainText"]
      692 SETTABLEKS                       R31 R30 K176 ["itemText"]
      694 GETTABLEKS                       R31 R18 K100 ["SubText"]
      696 SETTABLEKS                       R31 R30 K177 ["headerText"]
      698 DUPTABLE                         R31 K185 [{"backgroundColor", "itemText"}]
      699 GETTABLEKS                       R32 R18 K186 ["Dropdown"]
      701 SETTABLEKS                       R32 R31 K93 ["backgroundColor"]
      703 GETTABLEKS                       R32 R18 K121 ["MainText"]
      705 SETTABLEKS                       R32 R31 K176 ["itemText"]
      707 SETTABLEKS                       R31 R30 K178 ["hovered"]
      709 DUPTABLE                         R31 K187 [{"offset"}]
      710 LOADN                            R32 2
      711 SETTABLEKS                       R32 R31 K122 ["offset"]
      713 SETTABLEKS                       R31 R30 K179 ["item"]
      715 DUPTABLE                         R31 K188 [{"backgroundColor"}]
      716 GETTABLEKS                       R32 R18 K189 ["ButtonHover"]
      718 SETTABLEKS                       R32 R31 K93 ["backgroundColor"]
      720 SETTABLEKS                       R31 R30 K180 ["selected"]
      722 LOADN                            R31 169
      723 SETTABLEKS                       R31 R30 K181 ["maxHeight"]
      725 LOADN                            R31 100
      726 SETTABLEKS                       R31 R30 K182 ["eligibilityLabelWidth"]
      728 SETTABLEKS                       R30 R29 K161 ["dropDown"]
      730 SETTABLEKS                       R29 R28 K190 ["searchBar"]
      732 DUPTABLE                         R29 K193 [{"loadingImage", "loadFailureImage"}]
      733 LOADK                            R30 K194 ["rbxasset://textures/StudioSharedUI/default_group.png"]
      734 SETTABLEKS                       R30 R29 K191 ["loadingImage"]
      736 LOADK                            R30 K195 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      737 SETTABLEKS                       R30 R29 K192 ["loadFailureImage"]
      739 SETTABLEKS                       R29 R28 K196 ["groupThumbnail"]
      741 DUPTABLE                         R29 K199 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
      742 GETTABLEKS                       R30 R18 K200 ["TableItem"]
      744 SETTABLEKS                       R30 R29 K197 ["background"]
      746 LOADK                            R30 K201 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
      747 SETTABLEKS                       R30 R29 K198 ["maskImage"]
      749 LOADK                            R30 K202 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      750 SETTABLEKS                       R30 R29 K191 ["loadingImage"]
      752 LOADK                            R30 K195 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      753 SETTABLEKS                       R30 R29 K192 ["loadFailureImage"]
      755 SETTABLEKS                       R29 R28 K203 ["subjectThumbnail"]
      757 DUPTABLE                         R29 K204 [{"Image"}]
      758 LOADK                            R30 K205 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
      759 SETTABLEKS                       R30 R29 K165 ["Image"]
      761 SETTABLEKS                       R29 R28 K206 ["orgRoleThumbnail"]
      763 DUPTABLE                         R29 K209 [{"button", "padding", "width"}]
      764 DUPTABLE                         R30 K211 [{"height"}]
      765 LOADN                            R31 50
      766 SETTABLEKS                       R31 R30 K210 ["height"]
      768 SETTABLEKS                       R30 R29 K207 ["button"]
      770 LOADN                            R30 10
      771 SETTABLEKS                       R30 R29 K102 ["padding"]
      773 JUMPIFNOT                        R23 ; [+2]
      774 LOADN                            R30 210
      775 JUMP                             ; [+1]
      776 LOADN                            R30 8
      777 SETTABLEKS                       R30 R29 K208 ["width"]
      779 SETTABLEKS                       R29 R28 K212 ["selectInput"]
      781 DUPTABLE                         R29 K216 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
      782 JUMPIFNOT                        R23 ; [+2]
      783 LOADN                            R30 20
      784 JUMP                             ; [+1]
      785 LOADN                            R30 47
      786 SETTABLEKS                       R30 R29 K213 ["yPadding"]
      788 LOADN                            R30 25
      789 SETTABLEKS                       R30 R29 K214 ["xPadding"]
      791 LOADN                            R30 35
      792 SETTABLEKS                       R30 R29 K215 ["yPaddingNonOwner"]
      794 SETTABLEKS                       R29 R28 K217 ["scrollingFrame"]
      796 DUPTABLE                         R29 K221 [{"boxHeight", "textStyle", "InnerTextPosition"}]
      797 LOADN                            R30 45
      798 SETTABLEKS                       R30 R29 K218 ["boxHeight"]
      800 DUPTABLE                         R30 K99 [{"Font", "TextSize", "TextColor3"}]
      801 SETTABLEKS                       R26 R30 K36 ["Font"]
      803 LOADN                            R31 16
      804 SETTABLEKS                       R31 R30 K65 ["TextSize"]
      806 GETTABLEKS                       R31 R18 K61 ["TitlebarText"]
      808 SETTABLEKS                       R31 R30 K98 ["TextColor3"]
      810 SETTABLEKS                       R30 R29 K219 ["textStyle"]
      812 GETIMPORT                        R30 K113 [UDim2.new]
      814 LOADN                            R31 0
      815 LOADN                            R32 67
      816 LOADK                            R33 K114 [0.5]
      817 LOADN                            R34 0
      818 CALL                             R30 4 1
      819 SETTABLEKS                       R30 R29 K220 ["InnerTextPosition"]
      821 SETTABLEKS                       R29 R28 K222 ["saveMessage"]
      823 DUPTABLE                         R29 K225 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      824 JUMPIFNOT                        R23 ; [+2]
      825 LOADN                            R30 50
      826 JUMP                             ; [+1]
      827 LOADN                            R30 98
      828 SETTABLEKS                       R30 R29 K210 ["height"]
      830 JUMPIFNOT                        R23 ; [+6]
      831 GETIMPORT                        R30 K138 [UDim.new]
      833 LOADN                            R31 0
      834 LOADN                            R32 20
      835 CALL                             R30 2 1
      836 JUMP                             ; [+5]
      837 GETIMPORT                        R30 K138 [UDim.new]
      839 LOADN                            R31 0
      840 LOADN                            R32 26
      841 CALL                             R30 2 1
      842 SETTABLEKS                       R30 R29 K133 ["paddingTop"]
      844 GETIMPORT                        R30 K138 [UDim.new]
      846 LOADN                            R31 0
      847 LOADN                            R32 67
      848 CALL                             R30 2 1
      849 SETTABLEKS                       R30 R29 K223 ["paddingLeft"]
      851 JUMPIFNOT                        R23 ; [+6]
      852 GETIMPORT                        R30 K138 [UDim.new]
      854 LOADN                            R31 0
      855 LOADN                            R32 22
      856 CALL                             R30 2 1
      857 JUMP                             ; [+5]
      858 GETIMPORT                        R30 K138 [UDim.new]
      860 LOADN                            R31 0
      861 LOADN                            R32 75
      862 CALL                             R30 2 1
      863 SETTABLEKS                       R30 R29 K224 ["paddingRight"]
      865 SETTABLEKS                       R29 R28 K226 ["header"]
      867 DUPTABLE                         R29 K230 [{"font", "textSize", "textColor3"}]
      868 SETTABLEKS                       R26 R29 K227 ["font"]
      870 LOADN                            R30 40
      871 SETTABLEKS                       R30 R29 K228 ["textSize"]
      873 GETTABLEKS                       R30 R18 K61 ["TitlebarText"]
      875 SETTABLEKS                       R30 R29 K229 ["textColor3"]
      877 SETTABLEKS                       R29 R28 K231 ["title"]
      879 DUPTABLE                         R29 K232 [{"font", "textSize", "textColor3", "width"}]
      880 SETTABLEKS                       R26 R29 K227 ["font"]
      882 LOADN                            R30 24
      883 SETTABLEKS                       R30 R29 K228 ["textSize"]
      885 GETTABLEKS                       R30 R18 K61 ["TitlebarText"]
      887 SETTABLEKS                       R30 R29 K229 ["textColor3"]
      889 LOADN                            R30 175
      890 SETTABLEKS                       R30 R29 K208 ["width"]
      892 SETTABLEKS                       R29 R28 K233 ["copyLinkButton"]
      894 DUPTABLE                         R29 K236 [{"height", "gradientSize", "gradientTransparency", "border"}]
      895 JUMPIFNOT                        R23 ; [+2]
      896 LOADN                            R30 60
      897 JUMP                             ; [+1]
      898 LOADN                            R30 65
      899 SETTABLEKS                       R30 R29 K210 ["height"]
      901 LOADN                            R30 3
      902 SETTABLEKS                       R30 R29 K234 ["gradientSize"]
      904 LOADK                            R30 K237 [0.9]
      905 SETTABLEKS                       R30 R29 K235 ["gradientTransparency"]
      907 JUMPIFNOT                        R23 ; [+3]
      908 GETTABLEKS                       R30 R18 K72 ["Border"]
      910 JUMP                             ; [+2]
      911 GETTABLEKS                       R30 R18 K238 ["FooterBorder"]
      913 SETTABLEKS                       R30 R29 K70 ["border"]
      915 SETTABLEKS                       R29 R28 K239 ["footer"]
      917 DUPTABLE                         R29 K242 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      918 JUMPIFNOT                        R23 ; [+6]
      919 GETIMPORT                        R30 K138 [UDim.new]
      921 LOADN                            R31 0
      922 LOADN                            R32 20
      923 CALL                             R30 2 1
      924 JUMP                             ; [+5]
      925 GETIMPORT                        R30 K138 [UDim.new]
      927 LOADN                            R31 0
      928 LOADN                            R32 67
      929 CALL                             R30 2 1
      930 SETTABLEKS                       R30 R29 K134 ["paddingHorizontal"]
      932 JUMPIFNOT                        R24 ; [+7]
      933 JUMPIFNOT                        R25 ; [+6]
      934 GETIMPORT                        R30 K138 [UDim.new]
      936 LOADN                            R31 0
      937 LOADN                            R32 12
      938 CALL                             R30 2 1
      939 JUMP                             ; [+1]
      940 LOADNIL                          R30
      941 SETTABLEKS                       R30 R29 K133 ["paddingTop"]
      943 GETIMPORT                        R30 K113 [UDim2.new]
      945 LOADN                            R31 1
      946 LOADN                            R32 0
      947 LOADN                            R33 0
      948 JUMPIFNOT                        R24 ; [+3]
      949 JUMPIFNOT                        R25 ; [+2]
      950 LOADN                            R34 42
      951 JUMP                             ; [+1]
      952 LOADN                            R34 30
      953 CALL                             R30 4 1
      954 SETTABLEKS                       R30 R29 K240 ["size"]
      956 DUPTABLE                         R30 K243 [{"paddingHorizontal", "size"}]
      957 GETIMPORT                        R31 K138 [UDim.new]
      959 LOADN                            R32 0
      960 LOADN                            R33 8
      961 CALL                             R31 2 1
      962 SETTABLEKS                       R31 R30 K134 ["paddingHorizontal"]
      964 GETIMPORT                        R31 K113 [UDim2.new]
      966 LOADN                            R32 0
      967 LOADN                            R33 100
      968 LOADN                            R34 1
      969 LOADN                            R35 0
      970 CALL                             R31 4 1
      971 SETTABLEKS                       R31 R30 K240 ["size"]
      973 SETTABLEKS                       R30 R29 K241 ["pills"]
      975 SETTABLEKS                       R29 R28 K244 ["collaboratorFilter"]
      977 DUPTABLE                         R29 K255 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
      978 LOADK                            R30 K0 ["script"]
      979 SETTABLEKS                       R30 R29 K245 ["FadeTransparency"]
      981 DUPTABLE                         R30 K261 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
      982 LOADN                            R31 14
      983 SETTABLEKS                       R31 R30 K257 ["ExpandTextSize"]
      985 JUMPIFNOT                        R23 ; [+8]
      986 GETIMPORT                        R31 K113 [UDim2.new]
      988 LOADN                            R32 0
      989 LOADN                            R33 238
      990 LOADN                            R34 0
      991 LOADN                            R35 60
      992 CALL                             R31 4 1
      993 JUMP                             ; [+7]
      994 GETIMPORT                        R31 K113 [UDim2.new]
      996 LOADN                            R32 0
      997 LOADN                            R33 153
      998 LOADN                            R34 0
      999 LOADN                            R35 74
     1000 CALL                             R31 4 1
     1001 SETTABLEKS                       R31 R30 K240 ["size"]
     1003 LOADN                            R31 16
     1004 SETTABLEKS                       R31 R30 K258 ["collaboratorItemOffset"]
     1006 GETIMPORT                        R31 K113 [UDim2.new]
     1008 LOADN                            R32 1
     1009 LOADN                            R33 0
     1010 LOADN                            R34 0
     1011 LOADN                            R35 34
     1012 CALL                             R31 4 1
     1013 SETTABLEKS                       R31 R30 K259 ["expandablePaneSize"]
     1015 DUPTABLE                         R31 K264 [{"size", "arrowLabel", "textLabel"}]
     1016 GETIMPORT                        R32 K113 [UDim2.new]
     1018 LOADN                            R33 0
     1019 LOADN                            R34 96
     1020 LOADN                            R35 0
     1021 LOADN                            R36 34
     1022 CALL                             R32 4 1
     1023 SETTABLEKS                       R32 R31 K240 ["size"]
     1025 DUPTABLE                         R32 K266 [{"position", "size"}]
     1026 GETIMPORT                        R33 K113 [UDim2.new]
     1028 LOADN                            R34 0
     1029 LOADN                            R35 42
     1030 LOADK                            R36 K114 [0.5]
     1031 LOADN                            R37 0
     1032 CALL                             R33 4 1
     1033 SETTABLEKS                       R33 R32 K265 ["position"]
     1035 GETIMPORT                        R33 K113 [UDim2.new]
     1037 LOADN                            R34 0
     1038 LOADN                            R35 17
     1039 LOADN                            R36 0
     1040 LOADN                            R37 17
     1041 CALL                             R33 4 1
     1042 SETTABLEKS                       R33 R32 K240 ["size"]
     1044 SETTABLEKS                       R32 R31 K262 ["arrowLabel"]
     1046 DUPTABLE                         R32 K267 [{"position"}]
     1047 GETIMPORT                        R33 K113 [UDim2.new]
     1049 LOADN                            R34 0
     1050 LOADN                            R35 60
     1051 LOADK                            R36 K114 [0.5]
     1052 LOADN                            R37 0
     1053 CALL                             R33 4 1
     1054 SETTABLEKS                       R33 R32 K265 ["position"]
     1056 SETTABLEKS                       R32 R31 K263 ["textLabel"]
     1058 SETTABLEKS                       R31 R30 K260 ["headerComponent"]
     1060 SETTABLEKS                       R30 R29 K246 ["groupCollaboratorItem"]
     1062 DUPTABLE                         R30 K269 [{"size", "xOffset", "hovered"}]
     1063 LOADN                            R31 16
     1064 SETTABLEKS                       R31 R30 K240 ["size"]
     1066 LOADN                            R31 6
     1067 SETTABLEKS                       R31 R30 K268 ["xOffset"]
     1069 GETTABLEKS                       R31 R18 K186 ["Dropdown"]
     1071 SETTABLEKS                       R31 R30 K178 ["hovered"]
     1073 SETTABLEKS                       R30 R29 K247 ["deleteButton"]
     1075 DUPTABLE                         R30 K272 [{"heightOffset", "yOffset"}]
     1076 LOADN                            R31 54
     1077 SETTABLEKS                       R31 R30 K270 ["heightOffset"]
     1079 LOADN                            R31 11
     1080 SETTABLEKS                       R31 R30 K271 ["yOffset"]
     1082 SETTABLEKS                       R30 R29 K248 ["permissionEditor"]
     1084 DUPTABLE                         R30 K277 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
     1085 DUPTABLE                         R31 K279 [{"withSubText", "size", "xOffset"}]
     1086 DUPTABLE                         R32 K280 [{"size"}]
     1087 GETIMPORT                        R33 K113 [UDim2.new]
     1089 LOADN                            R34 1
     1090 LOADN                            R35 248
     1091 LOADN                            R36 0
     1092 LOADN                            R37 30
     1093 CALL                             R33 4 1
     1094 SETTABLEKS                       R33 R32 K240 ["size"]
     1096 SETTABLEKS                       R32 R31 K278 ["withSubText"]
     1098 GETIMPORT                        R32 K113 [UDim2.new]
     1100 LOADN                            R33 1
     1101 LOADN                            R34 248
     1102 LOADN                            R35 0
     1103 LOADN                            R36 54
     1104 CALL                             R32 4 1
     1105 SETTABLEKS                       R32 R31 K240 ["size"]
     1107 LOADN                            R32 50
     1108 SETTABLEKS                       R32 R31 K268 ["xOffset"]
     1110 SETTABLEKS                       R31 R30 K273 ["withIcon"]
     1112 NEWTABLE                         R31 2 1
     1114 DUPTABLE                         R33 K280 [{"size"}]
     1115 GETIMPORT                        R34 K113 [UDim2.new]
     1117 LOADN                            R35 1
     1118 LOADN                            R36 248
     1119 LOADN                            R37 0
     1120 LOADN                            R38 30
     1121 CALL                             R34 4 1
     1122 SETTABLEKS                       R34 R33 K240 ["size"]
     1124 SETTABLEKS                       R33 R31 K278 ["withSubText"]
     1126 GETIMPORT                        R32 K113 [UDim2.new]
     1128 LOADN                            R33 1
     1129 LOADN                            R34 130
     1130 LOADN                            R35 0
     1131 LOADN                            R36 54
     1132 CALL                             R32 4 1
     1133 SETLIST                          R31 R32 1 [1]
     1135 LOADN                            R33 28
     1136 SETTABLEKS                       R33 R31 K268 ["xOffset"]
     1138 SETTABLEKS                       R31 R30 K274 ["withoutIcon"]
     1140 DUPTABLE                         R31 K281 [{"yOffset"}]
     1141 LOADN                            R32 246
     1142 SETTABLEKS                       R32 R31 K271 ["yOffset"]
     1144 SETTABLEKS                       R31 R30 K275 ["withSubtext"]
     1146 DUPTABLE                         R31 K281 [{"yOffset"}]
     1147 LOADN                            R32 0
     1148 SETTABLEKS                       R32 R31 K271 ["yOffset"]
     1150 SETTABLEKS                       R31 R30 K276 ["withoutSubtext"]
     1152 SETTABLEKS                       R30 R29 K249 ["collaboratorName"]
     1154 DUPTABLE                         R30 K282 [{"withIcon", "withoutIcon", "yOffset"}]
     1155 DUPTABLE                         R31 K283 [{"size", "xOffset"}]
     1156 GETIMPORT                        R32 K113 [UDim2.new]
     1158 LOADN                            R33 1
     1159 LOADN                            R34 248
     1160 LOADN                            R35 0
     1161 LOADN                            R36 24
     1162 CALL                             R32 4 1
     1163 SETTABLEKS                       R32 R31 K240 ["size"]
     1165 LOADN                            R32 50
     1166 SETTABLEKS                       R32 R31 K268 ["xOffset"]
     1168 SETTABLEKS                       R31 R30 K273 ["withIcon"]
     1170 NEWTABLE                         R31 1 1
     1172 GETIMPORT                        R32 K113 [UDim2.new]
     1174 LOADN                            R33 1
     1175 LOADN                            R34 130
     1176 LOADN                            R35 0
     1177 LOADN                            R36 24
     1178 CALL                             R32 4 1
     1179 SETLIST                          R31 R32 1 [1]
     1181 LOADN                            R33 28
     1182 SETTABLEKS                       R33 R31 K268 ["xOffset"]
     1184 SETTABLEKS                       R31 R30 K274 ["withoutIcon"]
     1186 LOADN                            R31 10
     1187 SETTABLEKS                       R31 R30 K271 ["yOffset"]
     1189 SETTABLEKS                       R30 R29 K250 ["collaboratorSubText"]
     1191 DUPTABLE                         R30 K286 [{"withIconSize", "withoutIconSize", "position"}]
     1192 GETIMPORT                        R31 K113 [UDim2.new]
     1194 LOADN                            R32 1
     1195 LOADN                            R33 248
     1196 LOADN                            R34 0
     1197 LOADN                            R35 54
     1198 CALL                             R31 4 1
     1199 SETTABLEKS                       R31 R30 K284 ["withIconSize"]
     1201 GETIMPORT                        R31 K113 [UDim2.new]
     1203 LOADN                            R32 1
     1204 LOADN                            R33 130
     1205 LOADN                            R34 0
     1206 LOADN                            R35 54
     1207 CALL                             R31 4 1
     1208 SETTABLEKS                       R31 R30 K285 ["withoutIconSize"]
     1210 GETIMPORT                        R31 K113 [UDim2.new]
     1212 LOADN                            R32 1
     1213 LOADN                            R33 249
     1214 LOADK                            R34 K114 [0.5]
     1215 LOADN                            R35 0
     1216 CALL                             R31 4 1
     1217 SETTABLEKS                       R31 R30 K265 ["position"]
     1219 SETTABLEKS                       R30 R29 K251 ["ownerLabel"]
     1221 LOADN                            R30 40
     1222 SETTABLEKS                       R30 R29 K252 ["iconContainerSize"]
     1224 DUPTABLE                         R30 K288 [{"width", "height", "position", "anchorPoint"}]
     1225 JUMPIFNOT                        R23 ; [+2]
     1226 LOADN                            R31 238
     1227 JUMP                             ; [+1]
     1228 LOADN                            R31 153
     1229 SETTABLEKS                       R31 R30 K208 ["width"]
     1231 LOADN                            R31 74
     1232 SETTABLEKS                       R31 R30 K210 ["height"]
     1234 LOADNIL                          R31
     1235 SETTABLEKS                       R31 R30 K265 ["position"]
     1237 LOADNIL                          R31
     1238 SETTABLEKS                       R31 R30 K287 ["anchorPoint"]
     1240 SETTABLEKS                       R30 R29 K253 ["nonRolesetFrame"]
     1242 DUPTABLE                         R30 K290 [{"width", "height", "position", "anchorPont"}]
     1243 JUMPIFNOT                        R23 ; [+2]
     1244 LOADN                            R31 238
     1245 JUMP                             ; [+1]
     1246 LOADN                            R31 96
     1247 SETTABLEKS                       R31 R30 K208 ["width"]
     1249 LOADN                            R31 54
     1250 SETTABLEKS                       R31 R30 K210 ["height"]
     1252 GETIMPORT                        R31 K113 [UDim2.new]
     1254 LOADK                            R32 K35 ["Enum"]
     1255 LOADN                            R33 200
     1256 LOADN                            R34 0
     1257 LOADN                            R35 20
     1258 CALL                             R31 4 1
     1259 SETTABLEKS                       R31 R30 K265 ["position"]
     1261 GETIMPORT                        R31 K90 [Vector2.new]
     1263 LOADN                            R32 1
     1264 LOADN                            R33 0
     1265 CALL                             R31 2 1
     1266 SETTABLEKS                       R31 R30 K289 ["anchorPont"]
     1268 SETTABLEKS                       R30 R29 K254 ["rolesetFrame"]
     1270 SETTABLEKS                       R29 R28 K292 ["collaboratorItem"]
     1272 GETTABLEKS                       R29 R18 K293 ["CloseWidget"]
     1274 SETTABLEKS                       R29 R28 K294 ["deleteIcon"]
     1276 DUPTABLE                         R29 K297 [{"right", "down"}]
     1277 GETTABLEKS                       R30 R18 K298 ["RightArrow"]
     1279 SETTABLEKS                       R30 R29 K295 ["right"]
     1281 GETTABLEKS                       R30 R18 K299 ["DownArrow"]
     1283 SETTABLEKS                       R30 R29 K296 ["down"]
     1285 SETTABLEKS                       R29 R28 K300 ["arrows"]
     1287 DUPCLOSURE                       R29 K301 [PROTO_0]
     1288 CAPTURE                          VAL R21
     1289 CAPTURE                          VAL R16
     1290 CAPTURE                          VAL R18
     1291 CAPTURE                          VAL R19
     1292 CAPTURE                          VAL R17
     1293 CAPTURE                          VAL R15
     1294 CAPTURE                          VAL R28
     1295 RETURN                           R29 1
