PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["PresetSelected"]
        5 DUPTABLE                         R4 K2 [{"presetType"}]
        6 SETTABLEKS                       R0 R4 K1 ["presetType"]
        8 NAMECALL                         R1 R1 K3 ["logCounter"]
       10 CALL                             R1 3 0
       11 JUMPIFNOTEQKS                    R0 K4 ["PlayerChoice"] ; [+11]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["settings"]
       16 GETTABLEKS                       R1 R1 K6 ["navigationBarSettings"]
       18 GETTABLEKS                       R1 R1 K7 ["setAvatarPreset"]
       20 LOADK                            R2 K4 ["PlayerChoice"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 JUMPIFNOTEQKS                    R0 K8 ["ConsistentGameplay"] ; [+11]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K5 ["settings"]
       28 GETTABLEKS                       R1 R1 K6 ["navigationBarSettings"]
       30 GETTABLEKS                       R1 R1 K7 ["setAvatarPreset"]
       32 LOADK                            R2 K8 ["ConsistentGameplay"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K5 ["settings"]
       38 GETTABLEKS                       R1 R1 K6 ["navigationBarSettings"]
       40 GETTABLEKS                       R1 R1 K7 ["setAvatarPreset"]
       42 LOADNIL                          R2
       43 CALL                             R1 1 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R5 R5 K6 ["computeCurrentPresetType"]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 0 2
       34 DUPTABLE                         R7 K10 [{["Id"] = "PlayerChoice", ["Label"]}]
       35 LOADK                            R10 K11 ["AvatarTypeSelector"]
       36 LOADK                            R11 K12 ["PlayerChoiceTitle"]
       37 NAMECALL                         R8 R1 K13 ["getText"]
       39 CALL                             R8 3 1
       40 SETTABLEKS                       R8 R7 K9 ["Label"]
       42 DUPTABLE                         R8 K15 [{["Id"] = "ConsistentGameplay", ["Label"]}]
       43 LOADK                            R11 K11 ["AvatarTypeSelector"]
       44 LOADK                            R12 K16 ["ConsistentGameplayTitle"]
       45 NAMECALL                         R9 R1 K13 ["getText"]
       47 CALL                             R9 3 1
       48 SETTABLEKS                       R9 R8 K9 ["Label"]
       50 SETLIST                          R6 R7 2 [1]
       52 GETUPVAL                         R7 6
       53 GETUPVAL                         R8 7
       54 NEWTABLE                         R9 1 0
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K17 ["Tag"]
       59 LOADK                            R11 K18 ["AvatarSettings-SettingsPage X-Column"]
       60 SETTABLE                         R11 R9 R10
       61 DUPTABLE                         R10 K20 [{"PresetSection"}]
       62 GETUPVAL                         R11 6
       63 GETUPVAL                         R12 8
       64 DUPTABLE                         R13 K25 [{["alwaysExpanded"] = True, ["text"], ["layoutOrder"]}]
       65 LOADK                            R16 K26 ["GeneralSettings"]
       66 LOADK                            R17 K19 ["PresetSection"]
       67 NAMECALL                         R14 R1 K13 ["getText"]
       69 CALL                             R14 3 1
       70 SETTABLEKS                       R14 R13 K23 ["text"]
       72 MOVE                             R14 R3
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K24 ["layoutOrder"]
       76 DUPTABLE                         R14 K29 [{"GenericModeSelector", "TextContent"}]
       77 GETUPVAL                         R15 6
       78 GETUPVAL                         R16 9
       79 DUPTABLE                         R17 K33 [{"layoutOrder", "items", "selected", "onItemActivated"}]
       80 MOVE                             R18 R3
       81 CALL                             R18 0 1
       82 SETTABLEKS                       R18 R17 K24 ["layoutOrder"]
       84 SETTABLEKS                       R6 R17 K30 ["items"]
       86 SETTABLEKS                       R5 R17 K31 ["selected"]
       88 NEWCLOSURE                       R18 P0
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R18 R17 K32 ["onItemActivated"]
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K27 ["GenericModeSelector"]
       97 GETUPVAL                         R15 6
       98 GETUPVAL                         R16 7
       99 NEWTABLE                         R17 4 0
      101 GETUPVAL                         R18 3
      102 GETTABLEKS                       R18 R18 K17 ["Tag"]
      104 LOADK                            R19 K34 ["X-Column X-Left ColumnSpacing-Standard"]
      105 SETTABLE                         R19 R17 R18
      106 MOVE                             R18 R3
      107 CALL                             R18 0 1
      108 SETTABLEKS                       R18 R17 K35 ["LayoutOrder"]
      110 GETIMPORT                        R18 K38 [UDim2.new]
      112 LOADN                            R19 1
      113 GETUPVAL                         R21 10
      114 GETTABLEKS                       R21 R21 K39 ["MODESELECTOR_SIDE_MARGIN"]
      116 MINUS                            R20 R21
      117 LOADN                            R21 0
      118 LOADN                            R22 0
      119 CALL                             R18 4 1
      120 SETTABLEKS                       R18 R17 K40 ["Size"]
      122 GETIMPORT                        R18 K44 [Enum.AutomaticSize.Y]
      124 SETTABLEKS                       R18 R17 K42 ["AutomaticSize"]
      126 DUPTABLE                         R18 K52 [{"Alert", "PresetImage", "DescriptionText", "Divider1", "GameplayDescriptionText", "Divider2", "LowerTextSection"}]
      127 JUMPIFNOTEQKNIL                  R5 ; [+24]
      129 GETUPVAL                         R19 6
      130 GETUPVAL                         R20 11
      131 DUPTABLE                         R21 K57 [{["LayoutOrder"], ["Style"] = "Info", ["Title"], ["Description"]}]
      132 MOVE                             R22 R3
      133 CALL                             R22 0 1
      134 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      136 LOADK                            R24 K26 ["GeneralSettings"]
      137 LOADK                            R25 K58 ["CustomizedSettingsAlertTitle"]
      138 NAMECALL                         R22 R1 K13 ["getText"]
      140 CALL                             R22 3 1
      141 SETTABLEKS                       R22 R21 K55 ["Title"]
      143 LOADK                            R24 K26 ["GeneralSettings"]
      144 LOADK                            R25 K59 ["CustomSettingsAlertDescription"]
      145 NAMECALL                         R22 R1 K13 ["getText"]
      147 CALL                             R22 3 1
      148 SETTABLEKS                       R22 R21 K56 ["Description"]
      150 CALL                             R19 2 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R19
      153 SETTABLEKS                       R19 R18 K45 ["Alert"]
      155 JUMPIFEQKNIL                     R5 ; [+26]
      157 GETUPVAL                         R19 6
      158 LOADK                            R20 K60 ["ImageLabel"]
      159 NEWTABLE                         R21 4 0
      161 GETUPVAL                         R22 3
      162 GETTABLEKS                       R22 R22 K17 ["Tag"]
      164 GETUPVAL                         R23 12
      165 LOADK                            R24 K46 ["PresetImage"]
      166 JUMPIFNOTEQKS                    R5 K8 ["PlayerChoice"] ; [+3]
      168 LOADK                            R25 K8 ["PlayerChoice"]
      169 JUMP                             ; [+1]
      170 LOADK                            R25 K61 ["Consistent"]
      171 CALL                             R23 2 1
      172 SETTABLE                         R23 R21 R22
      173 MOVE                             R22 R3
      174 CALL                             R22 0 1
      175 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      177 GETUPVAL                         R22 13
      178 SETTABLEKS                       R22 R21 K40 ["Size"]
      180 CALL                             R19 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R19
      183 SETTABLEKS                       R19 R18 K46 ["PresetImage"]
      185 JUMPIFEQKNIL                     R5 ; [+43]
      187 GETUPVAL                         R19 6
      188 LOADK                            R20 K62 ["TextLabel"]
      189 NEWTABLE                         R21 8 0
      191 GETUPVAL                         R22 3
      192 GETTABLEKS                       R22 R22 K17 ["Tag"]
      194 LOADK                            R23 K63 ["Component-TextLabel SubText"]
      195 SETTABLE                         R23 R21 R22
      196 GETIMPORT                        R22 K65 [UDim2.fromScale]
      198 LOADN                            R23 1
      199 LOADN                            R24 0
      200 CALL                             R22 2 1
      201 SETTABLEKS                       R22 R21 K40 ["Size"]
      203 GETIMPORT                        R22 K67 [Enum.AutomaticSize.XY]
      205 SETTABLEKS                       R22 R21 K42 ["AutomaticSize"]
      207 LOADK                            R24 K26 ["GeneralSettings"]
      208 MOVE                             R26 R5
      209 LOADK                            R27 K56 ["Description"]
      210 CONCAT                           R25 R26 R27
      211 NAMECALL                         R22 R1 K13 ["getText"]
      213 CALL                             R22 3 1
      214 SETTABLEKS                       R22 R21 K68 ["Text"]
      216 GETIMPORT                        R22 K71 [Enum.TextXAlignment.Left]
      218 SETTABLEKS                       R22 R21 K69 ["TextXAlignment"]
      220 LOADB                            R22 1
      221 SETTABLEKS                       R22 R21 K72 ["TextWrapped"]
      223 MOVE                             R22 R3
      224 CALL                             R22 0 1
      225 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      227 CALL                             R19 2 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R19
      230 SETTABLEKS                       R19 R18 K47 ["DescriptionText"]
      232 JUMPIFEQKNIL                     R5 ; [+21]
      234 GETUPVAL                         R19 6
      235 GETUPVAL                         R20 7
      236 NEWTABLE                         R21 2 0
      238 GETUPVAL                         R22 3
      239 GETTABLEKS                       R22 R22 K17 ["Tag"]
      241 GETUPVAL                         R24 14
      242 CALL                             R24 0 1
      243 JUMPIFNOT                        R24 ; [+2]
      244 LOADK                            R23 K73 ["Separator"]
      245 JUMP                             ; [+1]
      246 LOADK                            R23 K74 ["PresetHoverTooltipDivider"]
      247 SETTABLE                         R23 R21 R22
      248 MOVE                             R22 R3
      249 CALL                             R22 0 1
      250 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      252 CALL                             R19 2 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R19
      255 SETTABLEKS                       R19 R18 K48 ["Divider1"]
      257 JUMPIFEQKNIL                     R5 ; [+156]
      259 GETUPVAL                         R19 6
      260 GETUPVAL                         R20 7
      261 NEWTABLE                         R21 4 0
      263 GETUPVAL                         R22 3
      264 GETTABLEKS                       R22 R22 K17 ["Tag"]
      266 LOADK                            R23 K75 ["X-Row X-Middle"]
      267 SETTABLE                         R23 R21 R22
      268 GETIMPORT                        R22 K38 [UDim2.new]
      270 LOADN                            R23 1
      271 LOADN                            R24 0
      272 LOADN                            R25 0
      273 GETUPVAL                         R26 10
      274 GETTABLEKS                       R26 R26 K76 ["STANDARD_IMAGE_SIZE"]
      276 CALL                             R22 4 1
      277 SETTABLEKS                       R22 R21 K40 ["Size"]
      279 GETIMPORT                        R22 K67 [Enum.AutomaticSize.XY]
      281 SETTABLEKS                       R22 R21 K42 ["AutomaticSize"]
      283 MOVE                             R22 R3
      284 CALL                             R22 0 1
      285 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      287 DUPTABLE                         R22 K78 [{"ImageContainer", "Text"}]
      288 GETUPVAL                         R23 6
      289 GETUPVAL                         R24 7
      290 DUPTABLE                         R25 K79 [{"Size", "LayoutOrder"}]
      291 GETIMPORT                        R26 K81 [UDim2.fromOffset]
      293 GETUPVAL                         R27 10
      294 GETTABLEKS                       R27 R27 K76 ["STANDARD_IMAGE_SIZE"]
      296 GETUPVAL                         R28 10
      297 GETTABLEKS                       R28 R28 K76 ["STANDARD_IMAGE_SIZE"]
      299 CALL                             R26 2 1
      300 SETTABLEKS                       R26 R25 K40 ["Size"]
      302 MOVE                             R26 R3
      303 CALL                             R26 0 1
      304 SETTABLEKS                       R26 R25 K35 ["LayoutOrder"]
      306 DUPTABLE                         R26 K83 [{"Image"}]
      307 GETUPVAL                         R27 6
      308 LOADK                            R28 K60 ["ImageLabel"]
      309 NEWTABLE                         R29 8 0
      311 GETUPVAL                         R30 3
      312 GETTABLEKS                       R30 R30 K17 ["Tag"]
      314 LOADK                            R31 K84 ["GeneralSettingsGameplayDescriptionImage"]
      315 SETTABLE                         R31 R29 R30
      316 GETIMPORT                        R30 K65 [UDim2.fromScale]
      318 LOADK                            R31 K85 [0.5]
      319 LOADK                            R32 K85 [0.5]
      320 CALL                             R30 2 1
      321 SETTABLEKS                       R30 R29 K86 ["Position"]
      323 GETIMPORT                        R30 K88 [Vector2.new]
      325 LOADK                            R31 K85 [0.5]
      326 LOADK                            R32 K85 [0.5]
      327 CALL                             R30 2 1
      328 SETTABLEKS                       R30 R29 K89 ["AnchorPoint"]
      330 GETUPVAL                         R30 15
      331 SETTABLEKS                       R30 R29 K40 ["Size"]
      333 GETIMPORT                        R30 K92 [Enum.SizeConstraint.RelativeYY]
      335 SETTABLEKS                       R30 R29 K90 ["SizeConstraint"]
      337 LOADN                            R30 1
      338 SETTABLEKS                       R30 R29 K93 ["BackgroundTransparency"]
      340 MOVE                             R30 R3
      341 CALL                             R30 0 1
      342 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      344 CALL                             R27 2 1
      345 SETTABLEKS                       R27 R26 K82 ["Image"]
      347 CALL                             R23 3 1
      348 SETTABLEKS                       R23 R22 K77 ["ImageContainer"]
      350 GETUPVAL                         R23 6
      351 LOADK                            R24 K62 ["TextLabel"]
      352 NEWTABLE                         R25 8 0
      354 GETUPVAL                         R26 3
      355 GETTABLEKS                       R26 R26 K17 ["Tag"]
      357 LOADK                            R27 K63 ["Component-TextLabel SubText"]
      358 SETTABLE                         R27 R25 R26
      359 GETIMPORT                        R26 K38 [UDim2.new]
      361 LOADN                            R27 1
      362 GETUPVAL                         R29 10
      363 GETTABLEKS                       R29 R29 K76 ["STANDARD_IMAGE_SIZE"]
      365 MINUS                            R28 R29
      366 LOADN                            R29 0
      367 LOADN                            R30 0
      368 CALL                             R26 4 1
      369 SETTABLEKS                       R26 R25 K40 ["Size"]
      371 GETIMPORT                        R26 K67 [Enum.AutomaticSize.XY]
      373 SETTABLEKS                       R26 R25 K42 ["AutomaticSize"]
      375 LOADK                            R28 K26 ["GeneralSettings"]
      376 MOVE                             R30 R5
      377 LOADK                            R31 K94 ["GameplayDescription"]
      378 CONCAT                           R29 R30 R31
      379 NAMECALL                         R26 R1 K13 ["getText"]
      381 CALL                             R26 3 1
      382 SETTABLEKS                       R26 R25 K68 ["Text"]
      384 GETIMPORT                        R26 K71 [Enum.TextXAlignment.Left]
      386 SETTABLEKS                       R26 R25 K69 ["TextXAlignment"]
      388 LOADB                            R26 1
      389 SETTABLEKS                       R26 R25 K72 ["TextWrapped"]
      391 MOVE                             R26 R3
      392 CALL                             R26 0 1
      393 SETTABLEKS                       R26 R25 K35 ["LayoutOrder"]
      395 DUPTABLE                         R26 K96 [{"UIPadding"}]
      396 GETUPVAL                         R27 6
      397 LOADK                            R28 K95 ["UIPadding"]
      398 DUPTABLE                         R29 K98 [{"PaddingLeft"}]
      399 GETIMPORT                        R30 K100 [UDim.new]
      401 LOADN                            R31 0
      402 LOADN                            R32 4
      403 CALL                             R30 2 1
      404 SETTABLEKS                       R30 R29 K97 ["PaddingLeft"]
      406 CALL                             R27 2 1
      407 SETTABLEKS                       R27 R26 K95 ["UIPadding"]
      409 CALL                             R23 3 1
      410 SETTABLEKS                       R23 R22 K68 ["Text"]
      412 CALL                             R19 3 1
      413 JUMP                             ; [+1]
      414 LOADNIL                          R19
      415 SETTABLEKS                       R19 R18 K49 ["GameplayDescriptionText"]
      417 JUMPIFEQKNIL                     R5 ; [+21]
      419 GETUPVAL                         R19 6
      420 GETUPVAL                         R20 7
      421 NEWTABLE                         R21 2 0
      423 GETUPVAL                         R22 3
      424 GETTABLEKS                       R22 R22 K17 ["Tag"]
      426 GETUPVAL                         R24 14
      427 CALL                             R24 0 1
      428 JUMPIFNOT                        R24 ; [+2]
      429 LOADK                            R23 K73 ["Separator"]
      430 JUMP                             ; [+1]
      431 LOADK                            R23 K74 ["PresetHoverTooltipDivider"]
      432 SETTABLE                         R23 R21 R22
      433 MOVE                             R22 R3
      434 CALL                             R22 0 1
      435 SETTABLEKS                       R22 R21 K35 ["LayoutOrder"]
      437 CALL                             R19 2 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R19
      440 SETTABLEKS                       R19 R18 K50 ["Divider2"]
      442 JUMPIFEQKNIL                     R5 ; [+15]
      444 GETUPVAL                         R19 6
      445 GETUPVAL                         R20 16
      446 DUPTABLE                         R21 K104 [{["size"], ["layoutOrder"], ["currentPreset"], ["removePadding"] = True}]
      447 GETUPVAL                         R22 17
      448 SETTABLEKS                       R22 R21 K101 ["size"]
      450 MOVE                             R22 R3
      451 CALL                             R22 0 1
      452 SETTABLEKS                       R22 R21 K24 ["layoutOrder"]
      454 SETTABLEKS                       R5 R21 K102 ["currentPreset"]
      456 CALL                             R19 2 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R19
      459 SETTABLEKS                       R19 R18 K51 ["LowerTextSection"]
      461 CALL                             R15 3 1
      462 SETTABLEKS                       R15 R14 K28 ["TextContent"]
      464 CALL                             R11 3 1
      465 SETTABLEKS                       R11 R10 K19 ["PresetSection"]
      467 CALL                             R7 3 -1
      468 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Src"]
       49 GETTABLEKS                       R6 R6 K9 ["Components"]
       51 GETTABLEKS                       R6 R6 K14 ["ExpandableSection"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K15 ["Packages"]
       58 GETTABLEKS                       R7 R7 K16 ["Framework"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K9 ["Components"]
       67 GETTABLEKS                       R8 R8 K17 ["GenericModeSelector"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K9 ["Components"]
       76 GETTABLEKS                       R9 R9 K18 ["PresetTooltipDescriptionSection"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K15 ["Packages"]
       83 GETTABLEKS                       R10 R10 K19 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K15 ["Packages"]
       90 GETTABLEKS                       R11 R11 K20 ["ReactUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K21 ["Flags"]
       99 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarSettingsChangeSeparatorColor"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R6 K23 ["ContextServices"]
      104 GETTABLEKS                       R13 R12 K24 ["Localization"]
      106 GETTABLEKS                       R14 R6 K25 ["Styling"]
      108 GETTABLEKS                       R14 R14 K26 ["joinTags"]
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R16 R0 K6 ["Src"]
      114 GETTABLEKS                       R16 R16 K7 ["Util"]
      116 GETTABLEKS                       R16 R16 K27 ["Telemetry"]
      118 GETTABLEKS                       R16 R16 K28 ["TelemetryContext"]
      120 CALL                             R15 1 1
      121 GETTABLEKS                       R16 R6 K29 ["UI"]
      123 GETTABLEKS                       R17 R16 K30 ["Alert"]
      125 GETTABLEKS                       R18 R16 K31 ["Pane"]
      127 GETTABLEKS                       R19 R10 K32 ["createNextOrder"]
      129 GETTABLEKS                       R20 R9 K33 ["createElement"]
      131 GETIMPORT                        R21 K36 [UDim2.fromOffset]
      133 LOADN                            R22 526
      134 LOADN                            R23 285
      135 CALL                             R21 2 1
      136 GETIMPORT                        R22 K38 [UDim2.new]
      138 LOADN                            R23 1
      139 LOADN                            R24 0
      140 LOADN                            R25 0
      141 LOADN                            R26 80
      142 CALL                             R22 4 1
      143 GETIMPORT                        R23 K36 [UDim2.fromOffset]
      145 LOADN                            R24 14
      146 LOADN                            R25 14
      147 CALL                             R23 2 1
      148 DUPCLOSURE                       R24 K39 [PROTO_1]
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R22
      167 RETURN                           R24 1
