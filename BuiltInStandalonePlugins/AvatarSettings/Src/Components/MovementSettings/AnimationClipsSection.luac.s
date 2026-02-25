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
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["animationClipsSetting"]
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
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["AnimationSettings"]
       40 LOADK                            R10 K14 ["AnimationClipsSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["AnimationSettings"]
       52 LOADK                            R11 K18 ["AnimationClipsSectionCustomClipsButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["animationSettings"]
       64 GETTABLEKS                       R8 R6 K20 ["animationPacksSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETTABLEKS                       R9 R6 K22 ["animationClipsSetting"]
       70 GETTABLEKS                       R8 R9 K21 ["value"]
       72 GETIMPORT                        R9 K25 [UDim.new]
       74 LOADN                            R10 0
       75 GETUPVAL                         R12 6
       76 GETTABLEKS                       R11 R12 K26 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       78 CALL                             R9 2 1
       79 GETIMPORT                        R11 K17 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       81 JUMPIFEQ                         R8 R11 ; [+2]
       83 LOADB                            R10 0 +1
       84 LOADB                            R10 1
       85 GETUPVAL                         R11 7
       86 GETUPVAL                         R12 8
       87 DUPTABLE                         R13 K30 [{"text", "layoutOrder", "showWarning"}]
       88 LOADK                            R16 K13 ["AnimationSettings"]
       89 LOADK                            R17 K31 ["AnimationClipsSection"]
       90 NAMECALL                         R14 R1 K15 ["getText"]
       92 CALL                             R14 3 1
       93 SETTABLEKS                       R14 R13 K27 ["text"]
       95 GETTABLEKS                       R14 R0 K28 ["layoutOrder"]
       97 SETTABLEKS                       R14 R13 K28 ["layoutOrder"]
       99 LOADB                            R14 1
      100 SETTABLEKS                       R14 R13 K29 ["showWarning"]
      102 DUPTABLE                         R14 K43 [{"AnimationClipsModeSelector", "RunAssetSelector", "WalkAssetSelector", "FallAssetSelector", "JumpAssetSelector", "IdleAssetSelector", "IdleAlt1AssetSelector", "IdleAlt2AssetSelector", "SwimAssetSelector", "SwimIdleAssetSelector", "ClimbAssetSelector"}]
      103 GETUPVAL                         R15 7
      104 GETUPVAL                         R16 9
      105 DUPTABLE                         R17 K48 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      106 MOVE                             R18 R3
      107 CALL                             R18 0 1
      108 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      110 SETTABLEKS                       R5 R17 K44 ["items"]
      112 SETTABLEKS                       R8 R17 K45 ["selected"]
      114 GETUPVAL                         R19 1
      115 CALL                             R19 0 1
      116 JUMPIFNOT                        R19 ; [+5]
      117 NEWCLOSURE                       R18 P0
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R6
      121 JUMP                             ; [+4]
      122 GETTABLEKS                       R19 R6 K22 ["animationClipsSetting"]
      124 GETTABLEKS                       R18 R19 K49 ["set"]
      126 SETTABLEKS                       R18 R17 K46 ["onItemActivated"]
      128 LOADK                            R20 K13 ["AnimationSettings"]
      129 GETIMPORT                        R22 K12 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
      131 JUMPIFNOTEQ                      R8 R22 ; [+3]
      133 LOADK                            R21 K50 ["AnimationClipsSectionPlayerChoiceSubText"]
      134 JUMP                             ; [+13]
      135 GETIMPORT                        R22 K52 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
      137 JUMPIFNOTEQ                      R7 R22 ; [+3]
      139 LOADK                            R21 K53 ["AnimationClipsSectionCustomClipsPlayerChoiceSubText"]
      140 JUMP                             ; [+7]
      141 GETIMPORT                        R22 K55 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
      143 JUMPIFNOTEQ                      R7 R22 ; [+3]
      145 LOADK                            R21 K56 ["AnimationClipsSectionCustomClipsStandardR15SubText"]
      146 JUMP                             ; [+1]
      147 LOADK                            R21 K57 ["AnimationClipsSectionCustomClipsStandardR6SubText"]
      148 NAMECALL                         R18 R1 K15 ["getText"]
      150 CALL                             R18 3 1
      151 SETTABLEKS                       R18 R17 K47 ["subText"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K32 ["AnimationClipsModeSelector"]
      156 MOVE                             R15 R10
      157 JUMPIFNOT                        R15 ; [+38]
      158 GETUPVAL                         R15 7
      159 GETUPVAL                         R16 10
      160 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      161 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      163 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      164 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      166 LOADK                            R20 K13 ["AnimationSettings"]
      167 LOADK                            R21 K62 ["AnimationClipsSectionCustomClipsRun"]
      168 NAMECALL                         R18 R1 K15 ["getText"]
      170 CALL                             R18 3 1
      171 SETTABLEKS                       R18 R17 K27 ["text"]
      173 MOVE                             R18 R3
      174 CALL                             R18 0 1
      175 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      177 DUPTABLE                         R18 K64 [{"Content"}]
      178 GETUPVAL                         R19 7
      179 GETUPVAL                         R20 11
      180 DUPTABLE                         R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      181 GETTABLEKS                       R22 R6 K69 ["animationClipsRunSetting"]
      183 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      185 LOADB                            R22 1
      186 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      188 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      190 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      192 CALL                             R19 2 1
      193 SETTABLEKS                       R19 R18 K63 ["Content"]
      195 CALL                             R15 3 1
      196 SETTABLEKS                       R15 R14 K33 ["RunAssetSelector"]
      198 MOVE                             R15 R10
      199 JUMPIFNOT                        R15 ; [+38]
      200 GETUPVAL                         R15 7
      201 GETUPVAL                         R16 10
      202 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      203 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      205 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      206 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      208 LOADK                            R20 K13 ["AnimationSettings"]
      209 LOADK                            R21 K73 ["AnimationClipsSectionCustomClipsWalk"]
      210 NAMECALL                         R18 R1 K15 ["getText"]
      212 CALL                             R18 3 1
      213 SETTABLEKS                       R18 R17 K27 ["text"]
      215 MOVE                             R18 R3
      216 CALL                             R18 0 1
      217 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      219 DUPTABLE                         R18 K64 [{"Content"}]
      220 GETUPVAL                         R19 7
      221 GETUPVAL                         R20 11
      222 DUPTABLE                         R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      223 GETTABLEKS                       R22 R6 K74 ["animationClipsWalkSetting"]
      225 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      227 LOADB                            R22 1
      228 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      230 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      232 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      234 CALL                             R19 2 1
      235 SETTABLEKS                       R19 R18 K63 ["Content"]
      237 CALL                             R15 3 1
      238 SETTABLEKS                       R15 R14 K34 ["WalkAssetSelector"]
      240 MOVE                             R15 R10
      241 JUMPIFNOT                        R15 ; [+38]
      242 GETUPVAL                         R15 7
      243 GETUPVAL                         R16 10
      244 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      245 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      247 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      248 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      250 LOADK                            R20 K13 ["AnimationSettings"]
      251 LOADK                            R21 K75 ["AnimationClipsSectionCustomClipsFall"]
      252 NAMECALL                         R18 R1 K15 ["getText"]
      254 CALL                             R18 3 1
      255 SETTABLEKS                       R18 R17 K27 ["text"]
      257 MOVE                             R18 R3
      258 CALL                             R18 0 1
      259 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      261 DUPTABLE                         R18 K64 [{"Content"}]
      262 GETUPVAL                         R19 7
      263 GETUPVAL                         R20 11
      264 DUPTABLE                         R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      265 GETTABLEKS                       R22 R6 K76 ["animationClipsFallSetting"]
      267 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      269 LOADB                            R22 1
      270 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      272 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      274 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      276 CALL                             R19 2 1
      277 SETTABLEKS                       R19 R18 K63 ["Content"]
      279 CALL                             R15 3 1
      280 SETTABLEKS                       R15 R14 K35 ["FallAssetSelector"]
      282 MOVE                             R15 R10
      283 JUMPIFNOT                        R15 ; [+38]
      284 GETUPVAL                         R15 7
      285 GETUPVAL                         R16 10
      286 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      287 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      289 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      290 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      292 LOADK                            R20 K13 ["AnimationSettings"]
      293 LOADK                            R21 K77 ["AnimationClipsSectionCustomClipsJump"]
      294 NAMECALL                         R18 R1 K15 ["getText"]
      296 CALL                             R18 3 1
      297 SETTABLEKS                       R18 R17 K27 ["text"]
      299 MOVE                             R18 R3
      300 CALL                             R18 0 1
      301 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      303 DUPTABLE                         R18 K64 [{"Content"}]
      304 GETUPVAL                         R19 7
      305 GETUPVAL                         R20 11
      306 DUPTABLE                         R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      307 GETTABLEKS                       R22 R6 K78 ["animationClipsJumpSetting"]
      309 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      311 LOADB                            R22 1
      312 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      314 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      316 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      318 CALL                             R19 2 1
      319 SETTABLEKS                       R19 R18 K63 ["Content"]
      321 CALL                             R15 3 1
      322 SETTABLEKS                       R15 R14 K36 ["JumpAssetSelector"]
      324 MOVE                             R15 R10
      325 JUMPIFNOT                        R15 ; [+41]
      326 GETUPVAL                         R15 7
      327 GETUPVAL                         R16 10
      328 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      329 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      331 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      332 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      334 LOADK                            R20 K13 ["AnimationSettings"]
      335 LOADK                            R21 K79 ["AnimationClipsSectionCustomClipsIdle"]
      336 NAMECALL                         R18 R1 K15 ["getText"]
      338 CALL                             R18 3 1
      339 SETTABLEKS                       R18 R17 K27 ["text"]
      341 MOVE                             R18 R3
      342 CALL                             R18 0 1
      343 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      345 DUPTABLE                         R18 K64 [{"Content"}]
      346 GETUPVAL                         R19 7
      347 GETUPVAL                         R20 11
      348 DUPTABLE                         R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      349 GETTABLEKS                       R22 R6 K82 ["animationClipsIdleSetting"]
      351 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      353 LOADB                            R22 1
      354 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      356 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      358 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      360 LOADK                            R22 K83 ["Animation1"]
      361 SETTABLEKS                       R22 R21 K80 ["animationType"]
      363 CALL                             R19 2 1
      364 SETTABLEKS                       R19 R18 K63 ["Content"]
      366 CALL                             R15 3 1
      367 SETTABLEKS                       R15 R14 K37 ["IdleAssetSelector"]
      369 MOVE                             R15 R10
      370 JUMPIFNOT                        R15 ; [+41]
      371 GETUPVAL                         R15 7
      372 GETUPVAL                         R16 10
      373 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      374 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      376 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      377 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      379 LOADK                            R20 K13 ["AnimationSettings"]
      380 LOADK                            R21 K84 ["AnimationClipsSectionCustomClipsIdleAlt1"]
      381 NAMECALL                         R18 R1 K15 ["getText"]
      383 CALL                             R18 3 1
      384 SETTABLEKS                       R18 R17 K27 ["text"]
      386 MOVE                             R18 R3
      387 CALL                             R18 0 1
      388 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      390 DUPTABLE                         R18 K64 [{"Content"}]
      391 GETUPVAL                         R19 7
      392 GETUPVAL                         R20 11
      393 DUPTABLE                         R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      394 GETTABLEKS                       R22 R6 K85 ["animationClipsIdleAlt1Setting"]
      396 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      398 LOADB                            R22 1
      399 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      401 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      403 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      405 LOADK                            R22 K86 ["Animation2"]
      406 SETTABLEKS                       R22 R21 K80 ["animationType"]
      408 CALL                             R19 2 1
      409 SETTABLEKS                       R19 R18 K63 ["Content"]
      411 CALL                             R15 3 1
      412 SETTABLEKS                       R15 R14 K38 ["IdleAlt1AssetSelector"]
      414 MOVE                             R15 R10
      415 JUMPIFNOT                        R15 ; [+41]
      416 GETUPVAL                         R15 7
      417 GETUPVAL                         R16 10
      418 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      419 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      421 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      422 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      424 LOADK                            R20 K13 ["AnimationSettings"]
      425 LOADK                            R21 K87 ["AnimationClipsSectionCustomClipsIdleAlt2"]
      426 NAMECALL                         R18 R1 K15 ["getText"]
      428 CALL                             R18 3 1
      429 SETTABLEKS                       R18 R17 K27 ["text"]
      431 MOVE                             R18 R3
      432 CALL                             R18 0 1
      433 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      435 DUPTABLE                         R18 K64 [{"Content"}]
      436 GETUPVAL                         R19 7
      437 GETUPVAL                         R20 11
      438 DUPTABLE                         R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      439 GETTABLEKS                       R22 R6 K88 ["animationClipsIdleAlt2Setting"]
      441 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      443 LOADB                            R22 1
      444 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      446 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      448 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      450 LOADK                            R22 K89 ["Animation3"]
      451 SETTABLEKS                       R22 R21 K80 ["animationType"]
      453 CALL                             R19 2 1
      454 SETTABLEKS                       R19 R18 K63 ["Content"]
      456 CALL                             R15 3 1
      457 SETTABLEKS                       R15 R14 K39 ["IdleAlt2AssetSelector"]
      459 MOVE                             R15 R10
      460 JUMPIFNOT                        R15 ; [+41]
      461 GETUPVAL                         R15 7
      462 GETUPVAL                         R16 10
      463 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      464 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      466 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      467 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      469 LOADK                            R20 K13 ["AnimationSettings"]
      470 LOADK                            R21 K90 ["AnimationClipsSectionCustomClipsSwim"]
      471 NAMECALL                         R18 R1 K15 ["getText"]
      473 CALL                             R18 3 1
      474 SETTABLEKS                       R18 R17 K27 ["text"]
      476 MOVE                             R18 R3
      477 CALL                             R18 0 1
      478 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      480 DUPTABLE                         R18 K64 [{"Content"}]
      481 GETUPVAL                         R19 7
      482 GETUPVAL                         R20 11
      483 DUPTABLE                         R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      484 GETTABLEKS                       R22 R6 K91 ["animationClipsSwimSetting"]
      486 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      488 LOADB                            R22 1
      489 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      491 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      493 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      495 LOADK                            R22 K92 ["Swim"]
      496 SETTABLEKS                       R22 R21 K80 ["animationType"]
      498 CALL                             R19 2 1
      499 SETTABLEKS                       R19 R18 K63 ["Content"]
      501 CALL                             R15 3 1
      502 SETTABLEKS                       R15 R14 K40 ["SwimAssetSelector"]
      504 MOVE                             R15 R10
      505 JUMPIFNOT                        R15 ; [+41]
      506 GETUPVAL                         R15 7
      507 GETUPVAL                         R16 10
      508 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      509 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      511 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      512 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      514 LOADK                            R20 K13 ["AnimationSettings"]
      515 LOADK                            R21 K93 ["AnimationClipsSectionCustomClipsSwimIdle"]
      516 NAMECALL                         R18 R1 K15 ["getText"]
      518 CALL                             R18 3 1
      519 SETTABLEKS                       R18 R17 K27 ["text"]
      521 MOVE                             R18 R3
      522 CALL                             R18 0 1
      523 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      525 DUPTABLE                         R18 K64 [{"Content"}]
      526 GETUPVAL                         R19 7
      527 GETUPVAL                         R20 11
      528 DUPTABLE                         R21 K81 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType", "animationType"}]
      529 GETTABLEKS                       R22 R6 K94 ["animationClipsSwimIdleSetting"]
      531 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      533 LOADB                            R22 1
      534 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      536 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      538 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      540 LOADK                            R22 K95 ["SwimIdle"]
      541 SETTABLEKS                       R22 R21 K80 ["animationType"]
      543 CALL                             R19 2 1
      544 SETTABLEKS                       R19 R18 K63 ["Content"]
      546 CALL                             R15 3 1
      547 SETTABLEKS                       R15 R14 K41 ["SwimIdleAssetSelector"]
      549 MOVE                             R15 R10
      550 JUMPIFNOT                        R15 ; [+38]
      551 GETUPVAL                         R15 7
      552 GETUPVAL                         R16 10
      553 DUPTABLE                         R17 K60 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      554 SETTABLEKS                       R9 R17 K58 ["minTextLabelWidth"]
      556 LOADK                            R18 K61 ["AvatarSettings-LeftTextPrimary"]
      557 SETTABLEKS                       R18 R17 K59 ["textLabelTags"]
      559 LOADK                            R20 K13 ["AnimationSettings"]
      560 LOADK                            R21 K96 ["AnimationClipsSectionCustomClipsClimb"]
      561 NAMECALL                         R18 R1 K15 ["getText"]
      563 CALL                             R18 3 1
      564 SETTABLEKS                       R18 R17 K27 ["text"]
      566 MOVE                             R18 R3
      567 CALL                             R18 0 1
      568 SETTABLEKS                       R18 R17 K28 ["layoutOrder"]
      570 DUPTABLE                         R18 K64 [{"Content"}]
      571 GETUPVAL                         R19 7
      572 GETUPVAL                         R20 11
      573 DUPTABLE                         R21 K68 [{"assetIdSetting", "assetCannotBeEmpty", "expectedAssetType"}]
      574 GETTABLEKS                       R22 R6 K97 ["animationClipsClimbSetting"]
      576 SETTABLEKS                       R22 R21 K65 ["assetIdSetting"]
      578 LOADB                            R22 1
      579 SETTABLEKS                       R22 R21 K66 ["assetCannotBeEmpty"]
      581 GETIMPORT                        R22 K72 [Enum.AssetType.Animation]
      583 SETTABLEKS                       R22 R21 K67 ["expectedAssetType"]
      585 CALL                             R19 2 1
      586 SETTABLEKS                       R19 R18 K63 ["Content"]
      588 CALL                             R15 3 1
      589 SETTABLEKS                       R15 R14 K42 ["ClimbAssetSelector"]
      591 CALL                             R11 3 -1
      592 RETURN                           R11 -1

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
      112 DUPCLOSURE                       R16 K28 [PROTO_1]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R1
      125 RETURN                           R16 1
