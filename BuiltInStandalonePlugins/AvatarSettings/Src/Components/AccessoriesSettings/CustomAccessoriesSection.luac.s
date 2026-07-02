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
       78 DUPTABLE                         R12 K32 [{["text"], ["contentTags"] = "Component-ExpandableSection-Content", ["layoutOrder"], ["showWarning"] = True}]
       79 LOADK                            R15 K13 ["AccessoriesSettings"]
       80 LOADK                            R16 K33 ["CustomAccessoriesSection"]
       81 NAMECALL                         R13 R1 K15 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["text"]
       86 GETTABLEKS                       R13 R0 K29 ["layoutOrder"]
       88 SETTABLEKS                       R13 R12 K29 ["layoutOrder"]
       90 DUPTABLE                         R13 K44 [{"UIListLayout", "CustomAccessoriesModeSelector", "HairAssetSelector", "HeadAssetSelector", "FaceAssetSelector", "NeckAssetSelector", "ShoulderAssetSelector", "FrontAssetSelector", "BackAssetSelector", "WaistAssetSelector"}]
       91 GETUPVAL                         R14 6
       92 LOADK                            R15 K34 ["UIListLayout"]
       93 DUPTABLE                         R16 K46 [{"Padding"}]
       94 GETIMPORT                        R17 K24 [UDim.new]
       96 LOADN                            R18 0
       97 LOADN                            R19 12
       98 CALL                             R17 2 1
       99 SETTABLEKS                       R17 R16 K45 ["Padding"]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K34 ["UIListLayout"]
      104 GETUPVAL                         R14 6
      105 GETUPVAL                         R15 8
      106 DUPTABLE                         R16 K51 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      107 MOVE                             R17 R3
      108 CALL                             R17 0 1
      109 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      111 SETTABLEKS                       R5 R16 K47 ["items"]
      113 SETTABLEKS                       R7 R16 K48 ["selected"]
      115 NEWCLOSURE                       R17 P0
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R17 R16 K49 ["onItemActivated"]
      121 LOADK                            R19 K13 ["AccessoriesSettings"]
      122 GETIMPORT                        R21 K12 [Enum.AvatarSettingsCustomAccessoryMode.PlayerChoice]
      124 JUMPIFNOTEQ                      R7 R21 ; [+3]
      126 LOADK                            R20 K52 ["CustomAccessoriesSectionPlayerChoiceSubText"]
      127 JUMP                             ; [+1]
      128 LOADK                            R20 K53 ["CustomAccessoriesSectionCustomAccessoriesSubText"]
      129 NAMECALL                         R17 R1 K15 ["getText"]
      131 CALL                             R17 3 1
      132 SETTABLEKS                       R17 R16 K50 ["subText"]
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K35 ["CustomAccessoriesModeSelector"]
      137 MOVE                             R14 R9
      138 JUMPIFNOT                        R14 ; [+32]
      139 GETUPVAL                         R14 6
      140 GETUPVAL                         R15 9
      141 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      142 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      144 LOADK                            R19 K13 ["AccessoriesSettings"]
      145 LOADK                            R20 K58 ["CustomAccessoriesSectionCustomAccessoriesHair"]
      146 NAMECALL                         R17 R1 K15 ["getText"]
      148 CALL                             R17 3 1
      149 SETTABLEKS                       R17 R16 K26 ["text"]
      151 MOVE                             R17 R3
      152 CALL                             R17 0 1
      153 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      155 DUPTABLE                         R17 K60 [{"Content"}]
      156 GETUPVAL                         R18 6
      157 GETUPVAL                         R19 10
      158 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      159 GETTABLEKS                       R21 R6 K64 ["customAccessoriesHairSetting"]
      161 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      163 GETIMPORT                        R21 K67 [Enum.AssetType.HairAccessory]
      165 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K59 ["Content"]
      170 CALL                             R14 3 1
      171 SETTABLEKS                       R14 R13 K36 ["HairAssetSelector"]
      173 MOVE                             R14 R9
      174 JUMPIFNOT                        R14 ; [+32]
      175 GETUPVAL                         R14 6
      176 GETUPVAL                         R15 9
      177 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      178 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      180 LOADK                            R19 K13 ["AccessoriesSettings"]
      181 LOADK                            R20 K68 ["CustomAccessoriesSectionCustomAccessoriesHead"]
      182 NAMECALL                         R17 R1 K15 ["getText"]
      184 CALL                             R17 3 1
      185 SETTABLEKS                       R17 R16 K26 ["text"]
      187 MOVE                             R17 R3
      188 CALL                             R17 0 1
      189 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      191 DUPTABLE                         R17 K60 [{"Content"}]
      192 GETUPVAL                         R18 6
      193 GETUPVAL                         R19 10
      194 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      195 GETTABLEKS                       R21 R6 K69 ["customAccessoriesHeadSetting"]
      197 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      199 GETIMPORT                        R21 K71 [Enum.AssetType.Hat]
      201 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K59 ["Content"]
      206 CALL                             R14 3 1
      207 SETTABLEKS                       R14 R13 K37 ["HeadAssetSelector"]
      209 MOVE                             R14 R9
      210 JUMPIFNOT                        R14 ; [+32]
      211 GETUPVAL                         R14 6
      212 GETUPVAL                         R15 9
      213 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      214 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      216 LOADK                            R19 K13 ["AccessoriesSettings"]
      217 LOADK                            R20 K72 ["CustomAccessoriesSectionCustomAccessoriesFace"]
      218 NAMECALL                         R17 R1 K15 ["getText"]
      220 CALL                             R17 3 1
      221 SETTABLEKS                       R17 R16 K26 ["text"]
      223 MOVE                             R17 R3
      224 CALL                             R17 0 1
      225 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      227 DUPTABLE                         R17 K60 [{"Content"}]
      228 GETUPVAL                         R18 6
      229 GETUPVAL                         R19 10
      230 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      231 GETTABLEKS                       R21 R6 K73 ["customAccessoriesFaceSetting"]
      233 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      235 GETIMPORT                        R21 K75 [Enum.AssetType.FaceAccessory]
      237 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      239 CALL                             R18 2 1
      240 SETTABLEKS                       R18 R17 K59 ["Content"]
      242 CALL                             R14 3 1
      243 SETTABLEKS                       R14 R13 K38 ["FaceAssetSelector"]
      245 MOVE                             R14 R9
      246 JUMPIFNOT                        R14 ; [+32]
      247 GETUPVAL                         R14 6
      248 GETUPVAL                         R15 9
      249 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      250 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      252 LOADK                            R19 K13 ["AccessoriesSettings"]
      253 LOADK                            R20 K76 ["CustomAccessoriesSectionCustomAccessoriesNeck"]
      254 NAMECALL                         R17 R1 K15 ["getText"]
      256 CALL                             R17 3 1
      257 SETTABLEKS                       R17 R16 K26 ["text"]
      259 MOVE                             R17 R3
      260 CALL                             R17 0 1
      261 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      263 DUPTABLE                         R17 K60 [{"Content"}]
      264 GETUPVAL                         R18 6
      265 GETUPVAL                         R19 10
      266 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      267 GETTABLEKS                       R21 R6 K77 ["customAccessoriesNeckSetting"]
      269 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      271 GETIMPORT                        R21 K79 [Enum.AssetType.NeckAccessory]
      273 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      275 CALL                             R18 2 1
      276 SETTABLEKS                       R18 R17 K59 ["Content"]
      278 CALL                             R14 3 1
      279 SETTABLEKS                       R14 R13 K39 ["NeckAssetSelector"]
      281 MOVE                             R14 R9
      282 JUMPIFNOT                        R14 ; [+32]
      283 GETUPVAL                         R14 6
      284 GETUPVAL                         R15 9
      285 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      286 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      288 LOADK                            R19 K13 ["AccessoriesSettings"]
      289 LOADK                            R20 K80 ["CustomAccessoriesSectionCustomAccessoriesShoulder"]
      290 NAMECALL                         R17 R1 K15 ["getText"]
      292 CALL                             R17 3 1
      293 SETTABLEKS                       R17 R16 K26 ["text"]
      295 MOVE                             R17 R3
      296 CALL                             R17 0 1
      297 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      299 DUPTABLE                         R17 K60 [{"Content"}]
      300 GETUPVAL                         R18 6
      301 GETUPVAL                         R19 10
      302 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      303 GETTABLEKS                       R21 R6 K81 ["customAccessoriesShoulderSetting"]
      305 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      307 GETIMPORT                        R21 K83 [Enum.AssetType.ShoulderAccessory]
      309 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      311 CALL                             R18 2 1
      312 SETTABLEKS                       R18 R17 K59 ["Content"]
      314 CALL                             R14 3 1
      315 SETTABLEKS                       R14 R13 K40 ["ShoulderAssetSelector"]
      317 MOVE                             R14 R9
      318 JUMPIFNOT                        R14 ; [+32]
      319 GETUPVAL                         R14 6
      320 GETUPVAL                         R15 9
      321 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      322 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      324 LOADK                            R19 K13 ["AccessoriesSettings"]
      325 LOADK                            R20 K84 ["CustomAccessoriesSectionCustomAccessoriesFront"]
      326 NAMECALL                         R17 R1 K15 ["getText"]
      328 CALL                             R17 3 1
      329 SETTABLEKS                       R17 R16 K26 ["text"]
      331 MOVE                             R17 R3
      332 CALL                             R17 0 1
      333 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      335 DUPTABLE                         R17 K60 [{"Content"}]
      336 GETUPVAL                         R18 6
      337 GETUPVAL                         R19 10
      338 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      339 GETTABLEKS                       R21 R6 K85 ["customAccessoriesFrontSetting"]
      341 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      343 GETIMPORT                        R21 K87 [Enum.AssetType.FrontAccessory]
      345 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      347 CALL                             R18 2 1
      348 SETTABLEKS                       R18 R17 K59 ["Content"]
      350 CALL                             R14 3 1
      351 SETTABLEKS                       R14 R13 K41 ["FrontAssetSelector"]
      353 MOVE                             R14 R9
      354 JUMPIFNOT                        R14 ; [+32]
      355 GETUPVAL                         R14 6
      356 GETUPVAL                         R15 9
      357 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      358 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      360 LOADK                            R19 K13 ["AccessoriesSettings"]
      361 LOADK                            R20 K88 ["CustomAccessoriesSectionCustomAccessoriesBack"]
      362 NAMECALL                         R17 R1 K15 ["getText"]
      364 CALL                             R17 3 1
      365 SETTABLEKS                       R17 R16 K26 ["text"]
      367 MOVE                             R17 R3
      368 CALL                             R17 0 1
      369 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      371 DUPTABLE                         R17 K60 [{"Content"}]
      372 GETUPVAL                         R18 6
      373 GETUPVAL                         R19 10
      374 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      375 GETTABLEKS                       R21 R6 K89 ["customAccessoriesBackSetting"]
      377 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      379 GETIMPORT                        R21 K91 [Enum.AssetType.BackAccessory]
      381 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      383 CALL                             R18 2 1
      384 SETTABLEKS                       R18 R17 K59 ["Content"]
      386 CALL                             R14 3 1
      387 SETTABLEKS                       R14 R13 K42 ["BackAssetSelector"]
      389 MOVE                             R14 R9
      390 JUMPIFNOT                        R14 ; [+32]
      391 GETUPVAL                         R14 6
      392 GETUPVAL                         R15 9
      393 DUPTABLE                         R16 K57 [{["minTextLabelWidth"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["text"], ["layoutOrder"]}]
      394 SETTABLEKS                       R8 R16 K54 ["minTextLabelWidth"]
      396 LOADK                            R19 K13 ["AccessoriesSettings"]
      397 LOADK                            R20 K92 ["CustomAccessoriesSectionCustomAccessoriesWaist"]
      398 NAMECALL                         R17 R1 K15 ["getText"]
      400 CALL                             R17 3 1
      401 SETTABLEKS                       R17 R16 K26 ["text"]
      403 MOVE                             R17 R3
      404 CALL                             R17 0 1
      405 SETTABLEKS                       R17 R16 K29 ["layoutOrder"]
      407 DUPTABLE                         R17 K60 [{"Content"}]
      408 GETUPVAL                         R18 6
      409 GETUPVAL                         R19 10
      410 DUPTABLE                         R20 K63 [{"assetIdSetting", "expectedAssetType"}]
      411 GETTABLEKS                       R21 R6 K93 ["customAccessoriesWaistSetting"]
      413 SETTABLEKS                       R21 R20 K61 ["assetIdSetting"]
      415 GETIMPORT                        R21 K95 [Enum.AssetType.WaistAccessory]
      417 SETTABLEKS                       R21 R20 K62 ["expectedAssetType"]
      419 CALL                             R18 2 1
      420 SETTABLEKS                       R18 R17 K59 ["Content"]
      422 CALL                             R14 3 1
      423 SETTABLEKS                       R14 R13 K43 ["WaistAssetSelector"]
      425 CALL                             R10 3 -1
      426 RETURN                           R10 -1

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
