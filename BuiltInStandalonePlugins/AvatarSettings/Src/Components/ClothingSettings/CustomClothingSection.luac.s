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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["customClothingSetting"]
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
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["ClothingSettings"]
       35 LOADK                            R10 K14 ["CustomClothingSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["ClothingSettings"]
       47 LOADK                            R11 K18 ["CustomClothingSectionCustomClothingButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["clothingSettings"]
       59 GETTABLEKS                       R7 R6 K20 ["customClothingSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETTABLEKS                       R11 R4 K2 ["settings"]
       78 GETTABLEKS                       R11 R11 K26 ["navigationBarSettings"]
       80 GETTABLEKS                       R11 R11 K27 ["avatarType"]
       82 GETTABLEKS                       R11 R11 K21 ["value"]
       84 GETIMPORT                        R12 K30 [Enum.GameAvatarType.R6]
       86 JUMPIFNOTEQ                      R11 R12 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 GETUPVAL                         R11 6
       91 GETUPVAL                         R12 7
       92 DUPTABLE                         R13 K33 [{"text", "layoutOrder"}]
       93 LOADK                            R16 K13 ["ClothingSettings"]
       94 LOADK                            R17 K34 ["CustomClothingSection"]
       95 NAMECALL                         R14 R1 K15 ["getText"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K31 ["text"]
      100 GETTABLEKS                       R14 R0 K32 ["layoutOrder"]
      102 SETTABLEKS                       R14 R13 K32 ["layoutOrder"]
      104 DUPTABLE                         R14 K45 [{"UIListLayout", "CustomClothingModeSelector", "TopsAssetSelector", "OuterwearAssetSelector", "BottomsAssetSelector", "LeftShoesAssetSelector", "RightShoesAssetSelector", "ClassicShirtsAssetSelector", "ClassicTShirtsAssetSelector", "ClassicPantsAssetSelector"}]
      105 GETUPVAL                         R15 6
      106 LOADK                            R16 K35 ["UIListLayout"]
      107 DUPTABLE                         R17 K47 [{"Padding"}]
      108 GETIMPORT                        R18 K24 [UDim.new]
      110 LOADN                            R19 0
      111 LOADN                            R20 12
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K46 ["Padding"]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K35 ["UIListLayout"]
      118 GETUPVAL                         R15 6
      119 GETUPVAL                         R16 8
      120 DUPTABLE                         R17 K52 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      121 MOVE                             R18 R3
      122 CALL                             R18 0 1
      123 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      125 SETTABLEKS                       R5 R17 K48 ["items"]
      127 SETTABLEKS                       R7 R17 K49 ["selected"]
      129 NEWCLOSURE                       R18 P0
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R6
      133 SETTABLEKS                       R18 R17 K50 ["onItemActivated"]
      135 LOADK                            R20 K13 ["ClothingSettings"]
      136 GETIMPORT                        R22 K12 [Enum.AvatarSettingsCustomClothingMode.PlayerChoice]
      138 JUMPIFNOTEQ                      R7 R22 ; [+3]
      140 LOADK                            R21 K53 ["CustomClothingSectionPlayerChoiceSubText"]
      141 JUMP                             ; [+1]
      142 LOADK                            R21 K54 ["CustomClothingSectionCustomClothingSubText"]
      143 NAMECALL                         R18 R1 K15 ["getText"]
      145 CALL                             R18 3 1
      146 SETTABLEKS                       R18 R17 K51 ["subText"]
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K36 ["CustomClothingModeSelector"]
      151 MOVE                             R15 R9
      152 JUMPIFNOT                        R15 ; [+35]
      153 MOVE                             R15 R10
      154 JUMPIFNOT                        R15 ; [+33]
      155 GETUPVAL                         R15 6
      156 GETUPVAL                         R16 9
      157 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      158 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      160 LOADK                            R20 K13 ["ClothingSettings"]
      161 LOADK                            R21 K59 ["CustomClothingSectionTops"]
      162 NAMECALL                         R18 R1 K15 ["getText"]
      164 CALL                             R18 3 1
      165 SETTABLEKS                       R18 R17 K31 ["text"]
      167 MOVE                             R18 R3
      168 CALL                             R18 0 1
      169 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      171 DUPTABLE                         R18 K61 [{"Content"}]
      172 GETUPVAL                         R19 6
      173 GETUPVAL                         R20 10
      174 DUPTABLE                         R21 K66 [{["assetIdSetting"], ["expectedAssetType"], ["r15Only"] = True}]
      175 GETTABLEKS                       R22 R6 K67 ["customClothingTopsSetting"]
      177 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      179 GETUPVAL                         R22 5
      180 GETTABLEKS                       R22 R22 K68 ["TopsAssetSelectorExpectedAssetType"]
      182 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      184 CALL                             R19 2 1
      185 SETTABLEKS                       R19 R18 K60 ["Content"]
      187 CALL                             R15 3 1
      188 SETTABLEKS                       R15 R14 K37 ["TopsAssetSelector"]
      190 MOVE                             R15 R9
      191 JUMPIFNOT                        R15 ; [+35]
      192 MOVE                             R15 R10
      193 JUMPIFNOT                        R15 ; [+33]
      194 GETUPVAL                         R15 6
      195 GETUPVAL                         R16 9
      196 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      197 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      199 LOADK                            R20 K13 ["ClothingSettings"]
      200 LOADK                            R21 K69 ["CustomClothingSectionOuterwear"]
      201 NAMECALL                         R18 R1 K15 ["getText"]
      203 CALL                             R18 3 1
      204 SETTABLEKS                       R18 R17 K31 ["text"]
      206 MOVE                             R18 R3
      207 CALL                             R18 0 1
      208 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      210 DUPTABLE                         R18 K61 [{"Content"}]
      211 GETUPVAL                         R19 6
      212 GETUPVAL                         R20 10
      213 DUPTABLE                         R21 K66 [{["assetIdSetting"], ["expectedAssetType"], ["r15Only"] = True}]
      214 GETTABLEKS                       R22 R6 K70 ["customClothingOuterwearSetting"]
      216 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      218 GETUPVAL                         R22 5
      219 GETTABLEKS                       R22 R22 K71 ["OuterwearAssetSelectorExpectedAssetType"]
      221 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K60 ["Content"]
      226 CALL                             R15 3 1
      227 SETTABLEKS                       R15 R14 K38 ["OuterwearAssetSelector"]
      229 MOVE                             R15 R9
      230 JUMPIFNOT                        R15 ; [+35]
      231 MOVE                             R15 R10
      232 JUMPIFNOT                        R15 ; [+33]
      233 GETUPVAL                         R15 6
      234 GETUPVAL                         R16 9
      235 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      236 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      238 LOADK                            R20 K13 ["ClothingSettings"]
      239 LOADK                            R21 K72 ["CustomClothingSectionBottoms"]
      240 NAMECALL                         R18 R1 K15 ["getText"]
      242 CALL                             R18 3 1
      243 SETTABLEKS                       R18 R17 K31 ["text"]
      245 MOVE                             R18 R3
      246 CALL                             R18 0 1
      247 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      249 DUPTABLE                         R18 K61 [{"Content"}]
      250 GETUPVAL                         R19 6
      251 GETUPVAL                         R20 10
      252 DUPTABLE                         R21 K66 [{["assetIdSetting"], ["expectedAssetType"], ["r15Only"] = True}]
      253 GETTABLEKS                       R22 R6 K73 ["customClothingBottomsSetting"]
      255 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      257 GETUPVAL                         R22 5
      258 GETTABLEKS                       R22 R22 K74 ["BottomsAssetSelectorExpectedAssetType"]
      260 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K60 ["Content"]
      265 CALL                             R15 3 1
      266 SETTABLEKS                       R15 R14 K39 ["BottomsAssetSelector"]
      268 MOVE                             R15 R9
      269 JUMPIFNOT                        R15 ; [+34]
      270 MOVE                             R15 R10
      271 JUMPIFNOT                        R15 ; [+32]
      272 GETUPVAL                         R15 6
      273 GETUPVAL                         R16 9
      274 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      275 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      277 LOADK                            R20 K13 ["ClothingSettings"]
      278 LOADK                            R21 K75 ["CustomClothingSectionLeftShoes"]
      279 NAMECALL                         R18 R1 K15 ["getText"]
      281 CALL                             R18 3 1
      282 SETTABLEKS                       R18 R17 K31 ["text"]
      284 MOVE                             R18 R3
      285 CALL                             R18 0 1
      286 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      288 DUPTABLE                         R18 K61 [{"Content"}]
      289 GETUPVAL                         R19 6
      290 GETUPVAL                         R20 10
      291 DUPTABLE                         R21 K66 [{["assetIdSetting"], ["expectedAssetType"], ["r15Only"] = True}]
      292 GETTABLEKS                       R22 R6 K76 ["customClothingLeftShoesSetting"]
      294 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      296 GETIMPORT                        R22 K79 [Enum.AssetType.LeftShoeAccessory]
      298 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      300 CALL                             R19 2 1
      301 SETTABLEKS                       R19 R18 K60 ["Content"]
      303 CALL                             R15 3 1
      304 SETTABLEKS                       R15 R14 K40 ["LeftShoesAssetSelector"]
      306 MOVE                             R15 R9
      307 JUMPIFNOT                        R15 ; [+34]
      308 MOVE                             R15 R10
      309 JUMPIFNOT                        R15 ; [+32]
      310 GETUPVAL                         R15 6
      311 GETUPVAL                         R16 9
      312 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      313 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      315 LOADK                            R20 K13 ["ClothingSettings"]
      316 LOADK                            R21 K80 ["CustomClothingSectionRightShoes"]
      317 NAMECALL                         R18 R1 K15 ["getText"]
      319 CALL                             R18 3 1
      320 SETTABLEKS                       R18 R17 K31 ["text"]
      322 MOVE                             R18 R3
      323 CALL                             R18 0 1
      324 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      326 DUPTABLE                         R18 K61 [{"Content"}]
      327 GETUPVAL                         R19 6
      328 GETUPVAL                         R20 10
      329 DUPTABLE                         R21 K66 [{["assetIdSetting"], ["expectedAssetType"], ["r15Only"] = True}]
      330 GETTABLEKS                       R22 R6 K81 ["customClothingRightShoesSetting"]
      332 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      334 GETIMPORT                        R22 K83 [Enum.AssetType.RightShoeAccessory]
      336 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      338 CALL                             R19 2 1
      339 SETTABLEKS                       R19 R18 K60 ["Content"]
      341 CALL                             R15 3 1
      342 SETTABLEKS                       R15 R14 K41 ["RightShoesAssetSelector"]
      344 MOVE                             R15 R9
      345 JUMPIFNOT                        R15 ; [+38]
      346 GETUPVAL                         R15 6
      347 GETUPVAL                         R16 9
      348 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      349 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      351 LOADK                            R20 K13 ["ClothingSettings"]
      352 LOADK                            R21 K84 ["CustomClothingSectionClassicShirts"]
      353 NAMECALL                         R18 R1 K15 ["getText"]
      355 CALL                             R18 3 1
      356 SETTABLEKS                       R18 R17 K31 ["text"]
      358 MOVE                             R18 R3
      359 CALL                             R18 0 1
      360 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      362 DUPTABLE                         R18 K61 [{"Content"}]
      363 GETUPVAL                         R19 6
      364 GETUPVAL                         R20 10
      365 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      366 GETTABLEKS                       R22 R6 K86 ["customClothingClassicShirtsSetting"]
      368 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      370 NEWTABLE                         R22 0 2
      372 GETIMPORT                        R23 K88 [Enum.AssetType.Shirt]
      374 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      376 SETLIST                          R22 R23 2 [1]
      378 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      380 CALL                             R19 2 1
      381 SETTABLEKS                       R19 R18 K60 ["Content"]
      383 CALL                             R15 3 1
      384 SETTABLEKS                       R15 R14 K42 ["ClassicShirtsAssetSelector"]
      386 MOVE                             R15 R9
      387 JUMPIFNOT                        R15 ; [+38]
      388 GETUPVAL                         R15 6
      389 GETUPVAL                         R16 9
      390 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      391 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      393 LOADK                            R20 K13 ["ClothingSettings"]
      394 LOADK                            R21 K91 ["CustomClothingSectionClassicTShirts"]
      395 NAMECALL                         R18 R1 K15 ["getText"]
      397 CALL                             R18 3 1
      398 SETTABLEKS                       R18 R17 K31 ["text"]
      400 MOVE                             R18 R3
      401 CALL                             R18 0 1
      402 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      404 DUPTABLE                         R18 K61 [{"Content"}]
      405 GETUPVAL                         R19 6
      406 GETUPVAL                         R20 10
      407 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      408 GETTABLEKS                       R22 R6 K92 ["customClothingClassicTShirtsSetting"]
      410 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      412 NEWTABLE                         R22 0 2
      414 GETIMPORT                        R23 K94 [Enum.AssetType.TShirt]
      416 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      418 SETLIST                          R22 R23 2 [1]
      420 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      422 CALL                             R19 2 1
      423 SETTABLEKS                       R19 R18 K60 ["Content"]
      425 CALL                             R15 3 1
      426 SETTABLEKS                       R15 R14 K43 ["ClassicTShirtsAssetSelector"]
      428 MOVE                             R15 R9
      429 JUMPIFNOT                        R15 ; [+38]
      430 GETUPVAL                         R15 6
      431 GETUPVAL                         R16 9
      432 DUPTABLE                         R17 K58 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      433 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      435 LOADK                            R20 K13 ["ClothingSettings"]
      436 LOADK                            R21 K95 ["CustomClothingSectionClassicPants"]
      437 NAMECALL                         R18 R1 K15 ["getText"]
      439 CALL                             R18 3 1
      440 SETTABLEKS                       R18 R17 K31 ["text"]
      442 MOVE                             R18 R3
      443 CALL                             R18 0 1
      444 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      446 DUPTABLE                         R18 K61 [{"Content"}]
      447 GETUPVAL                         R19 6
      448 GETUPVAL                         R20 10
      449 DUPTABLE                         R21 K85 [{"assetIdSetting", "expectedAssetType"}]
      450 GETTABLEKS                       R22 R6 K96 ["customClothingClassicPantsSetting"]
      452 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      454 NEWTABLE                         R22 0 2
      456 GETIMPORT                        R23 K98 [Enum.AssetType.Pants]
      458 GETIMPORT                        R24 K90 [Enum.AssetType.Model]
      460 SETLIST                          R22 R23 2 [1]
      462 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      464 CALL                             R19 2 1
      465 SETTABLEKS                       R19 R18 K60 ["Content"]
      467 CALL                             R15 3 1
      468 SETTABLEKS                       R15 R14 K44 ["ClassicPantsAssetSelector"]
      470 CALL                             R11 3 -1
      471 RETURN                           R11 -1

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
