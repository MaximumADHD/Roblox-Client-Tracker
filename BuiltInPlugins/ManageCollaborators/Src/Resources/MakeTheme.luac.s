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
      109 GETIMPORT                        R27 K29 [game]
      111 LOADK                            R29 K36 ["ORGS272_GroupGameEarlyTesters"]
      112 NAMECALL                         R27 R27 K31 ["GetFastFlag"]
      114 CALL                             R27 2 1
      115 JUMPIFNOT                        R23 ; [+3]
      116 GETIMPORT                        R28 K40 [Enum.Font.BuilderSans]
      118 JUMP                             ; [+2]
      119 GETIMPORT                        R28 K42 [Enum.Font.SourceSans]
      121 JUMPIFNOT                        R23 ; [+3]
      122 GETIMPORT                        R29 K44 [Enum.Font.BuilderSansMedium]
      124 JUMP                             ; [+2]
      125 GETIMPORT                        R29 K46 [Enum.Font.SourceSansSemibold]
      127 NEWTABLE                         R30 32 0
      129 GETTABLEKS                       R31 R6 K12 ["ExpandablePane"]
      131 MOVE                             R32 R21
      132 GETTABLEKS                       R34 R6 K12 ["ExpandablePane"]
      134 GETTABLE                         R33 R14 R34
      135 NEWTABLE                         R34 1 0
      137 MOVE                             R35 R21
      138 MOVE                             R36 R8
      139 DUPTABLE                         R37 K47 [{"Header"}]
      140 MOVE                             R38 R21
      141 MOVE                             R39 R9
      142 DUPTABLE                         R40 K52 [{["Arrow"], ["HorizontalAlignment"], ["Padding"] = 0}]
      143 DUPTABLE                         R41 K54 [{"Size"}]
      144 GETIMPORT                        R42 K57 [UDim2.fromOffset]
      146 LOADN                            R43 0
      147 LOADN                            R44 0
      148 CALL                             R42 2 1
      149 SETTABLEKS                       R42 R41 K53 ["Size"]
      151 SETTABLEKS                       R41 R40 K48 ["Arrow"]
      153 GETIMPORT                        R41 K59 [Enum.HorizontalAlignment.Right]
      155 SETTABLEKS                       R41 R40 K49 ["HorizontalAlignment"]
      157 CALL                             R38 2 1
      158 SETTABLEKS                       R38 R37 K15 ["Header"]
      160 CALL                             R35 2 1
      161 SETTABLEKS                       R35 R34 K60 ["&Arrowless"]
      163 CALL                             R32 2 1
      164 SETTABLE                         R32 R30 R31
      165 GETTABLEKS                       R31 R6 K61 ["SelectInput"]
      167 MOVE                             R32 R21
      168 GETTABLEKS                       R34 R6 K61 ["SelectInput"]
      170 GETTABLE                         R33 R14 R34
      171 NEWTABLE                         R34 2 0
      173 MOVE                             R35 R21
      174 MOVE                             R36 R8
      175 DUPTABLE                         R37 K63 [{"PlaceholderTextColor"}]
      176 GETTABLEKS                       R38 R18 K64 ["TitlebarText"]
      178 SETTABLEKS                       R38 R37 K62 ["PlaceholderTextColor"]
      180 CALL                             R35 2 1
      181 SETTABLEKS                       R35 R34 K65 ["&Editable"]
      183 MOVE                             R35 R21
      184 MOVE                             R36 R8
      185 DUPTABLE                         R37 K63 [{"PlaceholderTextColor"}]
      186 GETTABLEKS                       R38 R18 K66 ["DimmedText"]
      188 SETTABLEKS                       R38 R37 K62 ["PlaceholderTextColor"]
      190 CALL                             R35 2 1
      191 SETTABLEKS                       R35 R34 K67 ["&NonEditable"]
      193 CALL                             R32 2 1
      194 SETTABLE                         R32 R30 R31
      195 GETTABLEKS                       R31 R6 K16 ["Button"]
      197 MOVE                             R32 R21
      198 GETTABLEKS                       R34 R6 K16 ["Button"]
      200 GETTABLE                         R33 R14 R34
      201 NEWTABLE                         R34 4 0
      203 MOVE                             R35 R21
      204 MOVE                             R36 R11
      205 DUPTABLE                         R37 K70 [{["Font"], ["TextSize"] = 24}]
      206 SETTABLEKS                       R28 R37 K38 ["Font"]
      208 CALL                             R35 2 1
      209 SETTABLEKS                       R35 R34 K71 ["&Active"]
      211 MOVE                             R35 R21
      212 MOVE                             R36 R11
      213 DUPTABLE                         R37 K70 [{["Font"], ["TextSize"] = 24}]
      214 SETTABLEKS                       R28 R37 K38 ["Font"]
      216 CALL                             R35 2 1
      217 SETTABLEKS                       R35 R34 K72 ["&Passive"]
      219 MOVE                             R35 R21
      220 MOVE                             R36 R12
      221 DUPTABLE                         R37 K70 [{["Font"], ["TextSize"] = 24}]
      222 SETTABLEKS                       R28 R37 K38 ["Font"]
      224 CALL                             R35 2 1
      225 SETTABLEKS                       R35 R34 K73 ["&Cancel"]
      227 MOVE                             R35 R21
      228 MOVE                             R36 R12
      229 DUPTABLE                         R37 K76 [{["Font"], ["TextSize"] = 22, ["border"]}]
      230 SETTABLEKS                       R28 R37 K38 ["Font"]
      232 GETTABLEKS                       R38 R18 K77 ["Border"]
      234 SETTABLEKS                       R38 R37 K75 ["border"]
      236 CALL                             R35 2 1
      237 SETTABLEKS                       R35 R34 K78 ["&Pill"]
      239 CALL                             R32 2 1
      240 SETTABLE                         R32 R30 R31
      241 GETTABLEKS                       R31 R6 K79 ["StyledDialog"]
      243 GETTABLEKS                       R32 R4 K80 ["Dictionary"]
      245 GETTABLEKS                       R32 R32 K27 ["join"]
      247 MOVE                             R33 R3
      248 LOADK                            R34 K79 ["StyledDialog"]
      249 CALL                             R33 1 1
      250 NEWTABLE                         R34 2 0
      252 DUPTABLE                         R35 K84 [{["Font"], ["ButtonPadding"] = 24, ["ContentPadding"] = 0, ["ButtonHorizontalAlignment"]}]
      253 GETIMPORT                        R36 K42 [Enum.Font.SourceSans]
      255 SETTABLEKS                       R36 R35 K38 ["Font"]
      257 GETIMPORT                        R36 K86 [Enum.HorizontalAlignment.Center]
      259 SETTABLEKS                       R36 R35 K83 ["ButtonHorizontalAlignment"]
      261 SETTABLEKS                       R35 R34 K87 ["&CancelDialog"]
      263 DUPTABLE                         R35 K84 [{["Font"], ["ButtonPadding"] = 24, ["ContentPadding"] = 0, ["ButtonHorizontalAlignment"]}]
      264 GETIMPORT                        R36 K42 [Enum.Font.SourceSans]
      266 SETTABLEKS                       R36 R35 K38 ["Font"]
      268 GETIMPORT                        R36 K86 [Enum.HorizontalAlignment.Center]
      270 SETTABLEKS                       R36 R35 K83 ["ButtonHorizontalAlignment"]
      272 SETTABLEKS                       R35 R34 K88 ["&EnableTeamCreateDialog"]
      274 CALL                             R32 2 1
      275 SETTABLE                         R32 R30 R31
      276 GETTABLEKS                       R31 R6 K89 ["DropdownMenu"]
      278 GETTABLEKS                       R32 R4 K80 ["Dictionary"]
      280 GETTABLEKS                       R32 R32 K27 ["join"]
      282 MOVE                             R33 R3
      283 LOADK                            R34 K89 ["DropdownMenu"]
      284 CALL                             R33 1 1
      285 NEWTABLE                         R34 1 0
      287 DUPTABLE                         R35 K92 [{"Offset", "BackgroundColor"}]
      288 GETIMPORT                        R36 K95 [Vector2.new]
      290 LOADN                            R37 -12
      291 LOADN                            R38 0
      292 CALL                             R36 2 1
      293 SETTABLEKS                       R36 R35 K90 ["Offset"]
      295 JUMPIFNOT                        R22 ; [+3]
      296 GETTABLEKS                       R36 R18 K96 ["MainBackground"]
      298 JUMP                             ; [+1]
      299 LOADNIL                          R36
      300 SETTABLEKS                       R36 R35 K91 ["BackgroundColor"]
      302 SETTABLEKS                       R35 R34 K97 ["&Search"]
      304 CALL                             R32 2 1
      305 SETTABLE                         R32 R30 R31
      306 GETTABLEKS                       R31 R18 K96 ["MainBackground"]
      308 SETTABLEKS                       R31 R30 K98 ["backgroundColor"]
      310 DUPTABLE                         R31 K102 [{"Subtitle", "Normal", "Subtext"}]
      311 DUPTABLE                         R32 K104 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      312 SETTABLEKS                       R28 R32 K38 ["Font"]
      314 GETTABLEKS                       R33 R18 K105 ["SubText"]
      316 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      318 SETTABLEKS                       R32 R31 K99 ["Subtitle"]
      320 DUPTABLE                         R32 K107 [{["Font"], ["TextSize"] = 20, ["TextColor3"]}]
      321 SETTABLEKS                       R28 R32 K38 ["Font"]
      323 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      325 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      327 SETTABLEKS                       R32 R31 K100 ["Normal"]
      329 DUPTABLE                         R32 K109 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      330 SETTABLEKS                       R28 R32 K38 ["Font"]
      332 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      334 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      336 SETTABLEKS                       R32 R31 K101 ["Subtext"]
      338 SETTABLEKS                       R31 R30 K110 ["fontStyle"]
      340 DUPTABLE                         R31 K114 [{["padding"] = 10, ["edgePadding"]}]
      341 JUMPIFNOT                        R23 ; [+2]
      342 LOADN                            R32 20
      343 JUMP                             ; [+1]
      344 LOADN                            R32 67
      345 SETTABLEKS                       R32 R31 K113 ["edgePadding"]
      347 SETTABLEKS                       R31 R30 K115 ["buttonBar"]
      349 DUPTABLE                         R31 K118 [{"TitleText", "DescriptionText"}]
      350 DUPTABLE                         R32 K104 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      351 SETTABLEKS                       R29 R32 K38 ["Font"]
      353 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      355 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      357 SETTABLEKS                       R32 R31 K116 ["TitleText"]
      359 DUPTABLE                         R32 K120 [{["Font"], ["TextSize"] = 18, ["TextColor3"]}]
      360 SETTABLEKS                       R28 R32 K38 ["Font"]
      362 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      364 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      366 SETTABLEKS                       R32 R31 K117 ["DescriptionText"]
      368 SETTABLEKS                       R31 R30 K121 ["confirmTcDialog"]
      370 DUPTABLE                         R31 K124 [{"Text", "Size", "Position"}]
      371 DUPTABLE                         R32 K125 [{["Font"], ["TextSize"] = 24, ["TextColor3"]}]
      372 GETIMPORT                        R33 K42 [Enum.Font.SourceSans]
      374 SETTABLEKS                       R33 R32 K38 ["Font"]
      376 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      378 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      380 SETTABLEKS                       R32 R31 K122 ["Text"]
      382 GETIMPORT                        R32 K95 [Vector2.new]
      384 LOADN                            R33 343
      385 LOADN                            R34 65
      386 CALL                             R32 2 1
      387 SETTABLEKS                       R32 R31 K53 ["Size"]
      389 GETIMPORT                        R32 K126 [UDim2.new]
      391 LOADK                            R33 K127 [0.5]
      392 LOADN                            R34 0
      393 LOADK                            R35 K127 [0.5]
      394 LOADN                            R36 10
      395 CALL                             R32 4 1
      396 SETTABLEKS                       R32 R31 K123 ["Position"]
      398 SETTABLEKS                       R31 R30 K128 ["cancelDialog"]
      400 DUPTABLE                         R31 K124 [{"Text", "Size", "Position"}]
      401 DUPTABLE                         R32 K125 [{["Font"], ["TextSize"] = 24, ["TextColor3"]}]
      402 GETIMPORT                        R33 K42 [Enum.Font.SourceSans]
      404 SETTABLEKS                       R33 R32 K38 ["Font"]
      406 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      408 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      410 SETTABLEKS                       R32 R31 K122 ["Text"]
      412 GETIMPORT                        R32 K95 [Vector2.new]
      414 LOADN                            R33 343
      415 LOADN                            R34 65
      416 CALL                             R32 2 1
      417 SETTABLEKS                       R32 R31 K53 ["Size"]
      419 GETIMPORT                        R32 K126 [UDim2.new]
      421 LOADK                            R33 K127 [0.5]
      422 LOADN                            R34 0
      423 LOADK                            R35 K127 [0.5]
      424 LOADN                            R36 10
      425 CALL                             R32 4 1
      426 SETTABLEKS                       R32 R31 K123 ["Position"]
      428 SETTABLEKS                       R31 R30 K129 ["enableTeamCreateDialog"]
      430 DUPTABLE                         R31 K131 [{"Text", "publishButton"}]
      431 DUPTABLE                         R32 K134 [{["Font"], ["TextSize"] = 20, ["TextColor3"], ["YOffset"] = 70}]
      432 SETTABLEKS                       R28 R32 K38 ["Font"]
      434 GETTABLEKS                       R33 R18 K135 ["MainText"]
      436 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      438 SETTABLEKS                       R32 R31 K122 ["Text"]
      440 DUPTABLE                         R32 K142 [{["offset"] = 125, ["paddingX"] = 75, ["paddingY"] = 15}]
      441 SETTABLEKS                       R32 R31 K130 ["publishButton"]
      443 SETTABLEKS                       R31 R30 K143 ["saveToRobloxView"]
      445 DUPTABLE                         R31 K144 [{"Padding"}]
      446 JUMPIFNOT                        R23 ; [+2]
      447 LOADN                            R32 0
      448 JUMP                             ; [+1]
      449 LOADN                            R32 2
      450 SETTABLEKS                       R32 R31 K50 ["Padding"]
      452 SETTABLEKS                       R31 R30 K145 ["permissionsView"]
      454 DUPTABLE                         R31 K150 [{["bannerPaddingTop"], ["counterHeight"] = 24, ["emptyStateHeight"] = 320}]
      455 GETIMPORT                        R32 K152 [UDim.new]
      457 LOADN                            R33 0
      458 LOADN                            R34 8
      459 CALL                             R32 2 1
      460 SETTABLEKS                       R32 R31 K146 ["bannerPaddingTop"]
      462 SETTABLEKS                       R31 R30 K153 ["audienceTabs"]
      464 DUPTABLE                         R31 K155 [{"hover"}]
      465 GETTABLEKS                       R32 R18 K156 ["MenuEntryHover"]
      467 SETTABLEKS                       R32 R31 K154 ["hover"]
      469 SETTABLEKS                       R31 R30 K157 ["menuEntry"]
      471 DUPTABLE                         R31 K161 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      472 JUMPIFNOT                        R23 ; [+6]
      473 GETIMPORT                        R32 K152 [UDim.new]
      475 LOADN                            R33 0
      476 LOADN                            R34 5
      477 CALL                             R32 2 1
      478 JUMP                             ; [+5]
      479 GETIMPORT                        R32 K152 [UDim.new]
      481 LOADN                            R33 0
      482 LOADN                            R34 32
      483 CALL                             R32 2 1
      484 SETTABLEKS                       R32 R31 K158 ["paddingTop"]
      486 JUMPIFNOT                        R23 ; [+6]
      487 GETIMPORT                        R32 K152 [UDim.new]
      489 LOADN                            R33 0
      490 LOADN                            R34 15
      491 CALL                             R32 2 1
      492 JUMP                             ; [+5]
      493 GETIMPORT                        R32 K152 [UDim.new]
      495 LOADN                            R33 0
      496 LOADN                            R34 67
      497 CALL                             R32 2 1
      498 SETTABLEKS                       R32 R31 K159 ["paddingHorizontal"]
      500 DUPTABLE                         R32 K163 [{["fontStyle"], ["Height"] = 15}]
      501 DUPTABLE                         R33 K109 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      502 SETTABLEKS                       R28 R33 K38 ["Font"]
      504 GETTABLEKS                       R34 R18 K135 ["MainText"]
      506 SETTABLEKS                       R34 R33 K103 ["TextColor3"]
      508 SETTABLEKS                       R33 R32 K110 ["fontStyle"]
      510 SETTABLEKS                       R32 R31 K160 ["ageWarning"]
      512 SETTABLEKS                       R31 R30 K164 ["searchWidget"]
      514 DUPTABLE                         R31 K194 [{["border"], ["borderHover"], ["borderSelected"], ["borderError"], ["placeholderText"], ["backgroundColor"], ["collabTypeTextPosition"], ["friendsAccessTextPosition"], ["searchIcon"], ["friendIcon"], ["clearButton"], ["headerHeight"] = 25, ["itemHeight"] = 75, ["ribbonWidth"] = 5, ["thumbnailSize"] = 48, ["thumbnailPaddingLeft"] = 40, ["renderItemTextPadding"] = 19, ["searchBarHeight"] = 40, ["clearButtonIconSize"] = 32, ["textPadding"] = 16, ["nameLabelWidth"] = 460, ["nameHeight"] = 55, ["dropDown"]}]
      515 GETTABLEKS                       R32 R18 K77 ["Border"]
      517 SETTABLEKS                       R32 R31 K75 ["border"]
      519 GETTABLEKS                       R32 R18 K195 ["DialogMainButton"]
      521 SETTABLEKS                       R32 R31 K165 ["borderHover"]
      523 GETTABLEKS                       R32 R18 K195 ["DialogMainButton"]
      525 SETTABLEKS                       R32 R31 K166 ["borderSelected"]
      527 GETIMPORT                        R32 K198 [Color3.fromRGB]
      529 LOADN                            R33 223
      530 LOADN                            R34 40
      531 LOADN                            R35 31
      532 CALL                             R32 3 1
      533 SETTABLEKS                       R32 R31 K167 ["borderError"]
      535 GETTABLEKS                       R32 R18 K66 ["DimmedText"]
      537 SETTABLEKS                       R32 R31 K168 ["placeholderText"]
      539 GETTABLEKS                       R32 R18 K199 ["SubBackground2"]
      541 SETTABLEKS                       R32 R31 K98 ["backgroundColor"]
      543 GETIMPORT                        R32 K126 [UDim2.new]
      545 LOADN                            R33 0
      546 LOADN                            R34 26
      547 LOADN                            R35 0
      548 LOADN                            R36 14
      549 CALL                             R32 4 1
      550 SETTABLEKS                       R32 R31 K169 ["collabTypeTextPosition"]
      552 GETIMPORT                        R32 K126 [UDim2.new]
      554 LOADN                            R33 1
      555 LOADN                            R34 -28
      556 LOADN                            R35 0
      557 LOADN                            R36 14
      558 CALL                             R32 4 1
      559 SETTABLEKS                       R32 R31 K170 ["friendsAccessTextPosition"]
      561 GETTABLEKS                       R32 R18 K105 ["SubText"]
      563 SETTABLEKS                       R32 R31 K171 ["searchIcon"]
      565 DUPTABLE                         R32 K208 [{["Image"], ["LabelWidth"] = 20, ["LabelHeight"] = 13, ["FrameWidth"] = 37, ["Width"] = 17, ["Height"] = 10}]
      566 GETTABLEKS                       R33 R18 K209 ["FriendIcon"]
      568 SETTABLEKS                       R33 R32 K200 ["Image"]
      570 SETTABLEKS                       R32 R31 K172 ["friendIcon"]
      572 DUPTABLE                         R32 K212 [{"imageSelected", "image"}]
      573 GETTABLEKS                       R33 R18 K105 ["SubText"]
      575 SETTABLEKS                       R33 R32 K210 ["imageSelected"]
      577 GETTABLEKS                       R33 R18 K105 ["SubText"]
      579 SETTABLEKS                       R33 R32 K211 ["image"]
      581 SETTABLEKS                       R32 R31 K173 ["clearButton"]
      583 DUPTABLE                         R32 K223 [{["collaboratorTypeText"], ["backgroundColor"], ["itemText"], ["headerText"], ["hovered"], ["item"], ["selected"], ["maxHeight"] = 425, ["eligibilityLabelWidth"] = 100}]
      584 DUPTABLE                         R33 K109 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      585 SETTABLEKS                       R28 R33 K38 ["Font"]
      587 GETTABLEKS                       R34 R18 K135 ["MainText"]
      589 SETTABLEKS                       R34 R33 K103 ["TextColor3"]
      591 SETTABLEKS                       R33 R32 K213 ["collaboratorTypeText"]
      593 GETTABLEKS                       R33 R18 K224 ["InputFieldBackground"]
      595 SETTABLEKS                       R33 R32 K98 ["backgroundColor"]
      597 GETTABLEKS                       R33 R18 K135 ["MainText"]
      599 SETTABLEKS                       R33 R32 K214 ["itemText"]
      601 GETTABLEKS                       R33 R18 K105 ["SubText"]
      603 SETTABLEKS                       R33 R32 K215 ["headerText"]
      605 DUPTABLE                         R33 K225 [{"backgroundColor", "itemText"}]
      606 GETTABLEKS                       R34 R18 K226 ["Dropdown"]
      608 SETTABLEKS                       R34 R33 K98 ["backgroundColor"]
      610 GETTABLEKS                       R34 R18 K135 ["MainText"]
      612 SETTABLEKS                       R34 R33 K214 ["itemText"]
      614 SETTABLEKS                       R33 R32 K216 ["hovered"]
      616 DUPTABLE                         R33 K228 [{["offset"] = 2}]
      617 SETTABLEKS                       R33 R32 K217 ["item"]
      619 DUPTABLE                         R33 K229 [{"backgroundColor"}]
      620 GETTABLEKS                       R34 R18 K230 ["ButtonHover"]
      622 SETTABLEKS                       R34 R33 K98 ["backgroundColor"]
      624 SETTABLEKS                       R33 R32 K218 ["selected"]
      626 SETTABLEKS                       R32 R31 K193 ["dropDown"]
      628 SETTABLEKS                       R31 R30 K231 ["searchBar"]
      630 DUPTABLE                         R31 K236 [{["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_group.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      631 SETTABLEKS                       R31 R30 K237 ["groupThumbnail"]
      633 DUPTABLE                         R31 K242 [{["background"], ["maskImage"] = "rbxasset://textures/StudioSharedUI/avatarMask.png", ["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_user.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      634 GETTABLEKS                       R32 R18 K243 ["TableItem"]
      636 SETTABLEKS                       R32 R31 K238 ["background"]
      638 SETTABLEKS                       R31 R30 K244 ["subjectThumbnail"]
      640 DUPTABLE                         R31 K246 [{["Image"] = "rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"}]
      641 SETTABLEKS                       R31 R30 K247 ["orgRoleThumbnail"]
      643 DUPTABLE                         R31 K250 [{["button"], ["padding"] = 10, ["width"]}]
      644 DUPTABLE                         R32 K253 [{["height"] = 50}]
      645 SETTABLEKS                       R32 R31 K248 ["button"]
      647 JUMPIFNOT                        R23 ; [+2]
      648 LOADN                            R32 210
      649 JUMP                             ; [+1]
      650 LOADN                            R32 264
      651 SETTABLEKS                       R32 R31 K249 ["width"]
      653 SETTABLEKS                       R31 R30 K254 ["selectInput"]
      655 DUPTABLE                         R31 K259 [{["yPadding"], ["xPadding"] = 25, ["yPaddingNonOwner"] = 35}]
      656 JUMPIFNOT                        R23 ; [+2]
      657 LOADN                            R32 20
      658 JUMP                             ; [+1]
      659 LOADN                            R32 47
      660 SETTABLEKS                       R32 R31 K255 ["yPadding"]
      662 SETTABLEKS                       R31 R30 K260 ["scrollingFrame"]
      664 DUPTABLE                         R31 K265 [{["boxHeight"] = 45, ["textStyle"], ["InnerTextPosition"]}]
      665 DUPTABLE                         R32 K109 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      666 SETTABLEKS                       R28 R32 K38 ["Font"]
      668 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      670 SETTABLEKS                       R33 R32 K103 ["TextColor3"]
      672 SETTABLEKS                       R32 R31 K263 ["textStyle"]
      674 GETIMPORT                        R32 K126 [UDim2.new]
      676 LOADN                            R33 0
      677 LOADN                            R34 67
      678 LOADK                            R35 K127 [0.5]
      679 LOADN                            R36 0
      680 CALL                             R32 4 1
      681 SETTABLEKS                       R32 R31 K264 ["InnerTextPosition"]
      683 SETTABLEKS                       R31 R30 K266 ["saveMessage"]
      685 DUPTABLE                         R31 K269 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      686 JUMPIFNOT                        R23 ; [+2]
      687 LOADN                            R32 50
      688 JUMP                             ; [+1]
      689 LOADN                            R32 98
      690 SETTABLEKS                       R32 R31 K251 ["height"]
      692 JUMPIFNOT                        R23 ; [+6]
      693 GETIMPORT                        R32 K152 [UDim.new]
      695 LOADN                            R33 0
      696 LOADN                            R34 20
      697 CALL                             R32 2 1
      698 JUMP                             ; [+5]
      699 GETIMPORT                        R32 K152 [UDim.new]
      701 LOADN                            R33 0
      702 LOADN                            R34 26
      703 CALL                             R32 2 1
      704 SETTABLEKS                       R32 R31 K158 ["paddingTop"]
      706 GETIMPORT                        R32 K152 [UDim.new]
      708 LOADN                            R33 0
      709 LOADN                            R34 67
      710 CALL                             R32 2 1
      711 SETTABLEKS                       R32 R31 K267 ["paddingLeft"]
      713 JUMPIFNOT                        R23 ; [+6]
      714 GETIMPORT                        R32 K152 [UDim.new]
      716 LOADN                            R33 0
      717 LOADN                            R34 22
      718 CALL                             R32 2 1
      719 JUMP                             ; [+5]
      720 GETIMPORT                        R32 K152 [UDim.new]
      722 LOADN                            R33 0
      723 LOADN                            R34 75
      724 CALL                             R32 2 1
      725 SETTABLEKS                       R32 R31 K268 ["paddingRight"]
      727 SETTABLEKS                       R31 R30 K270 ["header"]
      729 DUPTABLE                         R31 K274 [{["font"], ["textSize"] = 40, ["textColor3"]}]
      730 SETTABLEKS                       R28 R31 K271 ["font"]
      732 GETTABLEKS                       R32 R18 K64 ["TitlebarText"]
      734 SETTABLEKS                       R32 R31 K273 ["textColor3"]
      736 SETTABLEKS                       R31 R30 K275 ["title"]
      738 DUPTABLE                         R31 K277 [{["font"], ["textSize"] = 24, ["textColor3"], ["width"] = 175}]
      739 SETTABLEKS                       R28 R31 K271 ["font"]
      741 GETTABLEKS                       R32 R18 K64 ["TitlebarText"]
      743 SETTABLEKS                       R32 R31 K273 ["textColor3"]
      745 SETTABLEKS                       R31 R30 K278 ["copyLinkButton"]
      747 DUPTABLE                         R31 K283 [{["height"], ["gradientSize"] = 3, ["gradientTransparency"] = 0.9, ["border"]}]
      748 JUMPIFNOT                        R23 ; [+2]
      749 LOADN                            R32 60
      750 JUMP                             ; [+1]
      751 LOADN                            R32 65
      752 SETTABLEKS                       R32 R31 K251 ["height"]
      754 JUMPIFNOT                        R23 ; [+3]
      755 GETTABLEKS                       R32 R18 K77 ["Border"]
      757 JUMP                             ; [+2]
      758 GETTABLEKS                       R32 R18 K284 ["FooterBorder"]
      760 SETTABLEKS                       R32 R31 K75 ["border"]
      762 SETTABLEKS                       R31 R30 K285 ["footer"]
      764 DUPTABLE                         R31 K288 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      765 JUMPIFNOT                        R23 ; [+13]
      766 JUMPIFNOT                        R26 ; [+6]
      767 GETIMPORT                        R32 K152 [UDim.new]
      769 LOADN                            R33 0
      770 LOADN                            R34 15
      771 CALL                             R32 2 1
      772 JUMP                             ; [+11]
      773 GETIMPORT                        R32 K152 [UDim.new]
      775 LOADN                            R33 0
      776 LOADN                            R34 20
      777 CALL                             R32 2 1
      778 JUMP                             ; [+5]
      779 GETIMPORT                        R32 K152 [UDim.new]
      781 LOADN                            R33 0
      782 LOADN                            R34 67
      783 CALL                             R32 2 1
      784 SETTABLEKS                       R32 R31 K159 ["paddingHorizontal"]
      786 JUMPIFNOT                        R27 ; [+6]
      787 GETIMPORT                        R32 K152 [UDim.new]
      789 LOADN                            R33 0
      790 LOADN                            R34 20
      791 CALL                             R32 2 1
      792 JUMP                             ; [+9]
      793 JUMPIFNOT                        R24 ; [+7]
      794 JUMPIFNOT                        R25 ; [+6]
      795 GETIMPORT                        R32 K152 [UDim.new]
      797 LOADN                            R33 0
      798 LOADN                            R34 12
      799 CALL                             R32 2 1
      800 JUMP                             ; [+1]
      801 LOADNIL                          R32
      802 SETTABLEKS                       R32 R31 K158 ["paddingTop"]
      804 GETIMPORT                        R32 K126 [UDim2.new]
      806 LOADN                            R33 1
      807 LOADN                            R34 0
      808 LOADN                            R35 0
      809 JUMPIFNOT                        R27 ; [+2]
      810 LOADN                            R36 50
      811 JUMP                             ; [+5]
      812 JUMPIFNOT                        R24 ; [+3]
      813 JUMPIFNOT                        R25 ; [+2]
      814 LOADN                            R36 42
      815 JUMP                             ; [+1]
      816 LOADN                            R36 30
      817 CALL                             R32 4 1
      818 SETTABLEKS                       R32 R31 K286 ["size"]
      820 DUPTABLE                         R32 K289 [{"paddingHorizontal", "size"}]
      821 GETIMPORT                        R33 K152 [UDim.new]
      823 LOADN                            R34 0
      824 LOADN                            R35 8
      825 CALL                             R33 2 1
      826 SETTABLEKS                       R33 R32 K159 ["paddingHorizontal"]
      828 GETIMPORT                        R33 K126 [UDim2.new]
      830 LOADN                            R34 0
      831 LOADN                            R35 100
      832 LOADN                            R36 1
      833 LOADN                            R37 0
      834 CALL                             R33 4 1
      835 SETTABLEKS                       R33 R32 K286 ["size"]
      837 SETTABLEKS                       R32 R31 K287 ["pills"]
      839 SETTABLEKS                       R31 R30 K290 ["collaboratorFilter"]
      841 DUPTABLE                         R31 K302 [{["FadeTransparency"] = 0.75, ["groupCollaboratorItem"], ["deleteButton"], ["permissionEditor"], ["collaboratorName"], ["collaboratorSubText"], ["ownerLabel"], ["iconContainerSize"] = 40, ["nonRolesetFrame"], ["rolesetFrame"]}]
      842 DUPTABLE                         R32 K308 [{["ExpandTextSize"] = 14, ["size"], ["collaboratorItemOffset"] = 16, ["expandablePaneSize"], ["headerComponent"]}]
      843 JUMPIFNOT                        R23 ; [+8]
      844 GETIMPORT                        R33 K126 [UDim2.new]
      846 LOADN                            R34 0
      847 LOADN                            R35 750
      848 LOADN                            R36 0
      849 LOADN                            R37 60
      850 CALL                             R33 4 1
      851 JUMP                             ; [+7]
      852 GETIMPORT                        R33 K126 [UDim2.new]
      854 LOADN                            R34 0
      855 LOADN                            R35 665
      856 LOADN                            R36 0
      857 LOADN                            R37 74
      858 CALL                             R33 4 1
      859 SETTABLEKS                       R33 R32 K286 ["size"]
      861 GETIMPORT                        R33 K126 [UDim2.new]
      863 LOADN                            R34 1
      864 LOADN                            R35 0
      865 LOADN                            R36 0
      866 LOADN                            R37 34
      867 CALL                             R33 4 1
      868 SETTABLEKS                       R33 R32 K306 ["expandablePaneSize"]
      870 DUPTABLE                         R33 K311 [{"size", "arrowLabel", "textLabel"}]
      871 GETIMPORT                        R34 K126 [UDim2.new]
      873 LOADN                            R35 0
      874 LOADN                            R36 608
      875 LOADN                            R37 0
      876 LOADN                            R38 34
      877 CALL                             R34 4 1
      878 SETTABLEKS                       R34 R33 K286 ["size"]
      880 DUPTABLE                         R34 K313 [{"position", "size"}]
      881 GETIMPORT                        R35 K126 [UDim2.new]
      883 LOADN                            R36 0
      884 LOADN                            R37 42
      885 LOADK                            R38 K127 [0.5]
      886 LOADN                            R39 0
      887 CALL                             R35 4 1
      888 SETTABLEKS                       R35 R34 K312 ["position"]
      890 GETIMPORT                        R35 K126 [UDim2.new]
      892 LOADN                            R36 0
      893 LOADN                            R37 17
      894 LOADN                            R38 0
      895 LOADN                            R39 17
      896 CALL                             R35 4 1
      897 SETTABLEKS                       R35 R34 K286 ["size"]
      899 SETTABLEKS                       R34 R33 K309 ["arrowLabel"]
      901 DUPTABLE                         R34 K314 [{"position"}]
      902 GETIMPORT                        R35 K126 [UDim2.new]
      904 LOADN                            R36 0
      905 LOADN                            R37 60
      906 LOADK                            R38 K127 [0.5]
      907 LOADN                            R39 0
      908 CALL                             R35 4 1
      909 SETTABLEKS                       R35 R34 K312 ["position"]
      911 SETTABLEKS                       R34 R33 K310 ["textLabel"]
      913 SETTABLEKS                       R33 R32 K307 ["headerComponent"]
      915 SETTABLEKS                       R32 R31 K293 ["groupCollaboratorItem"]
      917 DUPTABLE                         R32 K317 [{["size"] = 16, ["xOffset"] = 6, ["hovered"]}]
      918 GETTABLEKS                       R33 R18 K226 ["Dropdown"]
      920 SETTABLEKS                       R33 R32 K216 ["hovered"]
      922 SETTABLEKS                       R32 R31 K294 ["deleteButton"]
      924 DUPTABLE                         R32 K322 [{["heightOffset"] = 54, ["yOffset"] = 11}]
      925 SETTABLEKS                       R32 R31 K295 ["permissionEditor"]
      927 DUPTABLE                         R32 K327 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
      928 DUPTABLE                         R33 K329 [{["withSubText"], ["size"], ["xOffset"] = 50}]
      929 DUPTABLE                         R34 K330 [{"size"}]
      930 GETIMPORT                        R35 K126 [UDim2.new]
      932 LOADN                            R36 1
      933 LOADN                            R37 -264
      934 LOADN                            R38 0
      935 LOADN                            R39 30
      936 CALL                             R35 4 1
      937 SETTABLEKS                       R35 R34 K286 ["size"]
      939 SETTABLEKS                       R34 R33 K328 ["withSubText"]
      941 GETIMPORT                        R34 K126 [UDim2.new]
      943 LOADN                            R35 1
      944 LOADN                            R36 -264
      945 LOADN                            R37 0
      946 LOADN                            R38 54
      947 CALL                             R34 4 1
      948 SETTABLEKS                       R34 R33 K286 ["size"]
      950 SETTABLEKS                       R33 R32 K323 ["withIcon"]
      952 NEWTABLE                         R33 2 1
      954 DUPTABLE                         R35 K330 [{"size"}]
      955 GETIMPORT                        R36 K126 [UDim2.new]
      957 LOADN                            R37 1
      958 LOADN                            R38 -264
      959 LOADN                            R39 0
      960 LOADN                            R40 30
      961 CALL                             R36 4 1
      962 SETTABLEKS                       R36 R35 K286 ["size"]
      964 SETTABLEKS                       R35 R33 K328 ["withSubText"]
      966 GETIMPORT                        R34 K126 [UDim2.new]
      968 LOADN                            R35 1
      969 LOADN                            R36 -126
      970 LOADN                            R37 0
      971 LOADN                            R38 54
      972 CALL                             R34 4 1
      973 SETLIST                          R33 R34 1 [1]
      975 LOADN                            R35 28
      976 SETTABLEKS                       R35 R33 K315 ["xOffset"]
      978 SETTABLEKS                       R33 R32 K324 ["withoutIcon"]
      980 DUPTABLE                         R33 K332 [{["yOffset"] = -10}]
      981 SETTABLEKS                       R33 R32 K325 ["withSubtext"]
      983 DUPTABLE                         R33 K333 [{["yOffset"] = 0}]
      984 SETTABLEKS                       R33 R32 K326 ["withoutSubtext"]
      986 SETTABLEKS                       R32 R31 K296 ["collaboratorName"]
      988 DUPTABLE                         R32 K334 [{["withIcon"], ["withoutIcon"], ["yOffset"] = 10}]
      989 DUPTABLE                         R33 K335 [{["size"], ["xOffset"] = 50}]
      990 GETIMPORT                        R34 K126 [UDim2.new]
      992 LOADN                            R35 1
      993 LOADN                            R36 -264
      994 LOADN                            R37 0
      995 LOADN                            R38 24
      996 CALL                             R34 4 1
      997 SETTABLEKS                       R34 R33 K286 ["size"]
      999 SETTABLEKS                       R33 R32 K323 ["withIcon"]
     1001 NEWTABLE                         R33 1 1
     1003 GETIMPORT                        R34 K126 [UDim2.new]
     1005 LOADN                            R35 1
     1006 LOADN                            R36 -126
     1007 LOADN                            R37 0
     1008 LOADN                            R38 24
     1009 CALL                             R34 4 1
     1010 SETLIST                          R33 R34 1 [1]
     1012 LOADN                            R35 28
     1013 SETTABLEKS                       R35 R33 K315 ["xOffset"]
     1015 SETTABLEKS                       R33 R32 K324 ["withoutIcon"]
     1017 SETTABLEKS                       R32 R31 K297 ["collaboratorSubText"]
     1019 DUPTABLE                         R32 K338 [{"withIconSize", "withoutIconSize", "position"}]
     1020 GETIMPORT                        R33 K126 [UDim2.new]
     1022 LOADN                            R34 1
     1023 LOADN                            R35 -264
     1024 LOADN                            R36 0
     1025 LOADN                            R37 54
     1026 CALL                             R33 4 1
     1027 SETTABLEKS                       R33 R32 K336 ["withIconSize"]
     1029 GETIMPORT                        R33 K126 [UDim2.new]
     1031 LOADN                            R34 1
     1032 LOADN                            R35 -126
     1033 LOADN                            R36 0
     1034 LOADN                            R37 54
     1035 CALL                             R33 4 1
     1036 SETTABLEKS                       R33 R32 K337 ["withoutIconSize"]
     1038 GETIMPORT                        R33 K126 [UDim2.new]
     1040 LOADN                            R34 1
     1041 LOADN                            R35 -7
     1042 LOADK                            R36 K127 [0.5]
     1043 LOADN                            R37 0
     1044 CALL                             R33 4 1
     1045 SETTABLEKS                       R33 R32 K312 ["position"]
     1047 SETTABLEKS                       R32 R31 K298 ["ownerLabel"]
     1049 DUPTABLE                         R32 K342 [{["width"], ["height"] = 74, ["position"] = , ["anchorPoint"] = }]
     1050 JUMPIFNOT                        R23 ; [+2]
     1051 LOADN                            R33 750
     1052 JUMP                             ; [+1]
     1053 LOADN                            R33 665
     1054 SETTABLEKS                       R33 R32 K249 ["width"]
     1056 SETTABLEKS                       R32 R31 K300 ["nonRolesetFrame"]
     1058 DUPTABLE                         R32 K344 [{["width"], ["height"] = 54, ["position"], ["anchorPont"]}]
     1059 JUMPIFNOT                        R23 ; [+2]
     1060 LOADN                            R33 750
     1061 JUMP                             ; [+1]
     1062 LOADN                            R33 608
     1063 SETTABLEKS                       R33 R32 K249 ["width"]
     1065 GETIMPORT                        R33 K126 [UDim2.new]
     1067 LOADK                            R34 K345 [1.5]
     1068 LOADN                            R35 200
     1069 LOADN                            R36 0
     1070 LOADN                            R37 20
     1071 CALL                             R33 4 1
     1072 SETTABLEKS                       R33 R32 K312 ["position"]
     1074 GETIMPORT                        R33 K95 [Vector2.new]
     1076 LOADN                            R34 1
     1077 LOADN                            R35 0
     1078 CALL                             R33 2 1
     1079 SETTABLEKS                       R33 R32 K343 ["anchorPont"]
     1081 SETTABLEKS                       R32 R31 K301 ["rolesetFrame"]
     1083 SETTABLEKS                       R31 R30 K346 ["collaboratorItem"]
     1085 GETTABLEKS                       R31 R18 K347 ["CloseWidget"]
     1087 SETTABLEKS                       R31 R30 K348 ["deleteIcon"]
     1089 DUPTABLE                         R31 K351 [{"right", "down"}]
     1090 GETTABLEKS                       R32 R18 K352 ["RightArrow"]
     1092 SETTABLEKS                       R32 R31 K349 ["right"]
     1094 GETTABLEKS                       R32 R18 K353 ["DownArrow"]
     1096 SETTABLEKS                       R32 R31 K350 ["down"]
     1098 SETTABLEKS                       R31 R30 K354 ["arrows"]
     1100 DUPCLOSURE                       R31 K355 [PROTO_0]
     1101 CAPTURE                          VAL R21
     1102 CAPTURE                          VAL R16
     1103 CAPTURE                          VAL R18
     1104 CAPTURE                          VAL R19
     1105 CAPTURE                          VAL R17
     1106 CAPTURE                          VAL R15
     1107 CAPTURE                          VAL R30
     1108 RETURN                           R31 1
