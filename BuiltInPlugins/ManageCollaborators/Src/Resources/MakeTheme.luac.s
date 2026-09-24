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
      448 DUPTABLE                         R30 K147 [{["bannerPaddingTop"], ["counterHeight"] = 24}]
      449 GETIMPORT                        R31 K149 [UDim.new]
      451 LOADN                            R32 0
      452 LOADN                            R33 8
      453 CALL                             R31 2 1
      454 SETTABLEKS                       R31 R30 K145 ["bannerPaddingTop"]
      456 SETTABLEKS                       R30 R29 K150 ["audienceTabs"]
      458 DUPTABLE                         R30 K152 [{"hover"}]
      459 GETTABLEKS                       R31 R18 K153 ["MenuEntryHover"]
      461 SETTABLEKS                       R31 R30 K151 ["hover"]
      463 SETTABLEKS                       R30 R29 K154 ["menuEntry"]
      465 DUPTABLE                         R30 K158 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      466 JUMPIFNOT                        R23 ; [+6]
      467 GETIMPORT                        R31 K149 [UDim.new]
      469 LOADN                            R32 0
      470 LOADN                            R33 5
      471 CALL                             R31 2 1
      472 JUMP                             ; [+5]
      473 GETIMPORT                        R31 K149 [UDim.new]
      475 LOADN                            R32 0
      476 LOADN                            R33 32
      477 CALL                             R31 2 1
      478 SETTABLEKS                       R31 R30 K155 ["paddingTop"]
      480 JUMPIFNOT                        R23 ; [+6]
      481 GETIMPORT                        R31 K149 [UDim.new]
      483 LOADN                            R32 0
      484 LOADN                            R33 15
      485 CALL                             R31 2 1
      486 JUMP                             ; [+5]
      487 GETIMPORT                        R31 K149 [UDim.new]
      489 LOADN                            R32 0
      490 LOADN                            R33 67
      491 CALL                             R31 2 1
      492 SETTABLEKS                       R31 R30 K156 ["paddingHorizontal"]
      494 DUPTABLE                         R31 K160 [{["fontStyle"], ["Height"] = 15}]
      495 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      496 SETTABLEKS                       R27 R32 K37 ["Font"]
      498 GETTABLEKS                       R33 R18 K134 ["MainText"]
      500 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      502 SETTABLEKS                       R32 R31 K109 ["fontStyle"]
      504 SETTABLEKS                       R31 R30 K157 ["ageWarning"]
      506 SETTABLEKS                       R30 R29 K161 ["searchWidget"]
      508 DUPTABLE                         R30 K191 [{["border"], ["borderHover"], ["borderSelected"], ["borderError"], ["placeholderText"], ["backgroundColor"], ["collabTypeTextPosition"], ["friendsAccessTextPosition"], ["searchIcon"], ["friendIcon"], ["clearButton"], ["headerHeight"] = 25, ["itemHeight"] = 75, ["ribbonWidth"] = 5, ["thumbnailSize"] = 48, ["thumbnailPaddingLeft"] = 40, ["renderItemTextPadding"] = 19, ["searchBarHeight"] = 40, ["clearButtonIconSize"] = 32, ["textPadding"] = 16, ["nameLabelWidth"] = 460, ["nameHeight"] = 55, ["dropDown"]}]
      509 GETTABLEKS                       R31 R18 K76 ["Border"]
      511 SETTABLEKS                       R31 R30 K74 ["border"]
      513 GETTABLEKS                       R31 R18 K192 ["DialogMainButton"]
      515 SETTABLEKS                       R31 R30 K162 ["borderHover"]
      517 GETTABLEKS                       R31 R18 K192 ["DialogMainButton"]
      519 SETTABLEKS                       R31 R30 K163 ["borderSelected"]
      521 GETIMPORT                        R31 K195 [Color3.fromRGB]
      523 LOADN                            R32 223
      524 LOADN                            R33 40
      525 LOADN                            R34 31
      526 CALL                             R31 3 1
      527 SETTABLEKS                       R31 R30 K164 ["borderError"]
      529 GETTABLEKS                       R31 R18 K65 ["DimmedText"]
      531 SETTABLEKS                       R31 R30 K165 ["placeholderText"]
      533 GETTABLEKS                       R31 R18 K196 ["SubBackground2"]
      535 SETTABLEKS                       R31 R30 K97 ["backgroundColor"]
      537 GETIMPORT                        R31 K125 [UDim2.new]
      539 LOADN                            R32 0
      540 LOADN                            R33 26
      541 LOADN                            R34 0
      542 LOADN                            R35 14
      543 CALL                             R31 4 1
      544 SETTABLEKS                       R31 R30 K166 ["collabTypeTextPosition"]
      546 GETIMPORT                        R31 K125 [UDim2.new]
      548 LOADN                            R32 1
      549 LOADN                            R33 -28
      550 LOADN                            R34 0
      551 LOADN                            R35 14
      552 CALL                             R31 4 1
      553 SETTABLEKS                       R31 R30 K167 ["friendsAccessTextPosition"]
      555 GETTABLEKS                       R31 R18 K104 ["SubText"]
      557 SETTABLEKS                       R31 R30 K168 ["searchIcon"]
      559 DUPTABLE                         R31 K205 [{["Image"], ["LabelWidth"] = 20, ["LabelHeight"] = 13, ["FrameWidth"] = 37, ["Width"] = 17, ["Height"] = 10}]
      560 GETTABLEKS                       R32 R18 K206 ["FriendIcon"]
      562 SETTABLEKS                       R32 R31 K197 ["Image"]
      564 SETTABLEKS                       R31 R30 K169 ["friendIcon"]
      566 DUPTABLE                         R31 K209 [{"imageSelected", "image"}]
      567 GETTABLEKS                       R32 R18 K104 ["SubText"]
      569 SETTABLEKS                       R32 R31 K207 ["imageSelected"]
      571 GETTABLEKS                       R32 R18 K104 ["SubText"]
      573 SETTABLEKS                       R32 R31 K208 ["image"]
      575 SETTABLEKS                       R31 R30 K170 ["clearButton"]
      577 DUPTABLE                         R31 K220 [{["collaboratorTypeText"], ["backgroundColor"], ["itemText"], ["headerText"], ["hovered"], ["item"], ["selected"], ["maxHeight"] = 425, ["eligibilityLabelWidth"] = 100}]
      578 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      579 SETTABLEKS                       R27 R32 K37 ["Font"]
      581 GETTABLEKS                       R33 R18 K134 ["MainText"]
      583 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      585 SETTABLEKS                       R32 R31 K210 ["collaboratorTypeText"]
      587 GETTABLEKS                       R32 R18 K221 ["InputFieldBackground"]
      589 SETTABLEKS                       R32 R31 K97 ["backgroundColor"]
      591 GETTABLEKS                       R32 R18 K134 ["MainText"]
      593 SETTABLEKS                       R32 R31 K211 ["itemText"]
      595 GETTABLEKS                       R32 R18 K104 ["SubText"]
      597 SETTABLEKS                       R32 R31 K212 ["headerText"]
      599 DUPTABLE                         R32 K222 [{"backgroundColor", "itemText"}]
      600 GETTABLEKS                       R33 R18 K223 ["Dropdown"]
      602 SETTABLEKS                       R33 R32 K97 ["backgroundColor"]
      604 GETTABLEKS                       R33 R18 K134 ["MainText"]
      606 SETTABLEKS                       R33 R32 K211 ["itemText"]
      608 SETTABLEKS                       R32 R31 K213 ["hovered"]
      610 DUPTABLE                         R32 K225 [{["offset"] = 2}]
      611 SETTABLEKS                       R32 R31 K214 ["item"]
      613 DUPTABLE                         R32 K226 [{"backgroundColor"}]
      614 GETTABLEKS                       R33 R18 K227 ["ButtonHover"]
      616 SETTABLEKS                       R33 R32 K97 ["backgroundColor"]
      618 SETTABLEKS                       R32 R31 K215 ["selected"]
      620 SETTABLEKS                       R31 R30 K190 ["dropDown"]
      622 SETTABLEKS                       R30 R29 K228 ["searchBar"]
      624 DUPTABLE                         R30 K233 [{["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_group.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      625 SETTABLEKS                       R30 R29 K234 ["groupThumbnail"]
      627 DUPTABLE                         R30 K239 [{["background"], ["maskImage"] = "rbxasset://textures/StudioSharedUI/avatarMask.png", ["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_user.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      628 GETTABLEKS                       R31 R18 K240 ["TableItem"]
      630 SETTABLEKS                       R31 R30 K235 ["background"]
      632 SETTABLEKS                       R30 R29 K241 ["subjectThumbnail"]
      634 DUPTABLE                         R30 K243 [{["Image"] = "rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"}]
      635 SETTABLEKS                       R30 R29 K244 ["orgRoleThumbnail"]
      637 DUPTABLE                         R30 K247 [{["button"], ["padding"] = 10, ["width"]}]
      638 DUPTABLE                         R31 K250 [{["height"] = 50}]
      639 SETTABLEKS                       R31 R30 K245 ["button"]
      641 JUMPIFNOT                        R23 ; [+2]
      642 LOADN                            R31 210
      643 JUMP                             ; [+1]
      644 LOADN                            R31 264
      645 SETTABLEKS                       R31 R30 K246 ["width"]
      647 SETTABLEKS                       R30 R29 K251 ["selectInput"]
      649 DUPTABLE                         R30 K256 [{["yPadding"], ["xPadding"] = 25, ["yPaddingNonOwner"] = 35}]
      650 JUMPIFNOT                        R23 ; [+2]
      651 LOADN                            R31 20
      652 JUMP                             ; [+1]
      653 LOADN                            R31 47
      654 SETTABLEKS                       R31 R30 K252 ["yPadding"]
      656 SETTABLEKS                       R30 R29 K257 ["scrollingFrame"]
      658 DUPTABLE                         R30 K262 [{["boxHeight"] = 45, ["textStyle"], ["InnerTextPosition"]}]
      659 DUPTABLE                         R31 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      660 SETTABLEKS                       R27 R31 K37 ["Font"]
      662 GETTABLEKS                       R32 R18 K63 ["TitlebarText"]
      664 SETTABLEKS                       R32 R31 K102 ["TextColor3"]
      666 SETTABLEKS                       R31 R30 K260 ["textStyle"]
      668 GETIMPORT                        R31 K125 [UDim2.new]
      670 LOADN                            R32 0
      671 LOADN                            R33 67
      672 LOADK                            R34 K126 [0.5]
      673 LOADN                            R35 0
      674 CALL                             R31 4 1
      675 SETTABLEKS                       R31 R30 K261 ["InnerTextPosition"]
      677 SETTABLEKS                       R30 R29 K263 ["saveMessage"]
      679 DUPTABLE                         R30 K266 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      680 JUMPIFNOT                        R23 ; [+2]
      681 LOADN                            R31 50
      682 JUMP                             ; [+1]
      683 LOADN                            R31 98
      684 SETTABLEKS                       R31 R30 K248 ["height"]
      686 JUMPIFNOT                        R23 ; [+6]
      687 GETIMPORT                        R31 K149 [UDim.new]
      689 LOADN                            R32 0
      690 LOADN                            R33 20
      691 CALL                             R31 2 1
      692 JUMP                             ; [+5]
      693 GETIMPORT                        R31 K149 [UDim.new]
      695 LOADN                            R32 0
      696 LOADN                            R33 26
      697 CALL                             R31 2 1
      698 SETTABLEKS                       R31 R30 K155 ["paddingTop"]
      700 GETIMPORT                        R31 K149 [UDim.new]
      702 LOADN                            R32 0
      703 LOADN                            R33 67
      704 CALL                             R31 2 1
      705 SETTABLEKS                       R31 R30 K264 ["paddingLeft"]
      707 JUMPIFNOT                        R23 ; [+6]
      708 GETIMPORT                        R31 K149 [UDim.new]
      710 LOADN                            R32 0
      711 LOADN                            R33 22
      712 CALL                             R31 2 1
      713 JUMP                             ; [+5]
      714 GETIMPORT                        R31 K149 [UDim.new]
      716 LOADN                            R32 0
      717 LOADN                            R33 75
      718 CALL                             R31 2 1
      719 SETTABLEKS                       R31 R30 K265 ["paddingRight"]
      721 SETTABLEKS                       R30 R29 K267 ["header"]
      723 DUPTABLE                         R30 K271 [{["font"], ["textSize"] = 40, ["textColor3"]}]
      724 SETTABLEKS                       R27 R30 K268 ["font"]
      726 GETTABLEKS                       R31 R18 K63 ["TitlebarText"]
      728 SETTABLEKS                       R31 R30 K270 ["textColor3"]
      730 SETTABLEKS                       R30 R29 K272 ["title"]
      732 DUPTABLE                         R30 K274 [{["font"], ["textSize"] = 24, ["textColor3"], ["width"] = 175}]
      733 SETTABLEKS                       R27 R30 K268 ["font"]
      735 GETTABLEKS                       R31 R18 K63 ["TitlebarText"]
      737 SETTABLEKS                       R31 R30 K270 ["textColor3"]
      739 SETTABLEKS                       R30 R29 K275 ["copyLinkButton"]
      741 DUPTABLE                         R30 K280 [{["height"], ["gradientSize"] = 3, ["gradientTransparency"] = 0.9, ["border"]}]
      742 JUMPIFNOT                        R23 ; [+2]
      743 LOADN                            R31 60
      744 JUMP                             ; [+1]
      745 LOADN                            R31 65
      746 SETTABLEKS                       R31 R30 K248 ["height"]
      748 JUMPIFNOT                        R23 ; [+3]
      749 GETTABLEKS                       R31 R18 K76 ["Border"]
      751 JUMP                             ; [+2]
      752 GETTABLEKS                       R31 R18 K281 ["FooterBorder"]
      754 SETTABLEKS                       R31 R30 K74 ["border"]
      756 SETTABLEKS                       R30 R29 K282 ["footer"]
      758 DUPTABLE                         R30 K285 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      759 JUMPIFNOT                        R23 ; [+13]
      760 JUMPIFNOT                        R26 ; [+6]
      761 GETIMPORT                        R31 K149 [UDim.new]
      763 LOADN                            R32 0
      764 LOADN                            R33 15
      765 CALL                             R31 2 1
      766 JUMP                             ; [+11]
      767 GETIMPORT                        R31 K149 [UDim.new]
      769 LOADN                            R32 0
      770 LOADN                            R33 20
      771 CALL                             R31 2 1
      772 JUMP                             ; [+5]
      773 GETIMPORT                        R31 K149 [UDim.new]
      775 LOADN                            R32 0
      776 LOADN                            R33 67
      777 CALL                             R31 2 1
      778 SETTABLEKS                       R31 R30 K156 ["paddingHorizontal"]
      780 JUMPIFNOT                        R24 ; [+7]
      781 JUMPIFNOT                        R25 ; [+6]
      782 GETIMPORT                        R31 K149 [UDim.new]
      784 LOADN                            R32 0
      785 LOADN                            R33 12
      786 CALL                             R31 2 1
      787 JUMP                             ; [+1]
      788 LOADNIL                          R31
      789 SETTABLEKS                       R31 R30 K155 ["paddingTop"]
      791 GETIMPORT                        R31 K125 [UDim2.new]
      793 LOADN                            R32 1
      794 LOADN                            R33 0
      795 LOADN                            R34 0
      796 JUMPIFNOT                        R24 ; [+3]
      797 JUMPIFNOT                        R25 ; [+2]
      798 LOADN                            R35 42
      799 JUMP                             ; [+1]
      800 LOADN                            R35 30
      801 CALL                             R31 4 1
      802 SETTABLEKS                       R31 R30 K283 ["size"]
      804 DUPTABLE                         R31 K286 [{"paddingHorizontal", "size"}]
      805 GETIMPORT                        R32 K149 [UDim.new]
      807 LOADN                            R33 0
      808 LOADN                            R34 8
      809 CALL                             R32 2 1
      810 SETTABLEKS                       R32 R31 K156 ["paddingHorizontal"]
      812 GETIMPORT                        R32 K125 [UDim2.new]
      814 LOADN                            R33 0
      815 LOADN                            R34 100
      816 LOADN                            R35 1
      817 LOADN                            R36 0
      818 CALL                             R32 4 1
      819 SETTABLEKS                       R32 R31 K283 ["size"]
      821 SETTABLEKS                       R31 R30 K284 ["pills"]
      823 SETTABLEKS                       R30 R29 K287 ["collaboratorFilter"]
      825 DUPTABLE                         R30 K299 [{["FadeTransparency"] = 0.75, ["groupCollaboratorItem"], ["deleteButton"], ["permissionEditor"], ["collaboratorName"], ["collaboratorSubText"], ["ownerLabel"], ["iconContainerSize"] = 40, ["nonRolesetFrame"], ["rolesetFrame"]}]
      826 DUPTABLE                         R31 K305 [{["ExpandTextSize"] = 14, ["size"], ["collaboratorItemOffset"] = 16, ["expandablePaneSize"], ["headerComponent"]}]
      827 JUMPIFNOT                        R23 ; [+8]
      828 GETIMPORT                        R32 K125 [UDim2.new]
      830 LOADN                            R33 0
      831 LOADN                            R34 750
      832 LOADN                            R35 0
      833 LOADN                            R36 60
      834 CALL                             R32 4 1
      835 JUMP                             ; [+7]
      836 GETIMPORT                        R32 K125 [UDim2.new]
      838 LOADN                            R33 0
      839 LOADN                            R34 665
      840 LOADN                            R35 0
      841 LOADN                            R36 74
      842 CALL                             R32 4 1
      843 SETTABLEKS                       R32 R31 K283 ["size"]
      845 GETIMPORT                        R32 K125 [UDim2.new]
      847 LOADN                            R33 1
      848 LOADN                            R34 0
      849 LOADN                            R35 0
      850 LOADN                            R36 34
      851 CALL                             R32 4 1
      852 SETTABLEKS                       R32 R31 K303 ["expandablePaneSize"]
      854 DUPTABLE                         R32 K308 [{"size", "arrowLabel", "textLabel"}]
      855 GETIMPORT                        R33 K125 [UDim2.new]
      857 LOADN                            R34 0
      858 LOADN                            R35 608
      859 LOADN                            R36 0
      860 LOADN                            R37 34
      861 CALL                             R33 4 1
      862 SETTABLEKS                       R33 R32 K283 ["size"]
      864 DUPTABLE                         R33 K310 [{"position", "size"}]
      865 GETIMPORT                        R34 K125 [UDim2.new]
      867 LOADN                            R35 0
      868 LOADN                            R36 42
      869 LOADK                            R37 K126 [0.5]
      870 LOADN                            R38 0
      871 CALL                             R34 4 1
      872 SETTABLEKS                       R34 R33 K309 ["position"]
      874 GETIMPORT                        R34 K125 [UDim2.new]
      876 LOADN                            R35 0
      877 LOADN                            R36 17
      878 LOADN                            R37 0
      879 LOADN                            R38 17
      880 CALL                             R34 4 1
      881 SETTABLEKS                       R34 R33 K283 ["size"]
      883 SETTABLEKS                       R33 R32 K306 ["arrowLabel"]
      885 DUPTABLE                         R33 K311 [{"position"}]
      886 GETIMPORT                        R34 K125 [UDim2.new]
      888 LOADN                            R35 0
      889 LOADN                            R36 60
      890 LOADK                            R37 K126 [0.5]
      891 LOADN                            R38 0
      892 CALL                             R34 4 1
      893 SETTABLEKS                       R34 R33 K309 ["position"]
      895 SETTABLEKS                       R33 R32 K307 ["textLabel"]
      897 SETTABLEKS                       R32 R31 K304 ["headerComponent"]
      899 SETTABLEKS                       R31 R30 K290 ["groupCollaboratorItem"]
      901 DUPTABLE                         R31 K314 [{["size"] = 16, ["xOffset"] = 6, ["hovered"]}]
      902 GETTABLEKS                       R32 R18 K223 ["Dropdown"]
      904 SETTABLEKS                       R32 R31 K213 ["hovered"]
      906 SETTABLEKS                       R31 R30 K291 ["deleteButton"]
      908 DUPTABLE                         R31 K319 [{["heightOffset"] = 54, ["yOffset"] = 11}]
      909 SETTABLEKS                       R31 R30 K292 ["permissionEditor"]
      911 DUPTABLE                         R31 K324 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
      912 DUPTABLE                         R32 K326 [{["withSubText"], ["size"], ["xOffset"] = 50}]
      913 DUPTABLE                         R33 K327 [{"size"}]
      914 GETIMPORT                        R34 K125 [UDim2.new]
      916 LOADN                            R35 1
      917 LOADN                            R36 -264
      918 LOADN                            R37 0
      919 LOADN                            R38 30
      920 CALL                             R34 4 1
      921 SETTABLEKS                       R34 R33 K283 ["size"]
      923 SETTABLEKS                       R33 R32 K325 ["withSubText"]
      925 GETIMPORT                        R33 K125 [UDim2.new]
      927 LOADN                            R34 1
      928 LOADN                            R35 -264
      929 LOADN                            R36 0
      930 LOADN                            R37 54
      931 CALL                             R33 4 1
      932 SETTABLEKS                       R33 R32 K283 ["size"]
      934 SETTABLEKS                       R32 R31 K320 ["withIcon"]
      936 NEWTABLE                         R32 2 1
      938 DUPTABLE                         R34 K327 [{"size"}]
      939 GETIMPORT                        R35 K125 [UDim2.new]
      941 LOADN                            R36 1
      942 LOADN                            R37 -264
      943 LOADN                            R38 0
      944 LOADN                            R39 30
      945 CALL                             R35 4 1
      946 SETTABLEKS                       R35 R34 K283 ["size"]
      948 SETTABLEKS                       R34 R32 K325 ["withSubText"]
      950 GETIMPORT                        R33 K125 [UDim2.new]
      952 LOADN                            R34 1
      953 LOADN                            R35 -126
      954 LOADN                            R36 0
      955 LOADN                            R37 54
      956 CALL                             R33 4 1
      957 SETLIST                          R32 R33 1 [1]
      959 LOADN                            R34 28
      960 SETTABLEKS                       R34 R32 K312 ["xOffset"]
      962 SETTABLEKS                       R32 R31 K321 ["withoutIcon"]
      964 DUPTABLE                         R32 K329 [{["yOffset"] = -10}]
      965 SETTABLEKS                       R32 R31 K322 ["withSubtext"]
      967 DUPTABLE                         R32 K330 [{["yOffset"] = 0}]
      968 SETTABLEKS                       R32 R31 K323 ["withoutSubtext"]
      970 SETTABLEKS                       R31 R30 K293 ["collaboratorName"]
      972 DUPTABLE                         R31 K331 [{["withIcon"], ["withoutIcon"], ["yOffset"] = 10}]
      973 DUPTABLE                         R32 K332 [{["size"], ["xOffset"] = 50}]
      974 GETIMPORT                        R33 K125 [UDim2.new]
      976 LOADN                            R34 1
      977 LOADN                            R35 -264
      978 LOADN                            R36 0
      979 LOADN                            R37 24
      980 CALL                             R33 4 1
      981 SETTABLEKS                       R33 R32 K283 ["size"]
      983 SETTABLEKS                       R32 R31 K320 ["withIcon"]
      985 NEWTABLE                         R32 1 1
      987 GETIMPORT                        R33 K125 [UDim2.new]
      989 LOADN                            R34 1
      990 LOADN                            R35 -126
      991 LOADN                            R36 0
      992 LOADN                            R37 24
      993 CALL                             R33 4 1
      994 SETLIST                          R32 R33 1 [1]
      996 LOADN                            R34 28
      997 SETTABLEKS                       R34 R32 K312 ["xOffset"]
      999 SETTABLEKS                       R32 R31 K321 ["withoutIcon"]
     1001 SETTABLEKS                       R31 R30 K294 ["collaboratorSubText"]
     1003 DUPTABLE                         R31 K335 [{"withIconSize", "withoutIconSize", "position"}]
     1004 GETIMPORT                        R32 K125 [UDim2.new]
     1006 LOADN                            R33 1
     1007 LOADN                            R34 -264
     1008 LOADN                            R35 0
     1009 LOADN                            R36 54
     1010 CALL                             R32 4 1
     1011 SETTABLEKS                       R32 R31 K333 ["withIconSize"]
     1013 GETIMPORT                        R32 K125 [UDim2.new]
     1015 LOADN                            R33 1
     1016 LOADN                            R34 -126
     1017 LOADN                            R35 0
     1018 LOADN                            R36 54
     1019 CALL                             R32 4 1
     1020 SETTABLEKS                       R32 R31 K334 ["withoutIconSize"]
     1022 GETIMPORT                        R32 K125 [UDim2.new]
     1024 LOADN                            R33 1
     1025 LOADN                            R34 -7
     1026 LOADK                            R35 K126 [0.5]
     1027 LOADN                            R36 0
     1028 CALL                             R32 4 1
     1029 SETTABLEKS                       R32 R31 K309 ["position"]
     1031 SETTABLEKS                       R31 R30 K295 ["ownerLabel"]
     1033 DUPTABLE                         R31 K339 [{["width"], ["height"] = 74, ["position"] = , ["anchorPoint"] = }]
     1034 JUMPIFNOT                        R23 ; [+2]
     1035 LOADN                            R32 750
     1036 JUMP                             ; [+1]
     1037 LOADN                            R32 665
     1038 SETTABLEKS                       R32 R31 K246 ["width"]
     1040 SETTABLEKS                       R31 R30 K297 ["nonRolesetFrame"]
     1042 DUPTABLE                         R31 K341 [{["width"], ["height"] = 54, ["position"], ["anchorPont"]}]
     1043 JUMPIFNOT                        R23 ; [+2]
     1044 LOADN                            R32 750
     1045 JUMP                             ; [+1]
     1046 LOADN                            R32 608
     1047 SETTABLEKS                       R32 R31 K246 ["width"]
     1049 GETIMPORT                        R32 K125 [UDim2.new]
     1051 LOADK                            R33 K342 [1.5]
     1052 LOADN                            R34 200
     1053 LOADN                            R35 0
     1054 LOADN                            R36 20
     1055 CALL                             R32 4 1
     1056 SETTABLEKS                       R32 R31 K309 ["position"]
     1058 GETIMPORT                        R32 K94 [Vector2.new]
     1060 LOADN                            R33 1
     1061 LOADN                            R34 0
     1062 CALL                             R32 2 1
     1063 SETTABLEKS                       R32 R31 K340 ["anchorPont"]
     1065 SETTABLEKS                       R31 R30 K298 ["rolesetFrame"]
     1067 SETTABLEKS                       R30 R29 K343 ["collaboratorItem"]
     1069 GETTABLEKS                       R30 R18 K344 ["CloseWidget"]
     1071 SETTABLEKS                       R30 R29 K345 ["deleteIcon"]
     1073 DUPTABLE                         R30 K348 [{"right", "down"}]
     1074 GETTABLEKS                       R31 R18 K349 ["RightArrow"]
     1076 SETTABLEKS                       R31 R30 K346 ["right"]
     1078 GETTABLEKS                       R31 R18 K350 ["DownArrow"]
     1080 SETTABLEKS                       R31 R30 K347 ["down"]
     1082 SETTABLEKS                       R30 R29 K351 ["arrows"]
     1084 DUPCLOSURE                       R30 K352 [PROTO_0]
     1085 CAPTURE                          VAL R21
     1086 CAPTURE                          VAL R16
     1087 CAPTURE                          VAL R18
     1088 CAPTURE                          VAL R19
     1089 CAPTURE                          VAL R17
     1090 CAPTURE                          VAL R15
     1091 CAPTURE                          VAL R29
     1092 RETURN                           R30 1
