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
      570 DUPTABLE                         R30 K164 [{"border", "borderHover", "borderSelected", "borderError", "placeholderText", "backgroundColor", "collabTypeTextPosition", "friendsAccessTextPosition", "searchIcon", "friendIcon", "clearButton", "headerHeight", "itemHeight", "ribbonWidth", "thumbnailSize", "thumbnailPaddingLeft", "renderItemTextPadding", "searchBarHeight", "clearButtonIconSize", "textPadding", "nameLabelWidth", "nameHeight", "dropDown"}]
      571 GETTABLEKS                       R31 R18 K73 ["Border"]
      573 SETTABLEKS                       R31 R30 K71 ["border"]
      575 GETTABLEKS                       R31 R18 K165 ["DialogMainButton"]
      577 SETTABLEKS                       R31 R30 K143 ["borderHover"]
      579 GETTABLEKS                       R31 R18 K165 ["DialogMainButton"]
      581 SETTABLEKS                       R31 R30 K144 ["borderSelected"]
      583 GETIMPORT                        R31 K168 [Color3.fromRGB]
      585 LOADN                            R32 223
      586 LOADN                            R33 40
      587 LOADN                            R34 31
      588 CALL                             R31 3 1
      589 SETTABLEKS                       R31 R30 K145 ["borderError"]
      591 GETTABLEKS                       R31 R18 K64 ["DimmedText"]
      593 SETTABLEKS                       R31 R30 K146 ["placeholderText"]
      595 GETTABLEKS                       R31 R18 K169 ["SubBackground2"]
      597 SETTABLEKS                       R31 R30 K94 ["backgroundColor"]
      599 GETIMPORT                        R31 K114 [UDim2.new]
      601 LOADN                            R32 0
      602 LOADN                            R33 26
      603 LOADN                            R34 0
      604 LOADN                            R35 14
      605 CALL                             R31 4 1
      606 SETTABLEKS                       R31 R30 K147 ["collabTypeTextPosition"]
      608 GETIMPORT                        R31 K114 [UDim2.new]
      610 LOADN                            R32 1
      611 LOADN                            R33 228
      612 LOADN                            R34 0
      613 LOADN                            R35 14
      614 CALL                             R31 4 1
      615 SETTABLEKS                       R31 R30 K148 ["friendsAccessTextPosition"]
      617 GETTABLEKS                       R31 R18 K101 ["SubText"]
      619 SETTABLEKS                       R31 R30 K149 ["searchIcon"]
      621 DUPTABLE                         R31 K175 [{"Image", "LabelWidth", "LabelHeight", "FrameWidth", "Width", "Height"}]
      622 GETTABLEKS                       R32 R18 K176 ["FriendIcon"]
      624 SETTABLEKS                       R32 R31 K170 ["Image"]
      626 LOADN                            R32 20
      627 SETTABLEKS                       R32 R31 K171 ["LabelWidth"]
      629 LOADN                            R32 13
      630 SETTABLEKS                       R32 R31 K172 ["LabelHeight"]
      632 LOADN                            R32 37
      633 SETTABLEKS                       R32 R31 K173 ["FrameWidth"]
      635 LOADN                            R32 17
      636 SETTABLEKS                       R32 R31 K174 ["Width"]
      638 LOADN                            R32 10
      639 SETTABLEKS                       R32 R31 K140 ["Height"]
      641 SETTABLEKS                       R31 R30 K150 ["friendIcon"]
      643 DUPTABLE                         R31 K179 [{"imageSelected", "image"}]
      644 GETTABLEKS                       R32 R18 K101 ["SubText"]
      646 SETTABLEKS                       R32 R31 K177 ["imageSelected"]
      648 GETTABLEKS                       R32 R18 K101 ["SubText"]
      650 SETTABLEKS                       R32 R31 K178 ["image"]
      652 SETTABLEKS                       R31 R30 K151 ["clearButton"]
      654 LOADN                            R31 25
      655 SETTABLEKS                       R31 R30 K152 ["headerHeight"]
      657 LOADN                            R31 75
      658 SETTABLEKS                       R31 R30 K153 ["itemHeight"]
      660 LOADN                            R31 5
      661 SETTABLEKS                       R31 R30 K154 ["ribbonWidth"]
      663 LOADN                            R31 48
      664 SETTABLEKS                       R31 R30 K155 ["thumbnailSize"]
      666 LOADN                            R31 40
      667 SETTABLEKS                       R31 R30 K156 ["thumbnailPaddingLeft"]
      669 LOADN                            R31 19
      670 SETTABLEKS                       R31 R30 K157 ["renderItemTextPadding"]
      672 LOADN                            R31 40
      673 SETTABLEKS                       R31 R30 K158 ["searchBarHeight"]
      675 LOADN                            R31 32
      676 SETTABLEKS                       R31 R30 K159 ["clearButtonIconSize"]
      678 LOADN                            R31 16
      679 SETTABLEKS                       R31 R30 K160 ["textPadding"]
      681 LOADN                            R31 204
      682 SETTABLEKS                       R31 R30 K161 ["nameLabelWidth"]
      684 LOADN                            R31 55
      685 SETTABLEKS                       R31 R30 K162 ["nameHeight"]
      687 DUPTABLE                         R31 K188 [{"collaboratorTypeText", "backgroundColor", "itemText", "headerText", "hovered", "item", "selected", "maxHeight", "eligibilityLabelWidth"}]
      688 DUPTABLE                         R32 K100 [{"Font", "TextSize", "TextColor3"}]
      689 SETTABLEKS                       R27 R32 K37 ["Font"]
      691 LOADN                            R33 16
      692 SETTABLEKS                       R33 R32 K66 ["TextSize"]
      694 GETTABLEKS                       R33 R18 K122 ["MainText"]
      696 SETTABLEKS                       R33 R32 K99 ["TextColor3"]
      698 SETTABLEKS                       R32 R31 K180 ["collaboratorTypeText"]
      700 GETTABLEKS                       R32 R18 K189 ["InputFieldBackground"]
      702 SETTABLEKS                       R32 R31 K94 ["backgroundColor"]
      704 GETTABLEKS                       R32 R18 K122 ["MainText"]
      706 SETTABLEKS                       R32 R31 K181 ["itemText"]
      708 GETTABLEKS                       R32 R18 K101 ["SubText"]
      710 SETTABLEKS                       R32 R31 K182 ["headerText"]
      712 DUPTABLE                         R32 K190 [{"backgroundColor", "itemText"}]
      713 GETTABLEKS                       R33 R18 K191 ["Dropdown"]
      715 SETTABLEKS                       R33 R32 K94 ["backgroundColor"]
      717 GETTABLEKS                       R33 R18 K122 ["MainText"]
      719 SETTABLEKS                       R33 R32 K181 ["itemText"]
      721 SETTABLEKS                       R32 R31 K183 ["hovered"]
      723 DUPTABLE                         R32 K192 [{"offset"}]
      724 LOADN                            R33 2
      725 SETTABLEKS                       R33 R32 K123 ["offset"]
      727 SETTABLEKS                       R32 R31 K184 ["item"]
      729 DUPTABLE                         R32 K193 [{"backgroundColor"}]
      730 GETTABLEKS                       R33 R18 K194 ["ButtonHover"]
      732 SETTABLEKS                       R33 R32 K94 ["backgroundColor"]
      734 SETTABLEKS                       R32 R31 K185 ["selected"]
      736 LOADN                            R32 169
      737 SETTABLEKS                       R32 R31 K186 ["maxHeight"]
      739 LOADN                            R32 100
      740 SETTABLEKS                       R32 R31 K187 ["eligibilityLabelWidth"]
      742 SETTABLEKS                       R31 R30 K163 ["dropDown"]
      744 SETTABLEKS                       R30 R29 K195 ["searchBar"]
      746 DUPTABLE                         R30 K198 [{"loadingImage", "loadFailureImage"}]
      747 LOADK                            R31 K199 ["rbxasset://textures/StudioSharedUI/default_group.png"]
      748 SETTABLEKS                       R31 R30 K196 ["loadingImage"]
      750 LOADK                            R31 K200 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      751 SETTABLEKS                       R31 R30 K197 ["loadFailureImage"]
      753 SETTABLEKS                       R30 R29 K201 ["groupThumbnail"]
      755 DUPTABLE                         R30 K204 [{"background", "maskImage", "loadingImage", "loadFailureImage"}]
      756 GETTABLEKS                       R31 R18 K205 ["TableItem"]
      758 SETTABLEKS                       R31 R30 K202 ["background"]
      760 LOADK                            R31 K206 ["rbxasset://textures/StudioSharedUI/avatarMask.png"]
      761 SETTABLEKS                       R31 R30 K203 ["maskImage"]
      763 LOADK                            R31 K207 ["rbxasset://textures/StudioSharedUI/default_user.png"]
      764 SETTABLEKS                       R31 R30 K196 ["loadingImage"]
      766 LOADK                            R31 K200 ["rbxasset://textures/GameSettings/ModeratedAsset.jpg"]
      767 SETTABLEKS                       R31 R30 K197 ["loadFailureImage"]
      769 SETTABLEKS                       R30 R29 K208 ["subjectThumbnail"]
      771 DUPTABLE                         R30 K209 [{"Image"}]
      772 LOADK                            R31 K210 ["rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"]
      773 SETTABLEKS                       R31 R30 K170 ["Image"]
      775 SETTABLEKS                       R30 R29 K211 ["orgRoleThumbnail"]
      777 DUPTABLE                         R30 K214 [{"button", "padding", "width"}]
      778 DUPTABLE                         R31 K216 [{"height"}]
      779 LOADN                            R32 50
      780 SETTABLEKS                       R32 R31 K215 ["height"]
      782 SETTABLEKS                       R31 R30 K212 ["button"]
      784 LOADN                            R31 10
      785 SETTABLEKS                       R31 R30 K103 ["padding"]
      787 JUMPIFNOT                        R23 ; [+2]
      788 LOADN                            R31 210
      789 JUMP                             ; [+1]
      790 LOADN                            R31 8
      791 SETTABLEKS                       R31 R30 K213 ["width"]
      793 SETTABLEKS                       R30 R29 K217 ["selectInput"]
      795 DUPTABLE                         R30 K221 [{"yPadding", "xPadding", "yPaddingNonOwner"}]
      796 JUMPIFNOT                        R23 ; [+2]
      797 LOADN                            R31 20
      798 JUMP                             ; [+1]
      799 LOADN                            R31 47
      800 SETTABLEKS                       R31 R30 K218 ["yPadding"]
      802 LOADN                            R31 25
      803 SETTABLEKS                       R31 R30 K219 ["xPadding"]
      805 LOADN                            R31 35
      806 SETTABLEKS                       R31 R30 K220 ["yPaddingNonOwner"]
      808 SETTABLEKS                       R30 R29 K222 ["scrollingFrame"]
      810 DUPTABLE                         R30 K226 [{"boxHeight", "textStyle", "InnerTextPosition"}]
      811 LOADN                            R31 45
      812 SETTABLEKS                       R31 R30 K223 ["boxHeight"]
      814 DUPTABLE                         R31 K100 [{"Font", "TextSize", "TextColor3"}]
      815 SETTABLEKS                       R27 R31 K37 ["Font"]
      817 LOADN                            R32 16
      818 SETTABLEKS                       R32 R31 K66 ["TextSize"]
      820 GETTABLEKS                       R32 R18 K62 ["TitlebarText"]
      822 SETTABLEKS                       R32 R31 K99 ["TextColor3"]
      824 SETTABLEKS                       R31 R30 K224 ["textStyle"]
      826 GETIMPORT                        R31 K114 [UDim2.new]
      828 LOADN                            R32 0
      829 LOADN                            R33 67
      830 LOADK                            R34 K115 [0.5]
      831 LOADN                            R35 0
      832 CALL                             R31 4 1
      833 SETTABLEKS                       R31 R30 K225 ["InnerTextPosition"]
      835 SETTABLEKS                       R30 R29 K227 ["saveMessage"]
      837 DUPTABLE                         R30 K230 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      838 JUMPIFNOT                        R23 ; [+2]
      839 LOADN                            R31 50
      840 JUMP                             ; [+1]
      841 LOADN                            R31 98
      842 SETTABLEKS                       R31 R30 K215 ["height"]
      844 JUMPIFNOT                        R23 ; [+6]
      845 GETIMPORT                        R31 K139 [UDim.new]
      847 LOADN                            R32 0
      848 LOADN                            R33 20
      849 CALL                             R31 2 1
      850 JUMP                             ; [+5]
      851 GETIMPORT                        R31 K139 [UDim.new]
      853 LOADN                            R32 0
      854 LOADN                            R33 26
      855 CALL                             R31 2 1
      856 SETTABLEKS                       R31 R30 K134 ["paddingTop"]
      858 GETIMPORT                        R31 K139 [UDim.new]
      860 LOADN                            R32 0
      861 LOADN                            R33 67
      862 CALL                             R31 2 1
      863 SETTABLEKS                       R31 R30 K228 ["paddingLeft"]
      865 JUMPIFNOT                        R23 ; [+6]
      866 GETIMPORT                        R31 K139 [UDim.new]
      868 LOADN                            R32 0
      869 LOADN                            R33 22
      870 CALL                             R31 2 1
      871 JUMP                             ; [+5]
      872 GETIMPORT                        R31 K139 [UDim.new]
      874 LOADN                            R32 0
      875 LOADN                            R33 75
      876 CALL                             R31 2 1
      877 SETTABLEKS                       R31 R30 K229 ["paddingRight"]
      879 SETTABLEKS                       R30 R29 K231 ["header"]
      881 DUPTABLE                         R30 K235 [{"font", "textSize", "textColor3"}]
      882 SETTABLEKS                       R27 R30 K232 ["font"]
      884 LOADN                            R31 40
      885 SETTABLEKS                       R31 R30 K233 ["textSize"]
      887 GETTABLEKS                       R31 R18 K62 ["TitlebarText"]
      889 SETTABLEKS                       R31 R30 K234 ["textColor3"]
      891 SETTABLEKS                       R30 R29 K236 ["title"]
      893 DUPTABLE                         R30 K237 [{"font", "textSize", "textColor3", "width"}]
      894 SETTABLEKS                       R27 R30 K232 ["font"]
      896 LOADN                            R31 24
      897 SETTABLEKS                       R31 R30 K233 ["textSize"]
      899 GETTABLEKS                       R31 R18 K62 ["TitlebarText"]
      901 SETTABLEKS                       R31 R30 K234 ["textColor3"]
      903 LOADN                            R31 175
      904 SETTABLEKS                       R31 R30 K213 ["width"]
      906 SETTABLEKS                       R30 R29 K238 ["copyLinkButton"]
      908 DUPTABLE                         R30 K241 [{"height", "gradientSize", "gradientTransparency", "border"}]
      909 JUMPIFNOT                        R23 ; [+2]
      910 LOADN                            R31 60
      911 JUMP                             ; [+1]
      912 LOADN                            R31 65
      913 SETTABLEKS                       R31 R30 K215 ["height"]
      915 LOADN                            R31 3
      916 SETTABLEKS                       R31 R30 K239 ["gradientSize"]
      918 LOADK                            R31 K242 [0.9]
      919 SETTABLEKS                       R31 R30 K240 ["gradientTransparency"]
      921 JUMPIFNOT                        R23 ; [+3]
      922 GETTABLEKS                       R31 R18 K73 ["Border"]
      924 JUMP                             ; [+2]
      925 GETTABLEKS                       R31 R18 K243 ["FooterBorder"]
      927 SETTABLEKS                       R31 R30 K71 ["border"]
      929 SETTABLEKS                       R30 R29 K244 ["footer"]
      931 DUPTABLE                         R30 K247 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      932 JUMPIFNOT                        R23 ; [+13]
      933 JUMPIFNOT                        R26 ; [+6]
      934 GETIMPORT                        R31 K139 [UDim.new]
      936 LOADN                            R32 0
      937 LOADN                            R33 15
      938 CALL                             R31 2 1
      939 JUMP                             ; [+11]
      940 GETIMPORT                        R31 K139 [UDim.new]
      942 LOADN                            R32 0
      943 LOADN                            R33 20
      944 CALL                             R31 2 1
      945 JUMP                             ; [+5]
      946 GETIMPORT                        R31 K139 [UDim.new]
      948 LOADN                            R32 0
      949 LOADN                            R33 67
      950 CALL                             R31 2 1
      951 SETTABLEKS                       R31 R30 K135 ["paddingHorizontal"]
      953 JUMPIFNOT                        R24 ; [+7]
      954 JUMPIFNOT                        R25 ; [+6]
      955 GETIMPORT                        R31 K139 [UDim.new]
      957 LOADN                            R32 0
      958 LOADN                            R33 12
      959 CALL                             R31 2 1
      960 JUMP                             ; [+1]
      961 LOADNIL                          R31
      962 SETTABLEKS                       R31 R30 K134 ["paddingTop"]
      964 GETIMPORT                        R31 K114 [UDim2.new]
      966 LOADN                            R32 1
      967 LOADN                            R33 0
      968 LOADN                            R34 0
      969 JUMPIFNOT                        R24 ; [+3]
      970 JUMPIFNOT                        R25 ; [+2]
      971 LOADN                            R35 42
      972 JUMP                             ; [+1]
      973 LOADN                            R35 30
      974 CALL                             R31 4 1
      975 SETTABLEKS                       R31 R30 K245 ["size"]
      977 DUPTABLE                         R31 K248 [{"paddingHorizontal", "size"}]
      978 GETIMPORT                        R32 K139 [UDim.new]
      980 LOADN                            R33 0
      981 LOADN                            R34 8
      982 CALL                             R32 2 1
      983 SETTABLEKS                       R32 R31 K135 ["paddingHorizontal"]
      985 GETIMPORT                        R32 K114 [UDim2.new]
      987 LOADN                            R33 0
      988 LOADN                            R34 100
      989 LOADN                            R35 1
      990 LOADN                            R36 0
      991 CALL                             R32 4 1
      992 SETTABLEKS                       R32 R31 K245 ["size"]
      994 SETTABLEKS                       R31 R30 K246 ["pills"]
      996 SETTABLEKS                       R30 R29 K249 ["collaboratorFilter"]
      998 DUPTABLE                         R30 K260 [{"FadeTransparency", "groupCollaboratorItem", "deleteButton", "permissionEditor", "collaboratorName", "collaboratorSubText", "ownerLabel", "iconContainerSize", "nonRolesetFrame", "rolesetFrame"}]
      999 LOADK                            R31 K5 ["Packages"]
     1000 SETTABLEKS                       R31 R30 K250 ["FadeTransparency"]
     1002 DUPTABLE                         R31 K266 [{"ExpandTextSize", "size", "collaboratorItemOffset", "expandablePaneSize", "headerComponent"}]
     1003 LOADN                            R32 14
     1004 SETTABLEKS                       R32 R31 K262 ["ExpandTextSize"]
     1006 JUMPIFNOT                        R23 ; [+8]
     1007 GETIMPORT                        R32 K114 [UDim2.new]
     1009 LOADN                            R33 0
     1010 LOADN                            R34 238
     1011 LOADN                            R35 0
     1012 LOADN                            R36 60
     1013 CALL                             R32 4 1
     1014 JUMP                             ; [+7]
     1015 GETIMPORT                        R32 K114 [UDim2.new]
     1017 LOADN                            R33 0
     1018 LOADN                            R34 153
     1019 LOADN                            R35 0
     1020 LOADN                            R36 74
     1021 CALL                             R32 4 1
     1022 SETTABLEKS                       R32 R31 K245 ["size"]
     1024 LOADN                            R32 16
     1025 SETTABLEKS                       R32 R31 K263 ["collaboratorItemOffset"]
     1027 GETIMPORT                        R32 K114 [UDim2.new]
     1029 LOADN                            R33 1
     1030 LOADN                            R34 0
     1031 LOADN                            R35 0
     1032 LOADN                            R36 34
     1033 CALL                             R32 4 1
     1034 SETTABLEKS                       R32 R31 K264 ["expandablePaneSize"]
     1036 DUPTABLE                         R32 K269 [{"size", "arrowLabel", "textLabel"}]
     1037 GETIMPORT                        R33 K114 [UDim2.new]
     1039 LOADN                            R34 0
     1040 LOADN                            R35 96
     1041 LOADN                            R36 0
     1042 LOADN                            R37 34
     1043 CALL                             R33 4 1
     1044 SETTABLEKS                       R33 R32 K245 ["size"]
     1046 DUPTABLE                         R33 K271 [{"position", "size"}]
     1047 GETIMPORT                        R34 K114 [UDim2.new]
     1049 LOADN                            R35 0
     1050 LOADN                            R36 42
     1051 LOADK                            R37 K115 [0.5]
     1052 LOADN                            R38 0
     1053 CALL                             R34 4 1
     1054 SETTABLEKS                       R34 R33 K270 ["position"]
     1056 GETIMPORT                        R34 K114 [UDim2.new]
     1058 LOADN                            R35 0
     1059 LOADN                            R36 17
     1060 LOADN                            R37 0
     1061 LOADN                            R38 17
     1062 CALL                             R34 4 1
     1063 SETTABLEKS                       R34 R33 K245 ["size"]
     1065 SETTABLEKS                       R33 R32 K267 ["arrowLabel"]
     1067 DUPTABLE                         R33 K272 [{"position"}]
     1068 GETIMPORT                        R34 K114 [UDim2.new]
     1070 LOADN                            R35 0
     1071 LOADN                            R36 60
     1072 LOADK                            R37 K115 [0.5]
     1073 LOADN                            R38 0
     1074 CALL                             R34 4 1
     1075 SETTABLEKS                       R34 R33 K270 ["position"]
     1077 SETTABLEKS                       R33 R32 K268 ["textLabel"]
     1079 SETTABLEKS                       R32 R31 K265 ["headerComponent"]
     1081 SETTABLEKS                       R31 R30 K251 ["groupCollaboratorItem"]
     1083 DUPTABLE                         R31 K274 [{"size", "xOffset", "hovered"}]
     1084 LOADN                            R32 16
     1085 SETTABLEKS                       R32 R31 K245 ["size"]
     1087 LOADN                            R32 6
     1088 SETTABLEKS                       R32 R31 K273 ["xOffset"]
     1090 GETTABLEKS                       R32 R18 K191 ["Dropdown"]
     1092 SETTABLEKS                       R32 R31 K183 ["hovered"]
     1094 SETTABLEKS                       R31 R30 K252 ["deleteButton"]
     1096 DUPTABLE                         R31 K277 [{"heightOffset", "yOffset"}]
     1097 LOADN                            R32 54
     1098 SETTABLEKS                       R32 R31 K275 ["heightOffset"]
     1100 LOADN                            R32 11
     1101 SETTABLEKS                       R32 R31 K276 ["yOffset"]
     1103 SETTABLEKS                       R31 R30 K253 ["permissionEditor"]
     1105 DUPTABLE                         R31 K282 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
     1106 DUPTABLE                         R32 K284 [{"withSubText", "size", "xOffset"}]
     1107 DUPTABLE                         R33 K285 [{"size"}]
     1108 GETIMPORT                        R34 K114 [UDim2.new]
     1110 LOADN                            R35 1
     1111 LOADN                            R36 248
     1112 LOADN                            R37 0
     1113 LOADN                            R38 30
     1114 CALL                             R34 4 1
     1115 SETTABLEKS                       R34 R33 K245 ["size"]
     1117 SETTABLEKS                       R33 R32 K283 ["withSubText"]
     1119 GETIMPORT                        R33 K114 [UDim2.new]
     1121 LOADN                            R34 1
     1122 LOADN                            R35 248
     1123 LOADN                            R36 0
     1124 LOADN                            R37 54
     1125 CALL                             R33 4 1
     1126 SETTABLEKS                       R33 R32 K245 ["size"]
     1128 LOADN                            R33 50
     1129 SETTABLEKS                       R33 R32 K273 ["xOffset"]
     1131 SETTABLEKS                       R32 R31 K278 ["withIcon"]
     1133 NEWTABLE                         R32 2 1
     1135 DUPTABLE                         R34 K285 [{"size"}]
     1136 GETIMPORT                        R35 K114 [UDim2.new]
     1138 LOADN                            R36 1
     1139 LOADN                            R37 248
     1140 LOADN                            R38 0
     1141 LOADN                            R39 30
     1142 CALL                             R35 4 1
     1143 SETTABLEKS                       R35 R34 K245 ["size"]
     1145 SETTABLEKS                       R34 R32 K283 ["withSubText"]
     1147 GETIMPORT                        R33 K114 [UDim2.new]
     1149 LOADN                            R34 1
     1150 LOADN                            R35 130
     1151 LOADN                            R36 0
     1152 LOADN                            R37 54
     1153 CALL                             R33 4 1
     1154 SETLIST                          R32 R33 1 [1]
     1156 LOADN                            R34 28
     1157 SETTABLEKS                       R34 R32 K273 ["xOffset"]
     1159 SETTABLEKS                       R32 R31 K279 ["withoutIcon"]
     1161 DUPTABLE                         R32 K286 [{"yOffset"}]
     1162 LOADN                            R33 246
     1163 SETTABLEKS                       R33 R32 K276 ["yOffset"]
     1165 SETTABLEKS                       R32 R31 K280 ["withSubtext"]
     1167 DUPTABLE                         R32 K286 [{"yOffset"}]
     1168 LOADN                            R33 0
     1169 SETTABLEKS                       R33 R32 K276 ["yOffset"]
     1171 SETTABLEKS                       R32 R31 K281 ["withoutSubtext"]
     1173 SETTABLEKS                       R31 R30 K254 ["collaboratorName"]
     1175 DUPTABLE                         R31 K287 [{"withIcon", "withoutIcon", "yOffset"}]
     1176 DUPTABLE                         R32 K288 [{"size", "xOffset"}]
     1177 GETIMPORT                        R33 K114 [UDim2.new]
     1179 LOADN                            R34 1
     1180 LOADN                            R35 248
     1181 LOADN                            R36 0
     1182 LOADN                            R37 24
     1183 CALL                             R33 4 1
     1184 SETTABLEKS                       R33 R32 K245 ["size"]
     1186 LOADN                            R33 50
     1187 SETTABLEKS                       R33 R32 K273 ["xOffset"]
     1189 SETTABLEKS                       R32 R31 K278 ["withIcon"]
     1191 NEWTABLE                         R32 1 1
     1193 GETIMPORT                        R33 K114 [UDim2.new]
     1195 LOADN                            R34 1
     1196 LOADN                            R35 130
     1197 LOADN                            R36 0
     1198 LOADN                            R37 24
     1199 CALL                             R33 4 1
     1200 SETLIST                          R32 R33 1 [1]
     1202 LOADN                            R34 28
     1203 SETTABLEKS                       R34 R32 K273 ["xOffset"]
     1205 SETTABLEKS                       R32 R31 K279 ["withoutIcon"]
     1207 LOADN                            R32 10
     1208 SETTABLEKS                       R32 R31 K276 ["yOffset"]
     1210 SETTABLEKS                       R31 R30 K255 ["collaboratorSubText"]
     1212 DUPTABLE                         R31 K291 [{"withIconSize", "withoutIconSize", "position"}]
     1213 GETIMPORT                        R32 K114 [UDim2.new]
     1215 LOADN                            R33 1
     1216 LOADN                            R34 248
     1217 LOADN                            R35 0
     1218 LOADN                            R36 54
     1219 CALL                             R32 4 1
     1220 SETTABLEKS                       R32 R31 K289 ["withIconSize"]
     1222 GETIMPORT                        R32 K114 [UDim2.new]
     1224 LOADN                            R33 1
     1225 LOADN                            R34 130
     1226 LOADN                            R35 0
     1227 LOADN                            R36 54
     1228 CALL                             R32 4 1
     1229 SETTABLEKS                       R32 R31 K290 ["withoutIconSize"]
     1231 GETIMPORT                        R32 K114 [UDim2.new]
     1233 LOADN                            R33 1
     1234 LOADN                            R34 249
     1235 LOADK                            R35 K115 [0.5]
     1236 LOADN                            R36 0
     1237 CALL                             R32 4 1
     1238 SETTABLEKS                       R32 R31 K270 ["position"]
     1240 SETTABLEKS                       R31 R30 K256 ["ownerLabel"]
     1242 LOADN                            R31 40
     1243 SETTABLEKS                       R31 R30 K257 ["iconContainerSize"]
     1245 DUPTABLE                         R31 K293 [{"width", "height", "position", "anchorPoint"}]
     1246 JUMPIFNOT                        R23 ; [+2]
     1247 LOADN                            R32 238
     1248 JUMP                             ; [+1]
     1249 LOADN                            R32 153
     1250 SETTABLEKS                       R32 R31 K213 ["width"]
     1252 LOADN                            R32 74
     1253 SETTABLEKS                       R32 R31 K215 ["height"]
     1255 LOADNIL                          R32
     1256 SETTABLEKS                       R32 R31 K270 ["position"]
     1258 LOADNIL                          R32
     1259 SETTABLEKS                       R32 R31 K292 ["anchorPoint"]
     1261 SETTABLEKS                       R31 R30 K258 ["nonRolesetFrame"]
     1263 DUPTABLE                         R31 K295 [{"width", "height", "position", "anchorPont"}]
     1264 JUMPIFNOT                        R23 ; [+2]
     1265 LOADN                            R32 238
     1266 JUMP                             ; [+1]
     1267 LOADN                            R32 96
     1268 SETTABLEKS                       R32 R31 K213 ["width"]
     1270 LOADN                            R32 54
     1271 SETTABLEKS                       R32 R31 K215 ["height"]
     1273 GETIMPORT                        R32 K114 [UDim2.new]
     1275 LOADK                            R33 K40 ["SourceSans"]
     1276 LOADN                            R34 200
     1277 LOADN                            R35 0
     1278 LOADN                            R36 20
     1279 CALL                             R32 4 1
     1280 SETTABLEKS                       R32 R31 K270 ["position"]
     1282 GETIMPORT                        R32 K91 [Vector2.new]
     1284 LOADN                            R33 1
     1285 LOADN                            R34 0
     1286 CALL                             R32 2 1
     1287 SETTABLEKS                       R32 R31 K294 ["anchorPont"]
     1289 SETTABLEKS                       R31 R30 K259 ["rolesetFrame"]
     1291 SETTABLEKS                       R30 R29 K297 ["collaboratorItem"]
     1293 GETTABLEKS                       R30 R18 K298 ["CloseWidget"]
     1295 SETTABLEKS                       R30 R29 K299 ["deleteIcon"]
     1297 DUPTABLE                         R30 K302 [{"right", "down"}]
     1298 GETTABLEKS                       R31 R18 K303 ["RightArrow"]
     1300 SETTABLEKS                       R31 R30 K300 ["right"]
     1302 GETTABLEKS                       R31 R18 K304 ["DownArrow"]
     1304 SETTABLEKS                       R31 R30 K301 ["down"]
     1306 SETTABLEKS                       R30 R29 K305 ["arrows"]
     1308 DUPCLOSURE                       R30 K306 [PROTO_0]
     1309 CAPTURE                          VAL R21
     1310 CAPTURE                          VAL R16
     1311 CAPTURE                          VAL R18
     1312 CAPTURE                          VAL R19
     1313 CAPTURE                          VAL R17
     1314 CAPTURE                          VAL R15
     1315 CAPTURE                          VAL R29
     1316 RETURN                           R30 1
