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
      139 JUMPIFNOT                        R16 ; [+44]
      140 GETUPVAL                         R16 6
      141 GETUPVAL                         R17 9
      142 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      143 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      145 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      146 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      148 LOADK                            R21 K13 ["BodySettings"]
      149 LOADK                            R22 K58 ["AppearanceSectionFace"]
      150 NAMECALL                         R19 R1 K15 ["getText"]
      152 CALL                             R19 3 1
      153 SETTABLEKS                       R19 R18 K31 ["text"]
      155 MOVE                             R19 R3
      156 CALL                             R19 0 1
      157 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      159 DUPTABLE                         R19 K60 [{"Content"}]
      160 GETUPVAL                         R20 6
      161 GETUPVAL                         R21 10
      162 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      163 GETTABLEKS                       R23 R6 K65 ["bodyAppearanceCustomPartsFace"]
      165 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      167 NEWTABLE                         R23 0 2
      169 GETIMPORT                        R24 K68 [Enum.AssetType.Face]
      171 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      173 SETLIST                          R23 R24 2 [1]
      175 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      177 LOADB                            R23 1
      178 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      180 CALL                             R20 2 1
      181 SETTABLEKS                       R20 R19 K59 ["Content"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K36 ["FaceAssetSelector"]
      186 MOVE                             R16 R11
      187 JUMPIFNOT                        R16 ; [+44]
      188 GETUPVAL                         R16 6
      189 GETUPVAL                         R17 9
      190 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      191 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      193 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      194 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      196 LOADK                            R21 K13 ["BodySettings"]
      197 LOADK                            R22 K71 ["AppearanceSectionHead"]
      198 NAMECALL                         R19 R1 K15 ["getText"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K31 ["text"]
      203 MOVE                             R19 R3
      204 CALL                             R19 0 1
      205 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      207 DUPTABLE                         R19 K60 [{"Content"}]
      208 GETUPVAL                         R20 6
      209 GETUPVAL                         R21 10
      210 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      211 GETTABLEKS                       R23 R6 K72 ["bodyAppearanceCustomPartsHead"]
      213 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      215 NEWTABLE                         R23 0 2
      217 GETIMPORT                        R24 K74 [Enum.AssetType.Head]
      219 GETIMPORT                        R25 K76 [Enum.AssetType.DynamicHead]
      221 SETLIST                          R23 R24 2 [1]
      223 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      225 LOADB                            R23 1
      226 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      228 CALL                             R20 2 1
      229 SETTABLEKS                       R20 R19 K59 ["Content"]
      231 CALL                             R16 3 1
      232 SETTABLEKS                       R16 R15 K37 ["HeadAssetSelector"]
      234 MOVE                             R16 R11
      235 JUMPIFNOT                        R16 ; [+40]
      236 NOT                              R16 R8
      237 JUMPIFNOT                        R16 ; [+38]
      238 GETUPVAL                         R16 6
      239 GETUPVAL                         R17 9
      240 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      241 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      243 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      244 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      246 LOADK                            R21 K13 ["BodySettings"]
      247 LOADK                            R22 K77 ["AppearanceSectionMood"]
      248 NAMECALL                         R19 R1 K15 ["getText"]
      250 CALL                             R19 3 1
      251 SETTABLEKS                       R19 R18 K31 ["text"]
      253 MOVE                             R19 R3
      254 CALL                             R19 0 1
      255 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      257 DUPTABLE                         R19 K60 [{"Content"}]
      258 GETUPVAL                         R20 6
      259 GETUPVAL                         R21 10
      260 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      261 GETTABLEKS                       R23 R6 K79 ["bodyAppearanceCustomPartsMood"]
      263 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      265 LOADB                            R23 1
      266 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      268 GETIMPORT                        R23 K81 [Enum.AssetType.Animation]
      270 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      272 CALL                             R20 2 1
      273 SETTABLEKS                       R20 R19 K59 ["Content"]
      275 CALL                             R16 3 1
      276 SETTABLEKS                       R16 R15 K38 ["MoodAssetSelector"]
      278 GETUPVAL                         R16 11
      279 JUMPIFNOT                        R16 ; [+42]
      280 MOVE                             R16 R11
      281 JUMPIFNOT                        R16 ; [+40]
      282 NOT                              R16 R8
      283 JUMPIFNOT                        R16 ; [+38]
      284 GETUPVAL                         R16 6
      285 GETUPVAL                         R17 9
      286 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      287 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      289 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      290 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      292 LOADK                            R21 K13 ["BodySettings"]
      293 LOADK                            R22 K82 ["AppearanceSectionEyebrow"]
      294 NAMECALL                         R19 R1 K15 ["getText"]
      296 CALL                             R19 3 1
      297 SETTABLEKS                       R19 R18 K31 ["text"]
      299 MOVE                             R19 R3
      300 CALL                             R19 0 1
      301 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      303 DUPTABLE                         R19 K60 [{"Content"}]
      304 GETUPVAL                         R20 6
      305 GETUPVAL                         R21 10
      306 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      307 GETTABLEKS                       R23 R6 K83 ["bodyAppearanceCustomPartsEyebrow"]
      309 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      311 LOADB                            R23 1
      312 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      314 GETIMPORT                        R23 K85 [Enum.AssetType.EyebrowAccessory]
      316 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      318 CALL                             R20 2 1
      319 SETTABLEKS                       R20 R19 K59 ["Content"]
      321 CALL                             R16 3 1
      322 SETTABLEKS                       R16 R15 K39 ["EyebrowAssetSelector"]
      324 GETUPVAL                         R16 11
      325 JUMPIFNOT                        R16 ; [+42]
      326 MOVE                             R16 R11
      327 JUMPIFNOT                        R16 ; [+40]
      328 NOT                              R16 R8
      329 JUMPIFNOT                        R16 ; [+38]
      330 GETUPVAL                         R16 6
      331 GETUPVAL                         R17 9
      332 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      333 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      335 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      336 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      338 LOADK                            R21 K13 ["BodySettings"]
      339 LOADK                            R22 K86 ["AppearanceSectionEyelash"]
      340 NAMECALL                         R19 R1 K15 ["getText"]
      342 CALL                             R19 3 1
      343 SETTABLEKS                       R19 R18 K31 ["text"]
      345 MOVE                             R19 R3
      346 CALL                             R19 0 1
      347 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      349 DUPTABLE                         R19 K60 [{"Content"}]
      350 GETUPVAL                         R20 6
      351 GETUPVAL                         R21 10
      352 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      353 GETTABLEKS                       R23 R6 K87 ["bodyAppearanceCustomPartsEyelash"]
      355 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      357 LOADB                            R23 1
      358 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      360 GETIMPORT                        R23 K89 [Enum.AssetType.EyelashAccessory]
      362 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      364 CALL                             R20 2 1
      365 SETTABLEKS                       R20 R19 K59 ["Content"]
      367 CALL                             R16 3 1
      368 SETTABLEKS                       R16 R15 K40 ["EyelashAssetSelector"]
      370 MOVE                             R16 R11
      371 JUMPIFNOT                        R16 ; [+44]
      372 GETUPVAL                         R16 6
      373 GETUPVAL                         R17 9
      374 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      375 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      377 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      378 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      380 LOADK                            R21 K13 ["BodySettings"]
      381 LOADK                            R22 K90 ["AppearanceSectionTorso"]
      382 NAMECALL                         R19 R1 K15 ["getText"]
      384 CALL                             R19 3 1
      385 SETTABLEKS                       R19 R18 K31 ["text"]
      387 MOVE                             R19 R3
      388 CALL                             R19 0 1
      389 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      391 DUPTABLE                         R19 K60 [{"Content"}]
      392 GETUPVAL                         R20 6
      393 GETUPVAL                         R21 10
      394 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      395 GETTABLEKS                       R23 R6 K91 ["bodyAppearanceCustomPartsTorso"]
      397 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      399 NEWTABLE                         R23 0 2
      401 GETIMPORT                        R24 K93 [Enum.AssetType.Torso]
      403 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      405 SETLIST                          R23 R24 2 [1]
      407 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      409 LOADB                            R23 1
      410 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      412 CALL                             R20 2 1
      413 SETTABLEKS                       R20 R19 K59 ["Content"]
      415 CALL                             R16 3 1
      416 SETTABLEKS                       R16 R15 K41 ["TorsoAssetSelector"]
      418 MOVE                             R16 R11
      419 JUMPIFNOT                        R16 ; [+44]
      420 GETUPVAL                         R16 6
      421 GETUPVAL                         R17 9
      422 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      423 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      425 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      426 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      428 LOADK                            R21 K13 ["BodySettings"]
      429 LOADK                            R22 K94 ["AppearanceSectionLeftArm"]
      430 NAMECALL                         R19 R1 K15 ["getText"]
      432 CALL                             R19 3 1
      433 SETTABLEKS                       R19 R18 K31 ["text"]
      435 MOVE                             R19 R3
      436 CALL                             R19 0 1
      437 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      439 DUPTABLE                         R19 K60 [{"Content"}]
      440 GETUPVAL                         R20 6
      441 GETUPVAL                         R21 10
      442 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      443 GETTABLEKS                       R23 R6 K95 ["bodyAppearanceCustomPartsLeftArm"]
      445 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      447 NEWTABLE                         R23 0 2
      449 GETIMPORT                        R24 K97 [Enum.AssetType.LeftArm]
      451 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      453 SETLIST                          R23 R24 2 [1]
      455 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      457 LOADB                            R23 1
      458 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      460 CALL                             R20 2 1
      461 SETTABLEKS                       R20 R19 K59 ["Content"]
      463 CALL                             R16 3 1
      464 SETTABLEKS                       R16 R15 K42 ["LeftArmAssetSelector"]
      466 MOVE                             R16 R11
      467 JUMPIFNOT                        R16 ; [+44]
      468 GETUPVAL                         R16 6
      469 GETUPVAL                         R17 9
      470 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      471 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      473 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      474 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      476 LOADK                            R21 K13 ["BodySettings"]
      477 LOADK                            R22 K98 ["AppearanceSectionRightArm"]
      478 NAMECALL                         R19 R1 K15 ["getText"]
      480 CALL                             R19 3 1
      481 SETTABLEKS                       R19 R18 K31 ["text"]
      483 MOVE                             R19 R3
      484 CALL                             R19 0 1
      485 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      487 DUPTABLE                         R19 K60 [{"Content"}]
      488 GETUPVAL                         R20 6
      489 GETUPVAL                         R21 10
      490 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      491 GETTABLEKS                       R23 R6 K99 ["bodyAppearanceCustomPartsRightArm"]
      493 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      495 NEWTABLE                         R23 0 2
      497 GETIMPORT                        R24 K101 [Enum.AssetType.RightArm]
      499 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      501 SETLIST                          R23 R24 2 [1]
      503 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      505 LOADB                            R23 1
      506 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      508 CALL                             R20 2 1
      509 SETTABLEKS                       R20 R19 K59 ["Content"]
      511 CALL                             R16 3 1
      512 SETTABLEKS                       R16 R15 K43 ["RightArmAssetSelector"]
      514 MOVE                             R16 R11
      515 JUMPIFNOT                        R16 ; [+44]
      516 GETUPVAL                         R16 6
      517 GETUPVAL                         R17 9
      518 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      519 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      521 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      522 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      524 LOADK                            R21 K13 ["BodySettings"]
      525 LOADK                            R22 K102 ["AppearanceSectionLeftLeg"]
      526 NAMECALL                         R19 R1 K15 ["getText"]
      528 CALL                             R19 3 1
      529 SETTABLEKS                       R19 R18 K31 ["text"]
      531 MOVE                             R19 R3
      532 CALL                             R19 0 1
      533 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      535 DUPTABLE                         R19 K60 [{"Content"}]
      536 GETUPVAL                         R20 6
      537 GETUPVAL                         R21 10
      538 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      539 GETTABLEKS                       R23 R6 K103 ["bodyAppearanceCustomPartsLeftLeg"]
      541 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      543 NEWTABLE                         R23 0 2
      545 GETIMPORT                        R24 K105 [Enum.AssetType.LeftLeg]
      547 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      549 SETLIST                          R23 R24 2 [1]
      551 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      553 LOADB                            R23 1
      554 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      556 CALL                             R20 2 1
      557 SETTABLEKS                       R20 R19 K59 ["Content"]
      559 CALL                             R16 3 1
      560 SETTABLEKS                       R16 R15 K44 ["LeftLegAssetSelector"]
      562 MOVE                             R16 R11
      563 JUMPIFNOT                        R16 ; [+44]
      564 GETUPVAL                         R16 6
      565 GETUPVAL                         R17 9
      566 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      567 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      569 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      570 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      572 LOADK                            R21 K13 ["BodySettings"]
      573 LOADK                            R22 K106 ["AppearanceSectionRightLeg"]
      574 NAMECALL                         R19 R1 K15 ["getText"]
      576 CALL                             R19 3 1
      577 SETTABLEKS                       R19 R18 K31 ["text"]
      579 MOVE                             R19 R3
      580 CALL                             R19 0 1
      581 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      583 DUPTABLE                         R19 K60 [{"Content"}]
      584 GETUPVAL                         R20 6
      585 GETUPVAL                         R21 10
      586 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      587 GETTABLEKS                       R23 R6 K107 ["bodyAppearanceCustomPartsRightLeg"]
      589 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      591 NEWTABLE                         R23 0 2
      593 GETIMPORT                        R24 K109 [Enum.AssetType.RightLeg]
      595 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      597 SETLIST                          R23 R24 2 [1]
      599 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      601 LOADB                            R23 1
      602 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      604 CALL                             R20 2 1
      605 SETTABLEKS                       R20 R19 K59 ["Content"]
      607 CALL                             R16 3 1
      608 SETTABLEKS                       R16 R15 K45 ["RightLegAssetSelector"]
      610 CALL                             R12 3 -1
      611 RETURN                           R12 -1

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
