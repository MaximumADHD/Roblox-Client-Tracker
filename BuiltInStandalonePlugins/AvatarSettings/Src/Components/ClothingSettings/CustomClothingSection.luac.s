PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["CustomClothingModeSelected"]
        5 DUPTABLE                         R4 K2 [{"customClothingMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["customClothingMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["customClothingSetting"]
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
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["ClothingSettings"]
       40 LOADK                            R10 K14 ["CustomClothingSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["ClothingSettings"]
       52 LOADK                            R11 K18 ["CustomClothingSectionCustomClothingButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["clothingSettings"]
       64 GETTABLEKS                       R8 R6 K20 ["customClothingSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETIMPORT                        R8 K24 [UDim.new]
       70 LOADN                            R9 0
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R10 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       77 JUMPIFEQ                         R7 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 GETTABLEKS                       R14 R4 K2 ["settings"]
       83 GETTABLEKS                       R13 R14 K26 ["navigationBarSettings"]
       85 GETTABLEKS                       R12 R13 K27 ["avatarType"]
       87 GETTABLEKS                       R11 R12 K21 ["value"]
       89 GETIMPORT                        R12 K30 [Enum.GameAvatarType.R6]
       91 JUMPIFNOTEQ                      R11 R12 ; [+2]
       93 LOADB                            R10 0 +1
       94 LOADB                            R10 1
       95 GETUPVAL                         R11 7
       96 GETUPVAL                         R12 8
       97 DUPTABLE                         R13 K33 [{"text", "layoutOrder"}]
       98 LOADK                            R16 K13 ["ClothingSettings"]
       99 LOADK                            R17 K34 ["CustomClothingSection"]
      100 NAMECALL                         R14 R1 K15 ["getText"]
      102 CALL                             R14 3 1
      103 SETTABLEKS                       R14 R13 K31 ["text"]
      105 GETTABLEKS                       R14 R0 K32 ["layoutOrder"]
      107 SETTABLEKS                       R14 R13 K32 ["layoutOrder"]
      109 DUPTABLE                         R14 K45 [{"UIListLayout", "CustomClothingModeSelector", "TopsAssetSelector", "OuterwearAssetSelector", "BottomsAssetSelector", "LeftShoesAssetSelector", "RightShoesAssetSelector", "ClassicShirtsAssetSelector", "ClassicTShirtsAssetSelector", "ClassicPantsAssetSelector"}]
      110 GETUPVAL                         R15 7
      111 LOADK                            R16 K35 ["UIListLayout"]
      112 DUPTABLE                         R17 K47 [{"Padding"}]
      113 GETIMPORT                        R18 K24 [UDim.new]
      115 LOADN                            R19 0
      116 LOADN                            R20 12
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K46 ["Padding"]
      120 CALL                             R15 2 1
      121 SETTABLEKS                       R15 R14 K35 ["UIListLayout"]
      123 GETUPVAL                         R15 7
      124 GETUPVAL                         R16 9
      125 DUPTABLE                         R17 K52 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      126 MOVE                             R18 R3
      127 CALL                             R18 0 1
      128 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      130 SETTABLEKS                       R5 R17 K48 ["items"]
      132 SETTABLEKS                       R7 R17 K49 ["selected"]
      134 GETUPVAL                         R19 1
      135 CALL                             R19 0 1
      136 JUMPIFNOT                        R19 ; [+5]
      137 NEWCLOSURE                       R18 P0
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R6
      141 JUMP                             ; [+4]
      142 GETTABLEKS                       R19 R6 K20 ["customClothingSetting"]
      144 GETTABLEKS                       R18 R19 K53 ["set"]
      146 SETTABLEKS                       R18 R17 K50 ["onItemActivated"]
      148 LOADK                            R20 K13 ["ClothingSettings"]
      149 GETIMPORT                        R22 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
      151 JUMPIFNOTEQ                      R7 R22 ; [+3]
      153 LOADK                            R21 K54 ["CustomClothingSectionPlayerChoiceSubText"]
      154 JUMP                             ; [+1]
      155 LOADK                            R21 K55 ["CustomClothingSectionCustomClothingSubText"]
      156 NAMECALL                         R18 R1 K15 ["getText"]
      158 CALL                             R18 3 1
      159 SETTABLEKS                       R18 R17 K51 ["subText"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K36 ["CustomClothingModeSelector"]
      164 MOVE                             R15 R9
      165 JUMPIFNOT                        R15 ; [+41]
      166 MOVE                             R15 R10
      167 JUMPIFNOT                        R15 ; [+39]
      168 GETUPVAL                         R15 7
      169 GETUPVAL                         R16 10
      170 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      171 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      173 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      174 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      176 LOADK                            R20 K13 ["ClothingSettings"]
      177 LOADK                            R21 K60 ["CustomClothingSectionTops"]
      178 NAMECALL                         R18 R1 K15 ["getText"]
      180 CALL                             R18 3 1
      181 SETTABLEKS                       R18 R17 K31 ["text"]
      183 MOVE                             R18 R3
      184 CALL                             R18 0 1
      185 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      187 DUPTABLE                         R18 K62 [{"Content"}]
      188 GETUPVAL                         R19 7
      189 GETUPVAL                         R20 11
      190 DUPTABLE                         R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      191 GETTABLEKS                       R22 R6 K67 ["customClothingTopsSetting"]
      193 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      195 GETUPVAL                         R23 6
      196 GETTABLEKS                       R22 R23 K68 ["TopsAssetSelectorExpectedAssetType"]
      198 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      200 LOADB                            R22 1
      201 SETTABLEKS                       R22 R21 K65 ["r15Only"]
      203 CALL                             R19 2 1
      204 SETTABLEKS                       R19 R18 K61 ["Content"]
      206 CALL                             R15 3 1
      207 SETTABLEKS                       R15 R14 K37 ["TopsAssetSelector"]
      209 MOVE                             R15 R9
      210 JUMPIFNOT                        R15 ; [+41]
      211 MOVE                             R15 R10
      212 JUMPIFNOT                        R15 ; [+39]
      213 GETUPVAL                         R15 7
      214 GETUPVAL                         R16 10
      215 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      216 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      218 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      219 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      221 LOADK                            R20 K13 ["ClothingSettings"]
      222 LOADK                            R21 K69 ["CustomClothingSectionOuterwear"]
      223 NAMECALL                         R18 R1 K15 ["getText"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K31 ["text"]
      228 MOVE                             R18 R3
      229 CALL                             R18 0 1
      230 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      232 DUPTABLE                         R18 K62 [{"Content"}]
      233 GETUPVAL                         R19 7
      234 GETUPVAL                         R20 11
      235 DUPTABLE                         R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      236 GETTABLEKS                       R22 R6 K70 ["customClothingOuterwearSetting"]
      238 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      240 GETUPVAL                         R23 6
      241 GETTABLEKS                       R22 R23 K71 ["OuterwearAssetSelectorExpectedAssetType"]
      243 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      245 LOADB                            R22 1
      246 SETTABLEKS                       R22 R21 K65 ["r15Only"]
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K61 ["Content"]
      251 CALL                             R15 3 1
      252 SETTABLEKS                       R15 R14 K38 ["OuterwearAssetSelector"]
      254 MOVE                             R15 R9
      255 JUMPIFNOT                        R15 ; [+41]
      256 MOVE                             R15 R10
      257 JUMPIFNOT                        R15 ; [+39]
      258 GETUPVAL                         R15 7
      259 GETUPVAL                         R16 10
      260 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      261 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      263 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      264 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      266 LOADK                            R20 K13 ["ClothingSettings"]
      267 LOADK                            R21 K72 ["CustomClothingSectionBottoms"]
      268 NAMECALL                         R18 R1 K15 ["getText"]
      270 CALL                             R18 3 1
      271 SETTABLEKS                       R18 R17 K31 ["text"]
      273 MOVE                             R18 R3
      274 CALL                             R18 0 1
      275 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      277 DUPTABLE                         R18 K62 [{"Content"}]
      278 GETUPVAL                         R19 7
      279 GETUPVAL                         R20 11
      280 DUPTABLE                         R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      281 GETTABLEKS                       R22 R6 K73 ["customClothingBottomsSetting"]
      283 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      285 GETUPVAL                         R23 6
      286 GETTABLEKS                       R22 R23 K74 ["BottomsAssetSelectorExpectedAssetType"]
      288 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      290 LOADB                            R22 1
      291 SETTABLEKS                       R22 R21 K65 ["r15Only"]
      293 CALL                             R19 2 1
      294 SETTABLEKS                       R19 R18 K61 ["Content"]
      296 CALL                             R15 3 1
      297 SETTABLEKS                       R15 R14 K39 ["BottomsAssetSelector"]
      299 MOVE                             R15 R9
      300 JUMPIFNOT                        R15 ; [+40]
      301 MOVE                             R15 R10
      302 JUMPIFNOT                        R15 ; [+38]
      303 GETUPVAL                         R15 7
      304 GETUPVAL                         R16 10
      305 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      306 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      308 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      309 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      311 LOADK                            R20 K13 ["ClothingSettings"]
      312 LOADK                            R21 K75 ["CustomClothingSectionLeftShoes"]
      313 NAMECALL                         R18 R1 K15 ["getText"]
      315 CALL                             R18 3 1
      316 SETTABLEKS                       R18 R17 K31 ["text"]
      318 MOVE                             R18 R3
      319 CALL                             R18 0 1
      320 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      322 DUPTABLE                         R18 K62 [{"Content"}]
      323 GETUPVAL                         R19 7
      324 GETUPVAL                         R20 11
      325 DUPTABLE                         R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      326 GETTABLEKS                       R22 R6 K76 ["customClothingLeftShoesSetting"]
      328 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      330 GETIMPORT                        R22 K79 [Enum.AssetType.LeftShoeAccessory]
      332 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      334 LOADB                            R22 1
      335 SETTABLEKS                       R22 R21 K65 ["r15Only"]
      337 CALL                             R19 2 1
      338 SETTABLEKS                       R19 R18 K61 ["Content"]
      340 CALL                             R15 3 1
      341 SETTABLEKS                       R15 R14 K40 ["LeftShoesAssetSelector"]
      343 MOVE                             R15 R9
      344 JUMPIFNOT                        R15 ; [+40]
      345 MOVE                             R15 R10
      346 JUMPIFNOT                        R15 ; [+38]
      347 GETUPVAL                         R15 7
      348 GETUPVAL                         R16 10
      349 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      350 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      352 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      353 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      355 LOADK                            R20 K13 ["ClothingSettings"]
      356 LOADK                            R21 K80 ["CustomClothingSectionRightShoes"]
      357 NAMECALL                         R18 R1 K15 ["getText"]
      359 CALL                             R18 3 1
      360 SETTABLEKS                       R18 R17 K31 ["text"]
      362 MOVE                             R18 R3
      363 CALL                             R18 0 1
      364 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      366 DUPTABLE                         R18 K62 [{"Content"}]
      367 GETUPVAL                         R19 7
      368 GETUPVAL                         R20 11
      369 DUPTABLE                         R21 K66 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      370 GETTABLEKS                       R22 R6 K81 ["customClothingRightShoesSetting"]
      372 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      374 GETIMPORT                        R22 K83 [Enum.AssetType.RightShoeAccessory]
      376 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      378 LOADB                            R22 1
      379 SETTABLEKS                       R22 R21 K65 ["r15Only"]
      381 CALL                             R19 2 1
      382 SETTABLEKS                       R19 R18 K61 ["Content"]
      384 CALL                             R15 3 1
      385 SETTABLEKS                       R15 R14 K41 ["RightShoesAssetSelector"]
      387 MOVE                             R15 R9
      388 JUMPIFNOT                        R15 ; [+46]
      389 GETUPVAL                         R15 7
      390 GETUPVAL                         R16 10
      391 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      392 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      394 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      395 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      397 LOADK                            R20 K13 ["ClothingSettings"]
      398 LOADK                            R21 K84 ["CustomClothingSectionClassicShirts"]
      399 NAMECALL                         R18 R1 K15 ["getText"]
      401 CALL                             R18 3 1
      402 SETTABLEKS                       R18 R17 K31 ["text"]
      404 MOVE                             R18 R3
      405 CALL                             R18 0 1
      406 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      408 DUPTABLE                         R18 K62 [{"Content"}]
      409 GETUPVAL                         R19 7
      410 GETUPVAL                         R20 11
      411 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      412 GETTABLEKS                       R22 R6 K86 ["customClothingClassicShirtsSetting"]
      414 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      416 GETUPVAL                         R23 12
      417 JUMPIFNOT                        R23 ; [+9]
      418 NEWTABLE                         R22 0 2
      420 GETIMPORT                        R23 K88 [Enum.AssetType.Shirt]
      422 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      424 SETLIST                          R22 R23 2 [1]
      426 JUMP                             ; [+2]
      427 GETIMPORT                        R22 K88 [Enum.AssetType.Shirt]
      429 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      431 CALL                             R19 2 1
      432 SETTABLEKS                       R19 R18 K61 ["Content"]
      434 CALL                             R15 3 1
      435 SETTABLEKS                       R15 R14 K42 ["ClassicShirtsAssetSelector"]
      437 MOVE                             R15 R9
      438 JUMPIFNOT                        R15 ; [+46]
      439 GETUPVAL                         R15 7
      440 GETUPVAL                         R16 10
      441 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      442 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      444 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      445 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      447 LOADK                            R20 K13 ["ClothingSettings"]
      448 LOADK                            R21 K91 ["CustomClothingSectionClassicTShirts"]
      449 NAMECALL                         R18 R1 K15 ["getText"]
      451 CALL                             R18 3 1
      452 SETTABLEKS                       R18 R17 K31 ["text"]
      454 MOVE                             R18 R3
      455 CALL                             R18 0 1
      456 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      458 DUPTABLE                         R18 K62 [{"Content"}]
      459 GETUPVAL                         R19 7
      460 GETUPVAL                         R20 11
      461 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      462 GETTABLEKS                       R22 R6 K92 ["customClothingClassicTShirtsSetting"]
      464 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      466 GETUPVAL                         R23 12
      467 JUMPIFNOT                        R23 ; [+9]
      468 NEWTABLE                         R22 0 2
      470 GETIMPORT                        R23 K94 [Enum.AssetType.TShirt]
      472 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      474 SETLIST                          R22 R23 2 [1]
      476 JUMP                             ; [+2]
      477 GETIMPORT                        R22 K94 [Enum.AssetType.TShirt]
      479 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      481 CALL                             R19 2 1
      482 SETTABLEKS                       R19 R18 K61 ["Content"]
      484 CALL                             R15 3 1
      485 SETTABLEKS                       R15 R14 K43 ["ClassicTShirtsAssetSelector"]
      487 MOVE                             R15 R9
      488 JUMPIFNOT                        R15 ; [+46]
      489 GETUPVAL                         R15 7
      490 GETUPVAL                         R16 10
      491 DUPTABLE                         R17 K58 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      492 SETTABLEKS                       R8 R17 K56 ["minTextLabelWidth"]
      494 LOADK                            R18 K59 ["AvatarSettings-LeftTextPrimary"]
      495 SETTABLEKS                       R18 R17 K57 ["textLabelTags"]
      497 LOADK                            R20 K13 ["ClothingSettings"]
      498 LOADK                            R21 K95 ["CustomClothingSectionClassicPants"]
      499 NAMECALL                         R18 R1 K15 ["getText"]
      501 CALL                             R18 3 1
      502 SETTABLEKS                       R18 R17 K31 ["text"]
      504 MOVE                             R18 R3
      505 CALL                             R18 0 1
      506 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      508 DUPTABLE                         R18 K62 [{"Content"}]
      509 GETUPVAL                         R19 7
      510 GETUPVAL                         R20 11
      511 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      512 GETTABLEKS                       R22 R6 K96 ["customClothingClassicPantsSetting"]
      514 SETTABLEKS                       R22 R21 K63 ["assetIdSetting"]
      516 GETUPVAL                         R23 12
      517 JUMPIFNOT                        R23 ; [+9]
      518 NEWTABLE                         R22 0 2
      520 GETIMPORT                        R23 K98 [Enum.AssetType.Pants]
      522 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      524 SETLIST                          R22 R23 2 [1]
      526 JUMP                             ; [+2]
      527 GETIMPORT                        R22 K98 [Enum.AssetType.Pants]
      529 SETTABLEKS                       R22 R21 K64 ["expectedAssetType"]
      531 CALL                             R19 2 1
      532 SETTABLEKS                       R19 R18 K61 ["Content"]
      534 CALL                             R15 3 1
      535 SETTABLEKS                       R15 R14 K44 ["ClassicPantsAssetSelector"]
      537 CALL                             R11 3 -1
      538 RETURN                           R11 -1

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
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K20 ["Flags"]
       90 GETTABLEKS                       R11 R12 K21 ["getFFlagAddTelemetry"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R5 K22 ["ContextServices"]
       95 GETTABLEKS                       R12 R11 K23 ["Localization"]
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R17 R0 K6 ["Src"]
      101 GETTABLEKS                       R16 R17 K11 ["Util"]
      103 GETTABLEKS                       R15 R16 K24 ["Telemetry"]
      105 GETTABLEKS                       R14 R15 K25 ["TelemetryContext"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R8 K26 ["createNextOrder"]
      110 GETTABLEKS                       R15 R7 K27 ["createElement"]
      112 GETIMPORT                        R16 K29 [game]
      114 LOADK                            R18 K30 ["AvatarSettingsDontSaveSomePropsInLegacySettings"]
      115 NAMECALL                         R16 R16 K31 ["GetEngineFeature"]
      117 CALL                             R16 2 1
      118 DUPCLOSURE                       R17 K32 [PROTO_1]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R16
      132 RETURN                           R17 1
