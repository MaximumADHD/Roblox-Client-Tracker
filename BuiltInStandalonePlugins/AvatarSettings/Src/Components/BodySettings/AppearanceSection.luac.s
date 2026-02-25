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
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["bodyAppearanceSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
       32 NEWTABLE                         R5 0 2
       34 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["BodySettings"]
       40 LOADK                            R10 K14 ["AppearanceSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["BodySettings"]
       52 LOADK                            R11 K18 ["AppearanceSectionCustomPartsButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["bodySettings"]
       64 GETTABLEKS                       R7 R4 K2 ["settings"]
       66 GETTABLEKS                       R11 R7 K20 ["navigationBarSettings"]
       68 GETTABLEKS                       R10 R11 K21 ["avatarType"]
       70 GETTABLEKS                       R9 R10 K22 ["value"]
       72 GETIMPORT                        R10 K25 [Enum.GameAvatarType.R6]
       74 JUMPIFEQ                         R9 R10 ; [+2]
       76 LOADB                            R8 0 +1
       77 LOADB                            R8 1
       78 GETTABLEKS                       R10 R6 K26 ["bodyAppearanceSetting"]
       80 GETTABLEKS                       R9 R10 K22 ["value"]
       82 GETIMPORT                        R10 K29 [UDim.new]
       84 LOADN                            R11 0
       85 GETUPVAL                         R13 6
       86 GETTABLEKS                       R12 R13 K30 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       88 CALL                             R10 2 1
       89 GETIMPORT                        R12 K17 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       91 JUMPIFEQ                         R9 R12 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 GETUPVAL                         R12 7
       96 GETUPVAL                         R13 8
       97 DUPTABLE                         R14 K33 [{"text", "layoutOrder"}]
       98 LOADK                            R17 K13 ["BodySettings"]
       99 LOADK                            R18 K34 ["AppearanceSection"]
      100 NAMECALL                         R15 R1 K15 ["getText"]
      102 CALL                             R15 3 1
      103 SETTABLEKS                       R15 R14 K31 ["text"]
      105 GETTABLEKS                       R15 R0 K32 ["layoutOrder"]
      107 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      109 DUPTABLE                         R15 K46 [{"AppearanceGenericModeSelector", "FaceAssetSelector", "HeadAssetSelector", "MoodAssetSelector", "EyebrowAssetSelector", "EyelashAssetSelector", "TorsoAssetSelector", "LeftArmAssetSelector", "RightArmAssetSelector", "LeftLegAssetSelector", "RightLegAssetSelector"}]
      110 GETUPVAL                         R16 7
      111 GETUPVAL                         R17 9
      112 DUPTABLE                         R18 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      113 MOVE                             R19 R3
      114 CALL                             R19 0 1
      115 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      117 SETTABLEKS                       R5 R18 K47 ["items"]
      119 SETTABLEKS                       R9 R18 K48 ["selected"]
      121 GETUPVAL                         R20 1
      122 CALL                             R20 0 1
      123 JUMPIFNOT                        R20 ; [+5]
      124 NEWCLOSURE                       R19 P0
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 JUMP                             ; [+4]
      129 GETTABLEKS                       R20 R6 K26 ["bodyAppearanceSetting"]
      131 GETTABLEKS                       R19 R20 K52 ["set"]
      133 SETTABLEKS                       R19 R18 K49 ["onItemActivated"]
      135 LOADK                            R21 K13 ["BodySettings"]
      136 GETIMPORT                        R23 K12 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
      138 JUMPIFNOTEQ                      R9 R23 ; [+3]
      140 LOADK                            R22 K53 ["AppearanceSectionPlayerChoiceSubText"]
      141 JUMP                             ; [+1]
      142 LOADK                            R22 K54 ["AppearanceSectionCustomPartsSubText"]
      143 NAMECALL                         R19 R1 K15 ["getText"]
      145 CALL                             R19 3 1
      146 SETTABLEKS                       R19 R18 K50 ["subText"]
      148 CALL                             R16 2 1
      149 SETTABLEKS                       R16 R15 K35 ["AppearanceGenericModeSelector"]
      151 MOVE                             R16 R11
      152 JUMPIFNOT                        R16 ; [+49]
      153 GETUPVAL                         R16 7
      154 GETUPVAL                         R17 10
      155 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      156 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      158 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      159 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      161 LOADK                            R21 K13 ["BodySettings"]
      162 LOADK                            R22 K59 ["AppearanceSectionFace"]
      163 NAMECALL                         R19 R1 K15 ["getText"]
      165 CALL                             R19 3 1
      166 SETTABLEKS                       R19 R18 K31 ["text"]
      168 MOVE                             R19 R3
      169 CALL                             R19 0 1
      170 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      172 DUPTABLE                         R19 K61 [{"Content"}]
      173 GETUPVAL                         R20 7
      174 GETUPVAL                         R21 11
      175 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      176 GETTABLEKS                       R23 R6 K66 ["bodyAppearanceCustomPartsFace"]
      178 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      180 GETUPVAL                         R24 12
      181 JUMPIFNOT                        R24 ; [+9]
      182 NEWTABLE                         R23 0 2
      184 GETIMPORT                        R24 K69 [Enum.AssetType.Face]
      186 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      188 SETLIST                          R23 R24 2 [1]
      190 JUMP                             ; [+2]
      191 GETIMPORT                        R23 K69 [Enum.AssetType.Face]
      193 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      195 LOADB                            R23 1
      196 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      198 CALL                             R20 2 1
      199 SETTABLEKS                       R20 R19 K60 ["Content"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K36 ["FaceAssetSelector"]
      204 MOVE                             R16 R11
      205 JUMPIFNOT                        R16 ; [+44]
      206 GETUPVAL                         R16 7
      207 GETUPVAL                         R17 10
      208 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      209 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      211 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      212 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      214 LOADK                            R21 K13 ["BodySettings"]
      215 LOADK                            R22 K72 ["AppearanceSectionHead"]
      216 NAMECALL                         R19 R1 K15 ["getText"]
      218 CALL                             R19 3 1
      219 SETTABLEKS                       R19 R18 K31 ["text"]
      221 MOVE                             R19 R3
      222 CALL                             R19 0 1
      223 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      225 DUPTABLE                         R19 K61 [{"Content"}]
      226 GETUPVAL                         R20 7
      227 GETUPVAL                         R21 11
      228 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      229 GETTABLEKS                       R23 R6 K73 ["bodyAppearanceCustomPartsHead"]
      231 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      233 NEWTABLE                         R23 0 2
      235 GETIMPORT                        R24 K75 [Enum.AssetType.Head]
      237 GETIMPORT                        R25 K77 [Enum.AssetType.DynamicHead]
      239 SETLIST                          R23 R24 2 [1]
      241 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      243 LOADB                            R23 1
      244 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      246 CALL                             R20 2 1
      247 SETTABLEKS                       R20 R19 K60 ["Content"]
      249 CALL                             R16 3 1
      250 SETTABLEKS                       R16 R15 K37 ["HeadAssetSelector"]
      252 MOVE                             R16 R11
      253 JUMPIFNOT                        R16 ; [+40]
      254 NOT                              R16 R8
      255 JUMPIFNOT                        R16 ; [+38]
      256 GETUPVAL                         R16 7
      257 GETUPVAL                         R17 10
      258 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      259 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      261 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      262 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      264 LOADK                            R21 K13 ["BodySettings"]
      265 LOADK                            R22 K78 ["AppearanceSectionMood"]
      266 NAMECALL                         R19 R1 K15 ["getText"]
      268 CALL                             R19 3 1
      269 SETTABLEKS                       R19 R18 K31 ["text"]
      271 MOVE                             R19 R3
      272 CALL                             R19 0 1
      273 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      275 DUPTABLE                         R19 K61 [{"Content"}]
      276 GETUPVAL                         R20 7
      277 GETUPVAL                         R21 11
      278 DUPTABLE                         R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      279 GETTABLEKS                       R23 R6 K80 ["bodyAppearanceCustomPartsMood"]
      281 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      283 LOADB                            R23 1
      284 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      286 GETIMPORT                        R23 K82 [Enum.AssetType.Animation]
      288 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      290 CALL                             R20 2 1
      291 SETTABLEKS                       R20 R19 K60 ["Content"]
      293 CALL                             R16 3 1
      294 SETTABLEKS                       R16 R15 K38 ["MoodAssetSelector"]
      296 GETUPVAL                         R16 13
      297 JUMPIFNOT                        R16 ; [+42]
      298 MOVE                             R16 R11
      299 JUMPIFNOT                        R16 ; [+40]
      300 NOT                              R16 R8
      301 JUMPIFNOT                        R16 ; [+38]
      302 GETUPVAL                         R16 7
      303 GETUPVAL                         R17 10
      304 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      305 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      307 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      308 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      310 LOADK                            R21 K13 ["BodySettings"]
      311 LOADK                            R22 K83 ["AppearanceSectionEyebrow"]
      312 NAMECALL                         R19 R1 K15 ["getText"]
      314 CALL                             R19 3 1
      315 SETTABLEKS                       R19 R18 K31 ["text"]
      317 MOVE                             R19 R3
      318 CALL                             R19 0 1
      319 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      321 DUPTABLE                         R19 K61 [{"Content"}]
      322 GETUPVAL                         R20 7
      323 GETUPVAL                         R21 11
      324 DUPTABLE                         R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      325 GETTABLEKS                       R23 R6 K84 ["bodyAppearanceCustomPartsEyebrow"]
      327 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      329 LOADB                            R23 1
      330 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      332 GETIMPORT                        R23 K86 [Enum.AssetType.EyebrowAccessory]
      334 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      336 CALL                             R20 2 1
      337 SETTABLEKS                       R20 R19 K60 ["Content"]
      339 CALL                             R16 3 1
      340 SETTABLEKS                       R16 R15 K39 ["EyebrowAssetSelector"]
      342 GETUPVAL                         R16 13
      343 JUMPIFNOT                        R16 ; [+42]
      344 MOVE                             R16 R11
      345 JUMPIFNOT                        R16 ; [+40]
      346 NOT                              R16 R8
      347 JUMPIFNOT                        R16 ; [+38]
      348 GETUPVAL                         R16 7
      349 GETUPVAL                         R17 10
      350 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      351 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      353 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      354 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      356 LOADK                            R21 K13 ["BodySettings"]
      357 LOADK                            R22 K87 ["AppearanceSectionEyelash"]
      358 NAMECALL                         R19 R1 K15 ["getText"]
      360 CALL                             R19 3 1
      361 SETTABLEKS                       R19 R18 K31 ["text"]
      363 MOVE                             R19 R3
      364 CALL                             R19 0 1
      365 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      367 DUPTABLE                         R19 K61 [{"Content"}]
      368 GETUPVAL                         R20 7
      369 GETUPVAL                         R21 11
      370 DUPTABLE                         R22 K79 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      371 GETTABLEKS                       R23 R6 K88 ["bodyAppearanceCustomPartsEyelash"]
      373 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      375 LOADB                            R23 1
      376 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      378 GETIMPORT                        R23 K90 [Enum.AssetType.EyelashAccessory]
      380 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      382 CALL                             R20 2 1
      383 SETTABLEKS                       R20 R19 K60 ["Content"]
      385 CALL                             R16 3 1
      386 SETTABLEKS                       R16 R15 K40 ["EyelashAssetSelector"]
      388 MOVE                             R16 R11
      389 JUMPIFNOT                        R16 ; [+49]
      390 GETUPVAL                         R16 7
      391 GETUPVAL                         R17 10
      392 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      393 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      395 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      396 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      398 LOADK                            R21 K13 ["BodySettings"]
      399 LOADK                            R22 K91 ["AppearanceSectionTorso"]
      400 NAMECALL                         R19 R1 K15 ["getText"]
      402 CALL                             R19 3 1
      403 SETTABLEKS                       R19 R18 K31 ["text"]
      405 MOVE                             R19 R3
      406 CALL                             R19 0 1
      407 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      409 DUPTABLE                         R19 K61 [{"Content"}]
      410 GETUPVAL                         R20 7
      411 GETUPVAL                         R21 11
      412 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      413 GETTABLEKS                       R23 R6 K92 ["bodyAppearanceCustomPartsTorso"]
      415 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      417 GETUPVAL                         R24 12
      418 JUMPIFNOT                        R24 ; [+9]
      419 NEWTABLE                         R23 0 2
      421 GETIMPORT                        R24 K94 [Enum.AssetType.Torso]
      423 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      425 SETLIST                          R23 R24 2 [1]
      427 JUMP                             ; [+2]
      428 GETIMPORT                        R23 K94 [Enum.AssetType.Torso]
      430 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      432 LOADB                            R23 1
      433 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      435 CALL                             R20 2 1
      436 SETTABLEKS                       R20 R19 K60 ["Content"]
      438 CALL                             R16 3 1
      439 SETTABLEKS                       R16 R15 K41 ["TorsoAssetSelector"]
      441 MOVE                             R16 R11
      442 JUMPIFNOT                        R16 ; [+49]
      443 GETUPVAL                         R16 7
      444 GETUPVAL                         R17 10
      445 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      446 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      448 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      449 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      451 LOADK                            R21 K13 ["BodySettings"]
      452 LOADK                            R22 K95 ["AppearanceSectionLeftArm"]
      453 NAMECALL                         R19 R1 K15 ["getText"]
      455 CALL                             R19 3 1
      456 SETTABLEKS                       R19 R18 K31 ["text"]
      458 MOVE                             R19 R3
      459 CALL                             R19 0 1
      460 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      462 DUPTABLE                         R19 K61 [{"Content"}]
      463 GETUPVAL                         R20 7
      464 GETUPVAL                         R21 11
      465 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      466 GETTABLEKS                       R23 R6 K96 ["bodyAppearanceCustomPartsLeftArm"]
      468 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      470 GETUPVAL                         R24 12
      471 JUMPIFNOT                        R24 ; [+9]
      472 NEWTABLE                         R23 0 2
      474 GETIMPORT                        R24 K98 [Enum.AssetType.LeftArm]
      476 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      478 SETLIST                          R23 R24 2 [1]
      480 JUMP                             ; [+2]
      481 GETIMPORT                        R23 K98 [Enum.AssetType.LeftArm]
      483 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      485 LOADB                            R23 1
      486 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      488 CALL                             R20 2 1
      489 SETTABLEKS                       R20 R19 K60 ["Content"]
      491 CALL                             R16 3 1
      492 SETTABLEKS                       R16 R15 K42 ["LeftArmAssetSelector"]
      494 MOVE                             R16 R11
      495 JUMPIFNOT                        R16 ; [+49]
      496 GETUPVAL                         R16 7
      497 GETUPVAL                         R17 10
      498 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      499 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      501 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      502 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      504 LOADK                            R21 K13 ["BodySettings"]
      505 LOADK                            R22 K99 ["AppearanceSectionRightArm"]
      506 NAMECALL                         R19 R1 K15 ["getText"]
      508 CALL                             R19 3 1
      509 SETTABLEKS                       R19 R18 K31 ["text"]
      511 MOVE                             R19 R3
      512 CALL                             R19 0 1
      513 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      515 DUPTABLE                         R19 K61 [{"Content"}]
      516 GETUPVAL                         R20 7
      517 GETUPVAL                         R21 11
      518 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      519 GETTABLEKS                       R23 R6 K100 ["bodyAppearanceCustomPartsRightArm"]
      521 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      523 GETUPVAL                         R24 12
      524 JUMPIFNOT                        R24 ; [+9]
      525 NEWTABLE                         R23 0 2
      527 GETIMPORT                        R24 K102 [Enum.AssetType.RightArm]
      529 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      531 SETLIST                          R23 R24 2 [1]
      533 JUMP                             ; [+2]
      534 GETIMPORT                        R23 K102 [Enum.AssetType.RightArm]
      536 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      538 LOADB                            R23 1
      539 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      541 CALL                             R20 2 1
      542 SETTABLEKS                       R20 R19 K60 ["Content"]
      544 CALL                             R16 3 1
      545 SETTABLEKS                       R16 R15 K43 ["RightArmAssetSelector"]
      547 MOVE                             R16 R11
      548 JUMPIFNOT                        R16 ; [+49]
      549 GETUPVAL                         R16 7
      550 GETUPVAL                         R17 10
      551 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      552 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      554 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      555 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      557 LOADK                            R21 K13 ["BodySettings"]
      558 LOADK                            R22 K103 ["AppearanceSectionLeftLeg"]
      559 NAMECALL                         R19 R1 K15 ["getText"]
      561 CALL                             R19 3 1
      562 SETTABLEKS                       R19 R18 K31 ["text"]
      564 MOVE                             R19 R3
      565 CALL                             R19 0 1
      566 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      568 DUPTABLE                         R19 K61 [{"Content"}]
      569 GETUPVAL                         R20 7
      570 GETUPVAL                         R21 11
      571 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      572 GETTABLEKS                       R23 R6 K104 ["bodyAppearanceCustomPartsLeftLeg"]
      574 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      576 GETUPVAL                         R24 12
      577 JUMPIFNOT                        R24 ; [+9]
      578 NEWTABLE                         R23 0 2
      580 GETIMPORT                        R24 K106 [Enum.AssetType.LeftLeg]
      582 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      584 SETLIST                          R23 R24 2 [1]
      586 JUMP                             ; [+2]
      587 GETIMPORT                        R23 K106 [Enum.AssetType.LeftLeg]
      589 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      591 LOADB                            R23 1
      592 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      594 CALL                             R20 2 1
      595 SETTABLEKS                       R20 R19 K60 ["Content"]
      597 CALL                             R16 3 1
      598 SETTABLEKS                       R16 R15 K44 ["LeftLegAssetSelector"]
      600 MOVE                             R16 R11
      601 JUMPIFNOT                        R16 ; [+49]
      602 GETUPVAL                         R16 7
      603 GETUPVAL                         R17 10
      604 DUPTABLE                         R18 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      605 SETTABLEKS                       R10 R18 K55 ["minTextLabelWidth"]
      607 LOADK                            R19 K58 ["AvatarSettings-LeftTextPrimary"]
      608 SETTABLEKS                       R19 R18 K56 ["textLabelTags"]
      610 LOADK                            R21 K13 ["BodySettings"]
      611 LOADK                            R22 K107 ["AppearanceSectionRightLeg"]
      612 NAMECALL                         R19 R1 K15 ["getText"]
      614 CALL                             R19 3 1
      615 SETTABLEKS                       R19 R18 K31 ["text"]
      617 MOVE                             R19 R3
      618 CALL                             R19 0 1
      619 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      621 DUPTABLE                         R19 K61 [{"Content"}]
      622 GETUPVAL                         R20 7
      623 GETUPVAL                         R21 11
      624 DUPTABLE                         R22 K65 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      625 GETTABLEKS                       R23 R6 K108 ["bodyAppearanceCustomPartsRightLeg"]
      627 SETTABLEKS                       R23 R22 K62 ["assetIdSetting"]
      629 GETUPVAL                         R24 12
      630 JUMPIFNOT                        R24 ; [+9]
      631 NEWTABLE                         R23 0 2
      633 GETIMPORT                        R24 K110 [Enum.AssetType.RightLeg]
      635 GETIMPORT                        R25 K71 [Enum.AssetType.Model]
      637 SETLIST                          R23 R24 2 [1]
      639 JUMP                             ; [+2]
      640 GETIMPORT                        R23 K110 [Enum.AssetType.RightLeg]
      642 SETTABLEKS                       R23 R22 K63 ["expectedAssetType"]
      644 LOADB                            R23 1
      645 SETTABLEKS                       R23 R22 K64 ["assetCannotBeEmpty"]
      647 CALL                             R20 2 1
      648 SETTABLEKS                       R20 R19 K60 ["Content"]
      650 CALL                             R16 3 1
      651 SETTABLEKS                       R16 R15 K45 ["RightLegAssetSelector"]
      653 CALL                             R12 3 -1
      654 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetIdSelector"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Components"]
       22 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       24 GETTABLEKS                       R3 R4 K10 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K11 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K7 ["Components"]
       42 GETTABLEKS                       R5 R6 K13 ["ExpandableSection"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R7 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R7 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R9 K7 ["Components"]
       58 GETTABLEKS                       R7 R8 K16 ["GenericModeSelector"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K14 ["Packages"]
       65 GETTABLEKS                       R8 R9 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K14 ["Packages"]
       72 GETTABLEKS                       R9 R10 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K7 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETTABLEKS                       R10 R5 K20 ["ContextServices"]
       86 GETTABLEKS                       R11 R10 K21 ["Localization"]
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R16 R0 K6 ["Src"]
       92 GETTABLEKS                       R15 R16 K11 ["Util"]
       94 GETTABLEKS                       R14 R15 K22 ["Telemetry"]
       96 GETTABLEKS                       R13 R14 K23 ["TelemetryContext"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R16 R0 K6 ["Src"]
      103 GETTABLEKS                       R15 R16 K24 ["Flags"]
      105 GETTABLEKS                       R14 R15 K25 ["getFFlagAddTelemetry"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R8 K26 ["createNextOrder"]
      110 GETTABLEKS                       R15 R7 K27 ["createElement"]
      112 GETIMPORT                        R16 K29 [game]
      114 LOADK                            R18 K30 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
      115 NAMECALL                         R16 R16 K31 ["GetEngineFeature"]
      117 CALL                             R16 2 1
      118 GETIMPORT                        R17 K29 [game]
      120 LOADK                            R19 K32 ["AvatarSettingsEyebrowEyelashSelectors"]
      121 LOADB                            R20 0
      122 NAMECALL                         R17 R17 K33 ["DefineFastFlag"]
      124 CALL                             R17 3 1
      125 DUPCLOSURE                       R18 K34 [PROTO_1]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R17
      140 RETURN                           R18 1
