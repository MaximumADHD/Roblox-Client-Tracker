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
       90 GETUPVAL                         R13 6
       91 CALL                             R13 0 1
       92 NOT                              R12 R13
       93 GETUPVAL                         R13 7
       94 GETUPVAL                         R14 8
       95 DUPTABLE                         R15 K33 [{"text", "layoutOrder"}]
       96 LOADK                            R18 K13 ["BodySettings"]
       97 LOADK                            R19 K34 ["AppearanceSection"]
       98 NAMECALL                         R16 R1 K15 ["getText"]
      100 CALL                             R16 3 1
      101 SETTABLEKS                       R16 R15 K31 ["text"]
      103 GETTABLEKS                       R16 R0 K32 ["layoutOrder"]
      105 SETTABLEKS                       R16 R15 K32 ["layoutOrder"]
      107 DUPTABLE                         R16 K46 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "MoodAssetSelector", "EyebrowAssetSelector", "EyelashAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
      108 GETUPVAL                         R17 7
      109 GETUPVAL                         R18 9
      110 DUPTABLE                         R19 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      111 MOVE                             R20 R3
      112 CALL                             R20 0 1
      113 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      115 SETTABLEKS                       R5 R19 K47 ["items"]
      117 SETTABLEKS                       R9 R19 K48 ["selected"]
      119 NEWCLOSURE                       R20 P0
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R20 R19 K49 ["onItemActivated"]
      125 LOADK                            R22 K13 ["BodySettings"]
      126 GETIMPORT                        R24 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
      128 JUMPIFNOTEQ                      R9 R24 ; [+3]
      130 LOADK                            R23 K52 ["AppearanceSectionPlayerChoiceSubText"]
      131 JUMP                             ; [+1]
      132 LOADK                            R23 K53 ["AppearanceSectionCustomPartsSubText"]
      133 NAMECALL                         R20 R1 K15 ["getText"]
      135 CALL                             R20 3 1
      136 SETTABLEKS                       R20 R19 K50 ["subText"]
      138 CALL                             R17 2 1
      139 SETTABLEKS                       R17 R16 K35 ["AppearanceGenericModeSelector"]
      141 GETUPVAL                         R18 10
      142 CALL                             R18 0 1
      143 JUMPIFNOT                        R18 ; [+2]
      144 LOADNIL                          R17
      145 JUMP                             ; [+40]
      146 MOVE                             R17 R11
      147 JUMPIFNOT                        R17 ; [+38]
      148 GETUPVAL                         R17 7
      149 GETUPVAL                         R18 11
      150 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      151 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      153 LOADK                            R22 K13 ["BodySettings"]
      154 LOADK                            R23 K58 ["AppearanceSectionFace"]
      155 NAMECALL                         R20 R1 K15 ["getText"]
      157 CALL                             R20 3 1
      158 SETTABLEKS                       R20 R19 K31 ["text"]
      160 MOVE                             R20 R3
      161 CALL                             R20 0 1
      162 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      164 DUPTABLE                         R20 K60 [{"Content"}]
      165 GETUPVAL                         R21 7
      166 GETUPVAL                         R22 12
      167 DUPTABLE                         R23 K65 [{["assetIdSetting"], ["expectedAssetType"], ["assetCannotBeEmpty"] = True}]
      168 GETTABLEKS                       R24 R6 K66 ["bodyAppearanceCustomPartsFace"]
      170 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      172 NEWTABLE                         R24 0 2
      174 GETIMPORT                        R25 K69 [Enum.AssetType.Face]
      176 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      178 SETLIST                          R24 R25 2 [1]
      180 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      182 CALL                             R21 2 1
      183 SETTABLEKS                       R21 R20 K59 ["Content"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K36 ["FaceAssetSelector"]
      188 MOVE                             R17 R11
      189 JUMPIFNOT                        R17 ; [+40]
      190 GETUPVAL                         R17 7
      191 GETUPVAL                         R18 11
      192 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      193 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      195 LOADK                            R22 K13 ["BodySettings"]
      196 LOADK                            R23 K72 ["AppearanceSectionHead"]
      197 NAMECALL                         R20 R1 K15 ["getText"]
      199 CALL                             R20 3 1
      200 SETTABLEKS                       R20 R19 K31 ["text"]
      202 MOVE                             R20 R3
      203 CALL                             R20 0 1
      204 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      206 DUPTABLE                         R20 K60 [{"Content"}]
      207 GETUPVAL                         R21 7
      208 GETUPVAL                         R22 12
      209 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      210 GETTABLEKS                       R24 R6 K74 ["bodyAppearanceCustomPartsHead"]
      212 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      214 NEWTABLE                         R24 0 2
      216 GETIMPORT                        R25 K76 [Enum.AssetType.Head]
      218 GETIMPORT                        R26 K78 [Enum.AssetType.DynamicHead]
      220 SETLIST                          R24 R25 2 [1]
      222 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      224 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      226 CALL                             R21 2 1
      227 SETTABLEKS                       R21 R20 K59 ["Content"]
      229 CALL                             R17 3 1
      230 SETTABLEKS                       R17 R16 K37 ["HeadAssetSelector"]
      232 MOVE                             R17 R11
      233 JUMPIFNOT                        R17 ; [+34]
      234 NOT                              R17 R8
      235 JUMPIFNOT                        R17 ; [+32]
      236 GETUPVAL                         R17 7
      237 GETUPVAL                         R18 11
      238 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      239 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      241 LOADK                            R22 K13 ["BodySettings"]
      242 LOADK                            R23 K79 ["AppearanceSectionMood"]
      243 NAMECALL                         R20 R1 K15 ["getText"]
      245 CALL                             R20 3 1
      246 SETTABLEKS                       R20 R19 K31 ["text"]
      248 MOVE                             R20 R3
      249 CALL                             R20 0 1
      250 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      252 DUPTABLE                         R20 K60 [{"Content"}]
      253 GETUPVAL                         R21 7
      254 GETUPVAL                         R22 12
      255 DUPTABLE                         R23 K80 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      256 GETTABLEKS                       R24 R6 K81 ["bodyAppearanceCustomPartsMood"]
      258 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      260 GETIMPORT                        R24 K83 [Enum.AssetType.Animation]
      262 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K59 ["Content"]
      267 CALL                             R17 3 1
      268 SETTABLEKS                       R17 R16 K38 ["MoodAssetSelector"]
      270 GETUPVAL                         R17 13
      271 JUMPIFNOT                        R17 ; [+40]
      272 MOVE                             R17 R11
      273 JUMPIFNOT                        R17 ; [+38]
      274 GETUPVAL                         R18 10
      275 CALL                             R18 0 1
      276 NOT                              R17 R18
      277 JUMPIFNOT                        R17 ; [+34]
      278 NOT                              R17 R8
      279 JUMPIFNOT                        R17 ; [+32]
      280 GETUPVAL                         R17 7
      281 GETUPVAL                         R18 11
      282 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      283 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      285 LOADK                            R22 K13 ["BodySettings"]
      286 LOADK                            R23 K84 ["AppearanceSectionEyebrow"]
      287 NAMECALL                         R20 R1 K15 ["getText"]
      289 CALL                             R20 3 1
      290 SETTABLEKS                       R20 R19 K31 ["text"]
      292 MOVE                             R20 R3
      293 CALL                             R20 0 1
      294 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      296 DUPTABLE                         R20 K60 [{"Content"}]
      297 GETUPVAL                         R21 7
      298 GETUPVAL                         R22 12
      299 DUPTABLE                         R23 K80 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      300 GETTABLEKS                       R24 R6 K85 ["bodyAppearanceCustomPartsEyebrow"]
      302 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      304 GETIMPORT                        R24 K87 [Enum.AssetType.EyebrowAccessory]
      306 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      308 CALL                             R21 2 1
      309 SETTABLEKS                       R21 R20 K59 ["Content"]
      311 CALL                             R17 3 1
      312 SETTABLEKS                       R17 R16 K39 ["EyebrowAssetSelector"]
      314 GETUPVAL                         R17 13
      315 JUMPIFNOT                        R17 ; [+40]
      316 MOVE                             R17 R11
      317 JUMPIFNOT                        R17 ; [+38]
      318 GETUPVAL                         R18 10
      319 CALL                             R18 0 1
      320 NOT                              R17 R18
      321 JUMPIFNOT                        R17 ; [+34]
      322 NOT                              R17 R8
      323 JUMPIFNOT                        R17 ; [+32]
      324 GETUPVAL                         R17 7
      325 GETUPVAL                         R18 11
      326 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      327 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      329 LOADK                            R22 K13 ["BodySettings"]
      330 LOADK                            R23 K88 ["AppearanceSectionEyelash"]
      331 NAMECALL                         R20 R1 K15 ["getText"]
      333 CALL                             R20 3 1
      334 SETTABLEKS                       R20 R19 K31 ["text"]
      336 MOVE                             R20 R3
      337 CALL                             R20 0 1
      338 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      340 DUPTABLE                         R20 K60 [{"Content"}]
      341 GETUPVAL                         R21 7
      342 GETUPVAL                         R22 12
      343 DUPTABLE                         R23 K80 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      344 GETTABLEKS                       R24 R6 K89 ["bodyAppearanceCustomPartsEyelash"]
      346 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      348 GETIMPORT                        R24 K91 [Enum.AssetType.EyelashAccessory]
      350 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      352 CALL                             R21 2 1
      353 SETTABLEKS                       R21 R20 K59 ["Content"]
      355 CALL                             R17 3 1
      356 SETTABLEKS                       R17 R16 K40 ["EyelashAssetSelector"]
      358 MOVE                             R17 R11
      359 JUMPIFNOT                        R17 ; [+40]
      360 GETUPVAL                         R17 7
      361 GETUPVAL                         R18 11
      362 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      363 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      365 LOADK                            R22 K13 ["BodySettings"]
      366 LOADK                            R23 K92 ["AppearanceSectionTorso"]
      367 NAMECALL                         R20 R1 K15 ["getText"]
      369 CALL                             R20 3 1
      370 SETTABLEKS                       R20 R19 K31 ["text"]
      372 MOVE                             R20 R3
      373 CALL                             R20 0 1
      374 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      376 DUPTABLE                         R20 K60 [{"Content"}]
      377 GETUPVAL                         R21 7
      378 GETUPVAL                         R22 12
      379 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      380 GETTABLEKS                       R24 R6 K93 ["bodyAppearanceCustomPartsTorso"]
      382 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      384 NEWTABLE                         R24 0 2
      386 GETIMPORT                        R25 K95 [Enum.AssetType.Torso]
      388 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      390 SETLIST                          R24 R25 2 [1]
      392 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      394 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      396 CALL                             R21 2 1
      397 SETTABLEKS                       R21 R20 K59 ["Content"]
      399 CALL                             R17 3 1
      400 SETTABLEKS                       R17 R16 K41 ["TorsoAssetSelector"]
      402 MOVE                             R17 R11
      403 JUMPIFNOT                        R17 ; [+40]
      404 GETUPVAL                         R17 7
      405 GETUPVAL                         R18 11
      406 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      407 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      409 LOADK                            R22 K13 ["BodySettings"]
      410 LOADK                            R23 K96 ["AppearanceSectionLeftArm"]
      411 NAMECALL                         R20 R1 K15 ["getText"]
      413 CALL                             R20 3 1
      414 SETTABLEKS                       R20 R19 K31 ["text"]
      416 MOVE                             R20 R3
      417 CALL                             R20 0 1
      418 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      420 DUPTABLE                         R20 K60 [{"Content"}]
      421 GETUPVAL                         R21 7
      422 GETUPVAL                         R22 12
      423 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      424 GETTABLEKS                       R24 R6 K97 ["bodyAppearanceCustomPartsLeftArm"]
      426 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      428 NEWTABLE                         R24 0 2
      430 GETIMPORT                        R25 K99 [Enum.AssetType.LeftArm]
      432 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      434 SETLIST                          R24 R25 2 [1]
      436 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      438 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      440 CALL                             R21 2 1
      441 SETTABLEKS                       R21 R20 K59 ["Content"]
      443 CALL                             R17 3 1
      444 SETTABLEKS                       R17 R16 K42 ["LeftArmAssetSelector"]
      446 MOVE                             R17 R11
      447 JUMPIFNOT                        R17 ; [+40]
      448 GETUPVAL                         R17 7
      449 GETUPVAL                         R18 11
      450 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      451 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      453 LOADK                            R22 K13 ["BodySettings"]
      454 LOADK                            R23 K100 ["AppearanceSectionRightArm"]
      455 NAMECALL                         R20 R1 K15 ["getText"]
      457 CALL                             R20 3 1
      458 SETTABLEKS                       R20 R19 K31 ["text"]
      460 MOVE                             R20 R3
      461 CALL                             R20 0 1
      462 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      464 DUPTABLE                         R20 K60 [{"Content"}]
      465 GETUPVAL                         R21 7
      466 GETUPVAL                         R22 12
      467 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      468 GETTABLEKS                       R24 R6 K101 ["bodyAppearanceCustomPartsRightArm"]
      470 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      472 NEWTABLE                         R24 0 2
      474 GETIMPORT                        R25 K103 [Enum.AssetType.RightArm]
      476 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      478 SETLIST                          R24 R25 2 [1]
      480 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      482 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      484 CALL                             R21 2 1
      485 SETTABLEKS                       R21 R20 K59 ["Content"]
      487 CALL                             R17 3 1
      488 SETTABLEKS                       R17 R16 K43 ["RightArmAssetSelector"]
      490 MOVE                             R17 R11
      491 JUMPIFNOT                        R17 ; [+40]
      492 GETUPVAL                         R17 7
      493 GETUPVAL                         R18 11
      494 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      495 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      497 LOADK                            R22 K13 ["BodySettings"]
      498 LOADK                            R23 K104 ["AppearanceSectionLeftLeg"]
      499 NAMECALL                         R20 R1 K15 ["getText"]
      501 CALL                             R20 3 1
      502 SETTABLEKS                       R20 R19 K31 ["text"]
      504 MOVE                             R20 R3
      505 CALL                             R20 0 1
      506 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      508 DUPTABLE                         R20 K60 [{"Content"}]
      509 GETUPVAL                         R21 7
      510 GETUPVAL                         R22 12
      511 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      512 GETTABLEKS                       R24 R6 K105 ["bodyAppearanceCustomPartsLeftLeg"]
      514 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      516 NEWTABLE                         R24 0 2
      518 GETIMPORT                        R25 K107 [Enum.AssetType.LeftLeg]
      520 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      522 SETLIST                          R24 R25 2 [1]
      524 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      526 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      528 CALL                             R21 2 1
      529 SETTABLEKS                       R21 R20 K59 ["Content"]
      531 CALL                             R17 3 1
      532 SETTABLEKS                       R17 R16 K44 ["LeftLegAssetSelector"]
      534 MOVE                             R17 R11
      535 JUMPIFNOT                        R17 ; [+40]
      536 GETUPVAL                         R17 7
      537 GETUPVAL                         R18 11
      538 DUPTABLE                         R19 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      539 SETTABLEKS                       R10 R19 K54 ["minTextLabelWidth"]
      541 LOADK                            R22 K13 ["BodySettings"]
      542 LOADK                            R23 K108 ["AppearanceSectionRightLeg"]
      543 NAMECALL                         R20 R1 K15 ["getText"]
      545 CALL                             R20 3 1
      546 SETTABLEKS                       R20 R19 K31 ["text"]
      548 MOVE                             R20 R3
      549 CALL                             R20 0 1
      550 SETTABLEKS                       R20 R19 K32 ["layoutOrder"]
      552 DUPTABLE                         R20 K60 [{"Content"}]
      553 GETUPVAL                         R21 7
      554 GETUPVAL                         R22 12
      555 DUPTABLE                         R23 K73 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      556 GETTABLEKS                       R24 R6 K109 ["bodyAppearanceCustomPartsRightLeg"]
      558 SETTABLEKS                       R24 R23 K61 ["assetIdSetting"]
      560 NEWTABLE                         R24 0 2
      562 GETIMPORT                        R25 K111 [Enum.AssetType.RightLeg]
      564 GETIMPORT                        R26 K71 [Enum.AssetType.Model]
      566 SETLIST                          R24 R25 2 [1]
      568 SETTABLEKS                       R24 R23 K62 ["expectedAssetType"]
      570 SETTABLEKS                       R12 R23 K63 ["assetCannotBeEmpty"]
      572 CALL                             R21 2 1
      573 SETTABLEKS                       R21 R20 K59 ["Content"]
      575 CALL                             R17 3 1
      576 SETTABLEKS                       R17 R16 K45 ["RightLegAssetSelector"]
      578 CALL                             R13 3 -1
      579 RETURN                           R13 -1

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
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K6 ["Src"]
      114 GETTABLEKS                       R17 R17 K30 ["Flags"]
      116 GETTABLEKS                       R17 R17 K31 ["getFFlagAvatarSettingsAllowEmptyBodyParts"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K6 ["Src"]
      123 GETTABLEKS                       R18 R18 K30 ["Flags"]
      125 GETTABLEKS                       R18 R18 K32 ["getFFlagAvatarSettingsWriteOverrides"]
      127 CALL                             R17 1 1
      128 DUPCLOSURE                       R18 K33 [PROTO_1]
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R15
      143 RETURN                           R18 1
