PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AnimationClipsModeSelected"]
        5 DUPTABLE                         R4 K2 [{"animationClipsMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["animationClipsMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["animationClipsSetting"]
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
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["AnimationSettings"]
       35 LOADK                            R10 K14 ["AnimationClipsSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["AnimationSettings"]
       47 LOADK                            R11 K18 ["AnimationClipsSectionCustomClipsButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["animationSettings"]
       59 GETTABLEKS                       R7 R6 K20 ["animationPacksSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETTABLEKS                       R8 R6 K22 ["animationClipsSetting"]
       65 GETTABLEKS                       R8 R8 K21 ["value"]
       67 GETIMPORT                        R9 K25 [UDim.new]
       69 LOADN                            R10 0
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R11 R11 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       73 CALL                             R9 2 1
       74 GETIMPORT                        R11 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       76 JUMPIFEQ                         R8 R11 ; [+2]
       78 LOADB                            R10 0 +1
       79 LOADB                            R10 1
       80 GETUPVAL                         R11 6
       81 GETUPVAL                         R12 7
       82 DUPTABLE                         R13 K31 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       83 LOADK                            R16 K13 ["AnimationSettings"]
       84 LOADK                            R17 K32 ["AnimationClipsSection"]
       85 NAMECALL                         R14 R1 K15 ["getText"]
       87 CALL                             R14 3 1
       88 SETTABLEKS                       R14 R13 K27 ["text"]
       90 GETTABLEKS                       R14 R0 K28 ["layoutOrder"]
       92 SETTABLEKS                       R14 R13 K28 ["layoutOrder"]
       94 DUPTABLE                         R14 K44 [{"AnimationClipsModeSelector", "RunAssetSelector", "WalkAssetSelector", "FallAssetSelector", "JumpAssetSelector", "IdleAssetSelector", "IdleAlt1AssetSelector", "IdleAlt2AssetSelector", "SwimAssetSelector", "SwimIdleAssetSelector", "ClimbAssetSelector"}]
       95 GETUPVAL                         R15 6
       96 GETUPVAL                         R16 8
       97 DUPTABLE                         R17 K49 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       98 MOVE                             R18 R3
       99 CALL                             R18 0 1
      100 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      102 SETTABLEKS                       R5 R17 K45 ["items"]
      104 SETTABLEKS                       R8 R17 K46 ["selected"]
      106 NEWCLOSURE                       R18 P0
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R18 R17 K47 ["onItemActivated"]
      112 LOADK                            R20 K13 ["AnimationSettings"]
      113 GETIMPORT                        R22 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
      115 JUMPIFNOTEQ                      R8 R22 ; [+3]
      117 LOADK                            R21 K50 ["AnimationClipsSectionPlayerChoiceSubText"]
      118 JUMP                             ; [+13]
      119 GETIMPORT                        R22 K52 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
      121 JUMPIFNOTEQ                      R7 R22 ; [+3]
      123 LOADK                            R21 K53 ["AnimationClipsSectionCustomClipsPlayerChoiceSubText"]
      124 JUMP                             ; [+7]
      125 GETIMPORT                        R22 K55 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
      127 JUMPIFNOTEQ                      R7 R22 ; [+3]
      129 LOADK                            R21 K56 ["AnimationClipsSectionCustomClipsStandardR15SubText"]
      130 JUMP                             ; [+1]
      131 LOADK                            R21 K57 ["AnimationClipsSectionCustomClipsStandardR6SubText"]
      132 NAMECALL                         R18 R1 K15 ["getText"]
      134 CALL                             R18 3 1
      135 SETTABLEKS                       R18 R17 K48 ["subText"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K33 ["AnimationClipsModeSelector"]
      140 MOVE                             R15 R10
      141 JUMPIFNOT                        R15 ; [+32]
      142 GETUPVAL                         R15 6
      143 GETUPVAL                         R16 9
      144 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      145 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      147 LOADK                            R20 K13 ["AnimationSettings"]
      148 LOADK                            R21 K62 ["AnimationClipsSectionCustomClipsRun"]
      149 NAMECALL                         R18 R1 K15 ["getText"]
      151 CALL                             R18 3 1
      152 SETTABLEKS                       R18 R17 K27 ["text"]
      154 MOVE                             R18 R3
      155 CALL                             R18 0 1
      156 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      158 DUPTABLE                         R18 K64 [{"Content"}]
      159 GETUPVAL                         R19 6
      160 GETUPVAL                         R20 10
      161 DUPTABLE                         R21 K68 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      162 GETTABLEKS                       R22 R6 K69 ["animationClipsRunSetting"]
      164 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      166 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      168 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      170 CALL                             R19 2 1
      171 SETTABLEKS                       R19 R18 K63 ["Content"]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K34 ["RunAssetSelector"]
      176 MOVE                             R15 R10
      177 JUMPIFNOT                        R15 ; [+32]
      178 GETUPVAL                         R15 6
      179 GETUPVAL                         R16 9
      180 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      181 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      183 LOADK                            R20 K13 ["AnimationSettings"]
      184 LOADK                            R21 K73 ["AnimationClipsSectionCustomClipsWalk"]
      185 NAMECALL                         R18 R1 K15 ["getText"]
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K27 ["text"]
      190 MOVE                             R18 R3
      191 CALL                             R18 0 1
      192 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      194 DUPTABLE                         R18 K64 [{"Content"}]
      195 GETUPVAL                         R19 6
      196 GETUPVAL                         R20 10
      197 DUPTABLE                         R21 K68 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      198 GETTABLEKS                       R22 R6 K74 ["animationClipsWalkSetting"]
      200 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      202 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      204 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      206 CALL                             R19 2 1
      207 SETTABLEKS                       R19 R18 K63 ["Content"]
      209 CALL                             R15 3 1
      210 SETTABLEKS                       R15 R14 K35 ["WalkAssetSelector"]
      212 MOVE                             R15 R10
      213 JUMPIFNOT                        R15 ; [+32]
      214 GETUPVAL                         R15 6
      215 GETUPVAL                         R16 9
      216 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      217 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      219 LOADK                            R20 K13 ["AnimationSettings"]
      220 LOADK                            R21 K75 ["AnimationClipsSectionCustomClipsFall"]
      221 NAMECALL                         R18 R1 K15 ["getText"]
      223 CALL                             R18 3 1
      224 SETTABLEKS                       R18 R17 K27 ["text"]
      226 MOVE                             R18 R3
      227 CALL                             R18 0 1
      228 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      230 DUPTABLE                         R18 K64 [{"Content"}]
      231 GETUPVAL                         R19 6
      232 GETUPVAL                         R20 10
      233 DUPTABLE                         R21 K68 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      234 GETTABLEKS                       R22 R6 K76 ["animationClipsFallSetting"]
      236 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      238 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      240 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K63 ["Content"]
      245 CALL                             R15 3 1
      246 SETTABLEKS                       R15 R14 K36 ["FallAssetSelector"]
      248 MOVE                             R15 R10
      249 JUMPIFNOT                        R15 ; [+32]
      250 GETUPVAL                         R15 6
      251 GETUPVAL                         R16 9
      252 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      253 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      255 LOADK                            R20 K13 ["AnimationSettings"]
      256 LOADK                            R21 K77 ["AnimationClipsSectionCustomClipsJump"]
      257 NAMECALL                         R18 R1 K15 ["getText"]
      259 CALL                             R18 3 1
      260 SETTABLEKS                       R18 R17 K27 ["text"]
      262 MOVE                             R18 R3
      263 CALL                             R18 0 1
      264 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      266 DUPTABLE                         R18 K64 [{"Content"}]
      267 GETUPVAL                         R19 6
      268 GETUPVAL                         R20 10
      269 DUPTABLE                         R21 K68 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      270 GETTABLEKS                       R22 R6 K78 ["animationClipsJumpSetting"]
      272 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      274 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      276 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      278 CALL                             R19 2 1
      279 SETTABLEKS                       R19 R18 K63 ["Content"]
      281 CALL                             R15 3 1
      282 SETTABLEKS                       R15 R14 K37 ["JumpAssetSelector"]
      284 MOVE                             R15 R10
      285 JUMPIFNOT                        R15 ; [+32]
      286 GETUPVAL                         R15 6
      287 GETUPVAL                         R16 9
      288 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      289 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      291 LOADK                            R20 K13 ["AnimationSettings"]
      292 LOADK                            R21 K79 ["AnimationClipsSectionCustomClipsIdle"]
      293 NAMECALL                         R18 R1 K15 ["getText"]
      295 CALL                             R18 3 1
      296 SETTABLEKS                       R18 R17 K27 ["text"]
      298 MOVE                             R18 R3
      299 CALL                             R18 0 1
      300 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      302 DUPTABLE                         R18 K64 [{"Content"}]
      303 GETUPVAL                         R19 6
      304 GETUPVAL                         R20 10
      305 DUPTABLE                         R21 K82 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"], ["animationType"] = "Animation1"}]
      306 GETTABLEKS                       R22 R6 K83 ["animationClipsIdleSetting"]
      308 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      310 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      312 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      314 CALL                             R19 2 1
      315 SETTABLEKS                       R19 R18 K63 ["Content"]
      317 CALL                             R15 3 1
      318 SETTABLEKS                       R15 R14 K38 ["IdleAssetSelector"]
      320 MOVE                             R15 R10
      321 JUMPIFNOT                        R15 ; [+32]
      322 GETUPVAL                         R15 6
      323 GETUPVAL                         R16 9
      324 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      325 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      327 LOADK                            R20 K13 ["AnimationSettings"]
      328 LOADK                            R21 K84 ["AnimationClipsSectionCustomClipsIdleAlt1"]
      329 NAMECALL                         R18 R1 K15 ["getText"]
      331 CALL                             R18 3 1
      332 SETTABLEKS                       R18 R17 K27 ["text"]
      334 MOVE                             R18 R3
      335 CALL                             R18 0 1
      336 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      338 DUPTABLE                         R18 K64 [{"Content"}]
      339 GETUPVAL                         R19 6
      340 GETUPVAL                         R20 10
      341 DUPTABLE                         R21 K86 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"], ["animationType"] = "Animation2"}]
      342 GETTABLEKS                       R22 R6 K87 ["animationClipsIdleAlt1Setting"]
      344 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      346 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      348 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      350 CALL                             R19 2 1
      351 SETTABLEKS                       R19 R18 K63 ["Content"]
      353 CALL                             R15 3 1
      354 SETTABLEKS                       R15 R14 K39 ["IdleAlt1AssetSelector"]
      356 MOVE                             R15 R10
      357 JUMPIFNOT                        R15 ; [+32]
      358 GETUPVAL                         R15 6
      359 GETUPVAL                         R16 9
      360 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      361 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      363 LOADK                            R20 K13 ["AnimationSettings"]
      364 LOADK                            R21 K88 ["AnimationClipsSectionCustomClipsIdleAlt2"]
      365 NAMECALL                         R18 R1 K15 ["getText"]
      367 CALL                             R18 3 1
      368 SETTABLEKS                       R18 R17 K27 ["text"]
      370 MOVE                             R18 R3
      371 CALL                             R18 0 1
      372 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      374 DUPTABLE                         R18 K64 [{"Content"}]
      375 GETUPVAL                         R19 6
      376 GETUPVAL                         R20 10
      377 DUPTABLE                         R21 K90 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"], ["animationType"] = "Animation3"}]
      378 GETTABLEKS                       R22 R6 K91 ["animationClipsIdleAlt2Setting"]
      380 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      382 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      384 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      386 CALL                             R19 2 1
      387 SETTABLEKS                       R19 R18 K63 ["Content"]
      389 CALL                             R15 3 1
      390 SETTABLEKS                       R15 R14 K40 ["IdleAlt2AssetSelector"]
      392 MOVE                             R15 R10
      393 JUMPIFNOT                        R15 ; [+32]
      394 GETUPVAL                         R15 6
      395 GETUPVAL                         R16 9
      396 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      397 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      399 LOADK                            R20 K13 ["AnimationSettings"]
      400 LOADK                            R21 K92 ["AnimationClipsSectionCustomClipsSwim"]
      401 NAMECALL                         R18 R1 K15 ["getText"]
      403 CALL                             R18 3 1
      404 SETTABLEKS                       R18 R17 K27 ["text"]
      406 MOVE                             R18 R3
      407 CALL                             R18 0 1
      408 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      410 DUPTABLE                         R18 K64 [{"Content"}]
      411 GETUPVAL                         R19 6
      412 GETUPVAL                         R20 10
      413 DUPTABLE                         R21 K94 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"], ["animationType"] = "Swim"}]
      414 GETTABLEKS                       R22 R6 K95 ["animationClipsSwimSetting"]
      416 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      418 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      420 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      422 CALL                             R19 2 1
      423 SETTABLEKS                       R19 R18 K63 ["Content"]
      425 CALL                             R15 3 1
      426 SETTABLEKS                       R15 R14 K41 ["SwimAssetSelector"]
      428 MOVE                             R15 R10
      429 JUMPIFNOT                        R15 ; [+32]
      430 GETUPVAL                         R15 6
      431 GETUPVAL                         R16 9
      432 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      433 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      435 LOADK                            R20 K13 ["AnimationSettings"]
      436 LOADK                            R21 K96 ["AnimationClipsSectionCustomClipsSwimIdle"]
      437 NAMECALL                         R18 R1 K15 ["getText"]
      439 CALL                             R18 3 1
      440 SETTABLEKS                       R18 R17 K27 ["text"]
      442 MOVE                             R18 R3
      443 CALL                             R18 0 1
      444 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      446 DUPTABLE                         R18 K64 [{"Content"}]
      447 GETUPVAL                         R19 6
      448 GETUPVAL                         R20 10
      449 DUPTABLE                         R21 K98 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"], ["animationType"] = "SwimIdle"}]
      450 GETTABLEKS                       R22 R6 K99 ["animationClipsSwimIdleSetting"]
      452 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      454 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      456 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      458 CALL                             R19 2 1
      459 SETTABLEKS                       R19 R18 K63 ["Content"]
      461 CALL                             R15 3 1
      462 SETTABLEKS                       R15 R14 K42 ["SwimIdleAssetSelector"]
      464 MOVE                             R15 R10
      465 JUMPIFNOT                        R15 ; [+32]
      466 GETUPVAL                         R15 6
      467 GETUPVAL                         R16 9
      468 DUPTABLE                         R17 K61 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      469 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      471 LOADK                            R20 K13 ["AnimationSettings"]
      472 LOADK                            R21 K100 ["AnimationClipsSectionCustomClipsClimb"]
      473 NAMECALL                         R18 R1 K15 ["getText"]
      475 CALL                             R18 3 1
      476 SETTABLEKS                       R18 R17 K27 ["text"]
      478 MOVE                             R18 R3
      479 CALL                             R18 0 1
      480 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      482 DUPTABLE                         R18 K64 [{"Content"}]
      483 GETUPVAL                         R19 6
      484 GETUPVAL                         R20 10
      485 DUPTABLE                         R21 K68 [{["assetIdSetting"], ["assetCannotBeEmpty"] = True, ["expectedAssetType"]}]
      486 GETTABLEKS                       R22 R6 K101 ["animationClipsClimbSetting"]
      488 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      490 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      492 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      494 CALL                             R19 2 1
      495 SETTABLEKS                       R19 R18 K63 ["Content"]
      497 CALL                             R15 3 1
      498 SETTABLEKS                       R15 R14 K43 ["ClimbAssetSelector"]
      500 CALL                             R11 3 -1
      501 RETURN                           R11 -1

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
      103 DUPCLOSURE                       R15 K26 [PROTO_1]
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R1
      115 RETURN                           R15 1
