PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["CustomAccessoryModeSelected"]
        5 DUPTABLE                         R4 K2 [{"customAccessoryMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["customAccessoryMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["customAccessoriesSetting"]
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
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["AccessoriesSettings"]
       40 LOADK                            R10 K14 ["CustomAccessoriesSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["AccessoriesSettings"]
       52 LOADK                            R11 K18 ["CustomAccessoriesSectionCustomAccessoriesButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 SETLIST                          R5 R6 2 [1]
       60 GETTABLEKS                       R7 R4 K2 ["settings"]
       62 GETTABLEKS                       R6 R7 K19 ["accessoriesSettings"]
       64 GETTABLEKS                       R8 R6 K20 ["customAccessoriesSetting"]
       66 GETTABLEKS                       R7 R8 K21 ["value"]
       68 GETIMPORT                        R8 K24 [UDim.new]
       70 LOADN                            R9 0
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R10 R11 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R10 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       77 JUMPIFEQ                         R7 R10 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 GETUPVAL                         R10 7
       82 GETUPVAL                         R11 8
       83 DUPTABLE                         R12 K30 [{"text", "contentTags", "layoutOrder", "showWarning"}]
       84 LOADK                            R15 K13 ["AccessoriesSettings"]
       85 LOADK                            R16 K31 ["CustomAccessoriesSection"]
       86 NAMECALL                         R13 R1 K15 ["getText"]
       88 CALL                             R13 3 1
       89 SETTABLEKS                       R13 R12 K26 ["text"]
       91 LOADK                            R13 K32 ["Component-ExpandableSection-Content"]
       92 SETTABLEKS                       R13 R12 K27 ["contentTags"]
       94 GETTABLEKS                       R13 R0 K28 ["layoutOrder"]
       96 SETTABLEKS                       R13 R12 K28 ["layoutOrder"]
       98 LOADB                            R13 1
       99 SETTABLEKS                       R13 R12 K29 ["showWarning"]
      101 DUPTABLE                         R13 K43 [{"UIListLayout", "CustomAccessoriesModeSelector", "HairAssetSelector", "HeadAssetSelector", "FaceAssetSelector", "NeckAssetSelector", "ShoulderAssetSelector", "FrontAssetSelector", "BackAssetSelector", "WaistAssetSelector"}]
      102 GETUPVAL                         R14 7
      103 LOADK                            R15 K33 ["UIListLayout"]
      104 DUPTABLE                         R16 K45 [{"Padding"}]
      105 GETIMPORT                        R17 K24 [UDim.new]
      107 LOADN                            R18 0
      108 LOADN                            R19 12
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K44 ["Padding"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K33 ["UIListLayout"]
      115 GETUPVAL                         R14 7
      116 GETUPVAL                         R15 9
      117 DUPTABLE                         R16 K50 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      118 MOVE                             R17 R3
      119 CALL                             R17 0 1
      120 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      122 SETTABLEKS                       R5 R16 K46 ["items"]
      124 SETTABLEKS                       R7 R16 K47 ["selected"]
      126 GETUPVAL                         R18 1
      127 CALL                             R18 0 1
      128 JUMPIFNOT                        R18 ; [+5]
      129 NEWCLOSURE                       R17 P0
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R6
      133 JUMP                             ; [+4]
      134 GETTABLEKS                       R18 R6 K20 ["customAccessoriesSetting"]
      136 GETTABLEKS                       R17 R18 K51 ["set"]
      138 SETTABLEKS                       R17 R16 K48 ["onItemActivated"]
      140 LOADK                            R19 K13 ["AccessoriesSettings"]
      141 GETIMPORT                        R21 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
      143 JUMPIFNOTEQ                      R7 R21 ; [+3]
      145 LOADK                            R20 K52 ["CustomAccessoriesSectionPlayerChoiceSubText"]
      146 JUMP                             ; [+1]
      147 LOADK                            R20 K53 ["CustomAccessoriesSectionCustomAccessoriesSubText"]
      148 NAMECALL                         R17 R1 K15 ["getText"]
      150 CALL                             R17 3 1
      151 SETTABLEKS                       R17 R16 K49 ["subText"]
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K34 ["CustomAccessoriesModeSelector"]
      156 MOVE                             R14 R9
      157 JUMPIFNOT                        R14 ; [+35]
      158 GETUPVAL                         R14 7
      159 GETUPVAL                         R15 10
      160 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      161 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      163 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      164 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      166 LOADK                            R19 K13 ["AccessoriesSettings"]
      167 LOADK                            R20 K58 ["CustomAccessoriesSectionCustomAccessoriesHair"]
      168 NAMECALL                         R17 R1 K15 ["getText"]
      170 CALL                             R17 3 1
      171 SETTABLEKS                       R17 R16 K26 ["text"]
      173 MOVE                             R17 R3
      174 CALL                             R17 0 1
      175 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      177 DUPTABLE                         R17 K60 [{"Content"}]
      178 GETUPVAL                         R18 7
      179 GETUPVAL                         R19 11
      180 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      181 GETTABLEKS                       R21 R6 K64 ["customAccessoriesHairSetting"]
      183 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      185 GETIMPORT                        R21 K67 [Enum.AssetType.HairAccessory]
      187 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      189 CALL                             R18 2 1
      190 SETTABLEKS                       R18 R17 K59 ["Content"]
      192 CALL                             R14 3 1
      193 SETTABLEKS                       R14 R13 K35 ["HairAssetSelector"]
      195 MOVE                             R14 R9
      196 JUMPIFNOT                        R14 ; [+35]
      197 GETUPVAL                         R14 7
      198 GETUPVAL                         R15 10
      199 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      200 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      202 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      203 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      205 LOADK                            R19 K13 ["AccessoriesSettings"]
      206 LOADK                            R20 K68 ["CustomAccessoriesSectionCustomAccessoriesHead"]
      207 NAMECALL                         R17 R1 K15 ["getText"]
      209 CALL                             R17 3 1
      210 SETTABLEKS                       R17 R16 K26 ["text"]
      212 MOVE                             R17 R3
      213 CALL                             R17 0 1
      214 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      216 DUPTABLE                         R17 K60 [{"Content"}]
      217 GETUPVAL                         R18 7
      218 GETUPVAL                         R19 11
      219 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      220 GETTABLEKS                       R21 R6 K69 ["customAccessoriesHeadSetting"]
      222 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      224 GETIMPORT                        R21 K71 [Enum.AssetType.Hat]
      226 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K59 ["Content"]
      231 CALL                             R14 3 1
      232 SETTABLEKS                       R14 R13 K36 ["HeadAssetSelector"]
      234 MOVE                             R14 R9
      235 JUMPIFNOT                        R14 ; [+35]
      236 GETUPVAL                         R14 7
      237 GETUPVAL                         R15 10
      238 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      239 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      241 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      242 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      244 LOADK                            R19 K13 ["AccessoriesSettings"]
      245 LOADK                            R20 K72 ["CustomAccessoriesSectionCustomAccessoriesFace"]
      246 NAMECALL                         R17 R1 K15 ["getText"]
      248 CALL                             R17 3 1
      249 SETTABLEKS                       R17 R16 K26 ["text"]
      251 MOVE                             R17 R3
      252 CALL                             R17 0 1
      253 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      255 DUPTABLE                         R17 K60 [{"Content"}]
      256 GETUPVAL                         R18 7
      257 GETUPVAL                         R19 11
      258 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      259 GETTABLEKS                       R21 R6 K73 ["customAccessoriesFaceSetting"]
      261 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      263 GETIMPORT                        R21 K75 [Enum.AssetType.FaceAccessory]
      265 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      267 CALL                             R18 2 1
      268 SETTABLEKS                       R18 R17 K59 ["Content"]
      270 CALL                             R14 3 1
      271 SETTABLEKS                       R14 R13 K37 ["FaceAssetSelector"]
      273 MOVE                             R14 R9
      274 JUMPIFNOT                        R14 ; [+35]
      275 GETUPVAL                         R14 7
      276 GETUPVAL                         R15 10
      277 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      278 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      280 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      281 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      283 LOADK                            R19 K13 ["AccessoriesSettings"]
      284 LOADK                            R20 K76 ["CustomAccessoriesSectionCustomAccessoriesNeck"]
      285 NAMECALL                         R17 R1 K15 ["getText"]
      287 CALL                             R17 3 1
      288 SETTABLEKS                       R17 R16 K26 ["text"]
      290 MOVE                             R17 R3
      291 CALL                             R17 0 1
      292 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      294 DUPTABLE                         R17 K60 [{"Content"}]
      295 GETUPVAL                         R18 7
      296 GETUPVAL                         R19 11
      297 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      298 GETTABLEKS                       R21 R6 K77 ["customAccessoriesNeckSetting"]
      300 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      302 GETIMPORT                        R21 K79 [Enum.AssetType.NeckAccessory]
      304 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      306 CALL                             R18 2 1
      307 SETTABLEKS                       R18 R17 K59 ["Content"]
      309 CALL                             R14 3 1
      310 SETTABLEKS                       R14 R13 K38 ["NeckAssetSelector"]
      312 MOVE                             R14 R9
      313 JUMPIFNOT                        R14 ; [+35]
      314 GETUPVAL                         R14 7
      315 GETUPVAL                         R15 10
      316 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      317 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      319 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      320 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      322 LOADK                            R19 K13 ["AccessoriesSettings"]
      323 LOADK                            R20 K80 ["CustomAccessoriesSectionCustomAccessoriesShoulder"]
      324 NAMECALL                         R17 R1 K15 ["getText"]
      326 CALL                             R17 3 1
      327 SETTABLEKS                       R17 R16 K26 ["text"]
      329 MOVE                             R17 R3
      330 CALL                             R17 0 1
      331 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      333 DUPTABLE                         R17 K60 [{"Content"}]
      334 GETUPVAL                         R18 7
      335 GETUPVAL                         R19 11
      336 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      337 GETTABLEKS                       R21 R6 K81 ["customAccessoriesShoulderSetting"]
      339 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      341 GETIMPORT                        R21 K83 [Enum.AssetType.ShoulderAccessory]
      343 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      345 CALL                             R18 2 1
      346 SETTABLEKS                       R18 R17 K59 ["Content"]
      348 CALL                             R14 3 1
      349 SETTABLEKS                       R14 R13 K39 ["ShoulderAssetSelector"]
      351 MOVE                             R14 R9
      352 JUMPIFNOT                        R14 ; [+35]
      353 GETUPVAL                         R14 7
      354 GETUPVAL                         R15 10
      355 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      356 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      358 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      359 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      361 LOADK                            R19 K13 ["AccessoriesSettings"]
      362 LOADK                            R20 K84 ["CustomAccessoriesSectionCustomAccessoriesFront"]
      363 NAMECALL                         R17 R1 K15 ["getText"]
      365 CALL                             R17 3 1
      366 SETTABLEKS                       R17 R16 K26 ["text"]
      368 MOVE                             R17 R3
      369 CALL                             R17 0 1
      370 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      372 DUPTABLE                         R17 K60 [{"Content"}]
      373 GETUPVAL                         R18 7
      374 GETUPVAL                         R19 11
      375 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      376 GETTABLEKS                       R21 R6 K85 ["customAccessoriesFrontSetting"]
      378 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      380 GETIMPORT                        R21 K87 [Enum.AssetType.FrontAccessory]
      382 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      384 CALL                             R18 2 1
      385 SETTABLEKS                       R18 R17 K59 ["Content"]
      387 CALL                             R14 3 1
      388 SETTABLEKS                       R14 R13 K40 ["FrontAssetSelector"]
      390 MOVE                             R14 R9
      391 JUMPIFNOT                        R14 ; [+35]
      392 GETUPVAL                         R14 7
      393 GETUPVAL                         R15 10
      394 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      395 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      397 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      398 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      400 LOADK                            R19 K13 ["AccessoriesSettings"]
      401 LOADK                            R20 K88 ["CustomAccessoriesSectionCustomAccessoriesBack"]
      402 NAMECALL                         R17 R1 K15 ["getText"]
      404 CALL                             R17 3 1
      405 SETTABLEKS                       R17 R16 K26 ["text"]
      407 MOVE                             R17 R3
      408 CALL                             R17 0 1
      409 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      411 DUPTABLE                         R17 K60 [{"Content"}]
      412 GETUPVAL                         R18 7
      413 GETUPVAL                         R19 11
      414 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      415 GETTABLEKS                       R21 R6 K89 ["customAccessoriesBackSetting"]
      417 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      419 GETIMPORT                        R21 K91 [Enum.AssetType.BackAccessory]
      421 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      423 CALL                             R18 2 1
      424 SETTABLEKS                       R18 R17 K59 ["Content"]
      426 CALL                             R14 3 1
      427 SETTABLEKS                       R14 R13 K41 ["BackAssetSelector"]
      429 MOVE                             R14 R9
      430 JUMPIFNOT                        R14 ; [+35]
      431 GETUPVAL                         R14 7
      432 GETUPVAL                         R15 10
      433 DUPTABLE                         R16 K56 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      434 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      436 LOADK                            R17 K57 ["AvatarSettings-LeftTextPrimary"]
      437 SETTABLEKS                       R17 R16 K55 ["textLabelTags"]
      439 LOADK                            R19 K13 ["AccessoriesSettings"]
      440 LOADK                            R20 K92 ["CustomAccessoriesSectionCustomAccessoriesWaist"]
      441 NAMECALL                         R17 R1 K15 ["getText"]
      443 CALL                             R17 3 1
      444 SETTABLEKS                       R17 R16 K26 ["text"]
      446 MOVE                             R17 R3
      447 CALL                             R17 0 1
      448 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      450 DUPTABLE                         R17 K60 [{"Content"}]
      451 GETUPVAL                         R18 7
      452 GETUPVAL                         R19 11
      453 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      454 GETTABLEKS                       R21 R6 K93 ["customAccessoriesWaistSetting"]
      456 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      458 GETIMPORT                        R21 K95 [Enum.AssetType.WaistAccessory]
      460 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      462 CALL                             R18 2 1
      463 SETTABLEKS                       R18 R17 K59 ["Content"]
      465 CALL                             R14 3 1
      466 SETTABLEKS                       R14 R13 K42 ["WaistAssetSelector"]
      468 CALL                             R10 3 -1
      469 RETURN                           R10 -1

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
