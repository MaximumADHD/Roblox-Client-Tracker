PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AppearanceModeSelected"]
        5 DUPTABLE                         R4 K2 [{"appearanceMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["appearanceMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["bodyAppearanceSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
       27 NEWTABLE                         R5 0 2
       29 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["BodySettings"]
       35 LOADK                            R10 K14 ["AppearanceSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["BodySettings"]
       47 LOADK                            R11 K18 ["AppearanceSectionCustomPartsButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["bodySettings"]
       59 GETTABLEKS                       R7 R4 K2 ["settings"]
       61 GETTABLEKS                       R9 R7 K20 ["navigationBarSettings"]
       63 GETTABLEKS                       R9 R9 K21 ["avatarType"]
       65 GETTABLEKS                       R9 R9 K22 ["value"]
       67 GETIMPORT                        R10 K25 [Enum.GameAvatarType.R6]
       69 JUMPIFEQ                         R9 R10 ; [+2]
       71 LOADB                            R8 0 +1
       72 LOADB                            R8 1
       73 GETTABLEKS                       R9 R6 K26 ["bodyAppearanceSetting"]
       75 GETTABLEKS                       R9 R9 K22 ["value"]
       77 GETIMPORT                        R10 K29 [UDim.new]
       79 LOADN                            R11 0
       80 GETUPVAL                         R12 5
       81 GETTABLEKS                       R12 R12 K30 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       83 CALL                             R10 2 1
       84 GETIMPORT                        R12 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       86 JUMPIFEQ                         R9 R12 ; [+2]
       88 LOADB                            R11 0 +1
       89 LOADB                            R11 1
       90 GETUPVAL                         R12 6
       91 GETUPVAL                         R13 7
       92 DUPTABLE                         R14 K33 [{"text", "layoutOrder"}]
       93 LOADK                            R17 K13 ["BodySettings"]
       94 LOADK                            R18 K34 ["AppearanceSection"]
       95 NAMECALL                         R15 R1 K15 ["getText"]
       97 CALL                             R15 3 1
       98 SETTABLEKS                       R15 R14 K31 ["text"]
      100 GETTABLEKS                       R15 R0 K32 ["layoutOrder"]
      102 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      104 DUPTABLE                         R15 K46 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "MoodAssetSelector", "EyebrowAssetSelector", "EyelashAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
      105 GETUPVAL                         R16 6
      106 GETUPVAL                         R17 8
      107 DUPTABLE                         R18 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      108 MOVE                             R19 R3
      109 CALL                             R19 0 1
      110 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      112 SETTABLEKS                       R5 R18 K47 ["items"]
      114 SETTABLEKS                       R9 R18 K48 ["selected"]
      116 NEWCLOSURE                       R19 P0
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R19 R18 K49 ["onItemActivated"]
      122 LOADK                            R21 K13 ["BodySettings"]
      123 GETIMPORT                        R23 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
      125 JUMPIFNOTEQ                      R9 R23 ; [+3]
      127 LOADK                            R22 K52 ["AppearanceSectionPlayerChoiceSubText"]
      128 JUMP                             ; [+1]
      129 LOADK                            R22 K53 ["AppearanceSectionCustomPartsSubText"]
      130 NAMECALL                         R19 R1 K15 ["getText"]
      132 CALL                             R19 3 1
      133 SETTABLEKS                       R19 R18 K50 ["subText"]
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K35 ["AppearanceGenericModeSelector"]
      138 MOVE                             R16 R11
      139 JUMPIFNOT                        R16 ; [+38]
      140 GETUPVAL                         R16 6
      141 GETUPVAL                         R17 9
      142 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      143 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      145 LOADK                            R21 K13 ["BodySettings"]
      146 LOADK                            R22 K58 ["AppearanceSectionFace"]
      147 NAMECALL                         R19 R1 K15 ["getText"]
      149 CALL                             R19 3 1
      150 SETTABLEKS                       R19 R18 K31 ["text"]
      152 MOVE                             R19 R3
      153 CALL                             R19 0 1
      154 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      156 DUPTABLE                         R19 K60 [{"Content"}]
      157 GETUPVAL                         R20 6
      158 GETUPVAL                         R21 10
      159 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      160 GETTABLEKS                       R23 R6 K66 ["bodyAppearanceCustomPartsFace"]
      162 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      164 NEWTABLE                         R23 0 2
      166 GETIMPORT                        R24 K69 [Enum.AssetType.Face]
      168 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      170 SETLIST                          R23 R24 2 [1]
      172 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      174 CALL                             R20 2 1
      175 SETTABLEKS                       R20 R19 K59 ["Content"]
      177 CALL                             R16 3 1
      178 SETTABLEKS                       R16 R15 K36 ["FaceAssetSelector"]
      180 MOVE                             R16 R11
      181 JUMPIFNOT                        R16 ; [+38]
      182 GETUPVAL                         R16 6
      183 GETUPVAL                         R17 9
      184 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      185 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      187 LOADK                            R21 K13 ["BodySettings"]
      188 LOADK                            R22 K72 ["AppearanceSectionHead"]
      189 NAMECALL                         R19 R1 K15 ["getText"]
      191 CALL                             R19 3 1
      192 SETTABLEKS                       R19 R18 K31 ["text"]
      194 MOVE                             R19 R3
      195 CALL                             R19 0 1
      196 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      198 DUPTABLE                         R19 K60 [{"Content"}]
      199 GETUPVAL                         R20 6
      200 GETUPVAL                         R21 10
      201 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      202 GETTABLEKS                       R23 R6 K73 ["bodyAppearanceCustomPartsHead"]
      204 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      206 NEWTABLE                         R23 0 2
      208 GETIMPORT                        R24 K75 [Enum.AssetType.Head]
      210 GETIMPORT                        R25 K77 [Enum.AssetType.DynamicHead]
      212 SETLIST                          R23 R24 2 [1]
      214 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      216 CALL                             R20 2 1
      217 SETTABLEKS                       R20 R19 K59 ["Content"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K37 ["HeadAssetSelector"]
      222 MOVE                             R16 R11
      223 JUMPIFNOT                        R16 ; [+34]
      224 NOT                              R16 R8
      225 JUMPIFNOT                        R16 ; [+32]
      226 GETUPVAL                         R16 6
      227 GETUPVAL                         R17 9
      228 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      229 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      231 LOADK                            R21 K13 ["BodySettings"]
      232 LOADK                            R22 K78 ["AppearanceSectionMood"]
      233 NAMECALL                         R19 R1 K15 ["getText"]
      235 CALL                             R19 3 1
      236 SETTABLEKS                       R19 R18 K31 ["text"]
      238 MOVE                             R19 R3
      239 CALL                             R19 0 1
      240 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      242 DUPTABLE                         R19 K60 [{"Content"}]
      243 GETUPVAL                         R20 6
      244 GETUPVAL                         R21 10
      245 DUPTABLE                         R22 K79 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      246 GETTABLEKS                       R23 R6 K80 ["bodyAppearanceCustomPartsMood"]
      248 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      250 GETIMPORT                        R23 K82 [Enum.AssetType.Animation]
      252 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      254 CALL                             R20 2 1
      255 SETTABLEKS                       R20 R19 K59 ["Content"]
      257 CALL                             R16 3 1
      258 SETTABLEKS                       R16 R15 K38 ["MoodAssetSelector"]
      260 GETUPVAL                         R16 11
      261 JUMPIFNOT                        R16 ; [+36]
      262 MOVE                             R16 R11
      263 JUMPIFNOT                        R16 ; [+34]
      264 NOT                              R16 R8
      265 JUMPIFNOT                        R16 ; [+32]
      266 GETUPVAL                         R16 6
      267 GETUPVAL                         R17 9
      268 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      269 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      271 LOADK                            R21 K13 ["BodySettings"]
      272 LOADK                            R22 K83 ["AppearanceSectionEyebrow"]
      273 NAMECALL                         R19 R1 K15 ["getText"]
      275 CALL                             R19 3 1
      276 SETTABLEKS                       R19 R18 K31 ["text"]
      278 MOVE                             R19 R3
      279 CALL                             R19 0 1
      280 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      282 DUPTABLE                         R19 K60 [{"Content"}]
      283 GETUPVAL                         R20 6
      284 GETUPVAL                         R21 10
      285 DUPTABLE                         R22 K79 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      286 GETTABLEKS                       R23 R6 K84 ["bodyAppearanceCustomPartsEyebrow"]
      288 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      290 GETIMPORT                        R23 K86 [Enum.AssetType.EyebrowAccessory]
      292 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      294 CALL                             R20 2 1
      295 SETTABLEKS                       R20 R19 K59 ["Content"]
      297 CALL                             R16 3 1
      298 SETTABLEKS                       R16 R15 K39 ["EyebrowAssetSelector"]
      300 GETUPVAL                         R16 11
      301 JUMPIFNOT                        R16 ; [+36]
      302 MOVE                             R16 R11
      303 JUMPIFNOT                        R16 ; [+34]
      304 NOT                              R16 R8
      305 JUMPIFNOT                        R16 ; [+32]
      306 GETUPVAL                         R16 6
      307 GETUPVAL                         R17 9
      308 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      309 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      311 LOADK                            R21 K13 ["BodySettings"]
      312 LOADK                            R22 K87 ["AppearanceSectionEyelash"]
      313 NAMECALL                         R19 R1 K15 ["getText"]
      315 CALL                             R19 3 1
      316 SETTABLEKS                       R19 R18 K31 ["text"]
      318 MOVE                             R19 R3
      319 CALL                             R19 0 1
      320 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      322 DUPTABLE                         R19 K60 [{"Content"}]
      323 GETUPVAL                         R20 6
      324 GETUPVAL                         R21 10
      325 DUPTABLE                         R22 K79 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      326 GETTABLEKS                       R23 R6 K88 ["bodyAppearanceCustomPartsEyelash"]
      328 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      330 GETIMPORT                        R23 K90 [Enum.AssetType.EyelashAccessory]
      332 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      334 CALL                             R20 2 1
      335 SETTABLEKS                       R20 R19 K59 ["Content"]
      337 CALL                             R16 3 1
      338 SETTABLEKS                       R16 R15 K40 ["EyelashAssetSelector"]
      340 MOVE                             R16 R11
      341 JUMPIFNOT                        R16 ; [+38]
      342 GETUPVAL                         R16 6
      343 GETUPVAL                         R17 9
      344 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      345 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      347 LOADK                            R21 K13 ["BodySettings"]
      348 LOADK                            R22 K91 ["AppearanceSectionTorso"]
      349 NAMECALL                         R19 R1 K15 ["getText"]
      351 CALL                             R19 3 1
      352 SETTABLEKS                       R19 R18 K31 ["text"]
      354 MOVE                             R19 R3
      355 CALL                             R19 0 1
      356 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      358 DUPTABLE                         R19 K60 [{"Content"}]
      359 GETUPVAL                         R20 6
      360 GETUPVAL                         R21 10
      361 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      362 GETTABLEKS                       R23 R6 K92 ["bodyAppearanceCustomPartsTorso"]
      364 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      366 NEWTABLE                         R23 0 2
      368 GETIMPORT                        R24 K94 [Enum.AssetType.Torso]
      370 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      372 SETLIST                          R23 R24 2 [1]
      374 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      376 CALL                             R20 2 1
      377 SETTABLEKS                       R20 R19 K59 ["Content"]
      379 CALL                             R16 3 1
      380 SETTABLEKS                       R16 R15 K41 ["TorsoAssetSelector"]
      382 MOVE                             R16 R11
      383 JUMPIFNOT                        R16 ; [+38]
      384 GETUPVAL                         R16 6
      385 GETUPVAL                         R17 9
      386 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      387 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      389 LOADK                            R21 K13 ["BodySettings"]
      390 LOADK                            R22 K95 ["AppearanceSectionLeftArm"]
      391 NAMECALL                         R19 R1 K15 ["getText"]
      393 CALL                             R19 3 1
      394 SETTABLEKS                       R19 R18 K31 ["text"]
      396 MOVE                             R19 R3
      397 CALL                             R19 0 1
      398 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      400 DUPTABLE                         R19 K60 [{"Content"}]
      401 GETUPVAL                         R20 6
      402 GETUPVAL                         R21 10
      403 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      404 GETTABLEKS                       R23 R6 K96 ["bodyAppearanceCustomPartsLeftArm"]
      406 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      408 NEWTABLE                         R23 0 2
      410 GETIMPORT                        R24 K98 [Enum.AssetType.LeftArm]
      412 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      414 SETLIST                          R23 R24 2 [1]
      416 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      418 CALL                             R20 2 1
      419 SETTABLEKS                       R20 R19 K59 ["Content"]
      421 CALL                             R16 3 1
      422 SETTABLEKS                       R16 R15 K42 ["LeftArmAssetSelector"]
      424 MOVE                             R16 R11
      425 JUMPIFNOT                        R16 ; [+38]
      426 GETUPVAL                         R16 6
      427 GETUPVAL                         R17 9
      428 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      429 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      431 LOADK                            R21 K13 ["BodySettings"]
      432 LOADK                            R22 K99 ["AppearanceSectionRightArm"]
      433 NAMECALL                         R19 R1 K15 ["getText"]
      435 CALL                             R19 3 1
      436 SETTABLEKS                       R19 R18 K31 ["text"]
      438 MOVE                             R19 R3
      439 CALL                             R19 0 1
      440 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      442 DUPTABLE                         R19 K60 [{"Content"}]
      443 GETUPVAL                         R20 6
      444 GETUPVAL                         R21 10
      445 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      446 GETTABLEKS                       R23 R6 K100 ["bodyAppearanceCustomPartsRightArm"]
      448 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      450 NEWTABLE                         R23 0 2
      452 GETIMPORT                        R24 K102 [Enum.AssetType.RightArm]
      454 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      456 SETLIST                          R23 R24 2 [1]
      458 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      460 CALL                             R20 2 1
      461 SETTABLEKS                       R20 R19 K59 ["Content"]
      463 CALL                             R16 3 1
      464 SETTABLEKS                       R16 R15 K43 ["RightArmAssetSelector"]
      466 MOVE                             R16 R11
      467 JUMPIFNOT                        R16 ; [+38]
      468 GETUPVAL                         R16 6
      469 GETUPVAL                         R17 9
      470 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      471 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      473 LOADK                            R21 K13 ["BodySettings"]
      474 LOADK                            R22 K103 ["AppearanceSectionLeftLeg"]
      475 NAMECALL                         R19 R1 K15 ["getText"]
      477 CALL                             R19 3 1
      478 SETTABLEKS                       R19 R18 K31 ["text"]
      480 MOVE                             R19 R3
      481 CALL                             R19 0 1
      482 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      484 DUPTABLE                         R19 K60 [{"Content"}]
      485 GETUPVAL                         R20 6
      486 GETUPVAL                         R21 10
      487 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      488 GETTABLEKS                       R23 R6 K104 ["bodyAppearanceCustomPartsLeftLeg"]
      490 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      492 NEWTABLE                         R23 0 2
      494 GETIMPORT                        R24 K106 [Enum.AssetType.LeftLeg]
      496 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      498 SETLIST                          R23 R24 2 [1]
      500 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      502 CALL                             R20 2 1
      503 SETTABLEKS                       R20 R19 K59 ["Content"]
      505 CALL                             R16 3 1
      506 SETTABLEKS                       R16 R15 K44 ["LeftLegAssetSelector"]
      508 MOVE                             R16 R11
      509 JUMPIFNOT                        R16 ; [+38]
      510 GETUPVAL                         R16 6
      511 GETUPVAL                         R17 9
      512 DUPTABLE                         R18 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      513 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      515 LOADK                            R21 K13 ["BodySettings"]
      516 LOADK                            R22 K107 ["AppearanceSectionRightLeg"]
      517 NAMECALL                         R19 R1 K15 ["getText"]
      519 CALL                             R19 3 1
      520 SETTABLEKS                       R19 R18 K31 ["text"]
      522 MOVE                             R19 R3
      523 CALL                             R19 0 1
      524 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      526 DUPTABLE                         R19 K60 [{"Content"}]
      527 GETUPVAL                         R20 6
      528 GETUPVAL                         R21 10
      529 DUPTABLE                         R22 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      530 GETTABLEKS                       R23 R6 K108 ["bodyAppearanceCustomPartsRightLeg"]
      532 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      534 NEWTABLE                         R23 0 2
      536 GETIMPORT                        R24 K110 [Enum.AssetType.RightLeg]
      538 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      540 SETLIST                          R23 R24 2 [1]
      542 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      544 CALL                             R20 2 1
      545 SETTABLEKS                       R20 R19 K59 ["Content"]
      547 CALL                             R16 3 1
      548 SETTABLEKS                       R16 R15 K45 ["RightLegAssetSelector"]
      550 CALL                             R12 3 -1
      551 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetIdSelector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K10 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K11 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Components"]
       42 GETTABLEKS                       R5 R5 K13 ["ExpandableSection"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R6 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K7 ["Components"]
       58 GETTABLEKS                       R7 R7 K16 ["GenericModeSelector"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K14 ["Packages"]
       65 GETTABLEKS                       R8 R8 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K14 ["Packages"]
       72 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K7 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R5 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K6 ["Src"]
       92 GETTABLEKS                       R13 R13 K11 ["Util"]
       94 GETTABLEKS                       R13 R13 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R13 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R8 K24 ["createNextOrder"]
      101 GETTABLEKS                       R14 R7 K25 ["createElement"]
      103 GETIMPORT                        R15 K27 [game]
      105 LOADK                            R17 K28 ["AvatarSettingsEyebrowEyelashSelectors"]
      106 LOADB                            R18 0
      107 NAMECALL                         R15 R15 K29 ["DefineFastFlag"]
      109 CALL                             R15 3 1
      110 DUPCLOSURE                       R16 K30 [PROTO_1]
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R15
      123 RETURN                           R16 1
