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
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
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
       55 GETTABLEKS                       R7 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R7 K19 ["bodySettings"]
       59 GETTABLEKS                       R7 R4 K2 ["settings"]
       61 GETTABLEKS                       R11 R7 K20 ["navigationBarSettings"]
       63 GETTABLEKS                       R10 R11 K21 ["avatarType"]
       65 GETTABLEKS                       R9 R10 K22 ["value"]
       67 GETIMPORT                        R10 K25 [Enum.GameAvatarType.R6]
       69 JUMPIFEQ                         R9 R10 ; [+2]
       71 LOADB                            R8 0 +1
       72 LOADB                            R8 1
       73 GETTABLEKS                       R10 R6 K26 ["bodyAppearanceSetting"]
       75 GETTABLEKS                       R9 R10 K22 ["value"]
       77 GETIMPORT                        R10 K29 [UDim.new]
       79 LOADN                            R11 0
       80 GETUPVAL                         R13 5
       81 GETTABLEKS                       R12 R13 K30 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
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
      139 JUMPIFNOT                        R16 ; [+49]
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
      167 GETUPVAL                         R24 11
      168 JUMPIFNOT                        R24 ; [+9]
      169 NEWTABLE                         R23 0 2
      171 GETIMPORT                        R24 K68 [Enum.AssetType.Face]
      173 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      175 SETLIST                          R23 R24 2 [1]
      177 JUMP                             ; [+2]
      178 GETIMPORT                        R23 K68 [Enum.AssetType.Face]
      180 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      182 LOADB                            R23 1
      183 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K59 ["Content"]
      188 CALL                             R16 3 1
      189 SETTABLEKS                       R16 R15 K36 ["FaceAssetSelector"]
      191 MOVE                             R16 R11
      192 JUMPIFNOT                        R16 ; [+44]
      193 GETUPVAL                         R16 6
      194 GETUPVAL                         R17 9
      195 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      196 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      198 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      199 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      201 LOADK                            R21 K13 ["BodySettings"]
      202 LOADK                            R22 K71 ["AppearanceSectionHead"]
      203 NAMECALL                         R19 R1 K15 ["getText"]
      205 CALL                             R19 3 1
      206 SETTABLEKS                       R19 R18 K31 ["text"]
      208 MOVE                             R19 R3
      209 CALL                             R19 0 1
      210 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      212 DUPTABLE                         R19 K60 [{"Content"}]
      213 GETUPVAL                         R20 6
      214 GETUPVAL                         R21 10
      215 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      216 GETTABLEKS                       R23 R6 K72 ["bodyAppearanceCustomPartsHead"]
      218 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      220 NEWTABLE                         R23 0 2
      222 GETIMPORT                        R24 K74 [Enum.AssetType.Head]
      224 GETIMPORT                        R25 K76 [Enum.AssetType.DynamicHead]
      226 SETLIST                          R23 R24 2 [1]
      228 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      230 LOADB                            R23 1
      231 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K59 ["Content"]
      236 CALL                             R16 3 1
      237 SETTABLEKS                       R16 R15 K37 ["HeadAssetSelector"]
      239 MOVE                             R16 R11
      240 JUMPIFNOT                        R16 ; [+40]
      241 NOT                              R16 R8
      242 JUMPIFNOT                        R16 ; [+38]
      243 GETUPVAL                         R16 6
      244 GETUPVAL                         R17 9
      245 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      246 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      248 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      249 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      251 LOADK                            R21 K13 ["BodySettings"]
      252 LOADK                            R22 K77 ["AppearanceSectionMood"]
      253 NAMECALL                         R19 R1 K15 ["getText"]
      255 CALL                             R19 3 1
      256 SETTABLEKS                       R19 R18 K31 ["text"]
      258 MOVE                             R19 R3
      259 CALL                             R19 0 1
      260 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      262 DUPTABLE                         R19 K60 [{"Content"}]
      263 GETUPVAL                         R20 6
      264 GETUPVAL                         R21 10
      265 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      266 GETTABLEKS                       R23 R6 K79 ["bodyAppearanceCustomPartsMood"]
      268 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      270 LOADB                            R23 1
      271 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      273 GETIMPORT                        R23 K81 [Enum.AssetType.Animation]
      275 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      277 CALL                             R20 2 1
      278 SETTABLEKS                       R20 R19 K59 ["Content"]
      280 CALL                             R16 3 1
      281 SETTABLEKS                       R16 R15 K38 ["MoodAssetSelector"]
      283 GETUPVAL                         R16 12
      284 JUMPIFNOT                        R16 ; [+42]
      285 MOVE                             R16 R11
      286 JUMPIFNOT                        R16 ; [+40]
      287 NOT                              R16 R8
      288 JUMPIFNOT                        R16 ; [+38]
      289 GETUPVAL                         R16 6
      290 GETUPVAL                         R17 9
      291 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      292 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      294 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      295 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      297 LOADK                            R21 K13 ["BodySettings"]
      298 LOADK                            R22 K82 ["AppearanceSectionEyebrow"]
      299 NAMECALL                         R19 R1 K15 ["getText"]
      301 CALL                             R19 3 1
      302 SETTABLEKS                       R19 R18 K31 ["text"]
      304 MOVE                             R19 R3
      305 CALL                             R19 0 1
      306 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      308 DUPTABLE                         R19 K60 [{"Content"}]
      309 GETUPVAL                         R20 6
      310 GETUPVAL                         R21 10
      311 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      312 GETTABLEKS                       R23 R6 K83 ["bodyAppearanceCustomPartsEyebrow"]
      314 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      316 LOADB                            R23 1
      317 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      319 GETIMPORT                        R23 K85 [Enum.AssetType.EyebrowAccessory]
      321 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K59 ["Content"]
      326 CALL                             R16 3 1
      327 SETTABLEKS                       R16 R15 K39 ["EyebrowAssetSelector"]
      329 GETUPVAL                         R16 12
      330 JUMPIFNOT                        R16 ; [+42]
      331 MOVE                             R16 R11
      332 JUMPIFNOT                        R16 ; [+40]
      333 NOT                              R16 R8
      334 JUMPIFNOT                        R16 ; [+38]
      335 GETUPVAL                         R16 6
      336 GETUPVAL                         R17 9
      337 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      338 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      340 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      341 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      343 LOADK                            R21 K13 ["BodySettings"]
      344 LOADK                            R22 K86 ["AppearanceSectionEyelash"]
      345 NAMECALL                         R19 R1 K15 ["getText"]
      347 CALL                             R19 3 1
      348 SETTABLEKS                       R19 R18 K31 ["text"]
      350 MOVE                             R19 R3
      351 CALL                             R19 0 1
      352 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      354 DUPTABLE                         R19 K60 [{"Content"}]
      355 GETUPVAL                         R20 6
      356 GETUPVAL                         R21 10
      357 DUPTABLE                         R22 K78 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      358 GETTABLEKS                       R23 R6 K87 ["bodyAppearanceCustomPartsEyelash"]
      360 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      362 LOADB                            R23 1
      363 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      365 GETIMPORT                        R23 K89 [Enum.AssetType.EyelashAccessory]
      367 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      369 CALL                             R20 2 1
      370 SETTABLEKS                       R20 R19 K59 ["Content"]
      372 CALL                             R16 3 1
      373 SETTABLEKS                       R16 R15 K40 ["EyelashAssetSelector"]
      375 MOVE                             R16 R11
      376 JUMPIFNOT                        R16 ; [+49]
      377 GETUPVAL                         R16 6
      378 GETUPVAL                         R17 9
      379 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      380 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      382 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      383 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      385 LOADK                            R21 K13 ["BodySettings"]
      386 LOADK                            R22 K90 ["AppearanceSectionTorso"]
      387 NAMECALL                         R19 R1 K15 ["getText"]
      389 CALL                             R19 3 1
      390 SETTABLEKS                       R19 R18 K31 ["text"]
      392 MOVE                             R19 R3
      393 CALL                             R19 0 1
      394 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      396 DUPTABLE                         R19 K60 [{"Content"}]
      397 GETUPVAL                         R20 6
      398 GETUPVAL                         R21 10
      399 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      400 GETTABLEKS                       R23 R6 K91 ["bodyAppearanceCustomPartsTorso"]
      402 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      404 GETUPVAL                         R24 11
      405 JUMPIFNOT                        R24 ; [+9]
      406 NEWTABLE                         R23 0 2
      408 GETIMPORT                        R24 K93 [Enum.AssetType.Torso]
      410 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      412 SETLIST                          R23 R24 2 [1]
      414 JUMP                             ; [+2]
      415 GETIMPORT                        R23 K93 [Enum.AssetType.Torso]
      417 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      419 LOADB                            R23 1
      420 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      422 CALL                             R20 2 1
      423 SETTABLEKS                       R20 R19 K59 ["Content"]
      425 CALL                             R16 3 1
      426 SETTABLEKS                       R16 R15 K41 ["TorsoAssetSelector"]
      428 MOVE                             R16 R11
      429 JUMPIFNOT                        R16 ; [+49]
      430 GETUPVAL                         R16 6
      431 GETUPVAL                         R17 9
      432 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      433 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      435 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      436 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      438 LOADK                            R21 K13 ["BodySettings"]
      439 LOADK                            R22 K94 ["AppearanceSectionLeftArm"]
      440 NAMECALL                         R19 R1 K15 ["getText"]
      442 CALL                             R19 3 1
      443 SETTABLEKS                       R19 R18 K31 ["text"]
      445 MOVE                             R19 R3
      446 CALL                             R19 0 1
      447 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      449 DUPTABLE                         R19 K60 [{"Content"}]
      450 GETUPVAL                         R20 6
      451 GETUPVAL                         R21 10
      452 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      453 GETTABLEKS                       R23 R6 K95 ["bodyAppearanceCustomPartsLeftArm"]
      455 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      457 GETUPVAL                         R24 11
      458 JUMPIFNOT                        R24 ; [+9]
      459 NEWTABLE                         R23 0 2
      461 GETIMPORT                        R24 K97 [Enum.AssetType.LeftArm]
      463 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      465 SETLIST                          R23 R24 2 [1]
      467 JUMP                             ; [+2]
      468 GETIMPORT                        R23 K97 [Enum.AssetType.LeftArm]
      470 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      472 LOADB                            R23 1
      473 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      475 CALL                             R20 2 1
      476 SETTABLEKS                       R20 R19 K59 ["Content"]
      478 CALL                             R16 3 1
      479 SETTABLEKS                       R16 R15 K42 ["LeftArmAssetSelector"]
      481 MOVE                             R16 R11
      482 JUMPIFNOT                        R16 ; [+49]
      483 GETUPVAL                         R16 6
      484 GETUPVAL                         R17 9
      485 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      486 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      488 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      489 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      491 LOADK                            R21 K13 ["BodySettings"]
      492 LOADK                            R22 K98 ["AppearanceSectionRightArm"]
      493 NAMECALL                         R19 R1 K15 ["getText"]
      495 CALL                             R19 3 1
      496 SETTABLEKS                       R19 R18 K31 ["text"]
      498 MOVE                             R19 R3
      499 CALL                             R19 0 1
      500 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      502 DUPTABLE                         R19 K60 [{"Content"}]
      503 GETUPVAL                         R20 6
      504 GETUPVAL                         R21 10
      505 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      506 GETTABLEKS                       R23 R6 K99 ["bodyAppearanceCustomPartsRightArm"]
      508 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      510 GETUPVAL                         R24 11
      511 JUMPIFNOT                        R24 ; [+9]
      512 NEWTABLE                         R23 0 2
      514 GETIMPORT                        R24 K101 [Enum.AssetType.RightArm]
      516 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      518 SETLIST                          R23 R24 2 [1]
      520 JUMP                             ; [+2]
      521 GETIMPORT                        R23 K101 [Enum.AssetType.RightArm]
      523 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      525 LOADB                            R23 1
      526 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      528 CALL                             R20 2 1
      529 SETTABLEKS                       R20 R19 K59 ["Content"]
      531 CALL                             R16 3 1
      532 SETTABLEKS                       R16 R15 K43 ["RightArmAssetSelector"]
      534 MOVE                             R16 R11
      535 JUMPIFNOT                        R16 ; [+49]
      536 GETUPVAL                         R16 6
      537 GETUPVAL                         R17 9
      538 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      539 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      541 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      542 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      544 LOADK                            R21 K13 ["BodySettings"]
      545 LOADK                            R22 K102 ["AppearanceSectionLeftLeg"]
      546 NAMECALL                         R19 R1 K15 ["getText"]
      548 CALL                             R19 3 1
      549 SETTABLEKS                       R19 R18 K31 ["text"]
      551 MOVE                             R19 R3
      552 CALL                             R19 0 1
      553 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      555 DUPTABLE                         R19 K60 [{"Content"}]
      556 GETUPVAL                         R20 6
      557 GETUPVAL                         R21 10
      558 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      559 GETTABLEKS                       R23 R6 K103 ["bodyAppearanceCustomPartsLeftLeg"]
      561 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      563 GETUPVAL                         R24 11
      564 JUMPIFNOT                        R24 ; [+9]
      565 NEWTABLE                         R23 0 2
      567 GETIMPORT                        R24 K105 [Enum.AssetType.LeftLeg]
      569 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      571 SETLIST                          R23 R24 2 [1]
      573 JUMP                             ; [+2]
      574 GETIMPORT                        R23 K105 [Enum.AssetType.LeftLeg]
      576 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      578 LOADB                            R23 1
      579 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      581 CALL                             R20 2 1
      582 SETTABLEKS                       R20 R19 K59 ["Content"]
      584 CALL                             R16 3 1
      585 SETTABLEKS                       R16 R15 K44 ["LeftLegAssetSelector"]
      587 MOVE                             R16 R11
      588 JUMPIFNOT                        R16 ; [+49]
      589 GETUPVAL                         R16 6
      590 GETUPVAL                         R17 9
      591 DUPTABLE                         R18 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      592 SETTABLEKS                       R10 R18 K54 ["minTextLabelWidth"]
      594 LOADK                            R19 K57 ["AvatarSettings-LeftTextPrimary"]
      595 SETTABLEKS                       R19 R18 K55 ["textLabelTags"]
      597 LOADK                            R21 K13 ["BodySettings"]
      598 LOADK                            R22 K106 ["AppearanceSectionRightLeg"]
      599 NAMECALL                         R19 R1 K15 ["getText"]
      601 CALL                             R19 3 1
      602 SETTABLEKS                       R19 R18 K31 ["text"]
      604 MOVE                             R19 R3
      605 CALL                             R19 0 1
      606 SETTABLEKS                       R19 R18 K32 ["layoutOrder"]
      608 DUPTABLE                         R19 K60 [{"Content"}]
      609 GETUPVAL                         R20 6
      610 GETUPVAL                         R21 10
      611 DUPTABLE                         R22 K64 [{"assetIdSetting", "expectedAssetType", "assetCannotBeEmpty"}]
      612 GETTABLEKS                       R23 R6 K107 ["bodyAppearanceCustomPartsRightLeg"]
      614 SETTABLEKS                       R23 R22 K61 ["assetIdSetting"]
      616 GETUPVAL                         R24 11
      617 JUMPIFNOT                        R24 ; [+9]
      618 NEWTABLE                         R23 0 2
      620 GETIMPORT                        R24 K109 [Enum.AssetType.RightLeg]
      622 GETIMPORT                        R25 K70 [Enum.AssetType.Model]
      624 SETLIST                          R23 R24 2 [1]
      626 JUMP                             ; [+2]
      627 GETIMPORT                        R23 K109 [Enum.AssetType.RightLeg]
      629 SETTABLEKS                       R23 R22 K62 ["expectedAssetType"]
      631 LOADB                            R23 1
      632 SETTABLEKS                       R23 R22 K63 ["assetCannotBeEmpty"]
      634 CALL                             R20 2 1
      635 SETTABLEKS                       R20 R19 K59 ["Content"]
      637 CALL                             R16 3 1
      638 SETTABLEKS                       R16 R15 K45 ["RightLegAssetSelector"]
      640 CALL                             R12 3 -1
      641 RETURN                           R12 -1

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
       99 GETTABLEKS                       R13 R8 K24 ["createNextOrder"]
      101 GETTABLEKS                       R14 R7 K25 ["createElement"]
      103 GETIMPORT                        R15 K27 [game]
      105 LOADK                            R17 K28 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
      106 NAMECALL                         R15 R15 K29 ["GetEngineFeature"]
      108 CALL                             R15 2 1
      109 GETIMPORT                        R16 K27 [game]
      111 LOADK                            R18 K30 ["AvatarSettingsEyebrowEyelashSelectors"]
      112 LOADB                            R19 0
      113 NAMECALL                         R16 R16 K31 ["DefineFastFlag"]
      115 CALL                             R16 3 1
      116 DUPCLOSURE                       R17 K32 [PROTO_1]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R16
      130 RETURN                           R17 1
