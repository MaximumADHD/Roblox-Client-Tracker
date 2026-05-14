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
       82 DUPTABLE                         R13 K30 [{"text", "layoutOrder", "showWarning"}]
       83 LOADK                            R16 K13 ["AnimationSettings"]
       84 LOADK                            R17 K31 ["AnimationClipsSection"]
       85 NAMECALL                         R14 R1 K15 ["getText"]
       87 CALL                             R14 3 1
       88 SETTABLEKS                       R14 R13 K27 ["text"]
       90 GETTABLEKS                       R14 R0 K28 ["layoutOrder"]
       92 SETTABLEKS                       R14 R13 K28 ["layoutOrder"]
       94 LOADB                            R14 1
       95 SETTABLEKS                       R14 R13 K29 ["showWarning"]
       97 DUPTABLE                         R14 K43 [{"AnimationClipsModeSelector", "RunAssetSelector", "WalkAssetSelector", "FallAssetSelector", "JumpAssetSelector", "IdleAssetSelector", "IdleAlt1AssetSelector", "IdleAlt2AssetSelector", "SwimAssetSelector", "SwimIdleAssetSelector", "ClimbAssetSelector"}]
       98 GETUPVAL                         R15 6
       99 GETUPVAL                         R16 8
      100 DUPTABLE                         R17 K48 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      101 MOVE                             R18 R3
      102 CALL                             R18 0 1
      103 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      105 SETTABLEKS                       R5 R17 K44 ["items"]
      107 SETTABLEKS                       R8 R17 K45 ["selected"]
      109 NEWCLOSURE                       R18 P0
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R18 R17 K46 ["onItemActivated"]
      115 LOADK                            R20 K13 ["AnimationSettings"]
      116 GETIMPORT                        R22 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
      118 JUMPIFNOTEQ                      R8 R22 ; [+3]
      120 LOADK                            R21 K49 ["AnimationClipsSectionPlayerChoiceSubText"]
      121 JUMP                             ; [+13]
      122 GETIMPORT                        R22 K51 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
      124 JUMPIFNOTEQ                      R7 R22 ; [+3]
      126 LOADK                            R21 K52 ["AnimationClipsSectionCustomClipsPlayerChoiceSubText"]
      127 JUMP                             ; [+7]
      128 GETIMPORT                        R22 K54 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
      130 JUMPIFNOTEQ                      R7 R22 ; [+3]
      132 LOADK                            R21 K55 ["AnimationClipsSectionCustomClipsStandardR15SubText"]
      133 JUMP                             ; [+1]
      134 LOADK                            R21 K56 ["AnimationClipsSectionCustomClipsStandardR6SubText"]
      135 NAMECALL                         R18 R1 K15 ["getText"]
      137 CALL                             R18 3 1
      138 SETTABLEKS                       R18 R17 K47 ["subText"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K32 ["AnimationClipsModeSelector"]
      143 MOVE                             R15 R10
      144 JUMPIFNOT                        R15 ; [+38]
      145 GETUPVAL                         R15 6
      146 GETUPVAL                         R16 9
      147 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      148 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      150 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      151 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      153 LOADK                            R20 K13 ["AnimationSettings"]
      154 LOADK                            R21 K61 ["AnimationClipsSectionCustomClipsRun"]
      155 NAMECALL                         R18 R1 K15 ["getText"]
      157 CALL                             R18 3 1
      158 SETTABLEKS                       R18 R17 K27 ["text"]
      160 MOVE                             R18 R3
      161 CALL                             R18 0 1
      162 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      164 DUPTABLE                         R18 K63 [{"Content"}]
      165 GETUPVAL                         R19 6
      166 GETUPVAL                         R20 10
      167 DUPTABLE                         R21 K67 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      168 GETTABLEKS                       R22 R6 K68 ["animationClipsRunSetting"]
      170 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      172 LOADB                            R22 1
      173 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      175 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      177 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K62 ["Content"]
      182 CALL                             R15 3 1
      183 SETTABLEKS                       R15 R14 K33 ["RunAssetSelector"]
      185 MOVE                             R15 R10
      186 JUMPIFNOT                        R15 ; [+38]
      187 GETUPVAL                         R15 6
      188 GETUPVAL                         R16 9
      189 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      190 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      192 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      193 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      195 LOADK                            R20 K13 ["AnimationSettings"]
      196 LOADK                            R21 K72 ["AnimationClipsSectionCustomClipsWalk"]
      197 NAMECALL                         R18 R1 K15 ["getText"]
      199 CALL                             R18 3 1
      200 SETTABLEKS                       R18 R17 K27 ["text"]
      202 MOVE                             R18 R3
      203 CALL                             R18 0 1
      204 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      206 DUPTABLE                         R18 K63 [{"Content"}]
      207 GETUPVAL                         R19 6
      208 GETUPVAL                         R20 10
      209 DUPTABLE                         R21 K67 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      210 GETTABLEKS                       R22 R6 K73 ["animationClipsWalkSetting"]
      212 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      214 LOADB                            R22 1
      215 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      217 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      219 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      221 CALL                             R19 2 1
      222 SETTABLEKS                       R19 R18 K62 ["Content"]
      224 CALL                             R15 3 1
      225 SETTABLEKS                       R15 R14 K34 ["WalkAssetSelector"]
      227 MOVE                             R15 R10
      228 JUMPIFNOT                        R15 ; [+38]
      229 GETUPVAL                         R15 6
      230 GETUPVAL                         R16 9
      231 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      232 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      234 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      235 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      237 LOADK                            R20 K13 ["AnimationSettings"]
      238 LOADK                            R21 K74 ["AnimationClipsSectionCustomClipsFall"]
      239 NAMECALL                         R18 R1 K15 ["getText"]
      241 CALL                             R18 3 1
      242 SETTABLEKS                       R18 R17 K27 ["text"]
      244 MOVE                             R18 R3
      245 CALL                             R18 0 1
      246 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      248 DUPTABLE                         R18 K63 [{"Content"}]
      249 GETUPVAL                         R19 6
      250 GETUPVAL                         R20 10
      251 DUPTABLE                         R21 K67 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      252 GETTABLEKS                       R22 R6 K75 ["animationClipsFallSetting"]
      254 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      256 LOADB                            R22 1
      257 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      259 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      261 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      263 CALL                             R19 2 1
      264 SETTABLEKS                       R19 R18 K62 ["Content"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K35 ["FallAssetSelector"]
      269 MOVE                             R15 R10
      270 JUMPIFNOT                        R15 ; [+38]
      271 GETUPVAL                         R15 6
      272 GETUPVAL                         R16 9
      273 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      274 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      276 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      277 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      279 LOADK                            R20 K13 ["AnimationSettings"]
      280 LOADK                            R21 K76 ["AnimationClipsSectionCustomClipsJump"]
      281 NAMECALL                         R18 R1 K15 ["getText"]
      283 CALL                             R18 3 1
      284 SETTABLEKS                       R18 R17 K27 ["text"]
      286 MOVE                             R18 R3
      287 CALL                             R18 0 1
      288 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      290 DUPTABLE                         R18 K63 [{"Content"}]
      291 GETUPVAL                         R19 6
      292 GETUPVAL                         R20 10
      293 DUPTABLE                         R21 K67 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      294 GETTABLEKS                       R22 R6 K77 ["animationClipsJumpSetting"]
      296 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      298 LOADB                            R22 1
      299 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      301 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      303 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      305 CALL                             R19 2 1
      306 SETTABLEKS                       R19 R18 K62 ["Content"]
      308 CALL                             R15 3 1
      309 SETTABLEKS                       R15 R14 K36 ["JumpAssetSelector"]
      311 MOVE                             R15 R10
      312 JUMPIFNOT                        R15 ; [+41]
      313 GETUPVAL                         R15 6
      314 GETUPVAL                         R16 9
      315 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      316 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      318 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      319 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      321 LOADK                            R20 K13 ["AnimationSettings"]
      322 LOADK                            R21 K78 ["AnimationClipsSectionCustomClipsIdle"]
      323 NAMECALL                         R18 R1 K15 ["getText"]
      325 CALL                             R18 3 1
      326 SETTABLEKS                       R18 R17 K27 ["text"]
      328 MOVE                             R18 R3
      329 CALL                             R18 0 1
      330 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      332 DUPTABLE                         R18 K63 [{"Content"}]
      333 GETUPVAL                         R19 6
      334 GETUPVAL                         R20 10
      335 DUPTABLE                         R21 K80 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      336 GETTABLEKS                       R22 R6 K81 ["animationClipsIdleSetting"]
      338 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      340 LOADB                            R22 1
      341 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      343 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      345 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      347 LOADK                            R22 K82 ["Animation1"]
      348 SETTABLEKS                       R22 R21 K79 ["animationType"]
      350 CALL                             R19 2 1
      351 SETTABLEKS                       R19 R18 K62 ["Content"]
      353 CALL                             R15 3 1
      354 SETTABLEKS                       R15 R14 K37 ["IdleAssetSelector"]
      356 MOVE                             R15 R10
      357 JUMPIFNOT                        R15 ; [+41]
      358 GETUPVAL                         R15 6
      359 GETUPVAL                         R16 9
      360 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      361 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      363 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      364 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      366 LOADK                            R20 K13 ["AnimationSettings"]
      367 LOADK                            R21 K83 ["AnimationClipsSectionCustomClipsIdleAlt1"]
      368 NAMECALL                         R18 R1 K15 ["getText"]
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R17 K27 ["text"]
      373 MOVE                             R18 R3
      374 CALL                             R18 0 1
      375 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      377 DUPTABLE                         R18 K63 [{"Content"}]
      378 GETUPVAL                         R19 6
      379 GETUPVAL                         R20 10
      380 DUPTABLE                         R21 K80 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      381 GETTABLEKS                       R22 R6 K84 ["animationClipsIdleAlt1Setting"]
      383 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      385 LOADB                            R22 1
      386 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      388 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      390 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      392 LOADK                            R22 K85 ["Animation2"]
      393 SETTABLEKS                       R22 R21 K79 ["animationType"]
      395 CALL                             R19 2 1
      396 SETTABLEKS                       R19 R18 K62 ["Content"]
      398 CALL                             R15 3 1
      399 SETTABLEKS                       R15 R14 K38 ["IdleAlt1AssetSelector"]
      401 MOVE                             R15 R10
      402 JUMPIFNOT                        R15 ; [+41]
      403 GETUPVAL                         R15 6
      404 GETUPVAL                         R16 9
      405 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      406 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      408 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      409 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      411 LOADK                            R20 K13 ["AnimationSettings"]
      412 LOADK                            R21 K86 ["AnimationClipsSectionCustomClipsIdleAlt2"]
      413 NAMECALL                         R18 R1 K15 ["getText"]
      415 CALL                             R18 3 1
      416 SETTABLEKS                       R18 R17 K27 ["text"]
      418 MOVE                             R18 R3
      419 CALL                             R18 0 1
      420 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      422 DUPTABLE                         R18 K63 [{"Content"}]
      423 GETUPVAL                         R19 6
      424 GETUPVAL                         R20 10
      425 DUPTABLE                         R21 K80 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      426 GETTABLEKS                       R22 R6 K87 ["animationClipsIdleAlt2Setting"]
      428 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      430 LOADB                            R22 1
      431 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      433 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      435 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      437 LOADK                            R22 K88 ["Animation3"]
      438 SETTABLEKS                       R22 R21 K79 ["animationType"]
      440 CALL                             R19 2 1
      441 SETTABLEKS                       R19 R18 K62 ["Content"]
      443 CALL                             R15 3 1
      444 SETTABLEKS                       R15 R14 K39 ["IdleAlt2AssetSelector"]
      446 MOVE                             R15 R10
      447 JUMPIFNOT                        R15 ; [+41]
      448 GETUPVAL                         R15 6
      449 GETUPVAL                         R16 9
      450 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      451 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      453 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      454 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      456 LOADK                            R20 K13 ["AnimationSettings"]
      457 LOADK                            R21 K89 ["AnimationClipsSectionCustomClipsSwim"]
      458 NAMECALL                         R18 R1 K15 ["getText"]
      460 CALL                             R18 3 1
      461 SETTABLEKS                       R18 R17 K27 ["text"]
      463 MOVE                             R18 R3
      464 CALL                             R18 0 1
      465 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      467 DUPTABLE                         R18 K63 [{"Content"}]
      468 GETUPVAL                         R19 6
      469 GETUPVAL                         R20 10
      470 DUPTABLE                         R21 K80 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      471 GETTABLEKS                       R22 R6 K90 ["animationClipsSwimSetting"]
      473 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      475 LOADB                            R22 1
      476 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      478 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      480 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      482 LOADK                            R22 K91 ["Swim"]
      483 SETTABLEKS                       R22 R21 K79 ["animationType"]
      485 CALL                             R19 2 1
      486 SETTABLEKS                       R19 R18 K62 ["Content"]
      488 CALL                             R15 3 1
      489 SETTABLEKS                       R15 R14 K40 ["SwimAssetSelector"]
      491 MOVE                             R15 R10
      492 JUMPIFNOT                        R15 ; [+41]
      493 GETUPVAL                         R15 6
      494 GETUPVAL                         R16 9
      495 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      496 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      498 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      499 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      501 LOADK                            R20 K13 ["AnimationSettings"]
      502 LOADK                            R21 K92 ["AnimationClipsSectionCustomClipsSwimIdle"]
      503 NAMECALL                         R18 R1 K15 ["getText"]
      505 CALL                             R18 3 1
      506 SETTABLEKS                       R18 R17 K27 ["text"]
      508 MOVE                             R18 R3
      509 CALL                             R18 0 1
      510 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      512 DUPTABLE                         R18 K63 [{"Content"}]
      513 GETUPVAL                         R19 6
      514 GETUPVAL                         R20 10
      515 DUPTABLE                         R21 K80 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      516 GETTABLEKS                       R22 R6 K93 ["animationClipsSwimIdleSetting"]
      518 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      520 LOADB                            R22 1
      521 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      523 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      525 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      527 LOADK                            R22 K94 ["SwimIdle"]
      528 SETTABLEKS                       R22 R21 K79 ["animationType"]
      530 CALL                             R19 2 1
      531 SETTABLEKS                       R19 R18 K62 ["Content"]
      533 CALL                             R15 3 1
      534 SETTABLEKS                       R15 R14 K41 ["SwimIdleAssetSelector"]
      536 MOVE                             R15 R10
      537 JUMPIFNOT                        R15 ; [+38]
      538 GETUPVAL                         R15 6
      539 GETUPVAL                         R16 9
      540 DUPTABLE                         R17 K59 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      541 SETTABLEKS                       R9 R17 K57 ["minTextLabelWidth"]
      543 LOADK                            R18 K60 ["AvatarSettings-LeftTextPrimary"]
      544 SETTABLEKS                       R18 R17 K58 ["textLabelTags"]
      546 LOADK                            R20 K13 ["AnimationSettings"]
      547 LOADK                            R21 K95 ["AnimationClipsSectionCustomClipsClimb"]
      548 NAMECALL                         R18 R1 K15 ["getText"]
      550 CALL                             R18 3 1
      551 SETTABLEKS                       R18 R17 K27 ["text"]
      553 MOVE                             R18 R3
      554 CALL                             R18 0 1
      555 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      557 DUPTABLE                         R18 K63 [{"Content"}]
      558 GETUPVAL                         R19 6
      559 GETUPVAL                         R20 10
      560 DUPTABLE                         R21 K67 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      561 GETTABLEKS                       R22 R6 K96 ["animationClipsClimbSetting"]
      563 SETTABLEKS                       R22 R21 K64 ["assetIdSetting"]
      565 LOADB                            R22 1
      566 SETTABLEKS                       R22 R21 K65 ["assetCannotBeEmpty"]
      568 GETIMPORT                        R22 K71 [Enum.AssetType.Animation]
      570 SETTABLEKS                       R22 R21 K66 ["expectedAssetType"]
      572 CALL                             R19 2 1
      573 SETTABLEKS                       R19 R18 K62 ["Content"]
      575 CALL                             R15 3 1
      576 SETTABLEKS                       R15 R14 K42 ["ClimbAssetSelector"]
      578 CALL                             R11 3 -1
      579 RETURN                           R11 -1

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
