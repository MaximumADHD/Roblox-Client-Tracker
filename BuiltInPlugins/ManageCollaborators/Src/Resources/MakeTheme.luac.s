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
      250 NEWTABLE                         R34 1 0
      252 DUPTABLE                         R35 K84 [{["Font"], ["ButtonPadding"] = 24, ["ContentPadding"] = 0, ["ButtonHorizontalAlignment"]}]
      253 GETIMPORT                        R36 K42 [Enum.Font.SourceSans]
      255 SETTABLEKS                       R36 R35 K38 ["Font"]
      257 GETIMPORT                        R36 K86 [Enum.HorizontalAlignment.Center]
      259 SETTABLEKS                       R36 R35 K83 ["ButtonHorizontalAlignment"]
      261 SETTABLEKS                       R35 R34 K87 ["&CancelDialog"]
      263 CALL                             R32 2 1
      264 SETTABLE                         R32 R30 R31
      265 GETTABLEKS                       R31 R6 K88 ["DropdownMenu"]
      267 GETTABLEKS                       R32 R4 K80 ["Dictionary"]
      269 GETTABLEKS                       R32 R32 K27 ["join"]
      271 MOVE                             R33 R3
      272 LOADK                            R34 K88 ["DropdownMenu"]
      273 CALL                             R33 1 1
      274 NEWTABLE                         R34 1 0
      276 DUPTABLE                         R35 K91 [{"Offset", "BackgroundColor"}]
      277 GETIMPORT                        R36 K94 [Vector2.new]
      279 LOADN                            R37 -12
      280 LOADN                            R38 0
      281 CALL                             R36 2 1
      282 SETTABLEKS                       R36 R35 K89 ["Offset"]
      284 JUMPIFNOT                        R22 ; [+3]
      285 GETTABLEKS                       R36 R18 K95 ["MainBackground"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R36
      289 SETTABLEKS                       R36 R35 K90 ["BackgroundColor"]
      291 SETTABLEKS                       R35 R34 K96 ["&Search"]
      293 CALL                             R32 2 1
      294 SETTABLE                         R32 R30 R31
      295 GETTABLEKS                       R31 R18 K95 ["MainBackground"]
      297 SETTABLEKS                       R31 R30 K97 ["backgroundColor"]
      299 DUPTABLE                         R31 K101 [{"Subtitle", "Normal", "Subtext"}]
      300 DUPTABLE                         R32 K103 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      301 SETTABLEKS                       R28 R32 K38 ["Font"]
      303 GETTABLEKS                       R33 R18 K104 ["SubText"]
      305 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      307 SETTABLEKS                       R32 R31 K98 ["Subtitle"]
      309 DUPTABLE                         R32 K106 [{["Font"], ["TextSize"] = 20, ["TextColor3"]}]
      310 SETTABLEKS                       R28 R32 K38 ["Font"]
      312 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      314 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      316 SETTABLEKS                       R32 R31 K99 ["Normal"]
      318 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      319 SETTABLEKS                       R28 R32 K38 ["Font"]
      321 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      323 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      325 SETTABLEKS                       R32 R31 K100 ["Subtext"]
      327 SETTABLEKS                       R31 R30 K109 ["fontStyle"]
      329 DUPTABLE                         R31 K113 [{["padding"] = 10, ["edgePadding"]}]
      330 JUMPIFNOT                        R23 ; [+2]
      331 LOADN                            R32 20
      332 JUMP                             ; [+1]
      333 LOADN                            R32 67
      334 SETTABLEKS                       R32 R31 K112 ["edgePadding"]
      336 SETTABLEKS                       R31 R30 K114 ["buttonBar"]
      338 DUPTABLE                         R31 K117 [{"TitleText", "DescriptionText"}]
      339 DUPTABLE                         R32 K103 [{["Font"], ["TextSize"] = 22, ["TextColor3"]}]
      340 SETTABLEKS                       R29 R32 K38 ["Font"]
      342 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      344 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      346 SETTABLEKS                       R32 R31 K115 ["TitleText"]
      348 DUPTABLE                         R32 K119 [{["Font"], ["TextSize"] = 18, ["TextColor3"]}]
      349 SETTABLEKS                       R28 R32 K38 ["Font"]
      351 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      353 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      355 SETTABLEKS                       R32 R31 K116 ["DescriptionText"]
      357 SETTABLEKS                       R31 R30 K120 ["confirmTcDialog"]
      359 DUPTABLE                         R31 K123 [{"Text", "Size", "Position"}]
      360 DUPTABLE                         R32 K124 [{["Font"], ["TextSize"] = 24, ["TextColor3"]}]
      361 GETIMPORT                        R33 K42 [Enum.Font.SourceSans]
      363 SETTABLEKS                       R33 R32 K38 ["Font"]
      365 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      367 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      369 SETTABLEKS                       R32 R31 K121 ["Text"]
      371 GETIMPORT                        R32 K94 [Vector2.new]
      373 LOADN                            R33 343
      374 LOADN                            R34 65
      375 CALL                             R32 2 1
      376 SETTABLEKS                       R32 R31 K53 ["Size"]
      378 GETIMPORT                        R32 K125 [UDim2.new]
      380 LOADK                            R33 K126 [0.5]
      381 LOADN                            R34 0
      382 LOADK                            R35 K126 [0.5]
      383 LOADN                            R36 10
      384 CALL                             R32 4 1
      385 SETTABLEKS                       R32 R31 K122 ["Position"]
      387 SETTABLEKS                       R31 R30 K127 ["cancelDialog"]
      389 DUPTABLE                         R31 K129 [{"Text", "publishButton"}]
      390 DUPTABLE                         R32 K132 [{["Font"], ["TextSize"] = 20, ["TextColor3"], ["YOffset"] = 70}]
      391 SETTABLEKS                       R28 R32 K38 ["Font"]
      393 GETTABLEKS                       R33 R18 K133 ["MainText"]
      395 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      397 SETTABLEKS                       R32 R31 K121 ["Text"]
      399 DUPTABLE                         R32 K140 [{["offset"] = 125, ["paddingX"] = 75, ["paddingY"] = 15}]
      400 SETTABLEKS                       R32 R31 K128 ["publishButton"]
      402 SETTABLEKS                       R31 R30 K141 ["saveToRobloxView"]
      404 DUPTABLE                         R31 K142 [{"Padding"}]
      405 JUMPIFNOT                        R23 ; [+2]
      406 LOADN                            R32 0
      407 JUMP                             ; [+1]
      408 LOADN                            R32 2
      409 SETTABLEKS                       R32 R31 K50 ["Padding"]
      411 SETTABLEKS                       R31 R30 K143 ["permissionsView"]
      413 DUPTABLE                         R31 K148 [{["bannerPaddingTop"], ["counterHeight"] = 24, ["emptyStateHeight"] = 320}]
      414 GETIMPORT                        R32 K150 [UDim.new]
      416 LOADN                            R33 0
      417 LOADN                            R34 8
      418 CALL                             R32 2 1
      419 SETTABLEKS                       R32 R31 K144 ["bannerPaddingTop"]
      421 SETTABLEKS                       R31 R30 K151 ["audienceTabs"]
      423 DUPTABLE                         R31 K153 [{"hover"}]
      424 GETTABLEKS                       R32 R18 K154 ["MenuEntryHover"]
      426 SETTABLEKS                       R32 R31 K152 ["hover"]
      428 SETTABLEKS                       R31 R30 K155 ["menuEntry"]
      430 DUPTABLE                         R31 K159 [{"paddingTop", "paddingHorizontal", "ageWarning"}]
      431 JUMPIFNOT                        R23 ; [+6]
      432 GETIMPORT                        R32 K150 [UDim.new]
      434 LOADN                            R33 0
      435 LOADN                            R34 5
      436 CALL                             R32 2 1
      437 JUMP                             ; [+5]
      438 GETIMPORT                        R32 K150 [UDim.new]
      440 LOADN                            R33 0
      441 LOADN                            R34 32
      442 CALL                             R32 2 1
      443 SETTABLEKS                       R32 R31 K156 ["paddingTop"]
      445 JUMPIFNOT                        R23 ; [+6]
      446 GETIMPORT                        R32 K150 [UDim.new]
      448 LOADN                            R33 0
      449 LOADN                            R34 15
      450 CALL                             R32 2 1
      451 JUMP                             ; [+5]
      452 GETIMPORT                        R32 K150 [UDim.new]
      454 LOADN                            R33 0
      455 LOADN                            R34 67
      456 CALL                             R32 2 1
      457 SETTABLEKS                       R32 R31 K157 ["paddingHorizontal"]
      459 DUPTABLE                         R32 K161 [{["fontStyle"], ["Height"] = 15}]
      460 DUPTABLE                         R33 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      461 SETTABLEKS                       R28 R33 K38 ["Font"]
      463 GETTABLEKS                       R34 R18 K133 ["MainText"]
      465 SETTABLEKS                       R34 R33 K102 ["TextColor3"]
      467 SETTABLEKS                       R33 R32 K109 ["fontStyle"]
      469 SETTABLEKS                       R32 R31 K158 ["ageWarning"]
      471 SETTABLEKS                       R31 R30 K162 ["searchWidget"]
      473 DUPTABLE                         R31 K192 [{["border"], ["borderHover"], ["borderSelected"], ["borderError"], ["placeholderText"], ["backgroundColor"], ["collabTypeTextPosition"], ["friendsAccessTextPosition"], ["searchIcon"], ["friendIcon"], ["clearButton"], ["headerHeight"] = 25, ["itemHeight"] = 75, ["ribbonWidth"] = 5, ["thumbnailSize"] = 48, ["thumbnailPaddingLeft"] = 40, ["renderItemTextPadding"] = 19, ["searchBarHeight"] = 40, ["clearButtonIconSize"] = 32, ["textPadding"] = 16, ["nameLabelWidth"] = 460, ["nameHeight"] = 55, ["dropDown"]}]
      474 GETTABLEKS                       R32 R18 K77 ["Border"]
      476 SETTABLEKS                       R32 R31 K75 ["border"]
      478 GETTABLEKS                       R32 R18 K193 ["DialogMainButton"]
      480 SETTABLEKS                       R32 R31 K163 ["borderHover"]
      482 GETTABLEKS                       R32 R18 K193 ["DialogMainButton"]
      484 SETTABLEKS                       R32 R31 K164 ["borderSelected"]
      486 GETIMPORT                        R32 K196 [Color3.fromRGB]
      488 LOADN                            R33 223
      489 LOADN                            R34 40
      490 LOADN                            R35 31
      491 CALL                             R32 3 1
      492 SETTABLEKS                       R32 R31 K165 ["borderError"]
      494 GETTABLEKS                       R32 R18 K66 ["DimmedText"]
      496 SETTABLEKS                       R32 R31 K166 ["placeholderText"]
      498 GETTABLEKS                       R32 R18 K197 ["SubBackground2"]
      500 SETTABLEKS                       R32 R31 K97 ["backgroundColor"]
      502 GETIMPORT                        R32 K125 [UDim2.new]
      504 LOADN                            R33 0
      505 LOADN                            R34 26
      506 LOADN                            R35 0
      507 LOADN                            R36 14
      508 CALL                             R32 4 1
      509 SETTABLEKS                       R32 R31 K167 ["collabTypeTextPosition"]
      511 GETIMPORT                        R32 K125 [UDim2.new]
      513 LOADN                            R33 1
      514 LOADN                            R34 -28
      515 LOADN                            R35 0
      516 LOADN                            R36 14
      517 CALL                             R32 4 1
      518 SETTABLEKS                       R32 R31 K168 ["friendsAccessTextPosition"]
      520 GETTABLEKS                       R32 R18 K104 ["SubText"]
      522 SETTABLEKS                       R32 R31 K169 ["searchIcon"]
      524 DUPTABLE                         R32 K206 [{["Image"], ["LabelWidth"] = 20, ["LabelHeight"] = 13, ["FrameWidth"] = 37, ["Width"] = 17, ["Height"] = 10}]
      525 GETTABLEKS                       R33 R18 K207 ["FriendIcon"]
      527 SETTABLEKS                       R33 R32 K198 ["Image"]
      529 SETTABLEKS                       R32 R31 K170 ["friendIcon"]
      531 DUPTABLE                         R32 K210 [{"imageSelected", "image"}]
      532 GETTABLEKS                       R33 R18 K104 ["SubText"]
      534 SETTABLEKS                       R33 R32 K208 ["imageSelected"]
      536 GETTABLEKS                       R33 R18 K104 ["SubText"]
      538 SETTABLEKS                       R33 R32 K209 ["image"]
      540 SETTABLEKS                       R32 R31 K171 ["clearButton"]
      542 DUPTABLE                         R32 K221 [{["collaboratorTypeText"], ["backgroundColor"], ["itemText"], ["headerText"], ["hovered"], ["item"], ["selected"], ["maxHeight"] = 425, ["eligibilityLabelWidth"] = 100}]
      543 DUPTABLE                         R33 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      544 SETTABLEKS                       R28 R33 K38 ["Font"]
      546 GETTABLEKS                       R34 R18 K133 ["MainText"]
      548 SETTABLEKS                       R34 R33 K102 ["TextColor3"]
      550 SETTABLEKS                       R33 R32 K211 ["collaboratorTypeText"]
      552 GETTABLEKS                       R33 R18 K222 ["InputFieldBackground"]
      554 SETTABLEKS                       R33 R32 K97 ["backgroundColor"]
      556 GETTABLEKS                       R33 R18 K133 ["MainText"]
      558 SETTABLEKS                       R33 R32 K212 ["itemText"]
      560 GETTABLEKS                       R33 R18 K104 ["SubText"]
      562 SETTABLEKS                       R33 R32 K213 ["headerText"]
      564 DUPTABLE                         R33 K223 [{"backgroundColor", "itemText"}]
      565 GETTABLEKS                       R34 R18 K224 ["Dropdown"]
      567 SETTABLEKS                       R34 R33 K97 ["backgroundColor"]
      569 GETTABLEKS                       R34 R18 K133 ["MainText"]
      571 SETTABLEKS                       R34 R33 K212 ["itemText"]
      573 SETTABLEKS                       R33 R32 K214 ["hovered"]
      575 DUPTABLE                         R33 K226 [{["offset"] = 2}]
      576 SETTABLEKS                       R33 R32 K215 ["item"]
      578 DUPTABLE                         R33 K227 [{"backgroundColor"}]
      579 GETTABLEKS                       R34 R18 K228 ["ButtonHover"]
      581 SETTABLEKS                       R34 R33 K97 ["backgroundColor"]
      583 SETTABLEKS                       R33 R32 K216 ["selected"]
      585 SETTABLEKS                       R32 R31 K191 ["dropDown"]
      587 SETTABLEKS                       R31 R30 K229 ["searchBar"]
      589 DUPTABLE                         R31 K234 [{["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_group.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      590 SETTABLEKS                       R31 R30 K235 ["groupThumbnail"]
      592 DUPTABLE                         R31 K240 [{["background"], ["maskImage"] = "rbxasset://textures/StudioSharedUI/avatarMask.png", ["loadingImage"] = "rbxasset://textures/StudioSharedUI/default_user.png", ["loadFailureImage"] = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"}]
      593 GETTABLEKS                       R32 R18 K241 ["TableItem"]
      595 SETTABLEKS                       R32 R31 K236 ["background"]
      597 SETTABLEKS                       R31 R30 K242 ["subjectThumbnail"]
      599 DUPTABLE                         R31 K244 [{["Image"] = "rbxasset://textures/ManageCollaborators/OrgRoleIcon_mask.png"}]
      600 SETTABLEKS                       R31 R30 K245 ["orgRoleThumbnail"]
      602 DUPTABLE                         R31 K248 [{["button"], ["padding"] = 10, ["width"]}]
      603 DUPTABLE                         R32 K251 [{["height"] = 50}]
      604 SETTABLEKS                       R32 R31 K246 ["button"]
      606 JUMPIFNOT                        R23 ; [+2]
      607 LOADN                            R32 210
      608 JUMP                             ; [+1]
      609 LOADN                            R32 264
      610 SETTABLEKS                       R32 R31 K247 ["width"]
      612 SETTABLEKS                       R31 R30 K252 ["selectInput"]
      614 DUPTABLE                         R31 K257 [{["yPadding"], ["xPadding"] = 25, ["yPaddingNonOwner"] = 35}]
      615 JUMPIFNOT                        R23 ; [+2]
      616 LOADN                            R32 20
      617 JUMP                             ; [+1]
      618 LOADN                            R32 47
      619 SETTABLEKS                       R32 R31 K253 ["yPadding"]
      621 SETTABLEKS                       R31 R30 K258 ["scrollingFrame"]
      623 DUPTABLE                         R31 K263 [{["boxHeight"] = 45, ["textStyle"], ["InnerTextPosition"]}]
      624 DUPTABLE                         R32 K108 [{["Font"], ["TextSize"] = 16, ["TextColor3"]}]
      625 SETTABLEKS                       R28 R32 K38 ["Font"]
      627 GETTABLEKS                       R33 R18 K64 ["TitlebarText"]
      629 SETTABLEKS                       R33 R32 K102 ["TextColor3"]
      631 SETTABLEKS                       R32 R31 K261 ["textStyle"]
      633 GETIMPORT                        R32 K125 [UDim2.new]
      635 LOADN                            R33 0
      636 LOADN                            R34 67
      637 LOADK                            R35 K126 [0.5]
      638 LOADN                            R36 0
      639 CALL                             R32 4 1
      640 SETTABLEKS                       R32 R31 K262 ["InnerTextPosition"]
      642 SETTABLEKS                       R31 R30 K264 ["saveMessage"]
      644 DUPTABLE                         R31 K267 [{"height", "paddingTop", "paddingLeft", "paddingRight"}]
      645 JUMPIFNOT                        R23 ; [+2]
      646 LOADN                            R32 50
      647 JUMP                             ; [+1]
      648 LOADN                            R32 98
      649 SETTABLEKS                       R32 R31 K249 ["height"]
      651 JUMPIFNOT                        R23 ; [+6]
      652 GETIMPORT                        R32 K150 [UDim.new]
      654 LOADN                            R33 0
      655 LOADN                            R34 20
      656 CALL                             R32 2 1
      657 JUMP                             ; [+5]
      658 GETIMPORT                        R32 K150 [UDim.new]
      660 LOADN                            R33 0
      661 LOADN                            R34 26
      662 CALL                             R32 2 1
      663 SETTABLEKS                       R32 R31 K156 ["paddingTop"]
      665 GETIMPORT                        R32 K150 [UDim.new]
      667 LOADN                            R33 0
      668 LOADN                            R34 67
      669 CALL                             R32 2 1
      670 SETTABLEKS                       R32 R31 K265 ["paddingLeft"]
      672 JUMPIFNOT                        R23 ; [+6]
      673 GETIMPORT                        R32 K150 [UDim.new]
      675 LOADN                            R33 0
      676 LOADN                            R34 22
      677 CALL                             R32 2 1
      678 JUMP                             ; [+5]
      679 GETIMPORT                        R32 K150 [UDim.new]
      681 LOADN                            R33 0
      682 LOADN                            R34 75
      683 CALL                             R32 2 1
      684 SETTABLEKS                       R32 R31 K266 ["paddingRight"]
      686 SETTABLEKS                       R31 R30 K268 ["header"]
      688 DUPTABLE                         R31 K272 [{["font"], ["textSize"] = 40, ["textColor3"]}]
      689 SETTABLEKS                       R28 R31 K269 ["font"]
      691 GETTABLEKS                       R32 R18 K64 ["TitlebarText"]
      693 SETTABLEKS                       R32 R31 K271 ["textColor3"]
      695 SETTABLEKS                       R31 R30 K273 ["title"]
      697 DUPTABLE                         R31 K278 [{["height"], ["gradientSize"] = 3, ["gradientTransparency"] = 0.9, ["border"]}]
      698 JUMPIFNOT                        R23 ; [+2]
      699 LOADN                            R32 60
      700 JUMP                             ; [+1]
      701 LOADN                            R32 65
      702 SETTABLEKS                       R32 R31 K249 ["height"]
      704 JUMPIFNOT                        R23 ; [+3]
      705 GETTABLEKS                       R32 R18 K77 ["Border"]
      707 JUMP                             ; [+2]
      708 GETTABLEKS                       R32 R18 K279 ["FooterBorder"]
      710 SETTABLEKS                       R32 R31 K75 ["border"]
      712 SETTABLEKS                       R31 R30 K280 ["footer"]
      714 DUPTABLE                         R31 K283 [{"paddingHorizontal", "paddingTop", "size", "pills"}]
      715 JUMPIFNOT                        R23 ; [+13]
      716 JUMPIFNOT                        R26 ; [+6]
      717 GETIMPORT                        R32 K150 [UDim.new]
      719 LOADN                            R33 0
      720 LOADN                            R34 15
      721 CALL                             R32 2 1
      722 JUMP                             ; [+11]
      723 GETIMPORT                        R32 K150 [UDim.new]
      725 LOADN                            R33 0
      726 LOADN                            R34 20
      727 CALL                             R32 2 1
      728 JUMP                             ; [+5]
      729 GETIMPORT                        R32 K150 [UDim.new]
      731 LOADN                            R33 0
      732 LOADN                            R34 67
      733 CALL                             R32 2 1
      734 SETTABLEKS                       R32 R31 K157 ["paddingHorizontal"]
      736 JUMPIFNOT                        R27 ; [+6]
      737 GETIMPORT                        R32 K150 [UDim.new]
      739 LOADN                            R33 0
      740 LOADN                            R34 20
      741 CALL                             R32 2 1
      742 JUMP                             ; [+9]
      743 JUMPIFNOT                        R24 ; [+7]
      744 JUMPIFNOT                        R25 ; [+6]
      745 GETIMPORT                        R32 K150 [UDim.new]
      747 LOADN                            R33 0
      748 LOADN                            R34 12
      749 CALL                             R32 2 1
      750 JUMP                             ; [+1]
      751 LOADNIL                          R32
      752 SETTABLEKS                       R32 R31 K156 ["paddingTop"]
      754 GETIMPORT                        R32 K125 [UDim2.new]
      756 LOADN                            R33 1
      757 LOADN                            R34 0
      758 LOADN                            R35 0
      759 JUMPIFNOT                        R27 ; [+2]
      760 LOADN                            R36 50
      761 JUMP                             ; [+5]
      762 JUMPIFNOT                        R24 ; [+3]
      763 JUMPIFNOT                        R25 ; [+2]
      764 LOADN                            R36 42
      765 JUMP                             ; [+1]
      766 LOADN                            R36 30
      767 CALL                             R32 4 1
      768 SETTABLEKS                       R32 R31 K281 ["size"]
      770 DUPTABLE                         R32 K284 [{"paddingHorizontal", "size"}]
      771 GETIMPORT                        R33 K150 [UDim.new]
      773 LOADN                            R34 0
      774 LOADN                            R35 8
      775 CALL                             R33 2 1
      776 SETTABLEKS                       R33 R32 K157 ["paddingHorizontal"]
      778 GETIMPORT                        R33 K125 [UDim2.new]
      780 LOADN                            R34 0
      781 LOADN                            R35 100
      782 LOADN                            R36 1
      783 LOADN                            R37 0
      784 CALL                             R33 4 1
      785 SETTABLEKS                       R33 R32 K281 ["size"]
      787 SETTABLEKS                       R32 R31 K282 ["pills"]
      789 SETTABLEKS                       R31 R30 K285 ["collaboratorFilter"]
      791 DUPTABLE                         R31 K297 [{["FadeTransparency"] = 0.75, ["groupCollaboratorItem"], ["deleteButton"], ["permissionEditor"], ["collaboratorName"], ["collaboratorSubText"], ["ownerLabel"], ["iconContainerSize"] = 40, ["nonRolesetFrame"], ["rolesetFrame"]}]
      792 DUPTABLE                         R32 K303 [{["ExpandTextSize"] = 14, ["size"], ["collaboratorItemOffset"] = 16, ["expandablePaneSize"], ["headerComponent"]}]
      793 JUMPIFNOT                        R23 ; [+8]
      794 GETIMPORT                        R33 K125 [UDim2.new]
      796 LOADN                            R34 0
      797 LOADN                            R35 750
      798 LOADN                            R36 0
      799 LOADN                            R37 60
      800 CALL                             R33 4 1
      801 JUMP                             ; [+7]
      802 GETIMPORT                        R33 K125 [UDim2.new]
      804 LOADN                            R34 0
      805 LOADN                            R35 665
      806 LOADN                            R36 0
      807 LOADN                            R37 74
      808 CALL                             R33 4 1
      809 SETTABLEKS                       R33 R32 K281 ["size"]
      811 GETIMPORT                        R33 K125 [UDim2.new]
      813 LOADN                            R34 1
      814 LOADN                            R35 0
      815 LOADN                            R36 0
      816 LOADN                            R37 34
      817 CALL                             R33 4 1
      818 SETTABLEKS                       R33 R32 K301 ["expandablePaneSize"]
      820 DUPTABLE                         R33 K306 [{"size", "arrowLabel", "textLabel"}]
      821 GETIMPORT                        R34 K125 [UDim2.new]
      823 LOADN                            R35 0
      824 LOADN                            R36 608
      825 LOADN                            R37 0
      826 LOADN                            R38 34
      827 CALL                             R34 4 1
      828 SETTABLEKS                       R34 R33 K281 ["size"]
      830 DUPTABLE                         R34 K308 [{"position", "size"}]
      831 GETIMPORT                        R35 K125 [UDim2.new]
      833 LOADN                            R36 0
      834 LOADN                            R37 42
      835 LOADK                            R38 K126 [0.5]
      836 LOADN                            R39 0
      837 CALL                             R35 4 1
      838 SETTABLEKS                       R35 R34 K307 ["position"]
      840 GETIMPORT                        R35 K125 [UDim2.new]
      842 LOADN                            R36 0
      843 LOADN                            R37 17
      844 LOADN                            R38 0
      845 LOADN                            R39 17
      846 CALL                             R35 4 1
      847 SETTABLEKS                       R35 R34 K281 ["size"]
      849 SETTABLEKS                       R34 R33 K304 ["arrowLabel"]
      851 DUPTABLE                         R34 K309 [{"position"}]
      852 GETIMPORT                        R35 K125 [UDim2.new]
      854 LOADN                            R36 0
      855 LOADN                            R37 60
      856 LOADK                            R38 K126 [0.5]
      857 LOADN                            R39 0
      858 CALL                             R35 4 1
      859 SETTABLEKS                       R35 R34 K307 ["position"]
      861 SETTABLEKS                       R34 R33 K305 ["textLabel"]
      863 SETTABLEKS                       R33 R32 K302 ["headerComponent"]
      865 SETTABLEKS                       R32 R31 K288 ["groupCollaboratorItem"]
      867 DUPTABLE                         R32 K312 [{["size"] = 16, ["xOffset"] = 6, ["hovered"]}]
      868 GETTABLEKS                       R33 R18 K224 ["Dropdown"]
      870 SETTABLEKS                       R33 R32 K214 ["hovered"]
      872 SETTABLEKS                       R32 R31 K289 ["deleteButton"]
      874 DUPTABLE                         R32 K317 [{["heightOffset"] = 54, ["yOffset"] = 11}]
      875 SETTABLEKS                       R32 R31 K290 ["permissionEditor"]
      877 DUPTABLE                         R32 K322 [{"withIcon", "withoutIcon", "withSubtext", "withoutSubtext"}]
      878 DUPTABLE                         R33 K324 [{["withSubText"], ["size"], ["xOffset"] = 50}]
      879 DUPTABLE                         R34 K325 [{"size"}]
      880 GETIMPORT                        R35 K125 [UDim2.new]
      882 LOADN                            R36 1
      883 LOADN                            R37 -264
      884 LOADN                            R38 0
      885 LOADN                            R39 30
      886 CALL                             R35 4 1
      887 SETTABLEKS                       R35 R34 K281 ["size"]
      889 SETTABLEKS                       R34 R33 K323 ["withSubText"]
      891 GETIMPORT                        R34 K125 [UDim2.new]
      893 LOADN                            R35 1
      894 LOADN                            R36 -264
      895 LOADN                            R37 0
      896 LOADN                            R38 54
      897 CALL                             R34 4 1
      898 SETTABLEKS                       R34 R33 K281 ["size"]
      900 SETTABLEKS                       R33 R32 K318 ["withIcon"]
      902 NEWTABLE                         R33 2 1
      904 DUPTABLE                         R35 K325 [{"size"}]
      905 GETIMPORT                        R36 K125 [UDim2.new]
      907 LOADN                            R37 1
      908 LOADN                            R38 -264
      909 LOADN                            R39 0
      910 LOADN                            R40 30
      911 CALL                             R36 4 1
      912 SETTABLEKS                       R36 R35 K281 ["size"]
      914 SETTABLEKS                       R35 R33 K323 ["withSubText"]
      916 GETIMPORT                        R34 K125 [UDim2.new]
      918 LOADN                            R35 1
      919 LOADN                            R36 -126
      920 LOADN                            R37 0
      921 LOADN                            R38 54
      922 CALL                             R34 4 1
      923 SETLIST                          R33 R34 1 [1]
      925 LOADN                            R35 28
      926 SETTABLEKS                       R35 R33 K310 ["xOffset"]
      928 SETTABLEKS                       R33 R32 K319 ["withoutIcon"]
      930 DUPTABLE                         R33 K327 [{["yOffset"] = -10}]
      931 SETTABLEKS                       R33 R32 K320 ["withSubtext"]
      933 DUPTABLE                         R33 K328 [{["yOffset"] = 0}]
      934 SETTABLEKS                       R33 R32 K321 ["withoutSubtext"]
      936 SETTABLEKS                       R32 R31 K291 ["collaboratorName"]
      938 DUPTABLE                         R32 K329 [{["withIcon"], ["withoutIcon"], ["yOffset"] = 10}]
      939 DUPTABLE                         R33 K330 [{["size"], ["xOffset"] = 50}]
      940 GETIMPORT                        R34 K125 [UDim2.new]
      942 LOADN                            R35 1
      943 LOADN                            R36 -264
      944 LOADN                            R37 0
      945 LOADN                            R38 24
      946 CALL                             R34 4 1
      947 SETTABLEKS                       R34 R33 K281 ["size"]
      949 SETTABLEKS                       R33 R32 K318 ["withIcon"]
      951 NEWTABLE                         R33 1 1
      953 GETIMPORT                        R34 K125 [UDim2.new]
      955 LOADN                            R35 1
      956 LOADN                            R36 -126
      957 LOADN                            R37 0
      958 LOADN                            R38 24
      959 CALL                             R34 4 1
      960 SETLIST                          R33 R34 1 [1]
      962 LOADN                            R35 28
      963 SETTABLEKS                       R35 R33 K310 ["xOffset"]
      965 SETTABLEKS                       R33 R32 K319 ["withoutIcon"]
      967 SETTABLEKS                       R32 R31 K292 ["collaboratorSubText"]
      969 DUPTABLE                         R32 K333 [{"withIconSize", "withoutIconSize", "position"}]
      970 GETIMPORT                        R33 K125 [UDim2.new]
      972 LOADN                            R34 1
      973 LOADN                            R35 -264
      974 LOADN                            R36 0
      975 LOADN                            R37 54
      976 CALL                             R33 4 1
      977 SETTABLEKS                       R33 R32 K331 ["withIconSize"]
      979 GETIMPORT                        R33 K125 [UDim2.new]
      981 LOADN                            R34 1
      982 LOADN                            R35 -126
      983 LOADN                            R36 0
      984 LOADN                            R37 54
      985 CALL                             R33 4 1
      986 SETTABLEKS                       R33 R32 K332 ["withoutIconSize"]
      988 GETIMPORT                        R33 K125 [UDim2.new]
      990 LOADN                            R34 1
      991 LOADN                            R35 -7
      992 LOADK                            R36 K126 [0.5]
      993 LOADN                            R37 0
      994 CALL                             R33 4 1
      995 SETTABLEKS                       R33 R32 K307 ["position"]
      997 SETTABLEKS                       R32 R31 K293 ["ownerLabel"]
      999 DUPTABLE                         R32 K337 [{["width"], ["height"] = 74, ["position"] = , ["anchorPoint"] = }]
     1000 JUMPIFNOT                        R23 ; [+2]
     1001 LOADN                            R33 750
     1002 JUMP                             ; [+1]
     1003 LOADN                            R33 665
     1004 SETTABLEKS                       R33 R32 K247 ["width"]
     1006 SETTABLEKS                       R32 R31 K295 ["nonRolesetFrame"]
     1008 DUPTABLE                         R32 K339 [{["width"], ["height"] = 54, ["position"], ["anchorPont"]}]
     1009 JUMPIFNOT                        R23 ; [+2]
     1010 LOADN                            R33 750
     1011 JUMP                             ; [+1]
     1012 LOADN                            R33 608
     1013 SETTABLEKS                       R33 R32 K247 ["width"]
     1015 GETIMPORT                        R33 K125 [UDim2.new]
     1017 LOADK                            R34 K340 [1.5]
     1018 LOADN                            R35 200
     1019 LOADN                            R36 0
     1020 LOADN                            R37 20
     1021 CALL                             R33 4 1
     1022 SETTABLEKS                       R33 R32 K307 ["position"]
     1024 GETIMPORT                        R33 K94 [Vector2.new]
     1026 LOADN                            R34 1
     1027 LOADN                            R35 0
     1028 CALL                             R33 2 1
     1029 SETTABLEKS                       R33 R32 K338 ["anchorPont"]
     1031 SETTABLEKS                       R32 R31 K296 ["rolesetFrame"]
     1033 SETTABLEKS                       R31 R30 K341 ["collaboratorItem"]
     1035 GETTABLEKS                       R31 R18 K342 ["CloseWidget"]
     1037 SETTABLEKS                       R31 R30 K343 ["deleteIcon"]
     1039 DUPTABLE                         R31 K346 [{"right", "down"}]
     1040 GETTABLEKS                       R32 R18 K347 ["RightArrow"]
     1042 SETTABLEKS                       R32 R31 K344 ["right"]
     1044 GETTABLEKS                       R32 R18 K348 ["DownArrow"]
     1046 SETTABLEKS                       R32 R31 K345 ["down"]
     1048 SETTABLEKS                       R31 R30 K349 ["arrows"]
     1050 DUPCLOSURE                       R31 K350 [PROTO_0]
     1051 CAPTURE                          VAL R21
     1052 CAPTURE                          VAL R16
     1053 CAPTURE                          VAL R18
     1054 CAPTURE                          VAL R19
     1055 CAPTURE                          VAL R17
     1056 CAPTURE                          VAL R15
     1057 CAPTURE                          VAL R30
     1058 RETURN                           R31 1
