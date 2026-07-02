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
      136 DUPTABLE                         R39 K51 [{["Arrow"], ["HorizontalAlignment"], ["Padding"] = 0}]
      137 DUPTABLE                         R40 K53 [{"Size"}]
      138 GETIMPORT                        R41 K56 [UDim2.fromOffset]
      140 LOADN                            R42 0
      141 LOADN                            R43 0
      142 CALL                             R41 2 1
      143 SETTABLEKS                       R41 R40 K52 ["Size"]
      145 SETTABLEKS                       R40 R39 K47 ["Arrow"]
      147 GETIMPORT                        R40 K58 [Enum.HorizontalAlignment.Right]
      149 SETTABLEKS                       R40 R39 K48 ["HorizontalAlignment"]
      151 CALL                             R37 2 1
      152 SETTABLEKS                       R37 R36 K15 ["Header"]
      154 CALL                             R34 2 1
      155 SETTABLEKS                       R34 R33 K59 ["&Arrowless"]
      157 CALL                             R31 2 1
      158 SETTABLE                         R31 R29 R30
      159 GETTABLEKS                       R30 R6 K60 ["SelectInput"]
      161 MOVE                             R31 R21
      162 GETTABLEKS                       R33 R6 K60 ["SelectInput"]
      164 GETTABLE                         R32 R14 R33
      165 NEWTABLE                         R33 2 0
      167 MOVE                             R34 R21
      168 MOVE                             R35 R8
      169 DUPTABLE                         R36 K62 [{"PlaceholderTextColor"}]
      170 GETTABLEKS                       R37 R18 K63 ["TitlebarText"]
      172 SETTABLEKS                       R37 R36 K61 ["PlaceholderTextColor"]
      174 CALL                             R34 2 1
      175 SETTABLEKS                       R34 R33 K64 ["&Editable"]
      177 MOVE                             R34 R21
      178 MOVE                             R35 R8
      179 DUPTABLE                         R36 K62 [{"PlaceholderTextColor"}]
      180 GETTABLEKS                       R37 R18 K65 ["DimmedText"]
      182 SETTABLEKS                       R37 R36 K61 ["PlaceholderTextColor"]
      184 CALL                             R34 2 1
      185 SETTABLEKS                       R34 R33 K66 ["&NonEditable"]
      187 CALL                             R31 2 1
      188 SETTABLE                         R31 R29 R30
      189 GETTABLEKS                       R30 R6 K16 ["Button"]
      191 MOVE                             R31 R21
      192 GETTABLEKS                       R33 R6 K16 ["Button"]
      194 GETTABLE                         R32 R14 R33
      195 NEWTABLE                         R33 4 0
      197 MOVE                             R34 R21
      198 MOVE                             R35 R11
      199 DUPTABLE                         R36 K69 [{["Font"], ["TextSize"] = 24}]
      200 SETTABLEKS                       R27 R36 K37 ["Font"]
      202 CALL                             R34 2 1
      203 SETTABLEKS                       R34 R33 K70 ["&Active"]
      205 MOVE                             R34 R21
      206 MOVE                             R35 R11
      207 DUPTABLE                         R36 K69 [{["Font"], ["TextSize"] = 24}]
      208 SETTABLEKS                       R27 R36 K37 ["Font"]
      210 CALL                             R34 2 1
      211 SETTABLEKS                       R34 R33 K71 ["&Passive"]
      213 MOVE                             R34 R21
      214 MOVE                             R35 R12
      215 DUPTABLE                         R36 K69 [{["Font"], ["TextSize"] = 24}]
      216 SETTABLEKS                       R27 R36 K37 ["Font"]
      218 CALL                             R34 2 1
      219 SETTABLEKS                       R34 R33 K72 ["&Cancel"]
      221 MOVE                             R34 R21
      222 MOVE                             R35 R12
      223 DUPTABLE                         R36 K75 [{["Font"], ["TextSize"] = 22, ["border"]}]
      224 SETTABLEKS                       R27 R36 K37 ["Font"]
      226 GETTABLEKS                       R37 R18 K76 ["Border"]
      228 SETTABLEKS                       R37 R36 K74 ["border"]
      230 CALL                             R34 2 1
      231 SETTABLEKS                       R34 R33 K77 ["&Pill"]
      233 CALL                             R31 2 1
      234 SETTABLE                         R31 R29 R30
      235 GETTABLEKS                       R30 R6 K78 ["StyledDialog"]
      237 GETTABLEKS                       R31 R4 K79 ["Dictionary"]
      239 GETTABLEKS                       R31 R31 K27 ["join"]
      241 MOVE                             R32 R3
      242 LOADK                            R33 K78 ["StyledDialog"]
      243 CALL                             R32 1 1
      244 NEWTABLE                         R33 2 0
      246 DUPTABLE                         R34 K83 [{["Font"], ["ButtonPadding"] = 24, ["ContentPadding"] = 0, ["ButtonHorizontalAlignment"]}]
      247 GETIMPORT                        R35 K41 [Enum.Font.SourceSans]
      249 SETTABLEKS                       R35 R34 K37 ["Font"]
      251 GETIMPORT                        R35 K85 [Enum.HorizontalAlignment.Center]
      253 SETTABLEKS                       R35 R34 K82 ["ButtonHorizontalAlignment"]
      255 SETTABLEKS                       R34 R33 K86 ["&CancelDialog"]
      257 DUPTABLE                         R34 K83 [{["Font"], ["ButtonPadding"] = 24, ["ContentPadding"] = 0, ["ButtonHorizontalAlignment"]}]
      258 GETIMPORT                        R35 K41 [Enum.Font.SourceSans]
      260 SETTABLEKS                       R35 R34 K37 ["Font"]
      262 GETIMPORT                        R35 K85 [Enum.HorizontalAlignment.Center]
      264 SETTABLEKS                       R35 R34 K82 ["ButtonHorizontalAlignment"]
      266 SETTABLEKS                       R34 R33 K87 ["&EnableTeamCreateDialog"]
      268 CALL                             R31 2 1
      269 SETTABLE                         R31 R29 R30
      270 GETTABLEKS                       R30 R6 K88 ["DropdownMenu"]
      272 GETTABLEKS                       R31 R4 K79 ["Dictionary"]
      274 GETTABLEKS                       R31 R31 K27 ["join"]
      276 MOVE                             R32 R3
      277 LOADK                            R33 K88 ["DropdownMenu"]
      278 CALL                             R32 1 1
      279 NEWTABLE                         R33 1 0
      281 DUPTABLE                         R34 K91 [{"Offset", "BackgroundColor"}]
      282 GETIMPORT                        R35 K94 [Vector2.new]
      284 LOADN                            R36 -12
      285 LOADN                            R37 0
      286 CALL                             R35 2 1
      287 SETTABLEKS                       R35 R34 K89 ["Offset"]
      289 JUMPIFNOT                        R22 ; [+3]
      290 GETTABLEKS                       R35 R18 K95 ["MainBackground"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R35
      294 SETTABLEKS                       R35 R34 K90 ["BackgroundColor"]
      296 SETTABLEKS                       R34 R33 K96 ["&Search"]
      298 CALL                             R31 2 1
      299 SETTABLE                         R31 R29 R30
      300 GETTABLEKS                       R30 R18 K95 ["MainBackground"]
      302 SETTABLEKS                       R30 R29 K97 ["backgroundColor"]
      304 DUPTABLE                         R30 K101 [{"Subtitle", "Normal", "Subtext"}]
      305 DUPTABLE                         R31 K103 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      306 SETTABLEKS                       R27 R31 K37 ["Font"]
      308 GETTABLEKS                       R32 R18 K104 ["SubText"]
      310 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      312 SETTABLEKS                       R31 R30 K98 ["Subtitle"]
      314 DUPTABLE                         R31 K106 [{["Font"], ["TextSize"] = 20, ["TextColor3"]}]
      315 SETTABLEKS                       R27 R31 K37 ["Font"]
      317 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      319 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      321 SETTABLEKS                       R31 R30 K99 ["Normal"]
      323 DUPTABLE                         R31 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      324 SETTABLEKS                       R27 R31 K37 ["Font"]
      326 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      328 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      330 SETTABLEKS                       R31 R30 K100 ["Subtext"]
      332 SETTABLEKS                       R30 R29 K109 ["fontStyle"]
      334 DUPTABLE                         R30 K113 [{["padding"] = 10, ["edgePadding"]}]
      335 JUMPIFNOT                        R23 ; [+2]
      336 LOADN                            R31 20
      337 JUMP                             ; [+1]
      338 LOADN                            R31 67
      339 SETTABLEKS                       R31 R30 K112 ["edgePadding"]
      341 SETTABLEKS                       R30 R29 K114 ["buttonBar"]
      343 DUPTABLE                         R30 K117 [{"TitleText", "DescriptionText"}]
      344 DUPTABLE                         R31 K103 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      345 SETTABLEKS                       R28 R31 K37 ["Font"]
      347 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      349 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      351 SETTABLEKS                       R31 R30 K115 ["TitleText"]
      353 DUPTABLE                         R31 K119 [{["Font"], ["TextSize"] = 18, ["TextColor3"]}]
      354 SETTABLEKS                       R27 R31 K37 ["Font"]
      356 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      358 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      360 SETTABLEKS                       R31 R30 K116 ["DescriptionText"]
      362 SETTABLEKS                       R30 R29 K120 ["confirmTcDialog"]
      364 DUPTABLE                         R30 K123 [{"Text", "Size", "Position"}]
      365 DUPTABLE                         R31 K124 [{["Font"], ["TextSize"] = 24, ["TextColor3"]}]
      366 GETIMPORT                        R32 K41 [Enum.Font.SourceSans]
      368 SETTABLEKS                       R32 R31 K37 ["Font"]
      370 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      372 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      374 SETTABLEKS                       R31 R30 K121 ["Text"]
      376 GETIMPORT                        R31 K94 [Vector2.new]
      378 LOADN                            R32 343
      379 LOADN                            R33 65
      380 CALL                             R31 2 1
      381 SETTABLEKS                       R31 R30 K52 ["Size"]
      383 GETIMPORT                        R31 K125 [UDim2.new]
      385 LOADK                            R32 K126 [0.5]
      386 LOADN                            R33 0
      387 LOADK                            R34 K126 [0.5]
      388 LOADN                            R35 10
      389 CALL                             R31 4 1
      390 SETTABLEKS                       R31 R30 K122 ["Position"]
      392 SETTABLEKS                       R30 R29 K127 ["cancelDialog"]
      394 DUPTABLE                         R30 K123 [{"Text", "Size", "Position"}]
      395 DUPTABLE                         R31 K124 [{["Font"], ["TextSize"] = 24, ["TextColor3"]}]
      396 GETIMPORT                        R32 K41 [Enum.Font.SourceSans]
      398 SETTABLEKS                       R32 R31 K37 ["Font"]
      400 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      402 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      404 SETTABLEKS                       R31 R30 K121 ["Text"]
      406 GETIMPORT                        R31 K94 [Vector2.new]
      408 LOADN                            R32 343
      409 LOADN                            R33 65
      410 CALL                             R31 2 1
      411 SETTABLEKS                       R31 R30 K52 ["Size"]
      413 GETIMPORT                        R31 K125 [UDim2.new]
      415 LOADK                            R32 K126 [0.5]
      416 LOADN                            R33 0
      417 LOADK                            R34 K126 [0.5]
      418 LOADN                            R35 10
      419 CALL                             R31 4 1
      420 SETTABLEKS                       R31 R30 K122 ["Position"]
      422 SETTABLEKS                       R30 R29 K128 ["enableTeamCreateDialog"]
      424 DUPTABLE                         R30 K130 [{"Text", "publishButton"}]
      425 DUPTABLE                         R31 K133 [{["Font"], ["TextSize"] = 20, ["TextColor3"], ["YOffset"] = 70}]
      426 SETTABLEKS                       R27 R31 K37 ["Font"]
      428 GETTABLEKS                       R32 R18 K134 ["MainText"]
      430 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      432 SETTABLEKS                       R31 R30 K121 ["Text"]
      434 DUPTABLE                         R31 K141 [{["offset"] = 125, ["paddingX"] = 75, ["paddingY"] = 15}]
      435 SETTABLEKS                       R31 R30 K129 ["publishButton"]
      437 SETTABLEKS                       R30 R29 K142 ["saveToRobloxView"]
      439 DUPTABLE                         R30 K143 [{"Padding"}]
      440 JUMPIFNOT                        R23 ; [+2]
      441 LOADN                            R31 0
      442 JUMP                             ; [+1]
      443 LOADN                            R31 2
      444 SETTABLEKS                       R31 R30 K49 ["Padding"]
      446 SETTABLEKS                       R30 R29 K144 ["permissionsView"]
      448 DUPTABLE                         R30 K146 [{"hover"}]
      449 GETTABLEKS                       R31 R18 K147 ["MenuEntryHover"]
      451 SETTABLEKS                       R31 R30 K145 ["hover"]
      453 SETTABLEKS                       R30 R29 K148 ["menuEntry"]
      455 DUPTABLE                         R30 K152 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      456 JUMPIFNOT                        R23 ; [+6]
      457 GETIMPORT                        R31 K154 [UDim.new]
      459 LOADN                            R32 0
      460 LOADN                            R33 5
      461 CALL                             R31 2 1
      462 JUMP                             ; [+5]
      463 GETIMPORT                        R31 K154 [UDim.new]
      465 LOADN                            R32 0
      466 LOADN                            R33 32
      467 CALL                             R31 2 1
      468 SETTABLEKS                       R31 R30 K149 ["paddingTop"]
      470 JUMPIFNOT                        R23 ; [+6]
      471 GETIMPORT                        R31 K154 [UDim.new]
      473 LOADN                            R32 0
      474 LOADN                            R33 15
      475 CALL                             R31 2 1
      476 JUMP                             ; [+5]
      477 GETIMPORT                        R31 K154 [UDim.new]
      479 LOADN                            R32 0
      480 LOADN                            R33 67
      481 CALL                             R31 2 1
      482 SETTABLEKS                       R31 R30 K150 ["paddingHorizontal"]
      484 DUPTABLE                         R31 K156 [{["fontStyle"], ["Height"] = 15}]
      485 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      486 SETTABLEKS                       R27 R32 K37 ["Font"]
      488 GETTABLEKS                       R33 R18 K134 ["MainText"]
      490 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      492 SETTABLEKS                       R32 R31 K109 ["fontStyle"]
      494 SETTABLEKS                       R31 R30 K151 ["ageWarning"]
      496 SETTABLEKS                       R30 R29 K157 ["searchWidget"]
      498 DUPTABLE                         R30 K187 [{["border"], ["borderHover"], ["borderSelected"], ["borderError"], ["placeholderText"], ["backgroundColor"], ["collabTypeTextPosition"], ["friendsAccessTextPosition"], ["searchIcon"], ["friendIcon"], ["clearButton"], ["headerHeight"] = 25, ["itemHeight"] = 75, ["ribbonWidth"] = 5, ["thumbnailSize"] = 48, ["thumbnailPaddingLeft"] = 40, ["renderItemTextPadding"] = 19, ["searchBarHeight"] = 40, ["clearButtonIconSize"] = 32, ["textPadding"] = 16, ["nameLabelWidth"] = 460, ["nameHeight"] = 55, ["dropDown"]}]
      499 GETTABLEKS                       R31 R18 K76 ["Border"]
      501 SETTABLEKS                       R31 R30 K74 ["border"]
      503 GETTABLEKS                       R31 R18 K188 ["DialogMainButton"]
      505 SETTABLEKS                       R31 R30 K158 ["borderHover"]
      507 GETTABLEKS                       R31 R18 K188 ["DialogMainButton"]
      509 SETTABLEKS                       R31 R30 K159 ["borderSelected"]
      511 GETIMPORT                        R31 K191 [Color3.fromRGB]
      513 LOADN                            R32 223
      514 LOADN                            R33 40
      515 LOADN                            R34 31
      516 CALL                             R31 3 1
      517 SETTABLEKS                       R31 R30 K160 ["borderError"]
      519 GETTABLEKS                       R31 R18 K65 ["DimmedText"]
      521 SETTABLEKS                       R31 R30 K161 ["placeholderText"]
      523 GETTABLEKS                       R31 R18 K192 ["SubBackground2"]
      525 SETTABLEKS                       R31 R30 K97 ["backgroundColor"]
      527 GETIMPORT                        R31 K125 [UDim2.new]
      529 LOADN                            R32 0
      530 LOADN                            R33 26
      531 LOADN                            R34 0
      532 LOADN                            R35 14
      533 CALL                             R31 4 1
      534 SETTABLEKS                       R31 R30 K162 ["collabTypeTextPosition"]
      536 GETIMPORT                        R31 K125 [UDim2.new]
      538 LOADN                            R32 1
      539 LOADN                            R33 -28
      540 LOADN                            R34 0
      541 LOADN                            R35 14
      542 CALL                             R31 4 1
      543 SETTABLEKS                       R31 R30 K163 ["friendsAccessTextPosition"]
      545 GETTABLEKS                       R31 R18 K104 ["SubText"]
      547 SETTABLEKS                       R31 R30 K164 ["searchIcon"]
      549 DUPTABLE                         R31 K201 [{["Image"], ["LabelWidth"] = 20, ["LabelHeight"] = 13, ["FrameWidth"] = 37, ["Width"] = 17, ["Height"] = 10}]
      550 GETTABLEKS                       R32 R18 K202 ["FriendIcon"]
      552 SETTABLEKS                       R32 R31 K193 ["Image"]
      554 SETTABLEKS                       R31 R30 K165 ["friendIcon"]
      556 DUPTABLE                         R31 K205 [{"imageSelected", "image"}]
      557 GETTABLEKS                       R32 R18 K104 ["SubText"]
      559 SETTABLEKS                       R32 R31 K203 ["imageSelected"]
      561 GETTABLEKS                       R32 R18 K104 ["SubText"]
      563 SETTABLEKS                       R32 R31 K204 ["image"]
      565 SETTABLEKS                       R31 R30 K166 ["clearButton"]
      567 DUPTABLE                         R31 K216 [{["collaboratorTypeText"], ["backgroundColor"], ["itemText"], ["headerText"], ["hovered"], ["item"], ["selected"], ["maxHeight"] = 425, ["eligibilityLabelWidth"] = 100}]
      568 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      569 SETTABLEKS                       R27 R32 K37 ["Font"]
      571 GETTABLEKS                       R33 R18 K134 ["MainText"]
      573 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      575 SETTABLEKS                       R32 R31 K206 ["collaboratorTypeText"]
      577 GETTABLEKS                       R32 R18 K217 ["InputFieldBackground"]
      579 SETTABLEKS                       R32 R31 K97 ["backgroundColor"]
      581 GETTABLEKS                       R32 R18 K134 ["MainText"]
      583 SETTABLEKS                       R32 R31 K207 ["itemText"]
      585 GETTABLEKS                       R32 R18 K104 ["SubText"]
      587 SETTABLEKS                       R32 R31 K208 ["headerText"]
      589 DUPTABLE                         R32 K218 [{"backgroundColor", "itemText"}]
      590 GETTABLEKS                       R33 R18 K219 ["Dropdown"]
      592 SETTABLEKS                       R33 R32 K97 ["backgroundColor"]
      594 GETTABLEKS                       R33 R18 K134 ["MainText"]
      596 SETTABLEKS                       R33 R32 K207 ["itemText"]
      598 SETTABLEKS                       R32 R31 K209 ["hovered"]
      600 DUPTABLE                         R32 K221 [{["offset"] = 2}]
      601 SETTABLEKS                       R32 R31 K210 ["item"]
      603 DUPTABLE                         R32 K222 [{"backgroundColor"}]
      604 GETTABLEKS                       R33 R18 K223 ["ButtonHover"]
      606 SETTABLEKS                       R33 R32 K97 ["backgroundColor"]
      608 SETTABLEKS                       R32 R31 K211 ["selected"]
      610 SETTABLEKS                       R31 R30 K186 ["dropDown"]
      612 SETTABLEKS                       R30 R29 K224 ["searchBar"]
      614 DUPTABLE                         R30 K229 [{["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_group.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      615 SETTABLEKS                       R30 R29 K230 ["groupThumbnail"]
      617 DUPTABLE                         R30 K235 [{["background"], ["maskImage"] = "rbxasset://textures/StudioSharedUI/avatarMask.png", ["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_user.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      618 GETTABLEKS                       R31 R18 K236 ["TableItem"]
      620 SETTABLEKS                       R31 R30 K231 ["background"]
      622 SETTABLEKS                       R30 R29 K237 ["subjectThumbnail"]
      624 DUPTABLE                         R30 K239 [{["Image"] = "rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"}]
      625 SETTABLEKS                       R30 R29 K240 ["orgRoleThumbnail"]
      627 DUPTABLE                         R30 K243 [{["button"], ["padding"] = 10, ["width"]}]
      628 DUPTABLE                         R31 K246 [{["height"] = 50}]
      629 SETTABLEKS                       R31 R30 K241 ["button"]
      631 JUMPIFNOT                        R23 ; [+2]
      632 LOADN                            R31 210
      633 JUMP                             ; [+1]
      634 LOADN                            R31 264
      635 SETTABLEKS                       R31 R30 K242 ["width"]
      637 SETTABLEKS                       R30 R29 K247 ["selectInput"]
      639 DUPTABLE                         R30 K252 [{["yPadding"], ["xPadding"] = 25, ["yPaddingNonOwner"] = 35}]
      640 JUMPIFNOT                        R23 ; [+2]
      641 LOADN                            R31 20
      642 JUMP                             ; [+1]
      643 LOADN                            R31 47
      644 SETTABLEKS                       R31 R30 K248 ["yPadding"]
      646 SETTABLEKS                       R30 R29 K253 ["scrollingFrame"]
      648 DUPTABLE                         R30 K258 [{["boxHeight"] = 45, ["textStyle"], ["InnerTextPosition"]}]
      649 DUPTABLE                         R31 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      650 SETTABLEKS                       R27 R31 K37 ["Font"]
      652 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      654 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      656 SETTABLEKS                       R31 R30 K256 ["textStyle"]
      658 GETIMPORT                        R31 K125 [UDim2.new]
      660 LOADN                            R32 0
      661 LOADN                            R33 67
      662 LOADK                            R34 K126 [0.5]
      663 LOADN                            R35 0
      664 CALL                             R31 4 1
      665 SETTABLEKS                       R31 R30 K257 ["InnerTextPosition"]
      667 SETTABLEKS                       R30 R29 K259 ["saveMessage"]
      669 DUPTABLE                         R30 K262 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      670 JUMPIFNOT                        R23 ; [+2]
      671 LOADN                            R31 50
      672 JUMP                             ; [+1]
      673 LOADN                            R31 98
      674 SETTABLEKS                       R31 R30 K244 ["height"]
      676 JUMPIFNOT                        R23 ; [+6]
      677 GETIMPORT                        R31 K154 [UDim.new]
      679 LOADN                            R32 0
      680 LOADN                            R33 20
      681 CALL                             R31 2 1
      682 JUMP                             ; [+5]
      683 GETIMPORT                        R31 K154 [UDim.new]
      685 LOADN                            R32 0
      686 LOADN                            R33 26
      687 CALL                             R31 2 1
      688 SETTABLEKS                       R31 R30 K149 ["paddingTop"]
      690 GETIMPORT                        R31 K154 [UDim.new]
      692 LOADN                            R32 0
      693 LOADN                            R33 67
      694 CALL                             R31 2 1
      695 SETTABLEKS                       R31 R30 K260 ["paddingLeft"]
      697 JUMPIFNOT                        R23 ; [+6]
      698 GETIMPORT                        R31 K154 [UDim.new]
      700 LOADN                            R32 0
      701 LOADN                            R33 22
      702 CALL                             R31 2 1
      703 JUMP                             ; [+5]
      704 GETIMPORT                        R31 K154 [UDim.new]
      706 LOADN                            R32 0
      707 LOADN                            R33 75
      708 CALL                             R31 2 1
      709 SETTABLEKS                       R31 R30 K261 ["paddingRight"]
      711 SETTABLEKS                       R30 R29 K263 ["header"]
      713 DUPTABLE                         R30 K267 [{["font"], ["textSize"] = 40, ["textColor3"]}]
      714 SETTABLEKS                       R27 R30 K264 ["font"]
      716 GETTABLEKS                       R31 R18 K63 ["TitlebarText"]
      718 SETTABLEKS                       R31 R30 K266 ["textColor3"]
      720 SETTABLEKS                       R30 R29 K268 ["title"]
      722 DUPTABLE                         R30 K270 [{["font"], ["textSize"] = 24, ["textColor3"], ["width"] = 175}]
      723 SETTABLEKS                       R27 R30 K264 ["font"]
      725 GETTABLEKS                       R31 R18 K63 ["TitlebarText"]
      727 SETTABLEKS                       R31 R30 K266 ["textColor3"]
      729 SETTABLEKS                       R30 R29 K271 ["copyLinkButton"]
      731 DUPTABLE                         R30 K276 [{["height"], ["gradientSize"] = 3, ["gradientTransparency"] = 0.9, ["border"]}]
      732 JUMPIFNOT                        R23 ; [+2]
      733 LOADN                            R31 60
      734 JUMP                             ; [+1]
      735 LOADN                            R31 65
      736 SETTABLEKS                       R31 R30 K244 ["height"]
      738 JUMPIFNOT                        R23 ; [+3]
      739 GETTABLEKS                       R31 R18 K76 ["Border"]
      741 JUMP                             ; [+2]
      742 GETTABLEKS                       R31 R18 K277 ["FooterBorder"]
      744 SETTABLEKS                       R31 R30 K74 ["border"]
      746 SETTABLEKS                       R30 R29 K278 ["footer"]
      748 DUPTABLE                         R30 K281 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      749 JUMPIFNOT                        R23 ; [+13]
      750 JUMPIFNOT                        R26 ; [+6]
      751 GETIMPORT                        R31 K154 [UDim.new]
      753 LOADN                            R32 0
      754 LOADN                            R33 15
      755 CALL                             R31 2 1
      756 JUMP                             ; [+11]
      757 GETIMPORT                        R31 K154 [UDim.new]
      759 LOADN                            R32 0
      760 LOADN                            R33 20
      761 CALL                             R31 2 1
      762 JUMP                             ; [+5]
      763 GETIMPORT                        R31 K154 [UDim.new]
      765 LOADN                            R32 0
      766 LOADN                            R33 67
      767 CALL                             R31 2 1
      768 SETTABLEKS                       R31 R30 K150 ["paddingHorizontal"]
      770 JUMPIFNOT                        R24 ; [+7]
      771 JUMPIFNOT                        R25 ; [+6]
      772 GETIMPORT                        R31 K154 [UDim.new]
      774 LOADN                            R32 0
      775 LOADN                            R33 12
      776 CALL                             R31 2 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R31
      779 SETTABLEKS                       R31 R30 K149 ["paddingTop"]
      781 GETIMPORT                        R31 K125 [UDim2.new]
      783 LOADN                            R32 1
      784 LOADN                            R33 0
      785 LOADN                            R34 0
      786 JUMPIFNOT                        R24 ; [+3]
      787 JUMPIFNOT                        R25 ; [+2]
      788 LOADN                            R35 42
      789 JUMP                             ; [+1]
      790 LOADN                            R35 30
      791 CALL                             R31 4 1
      792 SETTABLEKS                       R31 R30 K279 ["size"]
      794 DUPTABLE                         R31 K282 [{"paddingHorizontal", "size"}]
      795 GETIMPORT                        R32 K154 [UDim.new]
      797 LOADN                            R33 0
      798 LOADN                            R34 8
      799 CALL                             R32 2 1
      800 SETTABLEKS                       R32 R31 K150 ["paddingHorizontal"]
      802 GETIMPORT                        R32 K125 [UDim2.new]
      804 LOADN                            R33 0
      805 LOADN                            R34 100
      806 LOADN                            R35 1
      807 LOADN                            R36 0
      808 CALL                             R32 4 1
      809 SETTABLEKS                       R32 R31 K279 ["size"]
      811 SETTABLEKS                       R31 R30 K280 ["pills"]
      813 SETTABLEKS                       R30 R29 K283 ["collaboratorFilter"]
      815 DUPTABLE                         R30 K295 [{["FadeTransparency"] = 0.75, ["groupCollaboratorItem"], ["deleteButton"], ["permissionEditor"], ["collaboratorName"], ["collaboratorSubText"], ["ownerLabel"], ["iconContainerSize"] = 40, ["nonRolesetFrame"], ["rolesetFrame"]}]
      816 DUPTABLE                         R31 K301 [{["ExpandTextSize"] = 14, ["size"], ["collaboratorItemOffset"] = 16, ["expandablePaneSize"], ["headerComponent"]}]
      817 JUMPIFNOT                        R23 ; [+8]
      818 GETIMPORT                        R32 K125 [UDim2.new]
      820 LOADN                            R33 0
      821 LOADN                            R34 750
      822 LOADN                            R35 0
      823 LOADN                            R36 60
      824 CALL                             R32 4 1
      825 JUMP                             ; [+7]
      826 GETIMPORT                        R32 K125 [UDim2.new]
      828 LOADN                            R33 0
      829 LOADN                            R34 665
      830 LOADN                            R35 0
      831 LOADN                            R36 74
      832 CALL                             R32 4 1
      833 SETTABLEKS                       R32 R31 K279 ["size"]
      835 GETIMPORT                        R32 K125 [UDim2.new]
      837 LOADN                            R33 1
      838 LOADN                            R34 0
      839 LOADN                            R35 0
      840 LOADN                            R36 34
      841 CALL                             R32 4 1
      842 SETTABLEKS                       R32 R31 K299 ["expandablePaneSize"]
      844 DUPTABLE                         R32 K304 [{"size", "arrowLabel", "textLabel"}]
      845 GETIMPORT                        R33 K125 [UDim2.new]
      847 LOADN                            R34 0
      848 LOADN                            R35 608
      849 LOADN                            R36 0
      850 LOADN                            R37 34
      851 CALL                             R33 4 1
      852 SETTABLEKS                       R33 R32 K279 ["size"]
      854 DUPTABLE                         R33 K306 [{"position", "size"}]
      855 GETIMPORT                        R34 K125 [UDim2.new]
      857 LOADN                            R35 0
      858 LOADN                            R36 42
      859 LOADK                            R37 K126 [0.5]
      860 LOADN                            R38 0
      861 CALL                             R34 4 1
      862 SETTABLEKS                       R34 R33 K305 ["position"]
      864 GETIMPORT                        R34 K125 [UDim2.new]
      866 LOADN                            R35 0
      867 LOADN                            R36 17
      868 LOADN                            R37 0
      869 LOADN                            R38 17
      870 CALL                             R34 4 1
      871 SETTABLEKS                       R34 R33 K279 ["size"]
      873 SETTABLEKS                       R33 R32 K302 ["arrowLabel"]
      875 DUPTABLE                         R33 K307 [{"position"}]
      876 GETIMPORT                        R34 K125 [UDim2.new]
      878 LOADN                            R35 0
      879 LOADN                            R36 60
      880 LOADK                            R37 K126 [0.5]
      881 LOADN                            R38 0
      882 CALL                             R34 4 1
      883 SETTABLEKS                       R34 R33 K305 ["position"]
      885 SETTABLEKS                       R33 R32 K303 ["textLabel"]
      887 SETTABLEKS                       R32 R31 K300 ["headerComponent"]
      889 SETTABLEKS                       R31 R30 K286 ["groupCollaboratorItem"]
      891 DUPTABLE                         R31 K310 [{["size"] = 16, ["xOffset"] = 6, ["hovered"]}]
      892 GETTABLEKS                       R32 R18 K219 ["Dropdown"]
      894 SETTABLEKS                       R32 R31 K209 ["hovered"]
      896 SETTABLEKS                       R31 R30 K287 ["deleteButton"]
      898 DUPTABLE                         R31 K315 [{["heightOffset"] = 54, ["yOffset"] = 11}]
      899 SETTABLEKS                       R31 R30 K288 ["permissionEditor"]
      901 DUPTABLE                         R31 K320 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
      902 DUPTABLE                         R32 K322 [{["withSubText"], ["size"], ["xOffset"] = 50}]
      903 DUPTABLE                         R33 K323 [{"size"}]
      904 GETIMPORT                        R34 K125 [UDim2.new]
      906 LOADN                            R35 1
      907 LOADN                            R36 -264
      908 LOADN                            R37 0
      909 LOADN                            R38 30
      910 CALL                             R34 4 1
      911 SETTABLEKS                       R34 R33 K279 ["size"]
      913 SETTABLEKS                       R33 R32 K321 ["withSubText"]
      915 GETIMPORT                        R33 K125 [UDim2.new]
      917 LOADN                            R34 1
      918 LOADN                            R35 -264
      919 LOADN                            R36 0
      920 LOADN                            R37 54
      921 CALL                             R33 4 1
      922 SETTABLEKS                       R33 R32 K279 ["size"]
      924 SETTABLEKS                       R32 R31 K316 ["withIcon"]
      926 NEWTABLE                         R32 2 1
      928 DUPTABLE                         R34 K323 [{"size"}]
      929 GETIMPORT                        R35 K125 [UDim2.new]
      931 LOADN                            R36 1
      932 LOADN                            R37 -264
      933 LOADN                            R38 0
      934 LOADN                            R39 30
      935 CALL                             R35 4 1
      936 SETTABLEKS                       R35 R34 K279 ["size"]
      938 SETTABLEKS                       R34 R32 K321 ["withSubText"]
      940 GETIMPORT                        R33 K125 [UDim2.new]
      942 LOADN                            R34 1
      943 LOADN                            R35 -126
      944 LOADN                            R36 0
      945 LOADN                            R37 54
      946 CALL                             R33 4 1
      947 SETLIST                          R32 R33 1 [1]
      949 LOADN                            R34 28
      950 SETTABLEKS                       R34 R32 K308 ["xOffset"]
      952 SETTABLEKS                       R32 R31 K317 ["withoutIcon"]
      954 DUPTABLE                         R32 K325 [{["yOffset"] = -10}]
      955 SETTABLEKS                       R32 R31 K318 ["withSubtext"]
      957 DUPTABLE                         R32 K326 [{["yOffset"] = 0}]
      958 SETTABLEKS                       R32 R31 K319 ["withoutSubtext"]
      960 SETTABLEKS                       R31 R30 K289 ["collaboratorName"]
      962 DUPTABLE                         R31 K327 [{["withIcon"], ["withoutIcon"], ["yOffset"] = 10}]
      963 DUPTABLE                         R32 K328 [{["size"], ["xOffset"] = 50}]
      964 GETIMPORT                        R33 K125 [UDim2.new]
      966 LOADN                            R34 1
      967 LOADN                            R35 -264
      968 LOADN                            R36 0
      969 LOADN                            R37 24
      970 CALL                             R33 4 1
      971 SETTABLEKS                       R33 R32 K279 ["size"]
      973 SETTABLEKS                       R32 R31 K316 ["withIcon"]
      975 NEWTABLE                         R32 1 1
      977 GETIMPORT                        R33 K125 [UDim2.new]
      979 LOADN                            R34 1
      980 LOADN                            R35 -126
      981 LOADN                            R36 0
      982 LOADN                            R37 24
      983 CALL                             R33 4 1
      984 SETLIST                          R32 R33 1 [1]
      986 LOADN                            R34 28
      987 SETTABLEKS                       R34 R32 K308 ["xOffset"]
      989 SETTABLEKS                       R32 R31 K317 ["withoutIcon"]
      991 SETTABLEKS                       R31 R30 K290 ["collaboratorSubText"]
      993 DUPTABLE                         R31 K331 [{"withIconSize", "withoutIconSize", "position"}]
      994 GETIMPORT                        R32 K125 [UDim2.new]
      996 LOADN                            R33 1
      997 LOADN                            R34 -264
      998 LOADN                            R35 0
      999 LOADN                            R36 54
     1000 CALL                             R32 4 1
     1001 SETTABLEKS                       R32 R31 K329 ["withIconSize"]
     1003 GETIMPORT                        R32 K125 [UDim2.new]
     1005 LOADN                            R33 1
     1006 LOADN                            R34 -126
     1007 LOADN                            R35 0
     1008 LOADN                            R36 54
     1009 CALL                             R32 4 1
     1010 SETTABLEKS                       R32 R31 K330 ["withoutIconSize"]
     1012 GETIMPORT                        R32 K125 [UDim2.new]
     1014 LOADN                            R33 1
     1015 LOADN                            R34 -7
     1016 LOADK                            R35 K126 [0.5]
     1017 LOADN                            R36 0
     1018 CALL                             R32 4 1
     1019 SETTABLEKS                       R32 R31 K305 ["position"]
     1021 SETTABLEKS                       R31 R30 K291 ["ownerLabel"]
     1023 DUPTABLE                         R31 K335 [{["width"], ["height"] = 74, ["position"] = , ["anchorPoint"] = }]
     1024 JUMPIFNOT                        R23 ; [+2]
     1025 LOADN                            R32 750
     1026 JUMP                             ; [+1]
     1027 LOADN                            R32 665
     1028 SETTABLEKS                       R32 R31 K242 ["width"]
     1030 SETTABLEKS                       R31 R30 K293 ["nonRolesetFrame"]
     1032 DUPTABLE                         R31 K337 [{["width"], ["height"] = 54, ["position"], ["anchorPont"]}]
     1033 JUMPIFNOT                        R23 ; [+2]
     1034 LOADN                            R32 750
     1035 JUMP                             ; [+1]
     1036 LOADN                            R32 608
     1037 SETTABLEKS                       R32 R31 K242 ["width"]
     1039 GETIMPORT                        R32 K125 [UDim2.new]
     1041 LOADK                            R33 K338 [1.5]
     1042 LOADN                            R34 200
     1043 LOADN                            R35 0
     1044 LOADN                            R36 20
     1045 CALL                             R32 4 1
     1046 SETTABLEKS                       R32 R31 K305 ["position"]
     1048 GETIMPORT                        R32 K94 [Vector2.new]
     1050 LOADN                            R33 1
     1051 LOADN                            R34 0
     1052 CALL                             R32 2 1
     1053 SETTABLEKS                       R32 R31 K336 ["anchorPont"]
     1055 SETTABLEKS                       R31 R30 K294 ["rolesetFrame"]
     1057 SETTABLEKS                       R30 R29 K339 ["collaboratorItem"]
     1059 GETTABLEKS                       R30 R18 K340 ["CloseWidget"]
     1061 SETTABLEKS                       R30 R29 K341 ["deleteIcon"]
     1063 DUPTABLE                         R30 K344 [{"right", "down"}]
     1064 GETTABLEKS                       R31 R18 K345 ["RightArrow"]
     1066 SETTABLEKS                       R31 R30 K342 ["right"]
     1068 GETTABLEKS                       R31 R18 K346 ["DownArrow"]
     1070 SETTABLEKS                       R31 R30 K343 ["down"]
     1072 SETTABLEKS                       R30 R29 K347 ["arrows"]
     1074 DUPCLOSURE                       R30 K348 [PROTO_0]
     1075 CAPTURE                          VAL R21
     1076 CAPTURE                          VAL R16
     1077 CAPTURE                          VAL R18
     1078 CAPTURE                          VAL R19
     1079 CAPTURE                          VAL R17
     1080 CAPTURE                          VAL R15
     1081 CAPTURE                          VAL R29
     1082 RETURN                           R30 1
