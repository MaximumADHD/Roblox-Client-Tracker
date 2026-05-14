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
       34 DUPTABLE                         R7 K9 [{"Id", "Label"}]
       35 LOADK                            R8 K10 ["PlayerChoice"]
       36 SETTABLEKS                       R8 R7 K7 ["Id"]
       38 LOADK                            R10 K11 ["AvatarTypeSelector"]
       39 LOADK                            R11 K12 ["PlayerChoiceTitle"]
       40 NAMECALL                         R8 R1 K13 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K8 ["Label"]
       45 DUPTABLE                         R8 K9 [{"Id", "Label"}]
       46 LOADK                            R9 K14 ["ConsistentGameplay"]
       47 SETTABLEKS                       R9 R8 K7 ["Id"]
       49 LOADK                            R11 K11 ["AvatarTypeSelector"]
       50 LOADK                            R12 K15 ["ConsistentGameplayTitle"]
       51 NAMECALL                         R9 R1 K13 ["getText"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K8 ["Label"]
       56 SETLIST                          R6 R7 2 [1]
       58 GETUPVAL                         R7 6
       59 GETUPVAL                         R8 7
       60 NEWTABLE                         R9 1 0
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K16 ["Tag"]
       65 LOADK                            R11 K17 ["AvatarSettings-SettingsPage X-Column"]
       66 SETTABLE                         R11 R9 R10
       67 DUPTABLE                         R10 K19 [{"PresetSection"}]
       68 GETUPVAL                         R11 6
       69 GETUPVAL                         R12 8
       70 DUPTABLE                         R13 K23 [{"alwaysExpanded", "text", "layoutOrder"}]
       71 LOADB                            R14 1
       72 SETTABLEKS                       R14 R13 K20 ["alwaysExpanded"]
       74 LOADK                            R16 K24 ["GeneralSettings"]
       75 LOADK                            R17 K18 ["PresetSection"]
       76 NAMECALL                         R14 R1 K13 ["getText"]
       78 CALL                             R14 3 1
       79 SETTABLEKS                       R14 R13 K21 ["text"]
       81 MOVE                             R14 R3
       82 CALL                             R14 0 1
       83 SETTABLEKS                       R14 R13 K22 ["layoutOrder"]
       85 DUPTABLE                         R14 K27 [{"GenericModeSelector", "TextContent"}]
       86 GETUPVAL                         R15 6
       87 GETUPVAL                         R16 9
       88 DUPTABLE                         R17 K31 [{"layoutOrder", "items", "selected", "onItemActivated"}]
       89 MOVE                             R18 R3
       90 CALL                             R18 0 1
       91 SETTABLEKS                       R18 R17 K22 ["layoutOrder"]
       93 SETTABLEKS                       R6 R17 K28 ["items"]
       95 SETTABLEKS                       R5 R17 K29 ["selected"]
       97 NEWCLOSURE                       R18 P0
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R18 R17 K30 ["onItemActivated"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K25 ["GenericModeSelector"]
      106 GETUPVAL                         R15 6
      107 GETUPVAL                         R16 7
      108 NEWTABLE                         R17 4 0
      110 GETUPVAL                         R18 3
      111 GETTABLEKS                       R18 R18 K16 ["Tag"]
      113 LOADK                            R19 K32 ["X-Column X-Left ColumnSpacing-Standard"]
      114 SETTABLE                         R19 R17 R18
      115 MOVE                             R18 R3
      116 CALL                             R18 0 1
      117 SETTABLEKS                       R18 R17 K33 ["LayoutOrder"]
      119 GETIMPORT                        R18 K36 [UDim2.new]
      121 LOADN                            R19 1
      122 GETUPVAL                         R21 10
      123 GETTABLEKS                       R21 R21 K37 ["MODESELECTOR_SIDE_MARGIN"]
      125 MINUS                            R20 R21
      126 LOADN                            R21 0
      127 LOADN                            R22 0
      128 CALL                             R18 4 1
      129 SETTABLEKS                       R18 R17 K38 ["Size"]
      131 GETIMPORT                        R18 K42 [Enum.AutomaticSize.Y]
      133 SETTABLEKS                       R18 R17 K40 ["AutomaticSize"]
      135 DUPTABLE                         R18 K50 [{"Alert", "PresetImage", "DescriptionText", "Divider1", "GameplayDescriptionText", "Divider2", "LowerTextSection"}]
      136 JUMPIFNOTEQKNIL                  R5 ; [+27]
      138 GETUPVAL                         R19 6
      139 GETUPVAL                         R20 11
      140 DUPTABLE                         R21 K54 [{"LayoutOrder", "Style", "Title", "Description"}]
      141 MOVE                             R22 R3
      142 CALL                             R22 0 1
      143 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      145 LOADK                            R22 K55 ["Info"]
      146 SETTABLEKS                       R22 R21 K51 ["Style"]
      148 LOADK                            R24 K24 ["GeneralSettings"]
      149 LOADK                            R25 K56 ["CustomizedSettingsAlertTitle"]
      150 NAMECALL                         R22 R1 K13 ["getText"]
      152 CALL                             R22 3 1
      153 SETTABLEKS                       R22 R21 K52 ["Title"]
      155 LOADK                            R24 K24 ["GeneralSettings"]
      156 LOADK                            R25 K57 ["CustomSettingsAlertDescription"]
      157 NAMECALL                         R22 R1 K13 ["getText"]
      159 CALL                             R22 3 1
      160 SETTABLEKS                       R22 R21 K53 ["Description"]
      162 CALL                             R19 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R19
      165 SETTABLEKS                       R19 R18 K43 ["Alert"]
      167 JUMPIFEQKNIL                     R5 ; [+26]
      169 GETUPVAL                         R19 6
      170 LOADK                            R20 K58 ["ImageLabel"]
      171 NEWTABLE                         R21 4 0
      173 GETUPVAL                         R22 3
      174 GETTABLEKS                       R22 R22 K16 ["Tag"]
      176 GETUPVAL                         R23 12
      177 LOADK                            R24 K44 ["PresetImage"]
      178 JUMPIFNOTEQKS                    R5 K10 ["PlayerChoice"] ; [+3]
      180 LOADK                            R25 K10 ["PlayerChoice"]
      181 JUMP                             ; [+1]
      182 LOADK                            R25 K59 ["Consistent"]
      183 CALL                             R23 2 1
      184 SETTABLE                         R23 R21 R22
      185 MOVE                             R22 R3
      186 CALL                             R22 0 1
      187 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      189 GETUPVAL                         R22 13
      190 SETTABLEKS                       R22 R21 K38 ["Size"]
      192 CALL                             R19 2 1
      193 JUMP                             ; [+1]
      194 LOADNIL                          R19
      195 SETTABLEKS                       R19 R18 K44 ["PresetImage"]
      197 JUMPIFEQKNIL                     R5 ; [+43]
      199 GETUPVAL                         R19 6
      200 LOADK                            R20 K60 ["TextLabel"]
      201 NEWTABLE                         R21 8 0
      203 GETUPVAL                         R22 3
      204 GETTABLEKS                       R22 R22 K16 ["Tag"]
      206 LOADK                            R23 K61 ["Component-TextLabel SubText"]
      207 SETTABLE                         R23 R21 R22
      208 GETIMPORT                        R22 K63 [UDim2.fromScale]
      210 LOADN                            R23 1
      211 LOADN                            R24 0
      212 CALL                             R22 2 1
      213 SETTABLEKS                       R22 R21 K38 ["Size"]
      215 GETIMPORT                        R22 K65 [Enum.AutomaticSize.XY]
      217 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      219 LOADK                            R24 K24 ["GeneralSettings"]
      220 MOVE                             R26 R5
      221 LOADK                            R27 K53 ["Description"]
      222 CONCAT                           R25 R26 R27
      223 NAMECALL                         R22 R1 K13 ["getText"]
      225 CALL                             R22 3 1
      226 SETTABLEKS                       R22 R21 K66 ["Text"]
      228 GETIMPORT                        R22 K69 [Enum.TextXAlignment.Left]
      230 SETTABLEKS                       R22 R21 K67 ["TextXAlignment"]
      232 LOADB                            R22 1
      233 SETTABLEKS                       R22 R21 K70 ["TextWrapped"]
      235 MOVE                             R22 R3
      236 CALL                             R22 0 1
      237 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      239 CALL                             R19 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R19
      242 SETTABLEKS                       R19 R18 K45 ["DescriptionText"]
      244 JUMPIFEQKNIL                     R5 ; [+21]
      246 GETUPVAL                         R19 6
      247 GETUPVAL                         R20 7
      248 NEWTABLE                         R21 2 0
      250 GETUPVAL                         R22 3
      251 GETTABLEKS                       R22 R22 K16 ["Tag"]
      253 GETUPVAL                         R24 14
      254 CALL                             R24 0 1
      255 JUMPIFNOT                        R24 ; [+2]
      256 LOADK                            R23 K71 ["Separator"]
      257 JUMP                             ; [+1]
      258 LOADK                            R23 K72 ["PresetHoverTooltipDivider"]
      259 SETTABLE                         R23 R21 R22
      260 MOVE                             R22 R3
      261 CALL                             R22 0 1
      262 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      264 CALL                             R19 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R19
      267 SETTABLEKS                       R19 R18 K46 ["Divider1"]
      269 JUMPIFEQKNIL                     R5 ; [+156]
      271 GETUPVAL                         R19 6
      272 GETUPVAL                         R20 7
      273 NEWTABLE                         R21 4 0
      275 GETUPVAL                         R22 3
      276 GETTABLEKS                       R22 R22 K16 ["Tag"]
      278 LOADK                            R23 K73 ["X-Row X-Middle"]
      279 SETTABLE                         R23 R21 R22
      280 GETIMPORT                        R22 K36 [UDim2.new]
      282 LOADN                            R23 1
      283 LOADN                            R24 0
      284 LOADN                            R25 0
      285 GETUPVAL                         R26 10
      286 GETTABLEKS                       R26 R26 K74 ["STANDARD_IMAGE_SIZE"]
      288 CALL                             R22 4 1
      289 SETTABLEKS                       R22 R21 K38 ["Size"]
      291 GETIMPORT                        R22 K65 [Enum.AutomaticSize.XY]
      293 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      295 MOVE                             R22 R3
      296 CALL                             R22 0 1
      297 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      299 DUPTABLE                         R22 K76 [{"ImageContainer", "Text"}]
      300 GETUPVAL                         R23 6
      301 GETUPVAL                         R24 7
      302 DUPTABLE                         R25 K77 [{"Size", "LayoutOrder"}]
      303 GETIMPORT                        R26 K79 [UDim2.fromOffset]
      305 GETUPVAL                         R27 10
      306 GETTABLEKS                       R27 R27 K74 ["STANDARD_IMAGE_SIZE"]
      308 GETUPVAL                         R28 10
      309 GETTABLEKS                       R28 R28 K74 ["STANDARD_IMAGE_SIZE"]
      311 CALL                             R26 2 1
      312 SETTABLEKS                       R26 R25 K38 ["Size"]
      314 MOVE                             R26 R3
      315 CALL                             R26 0 1
      316 SETTABLEKS                       R26 R25 K33 ["LayoutOrder"]
      318 DUPTABLE                         R26 K81 [{"Image"}]
      319 GETUPVAL                         R27 6
      320 LOADK                            R28 K58 ["ImageLabel"]
      321 NEWTABLE                         R29 8 0
      323 GETUPVAL                         R30 3
      324 GETTABLEKS                       R30 R30 K16 ["Tag"]
      326 LOADK                            R31 K82 ["GeneralSettingsGameplayDescriptionImage"]
      327 SETTABLE                         R31 R29 R30
      328 GETIMPORT                        R30 K63 [UDim2.fromScale]
      330 LOADK                            R31 K83 [0.5]
      331 LOADK                            R32 K83 [0.5]
      332 CALL                             R30 2 1
      333 SETTABLEKS                       R30 R29 K84 ["Position"]
      335 GETIMPORT                        R30 K86 [Vector2.new]
      337 LOADK                            R31 K83 [0.5]
      338 LOADK                            R32 K83 [0.5]
      339 CALL                             R30 2 1
      340 SETTABLEKS                       R30 R29 K87 ["AnchorPoint"]
      342 GETUPVAL                         R30 15
      343 SETTABLEKS                       R30 R29 K38 ["Size"]
      345 GETIMPORT                        R30 K90 [Enum.SizeConstraint.RelativeYY]
      347 SETTABLEKS                       R30 R29 K88 ["SizeConstraint"]
      349 LOADN                            R30 1
      350 SETTABLEKS                       R30 R29 K91 ["BackgroundTransparency"]
      352 MOVE                             R30 R3
      353 CALL                             R30 0 1
      354 SETTABLEKS                       R30 R29 K33 ["LayoutOrder"]
      356 CALL                             R27 2 1
      357 SETTABLEKS                       R27 R26 K80 ["Image"]
      359 CALL                             R23 3 1
      360 SETTABLEKS                       R23 R22 K75 ["ImageContainer"]
      362 GETUPVAL                         R23 6
      363 LOADK                            R24 K60 ["TextLabel"]
      364 NEWTABLE                         R25 8 0
      366 GETUPVAL                         R26 3
      367 GETTABLEKS                       R26 R26 K16 ["Tag"]
      369 LOADK                            R27 K61 ["Component-TextLabel SubText"]
      370 SETTABLE                         R27 R25 R26
      371 GETIMPORT                        R26 K36 [UDim2.new]
      373 LOADN                            R27 1
      374 GETUPVAL                         R29 10
      375 GETTABLEKS                       R29 R29 K74 ["STANDARD_IMAGE_SIZE"]
      377 MINUS                            R28 R29
      378 LOADN                            R29 0
      379 LOADN                            R30 0
      380 CALL                             R26 4 1
      381 SETTABLEKS                       R26 R25 K38 ["Size"]
      383 GETIMPORT                        R26 K65 [Enum.AutomaticSize.XY]
      385 SETTABLEKS                       R26 R25 K40 ["AutomaticSize"]
      387 LOADK                            R28 K24 ["GeneralSettings"]
      388 MOVE                             R30 R5
      389 LOADK                            R31 K92 ["GameplayDescription"]
      390 CONCAT                           R29 R30 R31
      391 NAMECALL                         R26 R1 K13 ["getText"]
      393 CALL                             R26 3 1
      394 SETTABLEKS                       R26 R25 K66 ["Text"]
      396 GETIMPORT                        R26 K69 [Enum.TextXAlignment.Left]
      398 SETTABLEKS                       R26 R25 K67 ["TextXAlignment"]
      400 LOADB                            R26 1
      401 SETTABLEKS                       R26 R25 K70 ["TextWrapped"]
      403 MOVE                             R26 R3
      404 CALL                             R26 0 1
      405 SETTABLEKS                       R26 R25 K33 ["LayoutOrder"]
      407 DUPTABLE                         R26 K94 [{"UIPadding"}]
      408 GETUPVAL                         R27 6
      409 LOADK                            R28 K93 ["UIPadding"]
      410 DUPTABLE                         R29 K96 [{"PaddingLeft"}]
      411 GETIMPORT                        R30 K98 [UDim.new]
      413 LOADN                            R31 0
      414 LOADN                            R32 4
      415 CALL                             R30 2 1
      416 SETTABLEKS                       R30 R29 K95 ["PaddingLeft"]
      418 CALL                             R27 2 1
      419 SETTABLEKS                       R27 R26 K93 ["UIPadding"]
      421 CALL                             R23 3 1
      422 SETTABLEKS                       R23 R22 K66 ["Text"]
      424 CALL                             R19 3 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R19
      427 SETTABLEKS                       R19 R18 K47 ["GameplayDescriptionText"]
      429 JUMPIFEQKNIL                     R5 ; [+21]
      431 GETUPVAL                         R19 6
      432 GETUPVAL                         R20 7
      433 NEWTABLE                         R21 2 0
      435 GETUPVAL                         R22 3
      436 GETTABLEKS                       R22 R22 K16 ["Tag"]
      438 GETUPVAL                         R24 14
      439 CALL                             R24 0 1
      440 JUMPIFNOT                        R24 ; [+2]
      441 LOADK                            R23 K71 ["Separator"]
      442 JUMP                             ; [+1]
      443 LOADK                            R23 K72 ["PresetHoverTooltipDivider"]
      444 SETTABLE                         R23 R21 R22
      445 MOVE                             R22 R3
      446 CALL                             R22 0 1
      447 SETTABLEKS                       R22 R21 K33 ["LayoutOrder"]
      449 CALL                             R19 2 1
      450 JUMP                             ; [+1]
      451 LOADNIL                          R19
      452 SETTABLEKS                       R19 R18 K48 ["Divider2"]
      454 JUMPIFEQKNIL                     R5 ; [+18]
      456 GETUPVAL                         R19 6
      457 GETUPVAL                         R20 16
      458 DUPTABLE                         R21 K102 [{"size", "layoutOrder", "currentPreset", "removePadding"}]
      459 GETUPVAL                         R22 17
      460 SETTABLEKS                       R22 R21 K99 ["size"]
      462 MOVE                             R22 R3
      463 CALL                             R22 0 1
      464 SETTABLEKS                       R22 R21 K22 ["layoutOrder"]
      466 SETTABLEKS                       R5 R21 K100 ["currentPreset"]
      468 LOADB                            R22 1
      469 SETTABLEKS                       R22 R21 K101 ["removePadding"]
      471 CALL                             R19 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R19
      474 SETTABLEKS                       R19 R18 K49 ["LowerTextSection"]
      476 CALL                             R15 3 1
      477 SETTABLEKS                       R15 R14 K26 ["TextContent"]
      479 CALL                             R11 3 1
      480 SETTABLEKS                       R11 R10 K18 ["PresetSection"]
      482 CALL                             R7 3 -1
      483 RETURN                           R7 -1

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
      133 LOADN                            R22 14
      134 LOADN                            R23 29
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
