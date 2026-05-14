PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 NEWTABLE                         R4 8 0
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["CloseWidget"]
        8 LOADK                            R6 K1 ["rbxasset://textures/ManageCollaborators/closeWidget_dark.png"]
        9 SETTABLE                         R6 R4 R5
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["RightArrow"]
       13 LOADK                            R6 K3 ["rbxasset://textures/ManageCollaborators/arrowRight_dark.png"]
       14 SETTABLE                         R6 R4 R5
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["DownArrow"]
       18 LOADK                            R6 K5 ["rbxasset://textures/ManageCollaborators/arrowDown_dark.png"]
       19 SETTABLE                         R6 R4 R5
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K6 ["FriendIcon"]
       23 LOADK                            R6 K7 ["rbxasset://textures/ManageCollaborators/friendIcon_dark.png"]
       24 SETTABLE                         R6 R4 R5
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K8 ["FooterBorder"]
       28 GETIMPORT                        R6 K11 [Color3.fromRGB]
       30 LOADN                            R7 0
       31 LOADN                            R8 0
       32 LOADN                            R9 0
       33 CALL                             R6 3 1
       34 SETTABLE                         R6 R4 R5
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K12 ["Border"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K13 ["Gray"]
       41 GETTABLEN                        R6 R7 70
       42 SETTABLE                         R6 R4 R5
       43 CALL                             R2 2 1
       44 GETUPVAL                         R3 0
       45 GETUPVAL                         R4 4
       46 NEWTABLE                         R5 8 0
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R6 R6 K0 ["CloseWidget"]
       51 LOADK                            R7 K14 ["rbxasset://textures/ManageCollaborators/closeWidget_light.png"]
       52 SETTABLE                         R7 R5 R6
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K2 ["RightArrow"]
       56 LOADK                            R7 K15 ["rbxasset://textures/ManageCollaborators/arrowRight_light.png"]
       57 SETTABLE                         R7 R5 R6
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K4 ["DownArrow"]
       61 LOADK                            R7 K16 ["rbxasset://textures/ManageCollaborators/arrowDown_light.png"]
       62 SETTABLE                         R7 R5 R6
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R6 R6 K6 ["FriendIcon"]
       66 LOADK                            R7 K17 ["rbxasset://textures/ManageCollaborators/friendIcon_light.png"]
       67 SETTABLE                         R7 R5 R6
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R6 R6 K8 ["FooterBorder"]
       71 GETIMPORT                        R7 K11 [Color3.fromRGB]
       73 LOADN                            R8 244
       74 LOADN                            R9 244
       75 LOADN                            R10 244
       76 CALL                             R7 3 1
       77 SETTABLE                         R7 R5 R6
       78 GETUPVAL                         R6 2
       79 GETTABLEKS                       R6 R6 K18 ["Dropdown"]
       81 GETIMPORT                        R7 K11 [Color3.fromRGB]
       83 LOADN                            R8 228
       84 LOADN                            R9 238
       85 LOADN                            R10 254
       86 CALL                             R7 3 1
       87 SETTABLE                         R7 R5 R6
       88 GETUPVAL                         R6 2
       89 GETTABLEKS                       R6 R6 K12 ["Border"]
       91 GETUPVAL                         R8 3
       92 GETTABLEKS                       R8 R8 K13 ["Gray"]
       94 GETTABLEN                        R7 R8 40
       95 SETTABLE                         R7 R5 R6
       96 CALL                             R3 2 1
       97 JUMPIFNOT                        R0 ; [+8]
       98 GETUPVAL                         R4 5
       99 GETTABLEKS                       R4 R4 K19 ["mock"]
      101 MOVE                             R5 R2
      102 MOVE                             R6 R3
      103 CALL                             R4 2 1
      104 MOVE                             R1 R4
      105 JUMP                             ; [+7]
      106 GETUPVAL                         R4 5
      107 GETTABLEKS                       R4 R4 K20 ["new"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["getRawComponentStyle"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R5 K9 ["Cryo"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R1 K10 ["UIData"]
       29 GETTABLEKS                       R6 R2 K11 ["ComponentSymbols"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R5 K12 ["ExpandablePane"]
       35 GETTABLEKS                       R8 R8 K13 ["style"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K14 ["&Default"]
       40 GETTABLEKS                       R9 R7 K15 ["Header"]
       42 GETIMPORT                        R10 K4 [require]
       44 GETTABLEKS                       R11 R5 K16 ["Button"]
       46 GETTABLEKS                       R11 R11 K13 ["style"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R11 R10 K17 ["&RoundPrimary"]
       51 GETTABLEKS                       R12 R10 K18 ["&Round"]
       53 GETTABLEKS                       R13 R1 K7 ["Style"]
       55 GETTABLEKS                       R14 R13 K19 ["Themes"]
       57 GETTABLEKS                       R14 R14 K20 ["BaseTheme"]
       59 GETTABLEKS                       R15 R13 K19 ["Themes"]
       61 GETTABLEKS                       R15 R15 K21 ["StudioTheme"]
       63 GETTABLEKS                       R16 R13 K19 ["Themes"]
       65 GETTABLEKS                       R16 R16 K22 ["DarkTheme"]
       67 GETTABLEKS                       R17 R13 K19 ["Themes"]
       69 GETTABLEKS                       R17 R17 K23 ["LightTheme"]
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
      103 GETIMPORT                        R26 K29 [game]
      105 LOADK                            R28 K35 ["ManageCollabSearchFilterHorizontalAlignFix"]
      106 NAMECALL                         R26 R26 K31 ["GetFastFlag"]
      108 CALL                             R26 2 1
      109 JUMPIFNOT                        R23 ; [+3]
      110 GETIMPORT                        R27 K39 [Enum.Font.BuilderSans]
      112 JUMP                             ; [+2]
      113 GETIMPORT                        R27 K41 [Enum.Font.SourceSans]
      115 JUMPIFNOT                        R23 ; [+3]
      116 GETIMPORT                        R28 K43 [Enum.Font.BuilderSansMedium]
      118 JUMP                             ; [+2]
      119 GETIMPORT                        R28 K45 [Enum.Font.SourceSansSemibold]
      121 NEWTABLE                         R29 32 0
      123 GETTABLEKS                       R30 R6 K12 ["ExpandablePane"]
      125 MOVE                             R31 R21
      126 GETTABLEKS                       R33 R6 K12 ["ExpandablePane"]
      128 GETTABLE                         R32 R14 R33
      129 NEWTABLE                         R33 1 0
      131 MOVE                             R34 R21
      132 MOVE                             R35 R8
      133 DUPTABLE                         R36 K46 [{"Header"}]
      134 MOVE                             R37 R21
      135 MOVE                             R38 R9
      136 DUPTABLE                         R39 K50 [{"Arrow", "HorizontalAlignment", "Padding"}]
      137 DUPTABLE                         R40 K52 [{"Size"}]
      138 GETIMPORT                        R41 K55 [UDim2.fromOffset]
      140 LOADN                            R42 0
      141 LOADN                            R43 0
      142 CALL                             R41 2 1
      143 SETTABLEKS                       R41 R40 K51 ["Size"]
      145 SETTABLEKS                       R40 R39 K47 ["Arrow"]
      147 GETIMPORT                        R40 K57 [Enum.HorizontalAlignment.Right]
      149 SETTABLEKS                       R40 R39 K48 ["HorizontalAlignment"]
      151 LOADN                            R40 0
      152 SETTABLEKS                       R40 R39 K49 ["Padding"]
      154 CALL                             R37 2 1
      155 SETTABLEKS                       R37 R36 K15 ["Header"]
      157 CALL                             R34 2 1
      158 SETTABLEKS                       R34 R33 K58 ["&Arrowless"]
      160 CALL                             R31 2 1
      161 SETTABLE                         R31 R29 R30
      162 GETTABLEKS                       R30 R6 K59 ["SelectInput"]
      164 MOVE                             R31 R21
      165 GETTABLEKS                       R33 R6 K59 ["SelectInput"]
      167 GETTABLE                         R32 R14 R33
      168 NEWTABLE                         R33 2 0
      170 MOVE                             R34 R21
      171 MOVE                             R35 R8
      172 DUPTABLE                         R36 K61 [{"PlaceholderTextColor"}]
      173 GETTABLEKS                       R37 R18 K62 ["TitlebarText"]
      175 SETTABLEKS                       R37 R36 K60 ["PlaceholderTextColor"]
      177 CALL                             R34 2 1
      178 SETTABLEKS                       R34 R33 K63 ["&Editable"]
      180 MOVE                             R34 R21
      181 MOVE                             R35 R8
      182 DUPTABLE                         R36 K61 [{"PlaceholderTextColor"}]
      183 GETTABLEKS                       R37 R18 K64 ["DimmedText"]
      185 SETTABLEKS                       R37 R36 K60 ["PlaceholderTextColor"]
      187 CALL                             R34 2 1
      188 SETTABLEKS                       R34 R33 K65 ["&NonEditable"]
      190 CALL                             R31 2 1
      191 SETTABLE                         R31 R29 R30
      192 GETTABLEKS                       R30 R6 K16 ["Button"]
      194 MOVE                             R31 R21
      195 GETTABLEKS                       R33 R6 K16 ["Button"]
      197 GETTABLE                         R32 R14 R33
      198 NEWTABLE                         R33 4 0
      200 MOVE                             R34 R21
      201 MOVE                             R35 R11
      202 DUPTABLE                         R36 K67 [{"Font", "TextSize"}]
      203 SETTABLEKS                       R27 R36 K37 ["Font"]
      205 LOADN                            R37 24
      206 SETTABLEKS                       R37 R36 K66 ["TextSize"]
      208 CALL                             R34 2 1
      209 SETTABLEKS                       R34 R33 K68 ["&Active"]
      211 MOVE                             R34 R21
      212 MOVE                             R35 R11
      213 DUPTABLE                         R36 K67 [{"Font", "TextSize"}]
      214 SETTABLEKS                       R27 R36 K37 ["Font"]
      216 LOADN                            R37 24
      217 SETTABLEKS                       R37 R36 K66 ["TextSize"]
      219 CALL                             R34 2 1
      220 SETTABLEKS                       R34 R33 K69 ["&Passive"]
      222 MOVE                             R34 R21
      223 MOVE                             R35 R12
      224 DUPTABLE                         R36 K67 [{"Font", "TextSize"}]
      225 SETTABLEKS                       R27 R36 K37 ["Font"]
      227 LOADN                            R37 24
      228 SETTABLEKS                       R37 R36 K66 ["TextSize"]
      230 CALL                             R34 2 1
      231 SETTABLEKS                       R34 R33 K70 ["&Cancel"]
      233 MOVE                             R34 R21
      234 MOVE                             R35 R12
      235 DUPTABLE                         R36 K72 [{"Font", "TextSize", "border"}]
      236 SETTABLEKS                       R27 R36 K37 ["Font"]
      238 LOADN                            R37 22
      239 SETTABLEKS                       R37 R36 K66 ["TextSize"]
      241 GETTABLEKS                       R37 R18 K73 ["Border"]
      243 SETTABLEKS                       R37 R36 K71 ["border"]
      245 CALL                             R34 2 1
      246 SETTABLEKS                       R34 R33 K74 ["&Pill"]
      248 CALL                             R31 2 1
      249 SETTABLE                         R31 R29 R30
      250 GETTABLEKS                       R30 R6 K75 ["StyledDialog"]
      252 GETTABLEKS                       R31 R4 K76 ["Dictionary"]
      254 GETTABLEKS                       R31 R31 K27 ["join"]
      256 MOVE                             R32 R3
      257 LOADK                            R33 K75 ["StyledDialog"]
      258 CALL                             R32 1 1
      259 NEWTABLE                         R33 2 0
      261 DUPTABLE                         R34 K80 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
      262 GETIMPORT                        R35 K41 [Enum.Font.SourceSans]
      264 SETTABLEKS                       R35 R34 K37 ["Font"]
      266 LOADN                            R35 24
      267 SETTABLEKS                       R35 R34 K77 ["ButtonPadding"]
      269 LOADN                            R35 0
      270 SETTABLEKS                       R35 R34 K78 ["ContentPadding"]
      272 GETIMPORT                        R35 K82 [Enum.HorizontalAlignment.Center]
      274 SETTABLEKS                       R35 R34 K79 ["ButtonHorizontalAlignment"]
      276 SETTABLEKS                       R34 R33 K83 ["&CancelDialog"]
      278 DUPTABLE                         R34 K80 [{"Font", "ButtonPadding", "ContentPadding", "ButtonHorizontalAlignment"}]
      279 GETIMPORT                        R35 K41 [Enum.Font.SourceSans]
      281 SETTABLEKS                       R35 R34 K37 ["Font"]
      283 LOADN                            R35 24
      284 SETTABLEKS                       R35 R34 K77 ["ButtonPadding"]
      286 LOADN                            R35 0
      287 SETTABLEKS                       R35 R34 K78 ["ContentPadding"]
      289 GETIMPORT                        R35 K82 [Enum.HorizontalAlignment.Center]
      291 SETTABLEKS                       R35 R34 K79 ["ButtonHorizontalAlignment"]
      293 SETTABLEKS                       R34 R33 K84 ["&EnableTeamCreateDialog"]
      295 CALL                             R31 2 1
      296 SETTABLE                         R31 R29 R30
      297 GETTABLEKS                       R30 R6 K85 ["DropdownMenu"]
      299 GETTABLEKS                       R31 R4 K76 ["Dictionary"]
      301 GETTABLEKS                       R31 R31 K27 ["join"]
      303 MOVE                             R32 R3
      304 LOADK                            R33 K85 ["DropdownMenu"]
      305 CALL                             R32 1 1
      306 NEWTABLE                         R33 1 0
      308 DUPTABLE                         R34 K88 [{"Offset", "BackgroundColor"}]
      309 GETIMPORT                        R35 K91 [Vector2.new]
      311 LOADN                            R36 244
      312 LOADN                            R37 0
      313 CALL                             R35 2 1
      314 SETTABLEKS                       R35 R34 K86 ["Offset"]
      316 JUMPIFNOT                        R22 ; [+3]
      317 GETTABLEKS                       R35 R18 K92 ["MainBackground"]
      319 JUMP                             ; [+1]
      320 LOADNIL                          R35
      321 SETTABLEKS                       R35 R34 K87 ["BackgroundColor"]
      323 SETTABLEKS                       R34 R33 K93 ["&Search"]
      325 CALL                             R31 2 1
      326 SETTABLE                         R31 R29 R30
      327 GETTABLEKS                       R30 R18 K92 ["MainBackground"]
      329 SETTABLEKS                       R30 R29 K94 ["backgroundColor"]
      331 DUPTABLE                         R30 K98 [{"Subtitle", "Normal", "Subtext"}]
      332 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      333 SETTABLEKS                       R27 R31 K37 ["Font"]
      335 LOADN                            R32 22
      336 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      338 GETTABLEKS                       R32 R18 K101 ["SubText"]
      340 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      342 SETTABLEKS                       R31 R30 K95 ["Subtitle"]
      344 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      345 SETTABLEKS                       R27 R31 K37 ["Font"]
      347 LOADN                            R32 20
      348 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      350 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      352 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      354 SETTABLEKS                       R31 R30 K96 ["Normal"]
      356 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      357 SETTABLEKS                       R27 R31 K37 ["Font"]
      359 LOADN                            R32 16
      360 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      362 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      364 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      366 SETTABLEKS                       R31 R30 K97 ["Subtext"]
      368 SETTABLEKS                       R30 R29 K102 ["fontStyle"]
      370 DUPTABLE                         R30 K105 [{"padding", "edgePadding"}]
      371 LOADN                            R31 10
      372 SETTABLEKS                       R31 R30 K103 ["padding"]
      374 JUMPIFNOT                        R23 ; [+2]
      375 LOADN                            R31 20
      376 JUMP                             ; [+1]
      377 LOADN                            R31 67
      378 SETTABLEKS                       R31 R30 K104 ["edgePadding"]
      380 SETTABLEKS                       R30 R29 K106 ["buttonBar"]
      382 DUPTABLE                         R30 K109 [{"TitleText", "DescriptionText"}]
      383 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      384 SETTABLEKS                       R28 R31 K37 ["Font"]
      386 LOADN                            R32 22
      387 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      389 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      391 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      393 SETTABLEKS                       R31 R30 K107 ["TitleText"]
      395 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      396 SETTABLEKS                       R27 R31 K37 ["Font"]
      398 LOADN                            R32 18
      399 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      401 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      403 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      405 SETTABLEKS                       R31 R30 K108 ["DescriptionText"]
      407 SETTABLEKS                       R30 R29 K110 ["confirmTcDialog"]
      409 DUPTABLE                         R30 K113 [{"Text", "Size", "Position"}]
      410 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      411 GETIMPORT                        R32 K41 [Enum.Font.SourceSans]
      413 SETTABLEKS                       R32 R31 K37 ["Font"]
      415 LOADN                            R32 24
      416 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      418 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      420 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      422 SETTABLEKS                       R31 R30 K111 ["Text"]
      424 GETIMPORT                        R31 K91 [Vector2.new]
      426 LOADN                            R32 87
      427 LOADN                            R33 65
      428 CALL                             R31 2 1
      429 SETTABLEKS                       R31 R30 K51 ["Size"]
      431 GETIMPORT                        R31 K114 [UDim2.new]
      433 LOADK                            R32 K115 [0.5]
      434 LOADN                            R33 0
      435 LOADK                            R34 K115 [0.5]
      436 LOADN                            R35 10
      437 CALL                             R31 4 1
      438 SETTABLEKS                       R31 R30 K112 ["Position"]
      440 SETTABLEKS                       R30 R29 K116 ["cancelDialog"]
      442 DUPTABLE                         R30 K113 [{"Text", "Size", "Position"}]
      443 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      444 GETIMPORT                        R32 K41 [Enum.Font.SourceSans]
      446 SETTABLEKS                       R32 R31 K37 ["Font"]
      448 LOADN                            R32 24
      449 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      451 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      453 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      455 SETTABLEKS                       R31 R30 K111 ["Text"]
      457 GETIMPORT                        R31 K91 [Vector2.new]
      459 LOADN                            R32 87
      460 LOADN                            R33 65
      461 CALL                             R31 2 1
      462 SETTABLEKS                       R31 R30 K51 ["Size"]
      464 GETIMPORT                        R31 K114 [UDim2.new]
      466 LOADK                            R32 K115 [0.5]
      467 LOADN                            R33 0
      468 LOADK                            R34 K115 [0.5]
      469 LOADN                            R35 10
      470 CALL                             R31 4 1
      471 SETTABLEKS                       R31 R30 K112 ["Position"]
      473 SETTABLEKS                       R30 R29 K117 ["enableTeamCreateDialog"]
      475 DUPTABLE                         R30 K119 [{"Text", "publishButton"}]
      476 DUPTABLE                         R31 K121 [{"Font", "TextSize", "TextColor3", "YOffset"}]
      477 SETTABLEKS                       R27 R31 K37 ["Font"]
      479 LOADN                            R32 20
      480 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      482 GETTABLEKS                       R32 R18 K122 ["MainText"]
      484 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      486 LOADN                            R32 70
      487 SETTABLEKS                       R32 R31 K120 ["YOffset"]
      489 SETTABLEKS                       R31 R30 K111 ["Text"]
      491 DUPTABLE                         R31 K126 [{"offset", "paddingX", "paddingY"}]
      492 LOADN                            R32 125
      493 SETTABLEKS                       R32 R31 K123 ["offset"]
      495 LOADN                            R32 75
      496 SETTABLEKS                       R32 R31 K124 ["paddingX"]
      498 LOADN                            R32 15
      499 SETTABLEKS                       R32 R31 K125 ["paddingY"]
      501 SETTABLEKS                       R31 R30 K118 ["publishButton"]
      503 SETTABLEKS                       R30 R29 K127 ["saveToRobloxView"]
      505 DUPTABLE                         R30 K128 [{"Padding"}]
      506 JUMPIFNOT                        R23 ; [+2]
      507 LOADN                            R31 0
      508 JUMP                             ; [+1]
      509 LOADN                            R31 2
      510 SETTABLEKS                       R31 R30 K49 ["Padding"]
      512 SETTABLEKS                       R30 R29 K129 ["permissionsView"]
      514 DUPTABLE                         R30 K131 [{"hover"}]
      515 GETTABLEKS                       R31 R18 K132 ["MenuEntryHover"]
      517 SETTABLEKS                       R31 R30 K130 ["hover"]
      519 SETTABLEKS                       R30 R29 K133 ["menuEntry"]
      521 DUPTABLE                         R30 K137 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      522 JUMPIFNOT                        R23 ; [+6]
      523 GETIMPORT                        R31 K139 [UDim.new]
      525 LOADN                            R32 0
      526 LOADN                            R33 5
      527 CALL                             R31 2 1
      528 JUMP                             ; [+5]
      529 GETIMPORT                        R31 K139 [UDim.new]
      531 LOADN                            R32 0
      532 LOADN                            R33 32
      533 CALL                             R31 2 1
      534 SETTABLEKS                       R31 R30 K134 ["paddingTop"]
      536 JUMPIFNOT                        R23 ; [+6]
      537 GETIMPORT                        R31 K139 [UDim.new]
      539 LOADN                            R32 0
      540 LOADN                            R33 15
      541 CALL                             R31 2 1
      542 JUMP                             ; [+5]
      543 GETIMPORT                        R31 K139 [UDim.new]
      545 LOADN                            R32 0
      546 LOADN                            R33 67
      547 CALL                             R31 2 1
      548 SETTABLEKS                       R31 R30 K135 ["paddingHorizontal"]
      550 DUPTABLE                         R31 K141 [{"fontStyle", "Height"}]
      551 DUPTABLE                         R32 K100 [{"Font", "TextSize", "TextColor3"}]
      552 SETTABLEKS                       R27 R32 K37 ["Font"]
      554 LOADN                            R33 16
      555 SETTABLEKS                       R33 R32 K66 ["TextSize"]
      557 GETTABLEKS                       R33 R18 K122 ["MainText"]
      559 SETTABLEKS                       R33 R32 K99 ["TextColor3"]
      561 SETTABLEKS                       R32 R31 K102 ["fontStyle"]
      563 LOADN                            R32 15
      564 SETTABLEKS                       R32 R31 K140 ["Height"]
      566 SETTABLEKS                       R31 R30 K136 ["ageWarning"]
      568 SETTABLEKS                       R30 R29 K142 ["searchWidget"]
      570 DUPTABLE                         R30 K163 [{"border", "borderHover", "borderSelected", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
      571 GETTABLEKS                       R31 R18 K73 ["Border"]
      573 SETTABLEKS                       R31 R30 K71 ["border"]
      575 GETTABLEKS                       R31 R18 K164 ["DialogMainButton"]
      577 SETTABLEKS                       R31 R30 K143 ["borderHover"]
      579 GETTABLEKS                       R31 R18 K164 ["DialogMainButton"]
      581 SETTABLEKS                       R31 R30 K144 ["borderSelected"]
      583 GETTABLEKS                       R31 R18 K64 ["DimmedText"]
      585 SETTABLEKS                       R31 R30 K145 ["placeholderText"]
      587 GETTABLEKS                       R31 R18 K165 ["SubBackground2"]
      589 SETTABLEKS                       R31 R30 K94 ["backgroundColor"]
      591 GETIMPORT                        R31 K114 [UDim2.new]
      593 LOADN                            R32 0
      594 LOADN                            R33 26
      595 LOADN                            R34 0
      596 LOADN                            R35 14
      597 CALL                             R31 4 1
      598 SETTABLEKS                       R31 R30 K146 ["collabTypeTextPosition"]
      600 GETIMPORT                        R31 K114 [UDim2.new]
      602 LOADN                            R32 1
      603 LOADN                            R33 228
      604 LOADN                            R34 0
      605 LOADN                            R35 14
      606 CALL                             R31 4 1
      607 SETTABLEKS                       R31 R30 K147 ["friendsAccessTextPosition"]
      609 GETTABLEKS                       R31 R18 K101 ["SubText"]
      611 SETTABLEKS                       R31 R30 K148 ["searchIcon"]
      613 DUPTABLE                         R31 K171 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
      614 GETTABLEKS                       R32 R18 K172 ["FriendIcon"]
      616 SETTABLEKS                       R32 R31 K166 ["Image"]
      618 LOADN                            R32 20
      619 SETTABLEKS                       R32 R31 K167 ["LabelWidth"]
      621 LOADN                            R32 13
      622 SETTABLEKS                       R32 R31 K168 ["LabelHeight"]
      624 LOADN                            R32 37
      625 SETTABLEKS                       R32 R31 K169 ["FrameWidth"]
      627 LOADN                            R32 17
      628 SETTABLEKS                       R32 R31 K170 ["Width"]
      630 LOADN                            R32 10
      631 SETTABLEKS                       R32 R31 K140 ["Height"]
      633 SETTABLEKS                       R31 R30 K149 ["friendIcon"]
      635 DUPTABLE                         R31 K175 [{"imageSelected", "image"}]
      636 GETTABLEKS                       R32 R18 K101 ["SubText"]
      638 SETTABLEKS                       R32 R31 K173 ["imageSelected"]
      640 GETTABLEKS                       R32 R18 K101 ["SubText"]
      642 SETTABLEKS                       R32 R31 K174 ["image"]
      644 SETTABLEKS                       R31 R30 K150 ["clearButton"]
      646 LOADN                            R31 25
      647 SETTABLEKS                       R31 R30 K151 ["headerHeight"]
      649 LOADN                            R31 75
      650 SETTABLEKS                       R31 R30 K152 ["itemHeight"]
      652 LOADN                            R31 5
      653 SETTABLEKS                       R31 R30 K153 ["ribbonWidth"]
      655 LOADN                            R31 48
      656 SETTABLEKS                       R31 R30 K154 ["thumbnailSize"]
      658 LOADN                            R31 40
      659 SETTABLEKS                       R31 R30 K155 ["thumbnailPaddingLeft"]
      661 LOADN                            R31 19
      662 SETTABLEKS                       R31 R30 K156 ["renderItemTextPadding"]
      664 LOADN                            R31 40
      665 SETTABLEKS                       R31 R30 K157 ["searchBarHeight"]
      667 LOADN                            R31 32
      668 SETTABLEKS                       R31 R30 K158 ["clearButtonIconSize"]
      670 LOADN                            R31 16
      671 SETTABLEKS                       R31 R30 K159 ["textPadding"]
      673 LOADN                            R31 204
      674 SETTABLEKS                       R31 R30 K160 ["nameLabelWidth"]
      676 LOADN                            R31 55
      677 SETTABLEKS                       R31 R30 K161 ["nameHeight"]
      679 DUPTABLE                         R31 K184 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
      680 DUPTABLE                         R32 K100 [{"Font", "TextSize", "TextColor3"}]
      681 SETTABLEKS                       R27 R32 K37 ["Font"]
      683 LOADN                            R33 16
      684 SETTABLEKS                       R33 R32 K66 ["TextSize"]
      686 GETTABLEKS                       R33 R18 K122 ["MainText"]
      688 SETTABLEKS                       R33 R32 K99 ["TextColor3"]
      690 SETTABLEKS                       R32 R31 K176 ["collaboratorTypeText"]
      692 GETTABLEKS                       R32 R18 K185 ["InputFieldBackground"]
      694 SETTABLEKS                       R32 R31 K94 ["backgroundColor"]
      696 GETTABLEKS                       R32 R18 K122 ["MainText"]
      698 SETTABLEKS                       R32 R31 K177 ["itemText"]
      700 GETTABLEKS                       R32 R18 K101 ["SubText"]
      702 SETTABLEKS                       R32 R31 K178 ["headerText"]
      704 DUPTABLE                         R32 K186 [{"backgroundColor", "itemText"}]
      705 GETTABLEKS                       R33 R18 K187 ["Dropdown"]
      707 SETTABLEKS                       R33 R32 K94 ["backgroundColor"]
      709 GETTABLEKS                       R33 R18 K122 ["MainText"]
      711 SETTABLEKS                       R33 R32 K177 ["itemText"]
      713 SETTABLEKS                       R32 R31 K179 ["hovered"]
      715 DUPTABLE                         R32 K188 [{"offset"}]
      716 LOADN                            R33 2
      717 SETTABLEKS                       R33 R32 K123 ["offset"]
      719 SETTABLEKS                       R32 R31 K180 ["item"]
      721 DUPTABLE                         R32 K189 [{"backgroundColor"}]
      722 GETTABLEKS                       R33 R18 K190 ["ButtonHover"]
      724 SETTABLEKS                       R33 R32 K94 ["backgroundColor"]
      726 SETTABLEKS                       R32 R31 K181 ["selected"]
      728 LOADN                            R32 169
      729 SETTABLEKS                       R32 R31 K182 ["maxHeight"]
      731 LOADN                            R32 100
      732 SETTABLEKS                       R32 R31 K183 ["eligibilityLabelWidth"]
      734 SETTABLEKS                       R31 R30 K162 ["dropDown"]
      736 SETTABLEKS                       R30 R29 K191 ["searchBar"]
      738 DUPTABLE                         R30 K194 [{"loadingImage", "loadFailureImage"}]
      739 LOADK                            R31 K195 ["rbxasset://textures/StudioSharedUI/default_group.png"]
      740 SETTABLEKS                       R31 R30 K192 ["loadingImage"]
      742 LOADK                            R31 K196 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      743 SETTABLEKS                       R31 R30 K193 ["loadFailureImage"]
      745 SETTABLEKS                       R30 R29 K197 ["groupThumbnail"]
      747 DUPTABLE                         R30 K200 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
      748 GETTABLEKS                       R31 R18 K201 ["TableItem"]
      750 SETTABLEKS                       R31 R30 K198 ["background"]
      752 LOADK                            R31 K202 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
      753 SETTABLEKS                       R31 R30 K199 ["maskImage"]
      755 LOADK                            R31 K203 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      756 SETTABLEKS                       R31 R30 K192 ["loadingImage"]
      758 LOADK                            R31 K196 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      759 SETTABLEKS                       R31 R30 K193 ["loadFailureImage"]
      761 SETTABLEKS                       R30 R29 K204 ["subjectThumbnail"]
      763 DUPTABLE                         R30 K205 [{"Image"}]
      764 LOADK                            R31 K206 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
      765 SETTABLEKS                       R31 R30 K166 ["Image"]
      767 SETTABLEKS                       R30 R29 K207 ["orgRoleThumbnail"]
      769 DUPTABLE                         R30 K210 [{"button", "padding", "width"}]
      770 DUPTABLE                         R31 K212 [{"height"}]
      771 LOADN                            R32 50
      772 SETTABLEKS                       R32 R31 K211 ["height"]
      774 SETTABLEKS                       R31 R30 K208 ["button"]
      776 LOADN                            R31 10
      777 SETTABLEKS                       R31 R30 K103 ["padding"]
      779 JUMPIFNOT                        R23 ; [+2]
      780 LOADN                            R31 210
      781 JUMP                             ; [+1]
      782 LOADN                            R31 8
      783 SETTABLEKS                       R31 R30 K209 ["width"]
      785 SETTABLEKS                       R30 R29 K213 ["selectInput"]
      787 DUPTABLE                         R30 K217 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
      788 JUMPIFNOT                        R23 ; [+2]
      789 LOADN                            R31 20
      790 JUMP                             ; [+1]
      791 LOADN                            R31 47
      792 SETTABLEKS                       R31 R30 K214 ["yPadding"]
      794 LOADN                            R31 25
      795 SETTABLEKS                       R31 R30 K215 ["xPadding"]
      797 LOADN                            R31 35
      798 SETTABLEKS                       R31 R30 K216 ["yPaddingNonOwner"]
      800 SETTABLEKS                       R30 R29 K218 ["scrollingFrame"]
      802 DUPTABLE                         R30 K222 [{"boxHeight", "textStyle", "InnerTextPosition"}]
      803 LOADN                            R31 45
      804 SETTABLEKS                       R31 R30 K219 ["boxHeight"]
      806 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      807 SETTABLEKS                       R27 R31 K37 ["Font"]
      809 LOADN                            R32 16
      810 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      812 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      814 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      816 SETTABLEKS                       R31 R30 K220 ["textStyle"]
      818 GETIMPORT                        R31 K114 [UDim2.new]
      820 LOADN                            R32 0
      821 LOADN                            R33 67
      822 LOADK                            R34 K115 [0.5]
      823 LOADN                            R35 0
      824 CALL                             R31 4 1
      825 SETTABLEKS                       R31 R30 K221 ["InnerTextPosition"]
      827 SETTABLEKS                       R30 R29 K223 ["saveMessage"]
      829 DUPTABLE                         R30 K226 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      830 JUMPIFNOT                        R23 ; [+2]
      831 LOADN                            R31 50
      832 JUMP                             ; [+1]
      833 LOADN                            R31 98
      834 SETTABLEKS                       R31 R30 K211 ["height"]
      836 JUMPIFNOT                        R23 ; [+6]
      837 GETIMPORT                        R31 K139 [UDim.new]
      839 LOADN                            R32 0
      840 LOADN                            R33 20
      841 CALL                             R31 2 1
      842 JUMP                             ; [+5]
      843 GETIMPORT                        R31 K139 [UDim.new]
      845 LOADN                            R32 0
      846 LOADN                            R33 26
      847 CALL                             R31 2 1
      848 SETTABLEKS                       R31 R30 K134 ["paddingTop"]
      850 GETIMPORT                        R31 K139 [UDim.new]
      852 LOADN                            R32 0
      853 LOADN                            R33 67
      854 CALL                             R31 2 1
      855 SETTABLEKS                       R31 R30 K224 ["paddingLeft"]
      857 JUMPIFNOT                        R23 ; [+6]
      858 GETIMPORT                        R31 K139 [UDim.new]
      860 LOADN                            R32 0
      861 LOADN                            R33 22
      862 CALL                             R31 2 1
      863 JUMP                             ; [+5]
      864 GETIMPORT                        R31 K139 [UDim.new]
      866 LOADN                            R32 0
      867 LOADN                            R33 75
      868 CALL                             R31 2 1
      869 SETTABLEKS                       R31 R30 K225 ["paddingRight"]
      871 SETTABLEKS                       R30 R29 K227 ["header"]
      873 DUPTABLE                         R30 K231 [{"font", "textSize", "textColor3"}]
      874 SETTABLEKS                       R27 R30 K228 ["font"]
      876 LOADN                            R31 40
      877 SETTABLEKS                       R31 R30 K229 ["textSize"]
      879 GETTABLEKS                       R31 R18 K62 ["TitlebarText"]
      881 SETTABLEKS                       R31 R30 K230 ["textColor3"]
      883 SETTABLEKS                       R30 R29 K232 ["title"]
      885 DUPTABLE                         R30 K233 [{"font", "textSize", "textColor3", "width"}]
      886 SETTABLEKS                       R27 R30 K228 ["font"]
      888 LOADN                            R31 24
      889 SETTABLEKS                       R31 R30 K229 ["textSize"]
      891 GETTABLEKS                       R31 R18 K62 ["TitlebarText"]
      893 SETTABLEKS                       R31 R30 K230 ["textColor3"]
      895 LOADN                            R31 175
      896 SETTABLEKS                       R31 R30 K209 ["width"]
      898 SETTABLEKS                       R30 R29 K234 ["copyLinkButton"]
      900 DUPTABLE                         R30 K237 [{"height", "gradientSize", "gradientTransparency", "border"}]
      901 JUMPIFNOT                        R23 ; [+2]
      902 LOADN                            R31 60
      903 JUMP                             ; [+1]
      904 LOADN                            R31 65
      905 SETTABLEKS                       R31 R30 K211 ["height"]
      907 LOADN                            R31 3
      908 SETTABLEKS                       R31 R30 K235 ["gradientSize"]
      910 LOADK                            R31 K238 [0.9]
      911 SETTABLEKS                       R31 R30 K236 ["gradientTransparency"]
      913 JUMPIFNOT                        R23 ; [+3]
      914 GETTABLEKS                       R31 R18 K73 ["Border"]
      916 JUMP                             ; [+2]
      917 GETTABLEKS                       R31 R18 K239 ["FooterBorder"]
      919 SETTABLEKS                       R31 R30 K71 ["border"]
      921 SETTABLEKS                       R30 R29 K240 ["footer"]
      923 DUPTABLE                         R30 K243 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      924 JUMPIFNOT                        R23 ; [+13]
      925 JUMPIFNOT                        R26 ; [+6]
      926 GETIMPORT                        R31 K139 [UDim.new]
      928 LOADN                            R32 0
      929 LOADN                            R33 15
      930 CALL                             R31 2 1
      931 JUMP                             ; [+11]
      932 GETIMPORT                        R31 K139 [UDim.new]
      934 LOADN                            R32 0
      935 LOADN                            R33 20
      936 CALL                             R31 2 1
      937 JUMP                             ; [+5]
      938 GETIMPORT                        R31 K139 [UDim.new]
      940 LOADN                            R32 0
      941 LOADN                            R33 67
      942 CALL                             R31 2 1
      943 SETTABLEKS                       R31 R30 K135 ["paddingHorizontal"]
      945 JUMPIFNOT                        R24 ; [+7]
      946 JUMPIFNOT                        R25 ; [+6]
      947 GETIMPORT                        R31 K139 [UDim.new]
      949 LOADN                            R32 0
      950 LOADN                            R33 12
      951 CALL                             R31 2 1
      952 JUMP                             ; [+1]
      953 LOADNIL                          R31
      954 SETTABLEKS                       R31 R30 K134 ["paddingTop"]
      956 GETIMPORT                        R31 K114 [UDim2.new]
      958 LOADN                            R32 1
      959 LOADN                            R33 0
      960 LOADN                            R34 0
      961 JUMPIFNOT                        R24 ; [+3]
      962 JUMPIFNOT                        R25 ; [+2]
      963 LOADN                            R35 42
      964 JUMP                             ; [+1]
      965 LOADN                            R35 30
      966 CALL                             R31 4 1
      967 SETTABLEKS                       R31 R30 K241 ["size"]
      969 DUPTABLE                         R31 K244 [{"paddingHorizontal", "size"}]
      970 GETIMPORT                        R32 K139 [UDim.new]
      972 LOADN                            R33 0
      973 LOADN                            R34 8
      974 CALL                             R32 2 1
      975 SETTABLEKS                       R32 R31 K135 ["paddingHorizontal"]
      977 GETIMPORT                        R32 K114 [UDim2.new]
      979 LOADN                            R33 0
      980 LOADN                            R34 100
      981 LOADN                            R35 1
      982 LOADN                            R36 0
      983 CALL                             R32 4 1
      984 SETTABLEKS                       R32 R31 K241 ["size"]
      986 SETTABLEKS                       R31 R30 K242 ["pills"]
      988 SETTABLEKS                       R30 R29 K245 ["collaboratorFilter"]
      990 DUPTABLE                         R30 K256 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
      991 LOADK                            R31 K1 [script]
      992 SETTABLEKS                       R31 R30 K246 ["FadeTransparency"]
      994 DUPTABLE                         R31 K262 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
      995 LOADN                            R32 14
      996 SETTABLEKS                       R32 R31 K258 ["ExpandTextSize"]
      998 JUMPIFNOT                        R23 ; [+8]
      999 GETIMPORT                        R32 K114 [UDim2.new]
     1001 LOADN                            R33 0
     1002 LOADN                            R34 238
     1003 LOADN                            R35 0
     1004 LOADN                            R36 60
     1005 CALL                             R32 4 1
     1006 JUMP                             ; [+7]
     1007 GETIMPORT                        R32 K114 [UDim2.new]
     1009 LOADN                            R33 0
     1010 LOADN                            R34 153
     1011 LOADN                            R35 0
     1012 LOADN                            R36 74
     1013 CALL                             R32 4 1
     1014 SETTABLEKS                       R32 R31 K241 ["size"]
     1016 LOADN                            R32 16
     1017 SETTABLEKS                       R32 R31 K259 ["collaboratorItemOffset"]
     1019 GETIMPORT                        R32 K114 [UDim2.new]
     1021 LOADN                            R33 1
     1022 LOADN                            R34 0
     1023 LOADN                            R35 0
     1024 LOADN                            R36 34
     1025 CALL                             R32 4 1
     1026 SETTABLEKS                       R32 R31 K260 ["expandablePaneSize"]
     1028 DUPTABLE                         R32 K265 [{"size", "arrowLabel", "textLabel"}]
     1029 GETIMPORT                        R33 K114 [UDim2.new]
     1031 LOADN                            R34 0
     1032 LOADN                            R35 96
     1033 LOADN                            R36 0
     1034 LOADN                            R37 34
     1035 CALL                             R33 4 1
     1036 SETTABLEKS                       R33 R32 K241 ["size"]
     1038 DUPTABLE                         R33 K267 [{"position", "size"}]
     1039 GETIMPORT                        R34 K114 [UDim2.new]
     1041 LOADN                            R35 0
     1042 LOADN                            R36 42
     1043 LOADK                            R37 K115 [0.5]
     1044 LOADN                            R38 0
     1045 CALL                             R34 4 1
     1046 SETTABLEKS                       R34 R33 K266 ["position"]
     1048 GETIMPORT                        R34 K114 [UDim2.new]
     1050 LOADN                            R35 0
     1051 LOADN                            R36 17
     1052 LOADN                            R37 0
     1053 LOADN                            R38 17
     1054 CALL                             R34 4 1
     1055 SETTABLEKS                       R34 R33 K241 ["size"]
     1057 SETTABLEKS                       R33 R32 K263 ["arrowLabel"]
     1059 DUPTABLE                         R33 K268 [{"position"}]
     1060 GETIMPORT                        R34 K114 [UDim2.new]
     1062 LOADN                            R35 0
     1063 LOADN                            R36 60
     1064 LOADK                            R37 K115 [0.5]
     1065 LOADN                            R38 0
     1066 CALL                             R34 4 1
     1067 SETTABLEKS                       R34 R33 K266 ["position"]
     1069 SETTABLEKS                       R33 R32 K264 ["textLabel"]
     1071 SETTABLEKS                       R32 R31 K261 ["headerComponent"]
     1073 SETTABLEKS                       R31 R30 K247 ["groupCollaboratorItem"]
     1075 DUPTABLE                         R31 K270 [{"size", "xOffset", "hovered"}]
     1076 LOADN                            R32 16
     1077 SETTABLEKS                       R32 R31 K241 ["size"]
     1079 LOADN                            R32 6
     1080 SETTABLEKS                       R32 R31 K269 ["xOffset"]
     1082 GETTABLEKS                       R32 R18 K187 ["Dropdown"]
     1084 SETTABLEKS                       R32 R31 K179 ["hovered"]
     1086 SETTABLEKS                       R31 R30 K248 ["deleteButton"]
     1088 DUPTABLE                         R31 K273 [{"heightOffset", "yOffset"}]
     1089 LOADN                            R32 54
     1090 SETTABLEKS                       R32 R31 K271 ["heightOffset"]
     1092 LOADN                            R32 11
     1093 SETTABLEKS                       R32 R31 K272 ["yOffset"]
     1095 SETTABLEKS                       R31 R30 K249 ["permissionEditor"]
     1097 DUPTABLE                         R31 K278 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
     1098 DUPTABLE                         R32 K280 [{"withSubText", "size", "xOffset"}]
     1099 DUPTABLE                         R33 K281 [{"size"}]
     1100 GETIMPORT                        R34 K114 [UDim2.new]
     1102 LOADN                            R35 1
     1103 LOADN                            R36 248
     1104 LOADN                            R37 0
     1105 LOADN                            R38 30
     1106 CALL                             R34 4 1
     1107 SETTABLEKS                       R34 R33 K241 ["size"]
     1109 SETTABLEKS                       R33 R32 K279 ["withSubText"]
     1111 GETIMPORT                        R33 K114 [UDim2.new]
     1113 LOADN                            R34 1
     1114 LOADN                            R35 248
     1115 LOADN                            R36 0
     1116 LOADN                            R37 54
     1117 CALL                             R33 4 1
     1118 SETTABLEKS                       R33 R32 K241 ["size"]
     1120 LOADN                            R33 50
     1121 SETTABLEKS                       R33 R32 K269 ["xOffset"]
     1123 SETTABLEKS                       R32 R31 K274 ["withIcon"]
     1125 NEWTABLE                         R32 2 1
     1127 DUPTABLE                         R34 K281 [{"size"}]
     1128 GETIMPORT                        R35 K114 [UDim2.new]
     1130 LOADN                            R36 1
     1131 LOADN                            R37 248
     1132 LOADN                            R38 0
     1133 LOADN                            R39 30
     1134 CALL                             R35 4 1
     1135 SETTABLEKS                       R35 R34 K241 ["size"]
     1137 SETTABLEKS                       R34 R32 K279 ["withSubText"]
     1139 GETIMPORT                        R33 K114 [UDim2.new]
     1141 LOADN                            R34 1
     1142 LOADN                            R35 130
     1143 LOADN                            R36 0
     1144 LOADN                            R37 54
     1145 CALL                             R33 4 1
     1146 SETLIST                          R32 R33 1 [1]
     1148 LOADN                            R34 28
     1149 SETTABLEKS                       R34 R32 K269 ["xOffset"]
     1151 SETTABLEKS                       R32 R31 K275 ["withoutIcon"]
     1153 DUPTABLE                         R32 K282 [{"yOffset"}]
     1154 LOADN                            R33 246
     1155 SETTABLEKS                       R33 R32 K272 ["yOffset"]
     1157 SETTABLEKS                       R32 R31 K276 ["withSubtext"]
     1159 DUPTABLE                         R32 K282 [{"yOffset"}]
     1160 LOADN                            R33 0
     1161 SETTABLEKS                       R33 R32 K272 ["yOffset"]
     1163 SETTABLEKS                       R32 R31 K277 ["withoutSubtext"]
     1165 SETTABLEKS                       R31 R30 K250 ["collaboratorName"]
     1167 DUPTABLE                         R31 K283 [{"withIcon", "withoutIcon", "yOffset"}]
     1168 DUPTABLE                         R32 K284 [{"size", "xOffset"}]
     1169 GETIMPORT                        R33 K114 [UDim2.new]
     1171 LOADN                            R34 1
     1172 LOADN                            R35 248
     1173 LOADN                            R36 0
     1174 LOADN                            R37 24
     1175 CALL                             R33 4 1
     1176 SETTABLEKS                       R33 R32 K241 ["size"]
     1178 LOADN                            R33 50
     1179 SETTABLEKS                       R33 R32 K269 ["xOffset"]
     1181 SETTABLEKS                       R32 R31 K274 ["withIcon"]
     1183 NEWTABLE                         R32 1 1
     1185 GETIMPORT                        R33 K114 [UDim2.new]
     1187 LOADN                            R34 1
     1188 LOADN                            R35 130
     1189 LOADN                            R36 0
     1190 LOADN                            R37 24
     1191 CALL                             R33 4 1
     1192 SETLIST                          R32 R33 1 [1]
     1194 LOADN                            R34 28
     1195 SETTABLEKS                       R34 R32 K269 ["xOffset"]
     1197 SETTABLEKS                       R32 R31 K275 ["withoutIcon"]
     1199 LOADN                            R32 10
     1200 SETTABLEKS                       R32 R31 K272 ["yOffset"]
     1202 SETTABLEKS                       R31 R30 K251 ["collaboratorSubText"]
     1204 DUPTABLE                         R31 K287 [{"withIconSize", "withoutIconSize", "position"}]
     1205 GETIMPORT                        R32 K114 [UDim2.new]
     1207 LOADN                            R33 1
     1208 LOADN                            R34 248
     1209 LOADN                            R35 0
     1210 LOADN                            R36 54
     1211 CALL                             R32 4 1
     1212 SETTABLEKS                       R32 R31 K285 ["withIconSize"]
     1214 GETIMPORT                        R32 K114 [UDim2.new]
     1216 LOADN                            R33 1
     1217 LOADN                            R34 130
     1218 LOADN                            R35 0
     1219 LOADN                            R36 54
     1220 CALL                             R32 4 1
     1221 SETTABLEKS                       R32 R31 K286 ["withoutIconSize"]
     1223 GETIMPORT                        R32 K114 [UDim2.new]
     1225 LOADN                            R33 1
     1226 LOADN                            R34 249
     1227 LOADK                            R35 K115 [0.5]
     1228 LOADN                            R36 0
     1229 CALL                             R32 4 1
     1230 SETTABLEKS                       R32 R31 K266 ["position"]
     1232 SETTABLEKS                       R31 R30 K252 ["ownerLabel"]
     1234 LOADN                            R31 40
     1235 SETTABLEKS                       R31 R30 K253 ["iconContainerSize"]
     1237 DUPTABLE                         R31 K289 [{"width", "height", "position", "anchorPoint"}]
     1238 JUMPIFNOT                        R23 ; [+2]
     1239 LOADN                            R32 238
     1240 JUMP                             ; [+1]
     1241 LOADN                            R32 153
     1242 SETTABLEKS                       R32 R31 K209 ["width"]
     1244 LOADN                            R32 74
     1245 SETTABLEKS                       R32 R31 K211 ["height"]
     1247 LOADNIL                          R32
     1248 SETTABLEKS                       R32 R31 K266 ["position"]
     1250 LOADNIL                          R32
     1251 SETTABLEKS                       R32 R31 K288 ["anchorPoint"]
     1253 SETTABLEKS                       R31 R30 K254 ["nonRolesetFrame"]
     1255 DUPTABLE                         R31 K291 [{"width", "height", "position", "anchorPont"}]
     1256 JUMPIFNOT                        R23 ; [+2]
     1257 LOADN                            R32 238
     1258 JUMP                             ; [+1]
     1259 LOADN                            R32 96
     1260 SETTABLEKS                       R32 R31 K209 ["width"]
     1262 LOADN                            R32 54
     1263 SETTABLEKS                       R32 R31 K211 ["height"]
     1265 GETIMPORT                        R32 K114 [UDim2.new]
     1267 LOADK                            R33 K36 ["Enum"]
     1268 LOADN                            R34 200
     1269 LOADN                            R35 0
     1270 LOADN                            R36 20
     1271 CALL                             R32 4 1
     1272 SETTABLEKS                       R32 R31 K266 ["position"]
     1274 GETIMPORT                        R32 K91 [Vector2.new]
     1276 LOADN                            R33 1
     1277 LOADN                            R34 0
     1278 CALL                             R32 2 1
     1279 SETTABLEKS                       R32 R31 K290 ["anchorPont"]
     1281 SETTABLEKS                       R31 R30 K255 ["rolesetFrame"]
     1283 SETTABLEKS                       R30 R29 K293 ["collaboratorItem"]
     1285 GETTABLEKS                       R30 R18 K294 ["CloseWidget"]
     1287 SETTABLEKS                       R30 R29 K295 ["deleteIcon"]
     1289 DUPTABLE                         R30 K298 [{"right", "down"}]
     1290 GETTABLEKS                       R31 R18 K299 ["RightArrow"]
     1292 SETTABLEKS                       R31 R30 K296 ["right"]
     1294 GETTABLEKS                       R31 R18 K300 ["DownArrow"]
     1296 SETTABLEKS                       R31 R30 K297 ["down"]
     1298 SETTABLEKS                       R30 R29 K301 ["arrows"]
     1300 DUPCLOSURE                       R30 K302 [PROTO_0]
     1301 CAPTURE                          VAL R21
     1302 CAPTURE                          VAL R16
     1303 CAPTURE                          VAL R18
     1304 CAPTURE                          VAL R19
     1305 CAPTURE                          VAL R17
     1306 CAPTURE                          VAL R15
     1307 CAPTURE                          VAL R29
     1308 RETURN                           R30 1
