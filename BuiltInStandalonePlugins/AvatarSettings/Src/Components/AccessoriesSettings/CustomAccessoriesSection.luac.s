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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["customAccessoriesSetting"]
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
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["AccessoriesSettings"]
       35 LOADK                            R10 K14 ["CustomAccessoriesSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["AccessoriesSettings"]
       47 LOADK                            R11 K18 ["CustomAccessoriesSectionCustomAccessoriesButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 SETLIST                          R5 R6 2 [1]
       55 GETTABLEKS                       R6 R4 K2 ["settings"]
       57 GETTABLEKS                       R6 R6 K19 ["accessoriesSettings"]
       59 GETTABLEKS                       R7 R6 K20 ["customAccessoriesSetting"]
       61 GETTABLEKS                       R7 R7 K21 ["value"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 0
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K25 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       69 CALL                             R8 2 1
       70 GETIMPORT                        R10 K17 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       72 JUMPIFEQ                         R7 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 6
       77 GETUPVAL                         R11 7
       78 DUPTABLE                         R12 K30 [{"text", "contentTags", "layoutOrder", "showWarning"}]
       79 LOADK                            R15 K13 ["AccessoriesSettings"]
       80 LOADK                            R16 K31 ["CustomAccessoriesSection"]
       81 NAMECALL                         R13 R1 K15 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["text"]
       86 LOADK                            R13 K32 ["Component-ExpandableSection-Content"]
       87 SETTABLEKS                       R13 R12 K27 ["contentTags"]
       89 GETTABLEKS                       R13 R0 K28 ["layoutOrder"]
       91 SETTABLEKS                       R13 R12 K28 ["layoutOrder"]
       93 LOADB                            R13 1
       94 SETTABLEKS                       R13 R12 K29 ["showWarning"]
       96 DUPTABLE                         R13 K43 [{"UIListLayout", "CustomAccessoriesModeSelector", "HairAssetSelector", "HeadAssetSelector", "FaceAssetSelector", "NeckAssetSelector", "ShoulderAssetSelector", "FrontAssetSelector", "BackAssetSelector", "WaistAssetSelector"}]
       97 GETUPVAL                         R14 6
       98 LOADK                            R15 K33 ["UIListLayout"]
       99 DUPTABLE                         R16 K45 [{"Padding"}]
      100 GETIMPORT                        R17 K24 [UDim.new]
      102 LOADN                            R18 0
      103 LOADN                            R19 12
      104 CALL                             R17 2 1
      105 SETTABLEKS                       R17 R16 K44 ["Padding"]
      107 CALL                             R14 2 1
      108 SETTABLEKS                       R14 R13 K33 ["UIListLayout"]
      110 GETUPVAL                         R14 6
      111 GETUPVAL                         R15 8
      112 DUPTABLE                         R16 K50 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      113 MOVE                             R17 R3
      114 CALL                             R17 0 1
      115 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      117 SETTABLEKS                       R5 R16 K46 ["items"]
      119 SETTABLEKS                       R7 R16 K47 ["selected"]
      121 NEWCLOSURE                       R17 P0
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R17 R16 K48 ["onItemActivated"]
      127 LOADK                            R19 K13 ["AccessoriesSettings"]
      128 GETIMPORT                        R21 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
      130 JUMPIFNOTEQ                      R7 R21 ; [+3]
      132 LOADK                            R20 K51 ["CustomAccessoriesSectionPlayerChoiceSubText"]
      133 JUMP                             ; [+1]
      134 LOADK                            R20 K52 ["CustomAccessoriesSectionCustomAccessoriesSubText"]
      135 NAMECALL                         R17 R1 K15 ["getText"]
      137 CALL                             R17 3 1
      138 SETTABLEKS                       R17 R16 K49 ["subText"]
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K34 ["CustomAccessoriesModeSelector"]
      143 MOVE                             R14 R9
      144 JUMPIFNOT                        R14 ; [+35]
      145 GETUPVAL                         R14 6
      146 GETUPVAL                         R15 9
      147 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      148 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      150 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      151 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      153 LOADK                            R19 K13 ["AccessoriesSettings"]
      154 LOADK                            R20 K57 ["CustomAccessoriesSectionCustomAccessoriesHair"]
      155 NAMECALL                         R17 R1 K15 ["getText"]
      157 CALL                             R17 3 1
      158 SETTABLEKS                       R17 R16 K26 ["text"]
      160 MOVE                             R17 R3
      161 CALL                             R17 0 1
      162 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      164 DUPTABLE                         R17 K59 [{"Content"}]
      165 GETUPVAL                         R18 6
      166 GETUPVAL                         R19 10
      167 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      168 GETTABLEKS                       R21 R6 K63 ["customAccessoriesHairSetting"]
      170 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      172 GETIMPORT                        R21 K66 [Enum.AssetType.HairAccessory]
      174 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      176 CALL                             R18 2 1
      177 SETTABLEKS                       R18 R17 K58 ["Content"]
      179 CALL                             R14 3 1
      180 SETTABLEKS                       R14 R13 K35 ["HairAssetSelector"]
      182 MOVE                             R14 R9
      183 JUMPIFNOT                        R14 ; [+35]
      184 GETUPVAL                         R14 6
      185 GETUPVAL                         R15 9
      186 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      187 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      189 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      190 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      192 LOADK                            R19 K13 ["AccessoriesSettings"]
      193 LOADK                            R20 K67 ["CustomAccessoriesSectionCustomAccessoriesHead"]
      194 NAMECALL                         R17 R1 K15 ["getText"]
      196 CALL                             R17 3 1
      197 SETTABLEKS                       R17 R16 K26 ["text"]
      199 MOVE                             R17 R3
      200 CALL                             R17 0 1
      201 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      203 DUPTABLE                         R17 K59 [{"Content"}]
      204 GETUPVAL                         R18 6
      205 GETUPVAL                         R19 10
      206 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      207 GETTABLEKS                       R21 R6 K68 ["customAccessoriesHeadSetting"]
      209 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      211 GETIMPORT                        R21 K70 [Enum.AssetType.Hat]
      213 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      215 CALL                             R18 2 1
      216 SETTABLEKS                       R18 R17 K58 ["Content"]
      218 CALL                             R14 3 1
      219 SETTABLEKS                       R14 R13 K36 ["HeadAssetSelector"]
      221 MOVE                             R14 R9
      222 JUMPIFNOT                        R14 ; [+35]
      223 GETUPVAL                         R14 6
      224 GETUPVAL                         R15 9
      225 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      226 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      228 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      229 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      231 LOADK                            R19 K13 ["AccessoriesSettings"]
      232 LOADK                            R20 K71 ["CustomAccessoriesSectionCustomAccessoriesFace"]
      233 NAMECALL                         R17 R1 K15 ["getText"]
      235 CALL                             R17 3 1
      236 SETTABLEKS                       R17 R16 K26 ["text"]
      238 MOVE                             R17 R3
      239 CALL                             R17 0 1
      240 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      242 DUPTABLE                         R17 K59 [{"Content"}]
      243 GETUPVAL                         R18 6
      244 GETUPVAL                         R19 10
      245 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      246 GETTABLEKS                       R21 R6 K72 ["customAccessoriesFaceSetting"]
      248 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      250 GETIMPORT                        R21 K74 [Enum.AssetType.FaceAccessory]
      252 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      254 CALL                             R18 2 1
      255 SETTABLEKS                       R18 R17 K58 ["Content"]
      257 CALL                             R14 3 1
      258 SETTABLEKS                       R14 R13 K37 ["FaceAssetSelector"]
      260 MOVE                             R14 R9
      261 JUMPIFNOT                        R14 ; [+35]
      262 GETUPVAL                         R14 6
      263 GETUPVAL                         R15 9
      264 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      265 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      267 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      268 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      270 LOADK                            R19 K13 ["AccessoriesSettings"]
      271 LOADK                            R20 K75 ["CustomAccessoriesSectionCustomAccessoriesNeck"]
      272 NAMECALL                         R17 R1 K15 ["getText"]
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K26 ["text"]
      277 MOVE                             R17 R3
      278 CALL                             R17 0 1
      279 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      281 DUPTABLE                         R17 K59 [{"Content"}]
      282 GETUPVAL                         R18 6
      283 GETUPVAL                         R19 10
      284 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      285 GETTABLEKS                       R21 R6 K76 ["customAccessoriesNeckSetting"]
      287 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      289 GETIMPORT                        R21 K78 [Enum.AssetType.NeckAccessory]
      291 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      293 CALL                             R18 2 1
      294 SETTABLEKS                       R18 R17 K58 ["Content"]
      296 CALL                             R14 3 1
      297 SETTABLEKS                       R14 R13 K38 ["NeckAssetSelector"]
      299 MOVE                             R14 R9
      300 JUMPIFNOT                        R14 ; [+35]
      301 GETUPVAL                         R14 6
      302 GETUPVAL                         R15 9
      303 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      304 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      306 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      307 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      309 LOADK                            R19 K13 ["AccessoriesSettings"]
      310 LOADK                            R20 K79 ["CustomAccessoriesSectionCustomAccessoriesShoulder"]
      311 NAMECALL                         R17 R1 K15 ["getText"]
      313 CALL                             R17 3 1
      314 SETTABLEKS                       R17 R16 K26 ["text"]
      316 MOVE                             R17 R3
      317 CALL                             R17 0 1
      318 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      320 DUPTABLE                         R17 K59 [{"Content"}]
      321 GETUPVAL                         R18 6
      322 GETUPVAL                         R19 10
      323 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      324 GETTABLEKS                       R21 R6 K80 ["customAccessoriesShoulderSetting"]
      326 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      328 GETIMPORT                        R21 K82 [Enum.AssetType.ShoulderAccessory]
      330 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      332 CALL                             R18 2 1
      333 SETTABLEKS                       R18 R17 K58 ["Content"]
      335 CALL                             R14 3 1
      336 SETTABLEKS                       R14 R13 K39 ["ShoulderAssetSelector"]
      338 MOVE                             R14 R9
      339 JUMPIFNOT                        R14 ; [+35]
      340 GETUPVAL                         R14 6
      341 GETUPVAL                         R15 9
      342 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      343 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      345 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      346 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      348 LOADK                            R19 K13 ["AccessoriesSettings"]
      349 LOADK                            R20 K83 ["CustomAccessoriesSectionCustomAccessoriesFront"]
      350 NAMECALL                         R17 R1 K15 ["getText"]
      352 CALL                             R17 3 1
      353 SETTABLEKS                       R17 R16 K26 ["text"]
      355 MOVE                             R17 R3
      356 CALL                             R17 0 1
      357 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      359 DUPTABLE                         R17 K59 [{"Content"}]
      360 GETUPVAL                         R18 6
      361 GETUPVAL                         R19 10
      362 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      363 GETTABLEKS                       R21 R6 K84 ["customAccessoriesFrontSetting"]
      365 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      367 GETIMPORT                        R21 K86 [Enum.AssetType.FrontAccessory]
      369 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      371 CALL                             R18 2 1
      372 SETTABLEKS                       R18 R17 K58 ["Content"]
      374 CALL                             R14 3 1
      375 SETTABLEKS                       R14 R13 K40 ["FrontAssetSelector"]
      377 MOVE                             R14 R9
      378 JUMPIFNOT                        R14 ; [+35]
      379 GETUPVAL                         R14 6
      380 GETUPVAL                         R15 9
      381 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      382 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      384 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      385 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      387 LOADK                            R19 K13 ["AccessoriesSettings"]
      388 LOADK                            R20 K87 ["CustomAccessoriesSectionCustomAccessoriesBack"]
      389 NAMECALL                         R17 R1 K15 ["getText"]
      391 CALL                             R17 3 1
      392 SETTABLEKS                       R17 R16 K26 ["text"]
      394 MOVE                             R17 R3
      395 CALL                             R17 0 1
      396 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      398 DUPTABLE                         R17 K59 [{"Content"}]
      399 GETUPVAL                         R18 6
      400 GETUPVAL                         R19 10
      401 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      402 GETTABLEKS                       R21 R6 K88 ["customAccessoriesBackSetting"]
      404 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      406 GETIMPORT                        R21 K90 [Enum.AssetType.BackAccessory]
      408 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      410 CALL                             R18 2 1
      411 SETTABLEKS                       R18 R17 K58 ["Content"]
      413 CALL                             R14 3 1
      414 SETTABLEKS                       R14 R13 K41 ["BackAssetSelector"]
      416 MOVE                             R14 R9
      417 JUMPIFNOT                        R14 ; [+35]
      418 GETUPVAL                         R14 6
      419 GETUPVAL                         R15 9
      420 DUPTABLE                         R16 K55 [{"minTextLabelWidth", "textLabelTags", "text", "layoutOrder"}]
      421 SETTABLEKS                       R8 R16 K53 ["minTextLabelWidth"]
      423 LOADK                            R17 K56 ["AvatarSettings-LeftTextPrimary"]
      424 SETTABLEKS                       R17 R16 K54 ["textLabelTags"]
      426 LOADK                            R19 K13 ["AccessoriesSettings"]
      427 LOADK                            R20 K91 ["CustomAccessoriesSectionCustomAccessoriesWaist"]
      428 NAMECALL                         R17 R1 K15 ["getText"]
      430 CALL                             R17 3 1
      431 SETTABLEKS                       R17 R16 K26 ["text"]
      433 MOVE                             R17 R3
      434 CALL                             R17 0 1
      435 SETTABLEKS                       R17 R16 K28 ["layoutOrder"]
      437 DUPTABLE                         R17 K59 [{"Content"}]
      438 GETUPVAL                         R18 6
      439 GETUPVAL                         R19 10
      440 DUPTABLE                         R20 K62 [{"assetIdSetting", "expectedAssetType"}]
      441 GETTABLEKS                       R21 R6 K92 ["customAccessoriesWaistSetting"]
      443 SETTABLEKS                       R21 R20 K60 ["assetIdSetting"]
      445 GETIMPORT                        R21 K94 [Enum.AssetType.WaistAccessory]
      447 SETTABLEKS                       R21 R20 K61 ["expectedAssetType"]
      449 CALL                             R18 2 1
      450 SETTABLEKS                       R18 R17 K58 ["Content"]
      452 CALL                             R14 3 1
      453 SETTABLEKS                       R14 R13 K42 ["WaistAssetSelector"]
      455 CALL                             R10 3 -1
      456 RETURN                           R10 -1

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
