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
      152 JUMPIFNOT                        R15 ; [+41]
      153 MOVE                             R15 R10
      154 JUMPIFNOT                        R15 ; [+39]
      155 GETUPVAL                         R15 6
      156 GETUPVAL                         R16 9
      157 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      158 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      160 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      161 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      163 LOADK                            R20 K13 ["ClothingSettings"]
      164 LOADK                            R21 K59 ["CustomClothingSectionTops"]
      165 NAMECALL                         R18 R1 K15 ["getText"]
      167 CALL                             R18 3 1
      168 SETTABLEKS                       R18 R17 K31 ["text"]
      170 MOVE                             R18 R3
      171 CALL                             R18 0 1
      172 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      174 DUPTABLE                         R18 K61 [{"Content"}]
      175 GETUPVAL                         R19 6
      176 GETUPVAL                         R20 10
      177 DUPTABLE                         R21 K65 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      178 GETTABLEKS                       R22 R6 K66 ["customClothingTopsSetting"]
      180 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      182 GETUPVAL                         R22 5
      183 GETTABLEKS                       R22 R22 K67 ["TopsAssetSelectorExpectedAssetType"]
      185 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      187 LOADB                            R22 1
      188 SETTABLEKS                       R22 R21 K64 ["r15Only"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K60 ["Content"]
      193 CALL                             R15 3 1
      194 SETTABLEKS                       R15 R14 K37 ["TopsAssetSelector"]
      196 MOVE                             R15 R9
      197 JUMPIFNOT                        R15 ; [+41]
      198 MOVE                             R15 R10
      199 JUMPIFNOT                        R15 ; [+39]
      200 GETUPVAL                         R15 6
      201 GETUPVAL                         R16 9
      202 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      203 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      205 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      206 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      208 LOADK                            R20 K13 ["ClothingSettings"]
      209 LOADK                            R21 K68 ["CustomClothingSectionOuterwear"]
      210 NAMECALL                         R18 R1 K15 ["getText"]
      212 CALL                             R18 3 1
      213 SETTABLEKS                       R18 R17 K31 ["text"]
      215 MOVE                             R18 R3
      216 CALL                             R18 0 1
      217 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      219 DUPTABLE                         R18 K61 [{"Content"}]
      220 GETUPVAL                         R19 6
      221 GETUPVAL                         R20 10
      222 DUPTABLE                         R21 K65 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      223 GETTABLEKS                       R22 R6 K69 ["customClothingOuterwearSetting"]
      225 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      227 GETUPVAL                         R22 5
      228 GETTABLEKS                       R22 R22 K70 ["OuterwearAssetSelectorExpectedAssetType"]
      230 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      232 LOADB                            R22 1
      233 SETTABLEKS                       R22 R21 K64 ["r15Only"]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K60 ["Content"]
      238 CALL                             R15 3 1
      239 SETTABLEKS                       R15 R14 K38 ["OuterwearAssetSelector"]
      241 MOVE                             R15 R9
      242 JUMPIFNOT                        R15 ; [+41]
      243 MOVE                             R15 R10
      244 JUMPIFNOT                        R15 ; [+39]
      245 GETUPVAL                         R15 6
      246 GETUPVAL                         R16 9
      247 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      248 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      250 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      251 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      253 LOADK                            R20 K13 ["ClothingSettings"]
      254 LOADK                            R21 K71 ["CustomClothingSectionBottoms"]
      255 NAMECALL                         R18 R1 K15 ["getText"]
      257 CALL                             R18 3 1
      258 SETTABLEKS                       R18 R17 K31 ["text"]
      260 MOVE                             R18 R3
      261 CALL                             R18 0 1
      262 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      264 DUPTABLE                         R18 K61 [{"Content"}]
      265 GETUPVAL                         R19 6
      266 GETUPVAL                         R20 10
      267 DUPTABLE                         R21 K65 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      268 GETTABLEKS                       R22 R6 K72 ["customClothingBottomsSetting"]
      270 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      272 GETUPVAL                         R22 5
      273 GETTABLEKS                       R22 R22 K73 ["BottomsAssetSelectorExpectedAssetType"]
      275 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      277 LOADB                            R22 1
      278 SETTABLEKS                       R22 R21 K64 ["r15Only"]
      280 CALL                             R19 2 1
      281 SETTABLEKS                       R19 R18 K60 ["Content"]
      283 CALL                             R15 3 1
      284 SETTABLEKS                       R15 R14 K39 ["BottomsAssetSelector"]
      286 MOVE                             R15 R9
      287 JUMPIFNOT                        R15 ; [+40]
      288 MOVE                             R15 R10
      289 JUMPIFNOT                        R15 ; [+38]
      290 GETUPVAL                         R15 6
      291 GETUPVAL                         R16 9
      292 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      293 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      295 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      296 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      298 LOADK                            R20 K13 ["ClothingSettings"]
      299 LOADK                            R21 K74 ["CustomClothingSectionLeftShoes"]
      300 NAMECALL                         R18 R1 K15 ["getText"]
      302 CALL                             R18 3 1
      303 SETTABLEKS                       R18 R17 K31 ["text"]
      305 MOVE                             R18 R3
      306 CALL                             R18 0 1
      307 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      309 DUPTABLE                         R18 K61 [{"Content"}]
      310 GETUPVAL                         R19 6
      311 GETUPVAL                         R20 10
      312 DUPTABLE                         R21 K65 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      313 GETTABLEKS                       R22 R6 K75 ["customClothingLeftShoesSetting"]
      315 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      317 GETIMPORT                        R22 K78 [Enum.AssetType.LeftShoeAccessory]
      319 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      321 LOADB                            R22 1
      322 SETTABLEKS                       R22 R21 K64 ["r15Only"]
      324 CALL                             R19 2 1
      325 SETTABLEKS                       R19 R18 K60 ["Content"]
      327 CALL                             R15 3 1
      328 SETTABLEKS                       R15 R14 K40 ["LeftShoesAssetSelector"]
      330 MOVE                             R15 R9
      331 JUMPIFNOT                        R15 ; [+40]
      332 MOVE                             R15 R10
      333 JUMPIFNOT                        R15 ; [+38]
      334 GETUPVAL                         R15 6
      335 GETUPVAL                         R16 9
      336 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      337 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      339 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      340 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      342 LOADK                            R20 K13 ["ClothingSettings"]
      343 LOADK                            R21 K79 ["CustomClothingSectionRightShoes"]
      344 NAMECALL                         R18 R1 K15 ["getText"]
      346 CALL                             R18 3 1
      347 SETTABLEKS                       R18 R17 K31 ["text"]
      349 MOVE                             R18 R3
      350 CALL                             R18 0 1
      351 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      353 DUPTABLE                         R18 K61 [{"Content"}]
      354 GETUPVAL                         R19 6
      355 GETUPVAL                         R20 10
      356 DUPTABLE                         R21 K65 [{"assetIdSetting", "expectedAssetType", "r15Only"}]
      357 GETTABLEKS                       R22 R6 K80 ["customClothingRightShoesSetting"]
      359 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      361 GETIMPORT                        R22 K82 [Enum.AssetType.RightShoeAccessory]
      363 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      365 LOADB                            R22 1
      366 SETTABLEKS                       R22 R21 K64 ["r15Only"]
      368 CALL                             R19 2 1
      369 SETTABLEKS                       R19 R18 K60 ["Content"]
      371 CALL                             R15 3 1
      372 SETTABLEKS                       R15 R14 K41 ["RightShoesAssetSelector"]
      374 MOVE                             R15 R9
      375 JUMPIFNOT                        R15 ; [+41]
      376 GETUPVAL                         R15 6
      377 GETUPVAL                         R16 9
      378 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      379 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      381 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      382 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      384 LOADK                            R20 K13 ["ClothingSettings"]
      385 LOADK                            R21 K83 ["CustomClothingSectionClassicShirts"]
      386 NAMECALL                         R18 R1 K15 ["getText"]
      388 CALL                             R18 3 1
      389 SETTABLEKS                       R18 R17 K31 ["text"]
      391 MOVE                             R18 R3
      392 CALL                             R18 0 1
      393 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      395 DUPTABLE                         R18 K61 [{"Content"}]
      396 GETUPVAL                         R19 6
      397 GETUPVAL                         R20 10
      398 DUPTABLE                         R21 K84 [{"assetIdSetting", "expectedAssetType"}]
      399 GETTABLEKS                       R22 R6 K85 ["customClothingClassicShirtsSetting"]
      401 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      403 NEWTABLE                         R22 0 2
      405 GETIMPORT                        R23 K87 [Enum.AssetType.Shirt]
      407 GETIMPORT                        R24 K89 [Enum.AssetType.Model]
      409 SETLIST                          R22 R23 2 [1]
      411 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      413 CALL                             R19 2 1
      414 SETTABLEKS                       R19 R18 K60 ["Content"]
      416 CALL                             R15 3 1
      417 SETTABLEKS                       R15 R14 K42 ["ClassicShirtsAssetSelector"]
      419 MOVE                             R15 R9
      420 JUMPIFNOT                        R15 ; [+41]
      421 GETUPVAL                         R15 6
      422 GETUPVAL                         R16 9
      423 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      424 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      426 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      427 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      429 LOADK                            R20 K13 ["ClothingSettings"]
      430 LOADK                            R21 K90 ["CustomClothingSectionClassicTShirts"]
      431 NAMECALL                         R18 R1 K15 ["getText"]
      433 CALL                             R18 3 1
      434 SETTABLEKS                       R18 R17 K31 ["text"]
      436 MOVE                             R18 R3
      437 CALL                             R18 0 1
      438 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      440 DUPTABLE                         R18 K61 [{"Content"}]
      441 GETUPVAL                         R19 6
      442 GETUPVAL                         R20 10
      443 DUPTABLE                         R21 K84 [{"assetIdSetting", "expectedAssetType"}]
      444 GETTABLEKS                       R22 R6 K91 ["customClothingClassicTShirtsSetting"]
      446 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      448 NEWTABLE                         R22 0 2
      450 GETIMPORT                        R23 K93 [Enum.AssetType.TShirt]
      452 GETIMPORT                        R24 K89 [Enum.AssetType.Model]
      454 SETLIST                          R22 R23 2 [1]
      456 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      458 CALL                             R19 2 1
      459 SETTABLEKS                       R19 R18 K60 ["Content"]
      461 CALL                             R15 3 1
      462 SETTABLEKS                       R15 R14 K43 ["ClassicTShirtsAssetSelector"]
      464 MOVE                             R15 R9
      465 JUMPIFNOT                        R15 ; [+41]
      466 GETUPVAL                         R15 6
      467 GETUPVAL                         R16 9
      468 DUPTABLE                         R17 K57 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      469 SETTABLEKS                       R8 R17 K55 ["minTextLabelWidth"]
      471 LOADK                            R18 K58 ["AvatarSettings-LeftTextPrimary"]
      472 SETTABLEKS                       R18 R17 K56 ["textLabelTags"]
      474 LOADK                            R20 K13 ["ClothingSettings"]
      475 LOADK                            R21 K94 ["CustomClothingSectionClassicPants"]
      476 NAMECALL                         R18 R1 K15 ["getText"]
      478 CALL                             R18 3 1
      479 SETTABLEKS                       R18 R17 K31 ["text"]
      481 MOVE                             R18 R3
      482 CALL                             R18 0 1
      483 SETTABLEKS                       R18 R17 K32 ["layoutOrder"]
      485 DUPTABLE                         R18 K61 [{"Content"}]
      486 GETUPVAL                         R19 6
      487 GETUPVAL                         R20 10
      488 DUPTABLE                         R21 K84 [{"assetIdSetting", "expectedAssetType"}]
      489 GETTABLEKS                       R22 R6 K95 ["customClothingClassicPantsSetting"]
      491 SETTABLEKS                       R22 R21 K62 ["assetIdSetting"]
      493 NEWTABLE                         R22 0 2
      495 GETIMPORT                        R23 K97 [Enum.AssetType.Pants]
      497 GETIMPORT                        R24 K89 [Enum.AssetType.Model]
      499 SETLIST                          R22 R23 2 [1]
      501 SETTABLEKS                       R22 R21 K63 ["expectedAssetType"]
      503 CALL                             R19 2 1
      504 SETTABLEKS                       R19 R18 K60 ["Content"]
      506 CALL                             R15 3 1
      507 SETTABLEKS                       R15 R14 K44 ["ClassicPantsAssetSelector"]
      509 CALL                             R11 3 -1
      510 RETURN                           R11 -1

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
