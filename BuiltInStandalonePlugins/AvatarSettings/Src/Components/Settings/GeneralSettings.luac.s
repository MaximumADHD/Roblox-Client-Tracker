PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+9]
        6 GETUPVAL                         R1 2
        7 LOADK                            R3 K0 ["PresetSelected"]
        8 DUPTABLE                         R4 K2 [{"presetType"}]
        9 SETTABLEKS                       R0 R4 K1 ["presetType"]
       11 NAMECALL                         R1 R1 K3 ["logCounter"]
       13 CALL                             R1 3 0
       14 JUMPIFNOTEQKS                    R0 K4 ["PlayerChoice"] ; [+11]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K5 ["settings"]
       19 GETTABLEKS                       R2 R3 K6 ["navigationBarSettings"]
       21 GETTABLEKS                       R1 R2 K7 ["setAvatarPreset"]
       23 LOADK                            R2 K4 ["PlayerChoice"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKS                    R0 K8 ["ConsistentGameplay"] ; [+11]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R3 R4 K5 ["settings"]
       31 GETTABLEKS                       R2 R3 K6 ["navigationBarSettings"]
       33 GETTABLEKS                       R1 R2 K7 ["setAvatarPreset"]
       35 LOADK                            R2 K8 ["ConsistentGameplay"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R3 R4 K5 ["settings"]
       41 GETTABLEKS                       R2 R3 K6 ["navigationBarSettings"]
       43 GETTABLEKS                       R1 R2 K7 ["setAvatarPreset"]
       45 LOADNIL                          R2
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R6 6
       33 GETTABLEKS                       R5 R6 K6 ["computeCurrentPresetType"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 0 2
       39 DUPTABLE                         R7 K9 [{"Id", "Label"}]
       40 LOADK                            R8 K10 ["PlayerChoice"]
       41 SETTABLEKS                       R8 R7 K7 ["Id"]
       43 LOADK                            R10 K11 ["AvatarTypeSelector"]
       44 LOADK                            R11 K12 ["PlayerChoiceTitle"]
       45 NAMECALL                         R8 R1 K13 ["getText"]
       47 CALL                             R8 3 1
       48 SETTABLEKS                       R8 R7 K8 ["Label"]
       50 DUPTABLE                         R8 K9 [{"Id", "Label"}]
       51 LOADK                            R9 K14 ["ConsistentGameplay"]
       52 SETTABLEKS                       R9 R8 K7 ["Id"]
       54 LOADK                            R11 K11 ["AvatarTypeSelector"]
       55 LOADK                            R12 K15 ["ConsistentGameplayTitle"]
       56 NAMECALL                         R9 R1 K13 ["getText"]
       58 CALL                             R9 3 1
       59 SETTABLEKS                       R9 R8 K8 ["Label"]
       61 SETLIST                          R6 R7 2 [1]
       63 GETUPVAL                         R7 7
       64 GETUPVAL                         R8 8
       65 NEWTABLE                         R9 1 0
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R10 R11 K16 ["Tag"]
       70 LOADK                            R11 K17 ["AvatarSettings-SettingsPage X-Column"]
       71 SETTABLE                         R11 R9 R10
       72 DUPTABLE                         R10 K19 [{"PresetSection"}]
       73 GETUPVAL                         R11 7
       74 GETUPVAL                         R12 9
       75 DUPTABLE                         R13 K23 [{"alwaysExpanded", "text", "layoutOrder"}]
       76 LOADB                            R14 1
       77 SETTABLEKS                       R14 R13 K20 ["alwaysExpanded"]
       79 LOADK                            R16 K24 ["GeneralSettings"]
       80 LOADK                            R17 K18 ["PresetSection"]
       81 NAMECALL                         R14 R1 K13 ["getText"]
       83 CALL                             R14 3 1
       84 SETTABLEKS                       R14 R13 K21 ["text"]
       86 MOVE                             R14 R3
       87 CALL                             R14 0 1
       88 SETTABLEKS                       R14 R13 K22 ["layoutOrder"]
       90 DUPTABLE                         R14 K27 [{"GenericModeSelector", "TextContent"}]
       91 GETUPVAL                         R15 7
       92 GETUPVAL                         R16 10
       93 DUPTABLE                         R17 K31 [{"layoutOrder", "items", "selected", "onItemActivated"}]
       94 MOVE                             R18 R3
       95 CALL                             R18 0 1
       96 SETTABLEKS                       R18 R17 K22 ["layoutOrder"]
       98 SETTABLEKS                       R6 R17 K28 ["items"]
      100 SETTABLEKS                       R5 R17 K29 ["selected"]
      102 NEWCLOSURE                       R18 P0
      103 CAPTURE                          UPVAL U1
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R18 R17 K30 ["onItemActivated"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K25 ["GenericModeSelector"]
      112 GETUPVAL                         R15 7
      113 GETUPVAL                         R16 8
      114 NEWTABLE                         R17 4 0
      116 GETUPVAL                         R19 4
      117 GETTABLEKS                       R18 R19 K16 ["Tag"]
      119 LOADK                            R19 K32 ["X-Column X-Left ColumnSpacing-Standard"]
      120 SETTABLE                         R19 R17 R18
      121 MOVE                             R18 R3
      122 CALL                             R18 0 1
      123 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      125 GETIMPORT                        R18 K36 [UDim2.new]
      127 LOADN                            R19 1
      128 GETUPVAL                         R22 11
      129 GETTABLEKS                       R21 R22 K37 ["MODESELECTOR_SIDE_MARGIN"]
      131 MINUS                            R20 R21
      132 LOADN                            R21 0
      133 LOADN                            R22 0
      134 CALL                             R18 4 1
      135 SETTABLEKS                       R18 R17 K38 ["Size"]
      137 GETIMPORT                        R18 K42 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R18 R17 K40 ["AutomaticSize"]
      141 DUPTABLE                         R18 K50 [{"Alert", "PresetImage", "DescriptionText", "Divider1", "GameplayDescriptionText", "Divider2", "LowerTextSection"}]
      142 JUMPIFNOTEQKNIL                  R5 ; [+27]
      144 GETUPVAL                         R19 7
      145 GETUPVAL                         R20 12
      146 DUPTABLE                         R21 K54 [{"LayoutOrder", "Style", "Title", "Description"}]
      147 MOVE                             R22 R3
      148 CALL                             R22 0 1
      149 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      151 LOADK                            R22 K55 ["Info"]
      152 SETTABLEKS                       R22 R21 K51 ["Style"]
      154 LOADK                            R24 K24 ["GeneralSettings"]
      155 LOADK                            R25 K56 ["CustomizedSettingsAlertTitle"]
      156 NAMECALL                         R22 R1 K13 ["getText"]
      158 CALL                             R22 3 1
      159 SETTABLEKS                       R22 R21 K52 ["Title"]
      161 LOADK                            R24 K24 ["GeneralSettings"]
      162 LOADK                            R25 K57 ["CustomSettingsAlertDescription"]
      163 NAMECALL                         R22 R1 K13 ["getText"]
      165 CALL                             R22 3 1
      166 SETTABLEKS                       R22 R21 K53 ["Description"]
      168 CALL                             R19 2 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R19
      171 SETTABLEKS                       R19 R18 K43 ["Alert"]
      173 JUMPIFEQKNIL                     R5 ; [+26]
      175 GETUPVAL                         R19 7
      176 LOADK                            R20 K58 ["ImageLabel"]
      177 NEWTABLE                         R21 4 0
      179 GETUPVAL                         R23 4
      180 GETTABLEKS                       R22 R23 K16 ["Tag"]
      182 GETUPVAL                         R23 13
      183 LOADK                            R24 K44 ["PresetImage"]
      184 JUMPIFNOTEQKS                    R5 K10 ["PlayerChoice"] ; [+3]
      186 LOADK                            R25 K10 ["PlayerChoice"]
      187 JUMP                             ; [+1]
      188 LOADK                            R25 K59 ["Consistent"]
      189 CALL                             R23 2 1
      190 SETTABLE                         R23 R21 R22
      191 MOVE                             R22 R3
      192 CALL                             R22 0 1
      193 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      195 GETUPVAL                         R22 14
      196 SETTABLEKS                       R22 R21 K38 ["Size"]
      198 CALL                             R19 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R19
      201 SETTABLEKS                       R19 R18 K44 ["PresetImage"]
      203 JUMPIFEQKNIL                     R5 ; [+43]
      205 GETUPVAL                         R19 7
      206 LOADK                            R20 K60 ["TextLabel"]
      207 NEWTABLE                         R21 8 0
      209 GETUPVAL                         R23 4
      210 GETTABLEKS                       R22 R23 K16 ["Tag"]
      212 LOADK                            R23 K61 ["Component-TextLabel SubText"]
      213 SETTABLE                         R23 R21 R22
      214 GETIMPORT                        R22 K63 [UDim2.fromScale]
      216 LOADN                            R23 1
      217 LOADN                            R24 0
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K38 ["Size"]
      221 GETIMPORT                        R22 K65 [Enum.AutomaticSize.XY]
      223 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      225 LOADK                            R24 K24 ["GeneralSettings"]
      226 MOVE                             R26 R5
      227 LOADK                            R27 K53 ["Description"]
      228 CONCAT                           R25 R26 R27
      229 NAMECALL                         R22 R1 K13 ["getText"]
      231 CALL                             R22 3 1
      232 SETTABLEKS                       R22 R21 K66 ["Text"]
      234 GETIMPORT                        R22 K69 [Enum.TextXAlignment.Left]
      236 SETTABLEKS                       R22 R21 K67 ["TextXAlignment"]
      238 LOADB                            R22 1
      239 SETTABLEKS                       R22 R21 K70 ["TextWrapped"]
      241 MOVE                             R22 R3
      242 CALL                             R22 0 1
      243 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      245 CALL                             R19 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R19
      248 SETTABLEKS                       R19 R18 K45 ["DescriptionText"]
      250 JUMPIFEQKNIL                     R5 ; [+21]
      252 GETUPVAL                         R19 7
      253 GETUPVAL                         R20 8
      254 NEWTABLE                         R21 2 0
      256 GETUPVAL                         R23 4
      257 GETTABLEKS                       R22 R23 K16 ["Tag"]
      259 GETUPVAL                         R24 15
      260 CALL                             R24 0 1
      261 JUMPIFNOT                        R24 ; [+2]
      262 LOADK                            R23 K71 ["Separator"]
      263 JUMP                             ; [+1]
      264 LOADK                            R23 K72 ["PresetHoverTooltipDivider"]
      265 SETTABLE                         R23 R21 R22
      266 MOVE                             R22 R3
      267 CALL                             R22 0 1
      268 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      270 CALL                             R19 2 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R19
      273 SETTABLEKS                       R19 R18 K46 ["Divider1"]
      275 JUMPIFEQKNIL                     R5 ; [+156]
      277 GETUPVAL                         R19 7
      278 GETUPVAL                         R20 8
      279 NEWTABLE                         R21 4 0
      281 GETUPVAL                         R23 4
      282 GETTABLEKS                       R22 R23 K16 ["Tag"]
      284 LOADK                            R23 K73 ["X-Row X-Middle"]
      285 SETTABLE                         R23 R21 R22
      286 GETIMPORT                        R22 K36 [UDim2.new]
      288 LOADN                            R23 1
      289 LOADN                            R24 0
      290 LOADN                            R25 0
      291 GETUPVAL                         R27 11
      292 GETTABLEKS                       R26 R27 K74 ["STANDARD_IMAGE_SIZE"]
      294 CALL                             R22 4 1
      295 SETTABLEKS                       R22 R21 K38 ["Size"]
      297 GETIMPORT                        R22 K65 [Enum.AutomaticSize.XY]
      299 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      301 MOVE                             R22 R3
      302 CALL                             R22 0 1
      303 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      305 DUPTABLE                         R22 K76 [{"ImageContainer", "Text"}]
      306 GETUPVAL                         R23 7
      307 GETUPVAL                         R24 8
      308 DUPTABLE                         R25 K77 [{"Size", "LayoutOrder"}]
      309 GETIMPORT                        R26 K79 [UDim2.fromOffset]
      311 GETUPVAL                         R28 11
      312 GETTABLEKS                       R27 R28 K74 ["STANDARD_IMAGE_SIZE"]
      314 GETUPVAL                         R29 11
      315 GETTABLEKS                       R28 R29 K74 ["STANDARD_IMAGE_SIZE"]
      317 CALL                             R26 2 1
      318 SETTABLEKS                       R26 R25 K38 ["Size"]
      320 MOVE                             R26 R3
      321 CALL                             R26 0 1
      322 SETTABLEKS                       R26 R25 K33 ["LayoutOrder"]
      324 DUPTABLE                         R26 K81 [{"Image"}]
      325 GETUPVAL                         R27 7
      326 LOADK                            R28 K58 ["ImageLabel"]
      327 NEWTABLE                         R29 8 0
      329 GETUPVAL                         R31 4
      330 GETTABLEKS                       R30 R31 K16 ["Tag"]
      332 LOADK                            R31 K82 ["GeneralSettingsGameplayDescriptionImage"]
      333 SETTABLE                         R31 R29 R30
      334 GETIMPORT                        R30 K63 [UDim2.fromScale]
      336 LOADK                            R31 K83 [0.5]
      337 LOADK                            R32 K83 [0.5]
      338 CALL                             R30 2 1
      339 SETTABLEKS                       R30 R29 K84 ["Position"]
      341 GETIMPORT                        R30 K86 [Vector2.new]
      343 LOADK                            R31 K83 [0.5]
      344 LOADK                            R32 K83 [0.5]
      345 CALL                             R30 2 1
      346 SETTABLEKS                       R30 R29 K87 ["AnchorPoint"]
      348 GETUPVAL                         R30 16
      349 SETTABLEKS                       R30 R29 K38 ["Size"]
      351 GETIMPORT                        R30 K90 [Enum.SizeConstraint.RelativeYY]
      353 SETTABLEKS                       R30 R29 K88 ["SizeConstraint"]
      355 LOADN                            R30 1
      356 SETTABLEKS                       R30 R29 K91 ["BackgroundTransparency"]
      358 MOVE                             R30 R3
      359 CALL                             R30 0 1
      360 SETTABLEKS                       R30 R29 K33 ["LayoutOrder"]
      362 CALL                             R27 2 1
      363 SETTABLEKS                       R27 R26 K80 ["Image"]
      365 CALL                             R23 3 1
      366 SETTABLEKS                       R23 R22 K75 ["ImageContainer"]
      368 GETUPVAL                         R23 7
      369 LOADK                            R24 K60 ["TextLabel"]
      370 NEWTABLE                         R25 8 0
      372 GETUPVAL                         R27 4
      373 GETTABLEKS                       R26 R27 K16 ["Tag"]
      375 LOADK                            R27 K61 ["Component-TextLabel SubText"]
      376 SETTABLE                         R27 R25 R26
      377 GETIMPORT                        R26 K36 [UDim2.new]
      379 LOADN                            R27 1
      380 GETUPVAL                         R30 11
      381 GETTABLEKS                       R29 R30 K74 ["STANDARD_IMAGE_SIZE"]
      383 MINUS                            R28 R29
      384 LOADN                            R29 0
      385 LOADN                            R30 0
      386 CALL                             R26 4 1
      387 SETTABLEKS                       R26 R25 K38 ["Size"]
      389 GETIMPORT                        R26 K65 [Enum.AutomaticSize.XY]
      391 SETTABLEKS                       R26 R25 K40 ["AutomaticSize"]
      393 LOADK                            R28 K24 ["GeneralSettings"]
      394 MOVE                             R30 R5
      395 LOADK                            R31 K92 ["GameplayDescription"]
      396 CONCAT                           R29 R30 R31
      397 NAMECALL                         R26 R1 K13 ["getText"]
      399 CALL                             R26 3 1
      400 SETTABLEKS                       R26 R25 K66 ["Text"]
      402 GETIMPORT                        R26 K69 [Enum.TextXAlignment.Left]
      404 SETTABLEKS                       R26 R25 K67 ["TextXAlignment"]
      406 LOADB                            R26 1
      407 SETTABLEKS                       R26 R25 K70 ["TextWrapped"]
      409 MOVE                             R26 R3
      410 CALL                             R26 0 1
      411 SETTABLEKS                       R26 R25 K33 ["LayoutOrder"]
      413 DUPTABLE                         R26 K94 [{"UIPadding"}]
      414 GETUPVAL                         R27 7
      415 LOADK                            R28 K93 ["UIPadding"]
      416 DUPTABLE                         R29 K96 [{"PaddingLeft"}]
      417 GETIMPORT                        R30 K98 [UDim.new]
      419 LOADN                            R31 0
      420 LOADN                            R32 4
      421 CALL                             R30 2 1
      422 SETTABLEKS                       R30 R29 K95 ["PaddingLeft"]
      424 CALL                             R27 2 1
      425 SETTABLEKS                       R27 R26 K93 ["UIPadding"]
      427 CALL                             R23 3 1
      428 SETTABLEKS                       R23 R22 K66 ["Text"]
      430 CALL                             R19 3 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R19
      433 SETTABLEKS                       R19 R18 K47 ["GameplayDescriptionText"]
      435 JUMPIFEQKNIL                     R5 ; [+21]
      437 GETUPVAL                         R19 7
      438 GETUPVAL                         R20 8
      439 NEWTABLE                         R21 2 0
      441 GETUPVAL                         R23 4
      442 GETTABLEKS                       R22 R23 K16 ["Tag"]
      444 GETUPVAL                         R24 15
      445 CALL                             R24 0 1
      446 JUMPIFNOT                        R24 ; [+2]
      447 LOADK                            R23 K71 ["Separator"]
      448 JUMP                             ; [+1]
      449 LOADK                            R23 K72 ["PresetHoverTooltipDivider"]
      450 SETTABLE                         R23 R21 R22
      451 MOVE                             R22 R3
      452 CALL                             R22 0 1
      453 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      455 CALL                             R19 2 1
      456 JUMP                             ; [+1]
      457 LOADNIL                          R19
      458 SETTABLEKS                       R19 R18 K48 ["Divider2"]
      460 JUMPIFEQKNIL                     R5 ; [+18]
      462 GETUPVAL                         R19 7
      463 GETUPVAL                         R20 17
      464 DUPTABLE                         R21 K102 [{"size", "layoutOrder", "currentPreset", "removePadding"}]
      465 GETUPVAL                         R22 18
      466 SETTABLEKS                       R22 R21 K99 ["size"]
      468 MOVE                             R22 R3
      469 CALL                             R22 0 1
      470 SETTABLEKS                       R22 R21 K22 ["layoutOrder"]
      472 SETTABLEKS                       R5 R21 K100 ["currentPreset"]
      474 LOADB                            R22 1
      475 SETTABLEKS                       R22 R21 K101 ["removePadding"]
      477 CALL                             R19 2 1
      478 JUMP                             ; [+1]
      479 LOADNIL                          R19
      480 SETTABLEKS                       R19 R18 K49 ["LowerTextSection"]
      482 CALL                             R15 3 1
      483 SETTABLEKS                       R15 R14 K26 ["TextContent"]
      485 CALL                             R11 3 1
      486 SETTABLEKS                       R11 R10 K18 ["PresetSection"]
      488 CALL                             R7 3 -1
      489 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Components"]
       22 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K7 ["Util"]
       42 GETTABLEKS                       R5 R6 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K9 ["Components"]
       51 GETTABLEKS                       R6 R7 K14 ["ExpandableSection"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K15 ["Packages"]
       58 GETTABLEKS                       R7 R8 K16 ["Framework"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R10 K9 ["Components"]
       67 GETTABLEKS                       R8 R9 K17 ["GenericModeSelector"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R11 K9 ["Components"]
       76 GETTABLEKS                       R9 R10 K18 ["PresetTooltipDescriptionSection"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R11 R0 K15 ["Packages"]
       83 GETTABLEKS                       R10 R11 K19 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R12 R0 K15 ["Packages"]
       90 GETTABLEKS                       R11 R12 K20 ["ReactUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R13 R14 K21 ["Flags"]
       99 GETTABLEKS                       R12 R13 K22 ["getFFlagAddTelemetry"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Src"]
      106 GETTABLEKS                       R14 R15 K21 ["Flags"]
      108 GETTABLEKS                       R13 R14 K23 ["getFFlagAvatarSettingsChangeSeparatorColor"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R6 K24 ["ContextServices"]
      113 GETTABLEKS                       R14 R13 K25 ["Localization"]
      115 GETTABLEKS                       R16 R6 K26 ["Styling"]
      117 GETTABLEKS                       R15 R16 K27 ["joinTags"]
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R20 R0 K6 ["Src"]
      123 GETTABLEKS                       R19 R20 K7 ["Util"]
      125 GETTABLEKS                       R18 R19 K28 ["Telemetry"]
      127 GETTABLEKS                       R17 R18 K29 ["TelemetryContext"]
      129 CALL                             R16 1 1
      130 GETTABLEKS                       R17 R6 K30 ["UI"]
      132 GETTABLEKS                       R18 R17 K31 ["Alert"]
      134 GETTABLEKS                       R19 R17 K32 ["Pane"]
      136 GETTABLEKS                       R20 R10 K33 ["createNextOrder"]
      138 GETTABLEKS                       R21 R9 K34 ["createElement"]
      140 GETIMPORT                        R22 K37 [UDim2.fromOffset]
      142 LOADN                            R23 14
      143 LOADN                            R24 29
      144 CALL                             R22 2 1
      145 GETIMPORT                        R23 K39 [UDim2.new]
      147 LOADN                            R24 1
      148 LOADN                            R25 0
      149 LOADN                            R26 0
      150 LOADN                            R27 80
      151 CALL                             R23 4 1
      152 GETIMPORT                        R24 K37 [UDim2.fromOffset]
      154 LOADN                            R25 14
      155 LOADN                            R26 14
      156 CALL                             R24 2 1
      157 DUPCLOSURE                       R25 K40 [PROTO_1]
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R23
      177 RETURN                           R25 1
