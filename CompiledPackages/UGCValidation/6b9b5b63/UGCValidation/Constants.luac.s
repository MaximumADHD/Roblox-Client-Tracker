PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 ; [-3]
       11 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["NAMED_R15_BODY_PARTS key does not exist"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Invalid COMPARISON_METHOD "]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 CONCAT                           R3 R4 R5
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Invalid INCLUSION_METHOD "]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 CONCAT                           R3 R4 R5
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Cryo"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["ValidationRulesUtil"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       23 GETTABLEKS                       R4 R5 K9 ["ValidationEnums"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K10 ["flags"]
       30 GETTABLEKS                       R5 R6 K11 ["getFFlagUGCValidationFixConstantsTypoLeg"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["flags"]
       37 GETTABLEKS                       R6 R7 K12 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K10 ["flags"]
       44 GETTABLEKS                       R7 R8 K13 ["getFFlagUGCValidateCheckHSROwner"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K10 ["flags"]
       51 GETTABLEKS                       R8 R9 K14 ["getFFlagUGCValidateCheckTexturePackOwner"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K10 ["flags"]
       58 GETTABLEKS                       R9 R10 K15 ["getFFlagUGCValidationMakeupSupport"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K17 [game]
       63 LOADK                            R11 K18 ["UGCValidateMakeupDecalUVProperties"]
       64 LOADB                            R12 0
       65 NAMECALL                         R9 R9 K19 ["DefineFastFlag"]
       67 CALL                             R9 3 1
       68 DUPCLOSURE                       R10 K20 [PROTO_0]
       69 NEWTABLE                         R11 64 0
       71 NAMECALL                         R14 R2 K21 ["getRules"]
       73 CALL                             R14 1 1
       74 GETTABLEKS                       R13 R14 K22 ["MeshRules"]
       76 GETTABLEKS                       R12 R13 K23 ["AccessoryMaxTriangles"]
       78 SETTABLEKS                       R12 R11 K24 ["MAX_HAT_TRIANGLES"]
       80 NAMECALL                         R14 R2 K21 ["getRules"]
       82 CALL                             R14 1 1
       83 GETTABLEKS                       R13 R14 K25 ["TextureRules"]
       85 GETTABLEKS                       R12 R13 K26 ["MaxTextureSize"]
       87 SETTABLEKS                       R12 R11 K27 ["MAX_TEXTURE_SIZE"]
       89 NEWTABLE                         R13 0 1
       91 GETIMPORT                        R14 K31 [Enum.Material.Plastic]
       93 SETLIST                          R13 R14 1 [1]
       95 NEWTABLE                         R14 0 0
       97 GETIMPORT                        R15 K33 [pairs]
       99 MOVE                             R16 R13
      100 CALL                             R15 1 3
      101 FORGPREP_NEXT                    R15
      102 LOADB                            R20 1
      103 SETTABLE                         R20 R14 R19
      104 FORGLOOP                         R15 2 ; [-3]
      106 MOVE                             R12 R14
      107 SETTABLEKS                       R12 R11 K34 ["MATERIAL_WHITELIST"]
      109 NEWTABLE                         R12 0 7
      111 LOADK                            R13 K35 ["Script"]
      112 LOADK                            R14 K36 ["LocalScript"]
      113 LOADK                            R15 K37 ["ModuleScript"]
      114 LOADK                            R16 K38 ["ParticleEmitter"]
      115 LOADK                            R17 K39 ["Fire"]
      116 LOADK                            R18 K40 ["Smoke"]
      117 LOADK                            R19 K41 ["Sparkles"]
      118 SETLIST                          R12 R13 7 [1]
      120 SETTABLEKS                       R12 R11 K42 ["BANNED_CLASS_NAMES"]
      122 NEWTABLE                         R12 0 5
      124 LOADK                            R13 K43 ["Torso"]
      125 LOADK                            R14 K44 ["Left Leg"]
      126 LOADK                            R15 K45 ["Right Leg"]
      127 LOADK                            R16 K46 ["Left Arm"]
      128 LOADK                            R17 K47 ["Right Arm"]
      129 SETLIST                          R12 R13 5 [1]
      131 SETTABLEKS                       R12 R11 K48 ["R6_BODY_PARTS"]
      133 NEWTABLE                         R12 0 15
      135 LOADK                            R13 K49 ["Head"]
      136 LOADK                            R14 K50 ["UpperTorso"]
      137 LOADK                            R15 K51 ["LowerTorso"]
      138 LOADK                            R16 K52 ["LeftUpperLeg"]
      139 LOADK                            R17 K53 ["LeftLowerLeg"]
      140 LOADK                            R18 K54 ["LeftFoot"]
      141 LOADK                            R19 K55 ["RightUpperLeg"]
      142 LOADK                            R20 K56 ["RightLowerLeg"]
      143 LOADK                            R21 K57 ["RightFoot"]
      144 LOADK                            R22 K58 ["LeftUpperArm"]
      145 LOADK                            R23 K59 ["LeftLowerArm"]
      146 LOADK                            R24 K60 ["LeftHand"]
      147 LOADK                            R25 K61 ["RightUpperArm"]
      148 LOADK                            R26 K62 ["RightLowerArm"]
      149 LOADK                            R27 K63 ["RightHand"]
      150 SETLIST                          R12 R13 15 [1]
      152 SETTABLEKS                       R12 R11 K64 ["R15_BODY_PARTS"]
      154 NEWTABLE                         R12 0 0
      156 SETTABLEKS                       R12 R11 K65 ["NAMED_R15_BODY_PARTS"]
      158 GETTABLEKS                       R12 R11 K64 ["R15_BODY_PARTS"]
      160 LOADNIL                          R13
      161 LOADNIL                          R14
      162 FORGPREP                         R12
      163 GETTABLEKS                       R17 R11 K65 ["NAMED_R15_BODY_PARTS"]
      165 SETTABLE                         R16 R17 R16
      166 FORGLOOP                         R12 2 ; [-4]
      168 GETTABLEKS                       R12 R11 K65 ["NAMED_R15_BODY_PARTS"]
      170 LOADK                            R13 K49 ["Head"]
      171 SETTABLEKS                       R13 R12 K49 ["Head"]
      173 GETTABLEKS                       R13 R11 K65 ["NAMED_R15_BODY_PARTS"]
      175 DUPTABLE                         R14 K67 [{"__index"}]
      176 DUPCLOSURE                       R15 K68 [PROTO_1]
      177 SETTABLEKS                       R15 R14 K66 ["__index"]
      179 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      181 GETIMPORT                        R12 K70 [setmetatable]
      183 CALL                             R12 2 0
      184 NEWTABLE                         R12 32 0
      186 LOADB                            R13 1
      187 SETTABLEKS                       R13 R12 K71 ["Root"]
      189 LOADB                            R13 1
      190 SETTABLEKS                       R13 R12 K72 ["HumanoidRootNode"]
      192 LOADB                            R13 1
      193 SETTABLEKS                       R13 R12 K73 ["DynamicHead"]
      195 LOADB                            R13 1
      196 SETTABLEKS                       R13 R12 K49 ["Head"]
      198 LOADB                            R13 1
      199 SETTABLEKS                       R13 R12 K50 ["UpperTorso"]
      201 LOADB                            R13 1
      202 SETTABLEKS                       R13 R12 K51 ["LowerTorso"]
      204 LOADB                            R13 1
      205 SETTABLEKS                       R13 R12 K52 ["LeftUpperLeg"]
      207 LOADB                            R13 1
      208 SETTABLEKS                       R13 R12 K53 ["LeftLowerLeg"]
      210 LOADB                            R13 1
      211 SETTABLEKS                       R13 R12 K54 ["LeftFoot"]
      213 LOADB                            R13 1
      214 SETTABLEKS                       R13 R12 K55 ["RightUpperLeg"]
      216 LOADB                            R13 1
      217 SETTABLEKS                       R13 R12 K56 ["RightLowerLeg"]
      219 LOADB                            R13 1
      220 SETTABLEKS                       R13 R12 K57 ["RightFoot"]
      222 LOADB                            R13 1
      223 SETTABLEKS                       R13 R12 K58 ["LeftUpperArm"]
      225 LOADB                            R13 1
      226 SETTABLEKS                       R13 R12 K59 ["LeftLowerArm"]
      228 LOADB                            R13 1
      229 SETTABLEKS                       R13 R12 K60 ["LeftHand"]
      231 LOADB                            R13 1
      232 SETTABLEKS                       R13 R12 K61 ["RightUpperArm"]
      234 LOADB                            R13 1
      235 SETTABLEKS                       R13 R12 K62 ["RightLowerArm"]
      237 LOADB                            R13 1
      238 SETTABLEKS                       R13 R12 K63 ["RightHand"]
      240 SETTABLEKS                       R12 R11 K74 ["R15_STANDARD_JOINT_NAMES"]
      242 GETTABLEKS                       R12 R11 K64 ["R15_BODY_PARTS"]
      244 LOADNIL                          R13
      245 LOADNIL                          R14
      246 FORGPREP                         R12
      247 GETTABLEKS                       R17 R11 K74 ["R15_STANDARD_JOINT_NAMES"]
      249 LOADB                            R18 1
      250 SETTABLE                         R18 R17 R16
      251 FORGLOOP                         R12 2 ; [-5]
      253 NEWTABLE                         R12 0 18
      255 LOADK                            R13 K49 ["Head"]
      256 LOADK                            R14 K50 ["UpperTorso"]
      257 LOADK                            R15 K51 ["LowerTorso"]
      258 LOADK                            R16 K52 ["LeftUpperLeg"]
      259 LOADK                            R17 K53 ["LeftLowerLeg"]
      260 LOADK                            R18 K60 ["LeftHand"]
      261 LOADK                            R19 K61 ["RightUpperArm"]
      262 LOADK                            R20 K62 ["RightLowerArm"]
      263 LOADK                            R21 K63 ["RightHand"]
      264 LOADK                            R22 K58 ["LeftUpperArm"]
      265 LOADK                            R23 K59 ["LeftLowerArm"]
      266 LOADK                            R24 K54 ["LeftFoot"]
      267 LOADK                            R25 K55 ["RightUpperLeg"]
      268 LOADK                            R26 K56 ["RightLowerLeg"]
      269 LOADK                            R27 K57 ["RightFoot"]
      270 LOADK                            R28 K75 ["EyebrowAccessory"]
      271 SETLIST                          R12 R13 16 [1]
      273 LOADK                            R13 K76 ["EyelashAccessory"]
      274 LOADK                            R14 K77 ["HairAccessory"]
      275 SETLIST                          R12 R13 2 [17]
      277 SETTABLEKS                       R12 R11 K78 ["UGC_BODY_PARTS"]
      279 DUPTABLE                         R12 K79 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      280 GETIMPORT                        R13 K81 [Enum.AssetType.DynamicHead]
      282 SETTABLEKS                       R13 R12 K49 ["Head"]
      284 GETIMPORT                        R13 K82 [Enum.AssetType.Torso]
      286 SETTABLEKS                       R13 R12 K50 ["UpperTorso"]
      288 GETIMPORT                        R13 K82 [Enum.AssetType.Torso]
      290 SETTABLEKS                       R13 R12 K51 ["LowerTorso"]
      292 GETIMPORT                        R13 K84 [Enum.AssetType.LeftArm]
      294 SETTABLEKS                       R13 R12 K58 ["LeftUpperArm"]
      296 GETIMPORT                        R13 K84 [Enum.AssetType.LeftArm]
      298 SETTABLEKS                       R13 R12 K59 ["LeftLowerArm"]
      300 GETIMPORT                        R13 K84 [Enum.AssetType.LeftArm]
      302 SETTABLEKS                       R13 R12 K60 ["LeftHand"]
      304 GETIMPORT                        R13 K86 [Enum.AssetType.RightArm]
      306 SETTABLEKS                       R13 R12 K61 ["RightUpperArm"]
      308 GETIMPORT                        R13 K86 [Enum.AssetType.RightArm]
      310 SETTABLEKS                       R13 R12 K62 ["RightLowerArm"]
      312 GETIMPORT                        R13 K86 [Enum.AssetType.RightArm]
      314 SETTABLEKS                       R13 R12 K63 ["RightHand"]
      316 GETIMPORT                        R13 K88 [Enum.AssetType.LeftLeg]
      318 SETTABLEKS                       R13 R12 K52 ["LeftUpperLeg"]
      320 GETIMPORT                        R13 K88 [Enum.AssetType.LeftLeg]
      322 SETTABLEKS                       R13 R12 K53 ["LeftLowerLeg"]
      324 GETIMPORT                        R13 K88 [Enum.AssetType.LeftLeg]
      326 SETTABLEKS                       R13 R12 K54 ["LeftFoot"]
      328 GETIMPORT                        R13 K90 [Enum.AssetType.RightLeg]
      330 SETTABLEKS                       R13 R12 K55 ["RightUpperLeg"]
      332 GETIMPORT                        R13 K90 [Enum.AssetType.RightLeg]
      334 SETTABLEKS                       R13 R12 K56 ["RightLowerLeg"]
      336 GETIMPORT                        R13 K90 [Enum.AssetType.RightLeg]
      338 SETTABLEKS                       R13 R12 K57 ["RightFoot"]
      340 GETIMPORT                        R13 K91 [Enum.AssetType.EyebrowAccessory]
      342 SETTABLEKS                       R13 R12 K75 ["EyebrowAccessory"]
      344 GETIMPORT                        R13 K92 [Enum.AssetType.EyelashAccessory]
      346 SETTABLEKS                       R13 R12 K76 ["EyelashAccessory"]
      348 GETIMPORT                        R13 K93 [Enum.AssetType.HairAccessory]
      350 SETTABLEKS                       R13 R12 K77 ["HairAccessory"]
      352 SETTABLEKS                       R12 R11 K94 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      354 DUPTABLE                         R12 K97 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      355 GETIMPORT                        R13 K98 [Enum.AssetType.LeftShoeAccessory]
      357 SETTABLEKS                       R13 R12 K95 ["LeftShoeAccessory"]
      359 GETIMPORT                        R13 K99 [Enum.AssetType.RightShoeAccessory]
      361 SETTABLEKS                       R13 R12 K96 ["RightShoeAccessory"]
      363 SETTABLEKS                       R12 R11 K100 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      365 NEWTABLE                         R12 2 0
      367 GETIMPORT                        R13 K103 [Enum.BundleType.BodyParts]
      369 GETTABLEKS                       R14 R11 K94 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      371 SETTABLE                         R14 R12 R13
      372 GETIMPORT                        R13 K103 [Enum.BundleType.BodyParts]
      374 GETTABLEKS                       R14 R11 K100 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      376 SETTABLE                         R14 R12 R13
      377 SETTABLEKS                       R12 R11 K104 ["BUNDLE_TO_ASSET_MAPPING"]
      379 NEWTABLE                         R12 0 4
      381 GETIMPORT                        R13 K81 [Enum.AssetType.DynamicHead]
      383 GETIMPORT                        R14 K91 [Enum.AssetType.EyebrowAccessory]
      385 GETIMPORT                        R15 K92 [Enum.AssetType.EyelashAccessory]
      387 GETIMPORT                        R16 K93 [Enum.AssetType.HairAccessory]
      389 SETLIST                          R12 R13 4 [1]
      391 SETTABLEKS                       R12 R11 K105 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      393 DUPTABLE                         R12 K109 [{"R6", "R15ArtistIntent", "R15Fixed"}]
      394 LOADK                            R13 K106 ["R6"]
      395 SETTABLEKS                       R13 R12 K106 ["R6"]
      397 LOADK                            R13 K107 ["R15ArtistIntent"]
      398 SETTABLEKS                       R13 R12 K107 ["R15ArtistIntent"]
      400 LOADK                            R13 K108 ["R15Fixed"]
      401 SETTABLEKS                       R13 R12 K108 ["R15Fixed"]
      403 SETTABLEKS                       R12 R11 K110 ["FOLDER_NAMES"]
      405 NEWTABLE                         R12 0 3
      407 LOADK                            R13 K49 ["Head"]
      408 LOADK                            R14 K111 ["HumanoidRootPart"]
      409 LOADK                            R15 K112 ["Humanoid"]
      410 SETLIST                          R12 R13 3 [1]
      412 SETTABLEKS                       R12 R11 K113 ["EXTRA_BANNED_NAMES"]
      414 NEWTABLE                         R12 0 6
      416 LOADK                            R13 K114 ["Body Colors"]
      417 LOADK                            R14 K115 ["Shirt Graphic"]
      418 LOADK                            R15 K116 ["Shirt"]
      419 LOADK                            R16 K117 ["Pants"]
      420 LOADK                            R17 K118 ["Health"]
      421 LOADK                            R18 K119 ["Animate"]
      422 SETLIST                          R12 R13 6 [1]
      424 GETIMPORT                        R13 K121 [ipairs]
      426 MOVE                             R14 R12
      427 CALL                             R13 1 3
      428 FORGPREP_INEXT                   R13
      429 GETTABLEKS                       R19 R11 K113 ["EXTRA_BANNED_NAMES"]
      431 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      433 MOVE                             R20 R17
      434 GETIMPORT                        R18 K124 [table.insert]
      436 CALL                             R18 2 0
      437 FORGLOOP                         R13 2 [inext] ; [-9]
      439 NEWTABLE                         R13 0 0
      441 SETTABLEKS                       R13 R11 K125 ["BANNED_NAMES"]
      443 NEWTABLE                         R13 0 3
      445 GETTABLEKS                       R14 R11 K48 ["R6_BODY_PARTS"]
      447 GETTABLEKS                       R15 R11 K64 ["R15_BODY_PARTS"]
      449 GETTABLEKS                       R16 R11 K113 ["EXTRA_BANNED_NAMES"]
      451 SETLIST                          R13 R14 3 [1]
      453 MOVE                             R14 R13
      454 LOADNIL                          R15
      455 LOADNIL                          R16
      456 FORGPREP                         R14
      457 MOVE                             R19 R18
      458 LOADNIL                          R20
      459 LOADNIL                          R21
      460 FORGPREP                         R19
      461 GETTABLEKS                       R24 R11 K125 ["BANNED_NAMES"]
      463 LOADB                            R25 1
      464 SETTABLE                         R25 R24 R23
      465 FORGLOOP                         R19 2 ; [-5]
      467 FORGLOOP                         R14 2 ; [-11]
      469 DUPTABLE                         R14 K129 [{"UNKNOWN", "REVIEW_PENDING", "MODERATED"}]
      470 LOADK                            R15 K130 ["Unknown"]
      471 SETTABLEKS                       R15 R14 K126 ["UNKNOWN"]
      473 LOADK                            R15 K131 ["ReviewPending"]
      474 SETTABLEKS                       R15 R14 K127 ["REVIEW_PENDING"]
      476 LOADK                            R15 K132 ["Moderated"]
      477 SETTABLEKS                       R15 R14 K128 ["MODERATED"]
      479 SETTABLEKS                       R14 R11 K133 ["ASSET_STATUS"]
      481 MOVE                             R14 R8
      482 CALL                             R14 0 1
      483 JUMPIFNOT                        R14 ; [+5]
      484 NAMECALL                         R14 R2 K134 ["getMakeupRules"]
      486 CALL                             R14 1 1
      487 SETTABLEKS                       R14 R11 K135 ["MAKEUP_INFO"]
      489 NEWTABLE                         R14 0 0
      491 SETTABLEKS                       R14 R11 K136 ["ASSET_TYPE_INFO"]
      493 GETTABLEKS                       R16 R11 K136 ["ASSET_TYPE_INFO"]
      495 NAMECALL                         R14 R2 K137 ["getAccessoryRules"]
      497 CALL                             R14 2 0
      498 NAMECALL                         R14 R2 K138 ["getFullBodyRulesBounds"]
      500 CALL                             R14 1 1
      501 SETTABLEKS                       R14 R11 K139 ["FULL_BODY_BOUNDS"]
      503 DUPTABLE                         R14 K143 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
      504 LOADB                            R15 1
      505 SETTABLEKS                       R15 R14 K140 ["Classic"]
      507 LOADB                            R15 1
      508 SETTABLEKS                       R15 R14 K141 ["ProportionsSlender"]
      510 LOADB                            R15 1
      511 SETTABLEKS                       R15 R14 K142 ["ProportionsNormal"]
      513 SETTABLEKS                       R14 R11 K144 ["AvatarPartScaleTypes"]
      515 GETTABLEKS                       R16 R11 K136 ["ASSET_TYPE_INFO"]
      517 NAMECALL                         R14 R2 K145 ["getBodyPartRules"]
      519 CALL                             R14 2 0
      520 NEWTABLE                         R14 16 0
      522 LOADNIL                          R15
      523 SETTABLEKS                       R15 R14 K49 ["Head"]
      525 LOADNIL                          R15
      526 SETTABLEKS                       R15 R14 K51 ["LowerTorso"]
      528 LOADK                            R15 K51 ["LowerTorso"]
      529 SETTABLEKS                       R15 R14 K50 ["UpperTorso"]
      531 LOADNIL                          R15
      532 SETTABLEKS                       R15 R14 K58 ["LeftUpperArm"]
      534 LOADK                            R15 K58 ["LeftUpperArm"]
      535 SETTABLEKS                       R15 R14 K59 ["LeftLowerArm"]
      537 LOADK                            R15 K59 ["LeftLowerArm"]
      538 SETTABLEKS                       R15 R14 K60 ["LeftHand"]
      540 LOADNIL                          R15
      541 SETTABLEKS                       R15 R14 K52 ["LeftUpperLeg"]
      543 LOADK                            R15 K52 ["LeftUpperLeg"]
      544 SETTABLEKS                       R15 R14 K53 ["LeftLowerLeg"]
      546 LOADNIL                          R15
      547 SETTABLEKS                       R15 R14 K61 ["RightUpperArm"]
      549 LOADK                            R15 K61 ["RightUpperArm"]
      550 SETTABLEKS                       R15 R14 K62 ["RightLowerArm"]
      552 LOADK                            R15 K62 ["RightLowerArm"]
      553 SETTABLEKS                       R15 R14 K63 ["RightHand"]
      555 LOADNIL                          R15
      556 SETTABLEKS                       R15 R14 K55 ["RightUpperLeg"]
      558 LOADK                            R15 K55 ["RightUpperLeg"]
      559 SETTABLEKS                       R15 R14 K56 ["RightLowerLeg"]
      561 SETTABLEKS                       R14 R11 K146 ["BODYPART_TO_PARENT"]
      563 MOVE                             R14 R4
      564 CALL                             R14 0 1
      565 JUMPIFNOT                        R14 ; [+11]
      566 GETTABLEKS                       R14 R11 K146 ["BODYPART_TO_PARENT"]
      568 LOADK                            R15 K56 ["RightLowerLeg"]
      569 SETTABLEKS                       R15 R14 K57 ["RightFoot"]
      571 GETTABLEKS                       R14 R11 K146 ["BODYPART_TO_PARENT"]
      573 LOADK                            R15 K53 ["LeftLowerLeg"]
      574 SETTABLEKS                       R15 R14 K54 ["LeftFoot"]
      576 JUMP                             ; [+10]
      577 GETTABLEKS                       R14 R11 K146 ["BODYPART_TO_PARENT"]
      579 LOADK                            R15 K56 ["RightLowerLeg"]
      580 SETTABLEKS                       R15 R14 K89 ["RightLeg"]
      582 GETTABLEKS                       R14 R11 K146 ["BODYPART_TO_PARENT"]
      584 LOADK                            R15 K53 ["LeftLowerLeg"]
      585 SETTABLEKS                       R15 R14 K87 ["LeftLeg"]
      587 NAMECALL                         R16 R2 K21 ["getRules"]
      589 CALL                             R16 1 1
      590 GETTABLEKS                       R15 R16 K22 ["MeshRules"]
      592 GETTABLEKS                       R14 R15 K147 ["CageMeshMaxDistanceFromRenderMesh"]
      594 SETTABLEKS                       R14 R11 K148 ["RenderVsWrapMeshMaxDiff"]
      596 DUPTABLE                         R14 K156 [{"SMALLER", "SMALLER_EQ", "FUZZY_EQ", "EXACT_EQ", "GREATER_EQ", "GREATER", "FOUND_IN"}]
      597 LOADK                            R15 K157 ["<"]
      598 SETTABLEKS                       R15 R14 K149 ["SMALLER"]
      600 LOADK                            R15 K158 ["<="]
      601 SETTABLEKS                       R15 R14 K150 ["SMALLER_EQ"]
      603 LOADK                            R15 K159 ["="]
      604 SETTABLEKS                       R15 R14 K151 ["FUZZY_EQ"]
      606 LOADK                            R15 K160 ["=="]
      607 SETTABLEKS                       R15 R14 K152 ["EXACT_EQ"]
      609 LOADK                            R15 K161 [">="]
      610 SETTABLEKS                       R15 R14 K153 ["GREATER_EQ"]
      612 LOADK                            R15 K162 [">"]
      613 SETTABLEKS                       R15 R14 K154 ["GREATER"]
      615 LOADK                            R15 K163 ["one of the following:"]
      616 SETTABLEKS                       R15 R14 K155 ["FOUND_IN"]
      618 SETTABLEKS                       R14 R11 K164 ["COMPARISON_METHODS"]
      620 GETTABLEKS                       R15 R11 K164 ["COMPARISON_METHODS"]
      622 DUPTABLE                         R16 K67 [{"__index"}]
      623 DUPCLOSURE                       R17 K165 [PROTO_2]
      624 SETTABLEKS                       R17 R16 K66 ["__index"]
      626 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      628 GETIMPORT                        R14 K70 [setmetatable]
      630 CALL                             R14 2 0
      631 DUPTABLE                         R14 K169 [{"RUN_ON_ALL", "INCLUSION_LIST", "EXCLUSION_LIST"}]
      632 LOADK                            R15 K166 ["RUN_ON_ALL"]
      633 SETTABLEKS                       R15 R14 K166 ["RUN_ON_ALL"]
      635 LOADK                            R15 K167 ["INCLUSION_LIST"]
      636 SETTABLEKS                       R15 R14 K167 ["INCLUSION_LIST"]
      638 LOADK                            R15 K168 ["EXCLUSION_LIST"]
      639 SETTABLEKS                       R15 R14 K168 ["EXCLUSION_LIST"]
      641 SETTABLEKS                       R14 R11 K170 ["INCLUSION_METHODS"]
      643 GETTABLEKS                       R15 R11 K170 ["INCLUSION_METHODS"]
      645 DUPTABLE                         R16 K67 [{"__index"}]
      646 DUPCLOSURE                       R17 K171 [PROTO_3]
      647 SETTABLEKS                       R17 R16 K66 ["__index"]
      649 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      651 GETIMPORT                        R14 K70 [setmetatable]
      653 CALL                             R14 2 0
      654 DUPTABLE                         R14 K181 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      655 DUPTABLE                         R15 K183 [{"Archivable"}]
      656 LOADB                            R16 1
      657 SETTABLEKS                       R16 R15 K182 ["Archivable"]
      659 SETTABLEKS                       R15 R14 K172 ["Instance"]
      661 DUPTABLE                         R15 K185 [{"Visible"}]
      662 LOADB                            R16 0
      663 SETTABLEKS                       R16 R15 K184 ["Visible"]
      665 SETTABLEKS                       R15 R14 K173 ["Attachment"]
      667 MOVE                             R16 R8
      668 CALL                             R16 0 1
      669 JUMPIFNOT                        R16 ; [+33]
      670 DUPTABLE                         R15 K190 [{"Color3", "Transparency", "UVOffset", "UVScale"}]
      671 GETIMPORT                        R16 K192 [Color3.new]
      673 LOADN                            R17 1
      674 LOADN                            R18 1
      675 LOADN                            R19 1
      676 CALL                             R16 3 1
      677 SETTABLEKS                       R16 R15 K186 ["Color3"]
      679 LOADN                            R16 0
      680 SETTABLEKS                       R16 R15 K187 ["Transparency"]
      682 JUMPIFNOT                        R9 ; [+6]
      683 GETIMPORT                        R16 K194 [Vector2.new]
      685 LOADN                            R17 0
      686 LOADN                            R18 0
      687 CALL                             R16 2 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R16
      690 SETTABLEKS                       R16 R15 K188 ["UVOffset"]
      692 JUMPIFNOT                        R9 ; [+6]
      693 GETIMPORT                        R16 K194 [Vector2.new]
      695 LOADN                            R17 1
      696 LOADN                            R18 1
      697 CALL                             R16 2 1
      698 JUMP                             ; [+1]
      699 LOADNIL                          R16
      700 SETTABLEKS                       R16 R15 K189 ["UVScale"]
      702 JUMP                             ; [+1]
      703 LOADNIL                          R15
      704 SETTABLEKS                       R15 R14 K174 ["Decal"]
      706 DUPTABLE                         R15 K198 [{"MeshType", "Offset", "VertexColor"}]
      707 GETIMPORT                        R16 K200 [Enum.MeshType.FileMesh]
      709 SETTABLEKS                       R16 R15 K195 ["MeshType"]
      711 LOADK                            R16 K201 [{0, 0, 0}]
      712 SETTABLEKS                       R16 R15 K196 ["Offset"]
      714 LOADK                            R16 K202 [{1, 1, 1}]
      715 SETTABLEKS                       R16 R15 K197 ["VertexColor"]
      717 SETTABLEKS                       R15 R14 K175 ["SpecialMesh"]
      719 NEWTABLE                         R15 64 0
      721 LOADB                            R16 0
      722 SETTABLEKS                       R16 R15 K203 ["Anchored"]
      724 LOADN                            R16 0
      725 SETTABLEKS                       R16 R15 K204 ["CollisionGroupId"]
      727 GETTABLEKS                       R16 R1 K205 ["None"]
      729 SETTABLEKS                       R16 R15 K206 ["CustomPhysicalProperties"]
      731 LOADK                            R16 K207 [0.5]
      732 SETTABLEKS                       R16 R15 K208 ["Elasticity"]
      734 LOADK                            R16 K209 [0.3]
      735 SETTABLEKS                       R16 R15 K210 ["Friction"]
      737 LOADN                            R16 0
      738 SETTABLEKS                       R16 R15 K211 ["LocalTransparencyModifier"]
      740 LOADB                            R16 0
      741 SETTABLEKS                       R16 R15 K212 ["Massless"]
      743 LOADN                            R16 0
      744 SETTABLEKS                       R16 R15 K213 ["Reflectance"]
      746 LOADN                            R16 0
      747 SETTABLEKS                       R16 R15 K214 ["RootPriority"]
      749 LOADK                            R16 K201 [{0, 0, 0}]
      750 SETTABLEKS                       R16 R15 K215 ["RotVelocity"]
      752 LOADK                            R16 K201 [{0, 0, 0}]
      753 SETTABLEKS                       R16 R15 K216 ["Velocity"]
      755 LOADK                            R16 K217 [-0.5]
      756 SETTABLEKS                       R16 R15 K218 ["BackParamA"]
      758 LOADK                            R16 K207 [0.5]
      759 SETTABLEKS                       R16 R15 K219 ["BackParamB"]
      761 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      763 SETTABLEKS                       R16 R15 K223 ["BackSurfaceInput"]
      765 LOADK                            R16 K217 [-0.5]
      766 SETTABLEKS                       R16 R15 K224 ["BottomParamA"]
      768 LOADK                            R16 K207 [0.5]
      769 SETTABLEKS                       R16 R15 K225 ["BottomParamB"]
      771 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      773 SETTABLEKS                       R16 R15 K226 ["BottomSurfaceInput"]
      775 LOADK                            R16 K217 [-0.5]
      776 SETTABLEKS                       R16 R15 K227 ["FrontParamA"]
      778 LOADK                            R16 K207 [0.5]
      779 SETTABLEKS                       R16 R15 K228 ["FrontParamB"]
      781 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      783 SETTABLEKS                       R16 R15 K229 ["FrontSurfaceInput"]
      785 LOADK                            R16 K217 [-0.5]
      786 SETTABLEKS                       R16 R15 K230 ["LeftParamA"]
      788 LOADK                            R16 K207 [0.5]
      789 SETTABLEKS                       R16 R15 K231 ["LeftParamB"]
      791 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      793 SETTABLEKS                       R16 R15 K232 ["LeftSurfaceInput"]
      795 LOADK                            R16 K217 [-0.5]
      796 SETTABLEKS                       R16 R15 K233 ["RightParamA"]
      798 LOADK                            R16 K207 [0.5]
      799 SETTABLEKS                       R16 R15 K234 ["RightParamB"]
      801 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      803 SETTABLEKS                       R16 R15 K235 ["RightSurfaceInput"]
      805 LOADK                            R16 K217 [-0.5]
      806 SETTABLEKS                       R16 R15 K236 ["TopParamA"]
      808 LOADK                            R16 K207 [0.5]
      809 SETTABLEKS                       R16 R15 K237 ["TopParamB"]
      811 GETIMPORT                        R16 K222 [Enum.InputType.NoInput]
      813 SETTABLEKS                       R16 R15 K238 ["TopSurfaceInput"]
      815 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      817 SETTABLEKS                       R16 R15 K242 ["BackSurface"]
      819 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      821 SETTABLEKS                       R16 R15 K243 ["BottomSurface"]
      823 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      825 SETTABLEKS                       R16 R15 K244 ["FrontSurface"]
      827 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      829 SETTABLEKS                       R16 R15 K245 ["LeftSurface"]
      831 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      833 SETTABLEKS                       R16 R15 K246 ["RightSurface"]
      835 GETIMPORT                        R16 K241 [Enum.SurfaceType.Smooth]
      837 SETTABLEKS                       R16 R15 K247 ["TopSurface"]
      839 NEWTABLE                         R16 1 0
      841 GETTABLEKS                       R18 R11 K164 ["COMPARISON_METHODS"]
      843 GETTABLEKS                       R17 R18 K152 ["EXACT_EQ"]
      845 LOADN                            R18 0
      846 SETTABLE                         R18 R16 R17
      847 SETTABLEKS                       R16 R15 K187 ["Transparency"]
      849 NEWTABLE                         R16 2 0
      851 GETTABLEKS                       R18 R11 K164 ["COMPARISON_METHODS"]
      853 GETTABLEKS                       R17 R18 K151 ["FUZZY_EQ"]
      855 GETIMPORT                        R19 K249 [BrickColor.new]
      857 LOADK                            R20 K250 ["Medium stone grey"]
      858 CALL                             R19 1 1
      859 GETTABLEKS                       R18 R19 K251 ["Color"]
      861 SETTABLE                         R18 R16 R17
      862 GETTABLEKS                       R18 R11 K170 ["INCLUSION_METHODS"]
      864 GETTABLEKS                       R17 R18 K168 ["EXCLUSION_LIST"]
      866 NEWTABLE                         R18 0 6
      868 GETIMPORT                        R19 K81 [Enum.AssetType.DynamicHead]
      870 GETIMPORT                        R20 K82 [Enum.AssetType.Torso]
      872 GETIMPORT                        R21 K84 [Enum.AssetType.LeftArm]
      874 GETIMPORT                        R22 K86 [Enum.AssetType.RightArm]
      876 GETIMPORT                        R23 K88 [Enum.AssetType.LeftLeg]
      878 GETIMPORT                        R24 K90 [Enum.AssetType.RightLeg]
      880 SETLIST                          R18 R19 6 [1]
      882 SETTABLE                         R18 R16 R17
      883 SETTABLEKS                       R16 R15 K251 ["Color"]
      885 SETTABLEKS                       R15 R14 K176 ["BasePart"]
      887 DUPTABLE                         R15 K253 [{"Shape"}]
      888 GETIMPORT                        R16 K256 [Enum.PartType.Block]
      890 SETTABLEKS                       R16 R15 K252 ["Shape"]
      892 SETTABLEKS                       R15 R14 K177 ["Part"]
      894 DUPTABLE                         R15 K261 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      895 MOVE                             R17 R5
      896 CALL                             R17 0 1
      897 JUMPIFNOT                        R17 ; [+55]
      898 NEWTABLE                         R16 0 2
      900 NEWTABLE                         R17 2 0
      902 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
      904 GETTABLEKS                       R18 R19 K155 ["FOUND_IN"]
      906 NEWTABLE                         R19 0 2
      908 GETIMPORT                        R20 K263 [Enum.AlphaMode.Overlay]
      910 GETIMPORT                        R21 K264 [Enum.AlphaMode.Transparency]
      912 SETLIST                          R19 R20 2 [1]
      914 SETTABLE                         R19 R17 R18
      915 GETTABLEKS                       R19 R11 K170 ["INCLUSION_METHODS"]
      917 GETTABLEKS                       R18 R19 K167 ["INCLUSION_LIST"]
      919 NEWTABLE                         R19 0 2
      921 GETIMPORT                        R20 K92 [Enum.AssetType.EyelashAccessory]
      923 GETIMPORT                        R21 K91 [Enum.AssetType.EyebrowAccessory]
      925 SETLIST                          R19 R20 2 [1]
      927 SETTABLE                         R19 R17 R18
      928 NEWTABLE                         R18 2 0
      930 GETTABLEKS                       R20 R11 K164 ["COMPARISON_METHODS"]
      932 GETTABLEKS                       R19 R20 K152 ["EXACT_EQ"]
      934 GETIMPORT                        R20 K263 [Enum.AlphaMode.Overlay]
      936 SETTABLE                         R20 R18 R19
      937 GETTABLEKS                       R20 R11 K170 ["INCLUSION_METHODS"]
      939 GETTABLEKS                       R19 R20 K168 ["EXCLUSION_LIST"]
      941 NEWTABLE                         R20 0 2
      943 GETIMPORT                        R21 K92 [Enum.AssetType.EyelashAccessory]
      945 GETIMPORT                        R22 K91 [Enum.AssetType.EyebrowAccessory]
      947 SETLIST                          R20 R21 2 [1]
      949 SETTABLE                         R20 R18 R19
      950 SETLIST                          R16 R17 2 [1]
      952 JUMP                             ; [+2]
      953 GETIMPORT                        R16 K263 [Enum.AlphaMode.Overlay]
      955 SETTABLEKS                       R16 R15 K257 ["AlphaMode"]
      957 GETIMPORT                        R16 K267 [Content.none]
      959 SETTABLEKS                       R16 R15 K258 ["EmissiveMaskContent"]
      961 LOADN                            R16 1
      962 SETTABLEKS                       R16 R15 K259 ["EmissiveStrength"]
      964 GETIMPORT                        R16 K192 [Color3.new]
      966 LOADN                            R17 1
      967 LOADN                            R18 1
      968 LOADN                            R19 1
      969 CALL                             R16 3 1
      970 SETTABLEKS                       R16 R15 K260 ["EmissiveTint"]
      972 SETTABLEKS                       R15 R14 K178 ["SurfaceAppearance"]
      974 DUPTABLE                         R15 K273 [{"Enabled", "CageOrigin", "ReferenceOrigin", "ImportOrigin", "BindOffset"}]
      975 LOADB                            R16 1
      976 SETTABLEKS                       R16 R15 K268 ["Enabled"]
      978 DUPTABLE                         R16 K276 [{"PositionMagnitude", "Orientation"}]
      979 NEWTABLE                         R17 1 0
      981 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
      983 GETTABLEKS                       R18 R19 K150 ["SMALLER_EQ"]
      985 LOADN                            R19 10
      986 SETTABLE                         R19 R17 R18
      987 SETTABLEKS                       R17 R16 K274 ["PositionMagnitude"]
      989 NEWTABLE                         R17 1 0
      991 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
      993 GETTABLEKS                       R18 R19 K152 ["EXACT_EQ"]
      995 LOADK                            R19 K201 [{0, 0, 0}]
      996 SETTABLE                         R19 R17 R18
      997 SETTABLEKS                       R17 R16 K275 ["Orientation"]
      999 SETTABLEKS                       R16 R15 K269 ["CageOrigin"]
     1001 DUPTABLE                         R16 K276 [{"PositionMagnitude", "Orientation"}]
     1002 NEWTABLE                         R17 1 0
     1004 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1006 GETTABLEKS                       R18 R19 K150 ["SMALLER_EQ"]
     1008 LOADN                            R19 10
     1009 SETTABLE                         R19 R17 R18
     1010 SETTABLEKS                       R17 R16 K274 ["PositionMagnitude"]
     1012 NEWTABLE                         R17 1 0
     1014 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1016 GETTABLEKS                       R18 R19 K152 ["EXACT_EQ"]
     1018 LOADK                            R19 K201 [{0, 0, 0}]
     1019 SETTABLE                         R19 R17 R18
     1020 SETTABLEKS                       R17 R16 K275 ["Orientation"]
     1022 SETTABLEKS                       R16 R15 K270 ["ReferenceOrigin"]
     1024 DUPTABLE                         R16 K277 [{"PositionMagnitude"}]
     1025 NEWTABLE                         R17 1 0
     1027 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1029 GETTABLEKS                       R18 R19 K150 ["SMALLER_EQ"]
     1031 LOADN                            R19 8
     1032 SETTABLE                         R19 R17 R18
     1033 SETTABLEKS                       R17 R16 K274 ["PositionMagnitude"]
     1035 SETTABLEKS                       R16 R15 K271 ["ImportOrigin"]
     1037 DUPTABLE                         R16 K279 [{"Position", "Orientation"}]
     1038 NEWTABLE                         R17 1 0
     1040 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1042 GETTABLEKS                       R18 R19 K152 ["EXACT_EQ"]
     1044 LOADK                            R19 K201 [{0, 0, 0}]
     1045 SETTABLE                         R19 R17 R18
     1046 SETTABLEKS                       R17 R16 K278 ["Position"]
     1048 NEWTABLE                         R17 1 0
     1050 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1052 GETTABLEKS                       R18 R19 K152 ["EXACT_EQ"]
     1054 LOADK                            R19 K201 [{0, 0, 0}]
     1055 SETTABLE                         R19 R17 R18
     1056 SETTABLEKS                       R17 R16 K275 ["Orientation"]
     1058 SETTABLEKS                       R16 R15 K272 ["BindOffset"]
     1060 SETTABLEKS                       R15 R14 K179 ["WrapLayer"]
     1062 DUPTABLE                         R15 K280 [{"CageOrigin", "ImportOrigin"}]
     1063 DUPTABLE                         R16 K276 [{"PositionMagnitude", "Orientation"}]
     1064 NEWTABLE                         R17 1 0
     1066 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1068 GETTABLEKS                       R18 R19 K150 ["SMALLER_EQ"]
     1070 LOADN                            R19 10
     1071 SETTABLE                         R19 R17 R18
     1072 SETTABLEKS                       R17 R16 K274 ["PositionMagnitude"]
     1074 NEWTABLE                         R17 1 0
     1076 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1078 GETTABLEKS                       R18 R19 K152 ["EXACT_EQ"]
     1080 LOADK                            R19 K201 [{0, 0, 0}]
     1081 SETTABLE                         R19 R17 R18
     1082 SETTABLEKS                       R17 R16 K275 ["Orientation"]
     1084 SETTABLEKS                       R16 R15 K269 ["CageOrigin"]
     1086 DUPTABLE                         R16 K277 [{"PositionMagnitude"}]
     1087 NEWTABLE                         R17 1 0
     1089 GETTABLEKS                       R19 R11 K164 ["COMPARISON_METHODS"]
     1091 GETTABLEKS                       R18 R19 K150 ["SMALLER_EQ"]
     1093 LOADN                            R19 8
     1094 SETTABLE                         R19 R17 R18
     1095 SETTABLEKS                       R17 R16 K274 ["PositionMagnitude"]
     1097 SETTABLEKS                       R16 R15 K271 ["ImportOrigin"]
     1099 SETTABLEKS                       R15 R14 K180 ["WrapTarget"]
     1101 SETTABLEKS                       R14 R11 K281 ["PROPERTIES"]
     1103 DUPTABLE                         R14 K284 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1104 NEWTABLE                         R15 0 2
     1106 LOADK                            R16 K29 ["Material"]
     1107 LOADK                            R17 K30 ["Plastic"]
     1108 SETLIST                          R15 R16 2 [1]
     1110 SETTABLEKS                       R15 R14 K175 ["SpecialMesh"]
     1112 NEWTABLE                         R15 0 2
     1114 LOADK                            R16 K29 ["Material"]
     1115 LOADK                            R17 K31 [Enum.Material.Plastic]
     1116 SETLIST                          R15 R16 2 [1]
     1118 SETTABLEKS                       R15 R14 K282 ["MeshPart"]
     1120 NEWTABLE                         R15 0 4
     1122 LOADK                            R16 K32 ["pairs"]
     1123 LOADK                            R17 K33 [pairs]
     1124 LOADK                            R18 K34 ["MATERIAL_WHITELIST"]
     1125 LOADK                            R19 K35 ["Script"]
     1126 SETLIST                          R15 R16 4 [1]
     1128 SETTABLEKS                       R15 R14 K178 ["SurfaceAppearance"]
     1130 MOVE                             R16 R8
     1131 CALL                             R16 0 1
     1132 JUMPIFNOT                        R16 ; [+9]
     1133 NEWTABLE                         R15 0 4
     1135 LOADK                            R16 K32 ["pairs"]
     1136 LOADK                            R17 K33 [pairs]
     1137 LOADK                            R18 K34 ["MATERIAL_WHITELIST"]
     1138 LOADK                            R19 K35 ["Script"]
     1139 SETLIST                          R15 R16 4 [1]
     1141 JUMP                             ; [+1]
     1142 LOADNIL                          R15
     1143 SETTABLEKS                       R15 R14 K174 ["Decal"]
     1145 NEWTABLE                         R15 0 2
     1147 LOADK                            R16 K36 ["LocalScript"]
     1148 LOADK                            R17 K37 ["ModuleScript"]
     1149 SETLIST                          R15 R16 2 [1]
     1151 SETTABLEKS                       R15 R14 K179 ["WrapLayer"]
     1153 NEWTABLE                         R15 0 1
     1155 LOADK                            R16 K36 ["LocalScript"]
     1156 SETLIST                          R15 R16 1 [1]
     1158 SETTABLEKS                       R15 R14 K180 ["WrapTarget"]
     1160 NEWTABLE                         R15 0 1
     1162 LOADK                            R16 K38 ["ParticleEmitter"]
     1163 SETLIST                          R15 R16 1 [1]
     1165 SETTABLEKS                       R15 R14 K283 ["Animation"]
     1167 SETTABLEKS                       R14 R11 K295 ["CONTENT_ID_FIELDS"]
     1169 MOVE                             R14 R7
     1170 CALL                             R14 0 1
     1171 JUMPIFNOT                        R14 ; [+10]
     1172 GETTABLEKS                       R16 R11 K295 ["CONTENT_ID_FIELDS"]
     1174 GETTABLEKS                       R15 R16 K178 ["SurfaceAppearance"]
     1176 FASTCALL2K                       TABLE_INSERT R15 K296 ; [+4]
     1178 LOADK                            R16 K40 ["Smoke"]
     1179 GETIMPORT                        R14 K124 [table.insert]
     1181 CALL                             R14 2 0
     1182 MOVE                             R14 R6
     1183 CALL                             R14 0 1
     1184 JUMPIFNOT                        R14 ; [+10]
     1185 GETTABLEKS                       R16 R11 K295 ["CONTENT_ID_FIELDS"]
     1187 GETTABLEKS                       R15 R16 K179 ["WrapLayer"]
     1189 FASTCALL2K                       TABLE_INSERT R15 K297 ; [+4]
     1191 LOADK                            R16 K41 ["Sparkles"]
     1192 GETIMPORT                        R14 K124 [table.insert]
     1194 CALL                             R14 2 0
     1195 DUPTABLE                         R14 K298 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1196 DUPTABLE                         R15 K299 [{"MeshId", "TextureId"}]
     1197 LOADB                            R16 1
     1198 SETTABLEKS                       R16 R15 K285 ["MeshId"]
     1200 LOADB                            R16 1
     1201 SETTABLEKS                       R16 R15 K286 ["TextureId"]
     1203 SETTABLEKS                       R15 R14 K175 ["SpecialMesh"]
     1205 DUPTABLE                         R15 K300 [{"MeshId"}]
     1206 LOADB                            R16 1
     1207 SETTABLEKS                       R16 R15 K285 ["MeshId"]
     1209 SETTABLEKS                       R15 R14 K282 ["MeshPart"]
     1211 DUPTABLE                         R15 K301 [{"CageMeshId"}]
     1212 LOADB                            R16 1
     1213 SETTABLEKS                       R16 R15 K292 ["CageMeshId"]
     1215 SETTABLEKS                       R15 R14 K180 ["WrapTarget"]
     1217 DUPTABLE                         R15 K302 [{"AnimationId"}]
     1218 LOADB                            R16 1
     1219 SETTABLEKS                       R16 R15 K294 ["AnimationId"]
     1221 SETTABLEKS                       R15 R14 K283 ["Animation"]
     1223 SETTABLEKS                       R14 R11 K303 ["CONTENT_ID_REQUIRED_FIELDS"]
     1225 DUPTABLE                         R14 K304 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1226 NEWTABLE                         R15 0 1
     1228 LOADK                            R16 K29 ["Material"]
     1229 SETLIST                          R15 R16 1 [1]
     1231 SETTABLEKS                       R15 R14 K175 ["SpecialMesh"]
     1233 NEWTABLE                         R15 0 1
     1235 LOADK                            R16 K29 ["Material"]
     1236 SETLIST                          R15 R16 1 [1]
     1238 SETTABLEKS                       R15 R14 K282 ["MeshPart"]
     1240 NEWTABLE                         R15 0 1
     1242 LOADK                            R16 K36 ["LocalScript"]
     1243 SETLIST                          R15 R16 1 [1]
     1245 SETTABLEKS                       R15 R14 K180 ["WrapTarget"]
     1247 NEWTABLE                         R15 0 2
     1249 LOADK                            R16 K36 ["LocalScript"]
     1250 LOADK                            R17 K37 ["ModuleScript"]
     1251 SETLIST                          R15 R16 2 [1]
     1253 SETTABLEKS                       R15 R14 K179 ["WrapLayer"]
     1255 SETTABLEKS                       R14 R11 K305 ["MESH_CONTENT_ID_FIELDS"]
     1257 DUPTABLE                         R14 K306 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1258 NEWTABLE                         R15 0 1
     1260 LOADK                            R16 K30 ["Plastic"]
     1261 SETLIST                          R15 R16 1 [1]
     1263 SETTABLEKS                       R15 R14 K175 ["SpecialMesh"]
     1265 NEWTABLE                         R15 0 1
     1267 LOADK                            R16 K31 [Enum.Material.Plastic]
     1268 SETLIST                          R15 R16 1 [1]
     1270 SETTABLEKS                       R15 R14 K282 ["MeshPart"]
     1272 NEWTABLE                         R15 0 4
     1274 LOADK                            R16 K32 ["pairs"]
     1275 LOADK                            R17 K33 [pairs]
     1276 LOADK                            R18 K34 ["MATERIAL_WHITELIST"]
     1277 LOADK                            R19 K35 ["Script"]
     1278 SETLIST                          R15 R16 4 [1]
     1280 SETTABLEKS                       R15 R14 K178 ["SurfaceAppearance"]
     1282 MOVE                             R16 R8
     1283 CALL                             R16 0 1
     1284 JUMPIFNOT                        R16 ; [+9]
     1285 NEWTABLE                         R15 0 4
     1287 LOADK                            R16 K32 ["pairs"]
     1288 LOADK                            R17 K33 [pairs]
     1289 LOADK                            R18 K34 ["MATERIAL_WHITELIST"]
     1290 LOADK                            R19 K35 ["Script"]
     1291 SETLIST                          R15 R16 4 [1]
     1293 JUMP                             ; [+1]
     1294 LOADNIL                          R15
     1295 SETTABLEKS                       R15 R14 K174 ["Decal"]
     1297 SETTABLEKS                       R14 R11 K307 ["TEXTURE_CONTENT_ID_FIELDS"]
     1299 DUPTABLE                         R14 K308 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1300 GETIMPORT                        R17 K81 [Enum.AssetType.DynamicHead]
     1302 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1304 CALL                             R15 2 1
     1305 SETTABLEKS                       R15 R14 K73 ["DynamicHead"]
     1307 GETIMPORT                        R17 K84 [Enum.AssetType.LeftArm]
     1309 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1311 CALL                             R15 2 1
     1312 SETTABLEKS                       R15 R14 K83 ["LeftArm"]
     1314 GETIMPORT                        R17 K86 [Enum.AssetType.RightArm]
     1316 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1318 CALL                             R15 2 1
     1319 SETTABLEKS                       R15 R14 K85 ["RightArm"]
     1321 GETIMPORT                        R17 K82 [Enum.AssetType.Torso]
     1323 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1325 CALL                             R15 2 1
     1326 SETTABLEKS                       R15 R14 K43 ["Torso"]
     1328 GETIMPORT                        R17 K88 [Enum.AssetType.LeftLeg]
     1330 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1332 CALL                             R15 2 1
     1333 SETTABLEKS                       R15 R14 K87 ["LeftLeg"]
     1335 GETIMPORT                        R17 K90 [Enum.AssetType.RightLeg]
     1337 NAMECALL                         R15 R2 K309 ["getBodyPartMaxTrianglesRule"]
     1339 CALL                             R15 2 1
     1340 SETTABLEKS                       R15 R14 K89 ["RightLeg"]
     1342 SETTABLEKS                       R14 R11 K310 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1344 DUPTABLE                         R14 K311 [{"Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
     1345 LOADN                            R15 87
     1346 SETTABLEKS                       R15 R14 K49 ["Head"]
     1348 LOADN                            R15 77
     1349 SETTABLEKS                       R15 R14 K58 ["LeftUpperArm"]
     1351 LOADN                            R15 77
     1352 SETTABLEKS                       R15 R14 K59 ["LeftLowerArm"]
     1354 LOADN                            R15 86
     1355 SETTABLEKS                       R15 R14 K60 ["LeftHand"]
     1357 LOADN                            R15 77
     1358 SETTABLEKS                       R15 R14 K61 ["RightUpperArm"]
     1360 LOADN                            R15 77
     1361 SETTABLEKS                       R15 R14 K62 ["RightLowerArm"]
     1363 LOADN                            R15 86
     1364 SETTABLEKS                       R15 R14 K63 ["RightHand"]
     1366 LOADN                            R15 1
     1367 SETTABLEKS                       R15 R14 K50 ["UpperTorso"]
     1369 LOADN                            R15 105
     1370 SETTABLEKS                       R15 R14 K51 ["LowerTorso"]
     1372 LOADN                            R15 88
     1373 SETTABLEKS                       R15 R14 K52 ["LeftUpperLeg"]
     1375 LOADN                            R15 88
     1376 SETTABLEKS                       R15 R14 K53 ["LeftLowerLeg"]
     1378 LOADN                            R15 86
     1379 SETTABLEKS                       R15 R14 K54 ["LeftFoot"]
     1381 LOADN                            R15 88
     1382 SETTABLEKS                       R15 R14 K55 ["RightUpperLeg"]
     1384 LOADN                            R15 88
     1385 SETTABLEKS                       R15 R14 K56 ["RightLowerLeg"]
     1387 LOADN                            R15 86
     1388 SETTABLEKS                       R15 R14 K57 ["RightFoot"]
     1390 SETTABLEKS                       R14 R11 K312 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1392 GETTABLEKS                       R15 R1 K313 ["Dictionary"]
     1394 GETTABLEKS                       R14 R15 K314 ["join"]
     1396 GETTABLEKS                       R15 R11 K295 ["CONTENT_ID_FIELDS"]
     1398 DUPTABLE                         R16 K325 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1399 NEWTABLE                         R17 0 1
     1401 LOADK                            R18 K70 [setmetatable]
     1402 SETLIST                          R17 R18 1 [1]
     1404 SETTABLEKS                       R17 R16 K315 ["Sound"]
     1406 NEWTABLE                         R17 0 1
     1408 LOADK                            R18 K71 ["Root"]
     1409 SETLIST                          R17 R18 1 [1]
     1411 SETTABLEKS                       R17 R16 K174 ["Decal"]
     1413 NEWTABLE                         R17 0 1
     1415 LOADK                            R18 K72 ["HumanoidRootNode"]
     1416 SETLIST                          R17 R18 1 [1]
     1418 SETTABLEKS                       R17 R16 K316 ["VideoFrame"]
     1420 NEWTABLE                         R17 0 1
     1422 LOADK                            R18 K73 ["DynamicHead"]
     1423 SETLIST                          R17 R18 1 [1]
     1425 SETTABLEKS                       R17 R16 K317 ["PackageLink"]
     1427 NEWTABLE                         R17 0 3
     1429 LOADK                            R18 K74 ["R15_STANDARD_JOINT_NAMES"]
     1430 LOADK                            R19 K75 ["EyebrowAccessory"]
     1431 LOADK                            R20 K76 ["EyelashAccessory"]
     1432 SETLIST                          R17 R18 3 [1]
     1434 SETTABLEKS                       R17 R16 K318 ["CharacterMesh"]
     1436 NEWTABLE                         R17 0 1
     1438 LOADK                            R18 K30 ["Plastic"]
     1439 SETLIST                          R17 R18 1 [1]
     1441 SETTABLEKS                       R17 R16 K319 ["Tool"]
     1443 NEWTABLE                         R17 0 8
     1445 LOADK                            R18 K77 ["HairAccessory"]
     1446 LOADK                            R19 K78 ["UGC_BODY_PARTS"]
     1447 LOADK                            R20 K79 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
     1448 LOADK                            R21 K80 ["AssetType"]
     1449 LOADK                            R22 K81 [Enum.AssetType.DynamicHead]
     1450 LOADK                            R23 K82 [Enum.AssetType.Torso]
     1451 LOADK                            R24 K83 ["LeftArm"]
     1452 LOADK                            R25 K84 [Enum.AssetType.LeftArm]
     1453 SETLIST                          R17 R18 8 [1]
     1455 SETTABLEKS                       R17 R16 K320 ["Sky"]
     1457 NEWTABLE                         R17 0 1
     1459 LOADK                            R18 K85 ["RightArm"]
     1460 SETLIST                          R17 R18 1 [1]
     1462 SETTABLEKS                       R17 R16 K321 ["Trail"]
     1464 NEWTABLE                         R17 0 1
     1466 LOADK                            R18 K85 ["RightArm"]
     1467 SETLIST                          R17 R18 1 [1]
     1469 SETTABLEKS                       R17 R16 K322 ["Beam"]
     1471 NEWTABLE                         R17 0 1
     1473 LOADK                            R18 K86 [Enum.AssetType.RightArm]
     1474 SETLIST                          R17 R18 1 [1]
     1476 SETTABLEKS                       R17 R16 K323 ["ShirtGraphic"]
     1478 NEWTABLE                         R17 0 1
     1480 LOADK                            R18 K87 ["LeftLeg"]
     1481 SETLIST                          R17 R18 1 [1]
     1483 SETTABLEKS                       R17 R16 K116 ["Shirt"]
     1485 NEWTABLE                         R17 0 1
     1487 LOADK                            R18 K88 [Enum.AssetType.LeftLeg]
     1488 SETLIST                          R17 R18 1 [1]
     1490 SETTABLEKS                       R17 R16 K117 ["Pants"]
     1492 NEWTABLE                         R17 0 1
     1494 LOADK                            R18 K89 ["RightLeg"]
     1495 SETLIST                          R17 R18 1 [1]
     1497 SETTABLEKS                       R17 R16 K324 ["AdGui"]
     1499 CALL                             R14 2 1
     1500 SETTABLEKS                       R14 R11 K346 ["PACKAGE_CONTENT_ID_FIELDS"]
     1502 LOADK                            R14 K91 [Enum.AssetType.EyebrowAccessory]
     1503 SETTABLEKS                       R14 R11 K348 ["ExperienceAuthHeaderKey"]
     1505 LOADK                            R14 K93 [Enum.AssetType.HairAccessory]
     1506 SETTABLEKS                       R14 R11 K350 ["ContentType"]
     1508 LOADK                            R14 K95 ["LeftShoeAccessory"]
     1509 SETTABLEKS                       R14 R11 K352 ["ApplicationJson"]
     1511 LOADK                            R14 K97 [{"LeftShoeAccessory", "RightShoeAccessory"}]
     1512 SETTABLEKS                       R14 R11 K354 ["GUIDAttributeName"]
     1514 LOADN                            R14 100
     1515 SETTABLEKS                       R14 R11 K355 ["GUIDAttributeMaxLength"]
     1517 LOADK                            R14 K100 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
     1518 SETTABLEKS                       R14 R11 K357 ["AlternateMeshIdAttributeName"]
     1520 DUPTABLE                         R14 K361 [{"RENDER_MESH", "OUTER_CAGE", "INNER_CAGE"}]
     1521 LOADK                            R15 K106 ["R6"]
     1522 SETTABLEKS                       R15 R14 K358 ["RENDER_MESH"]
     1524 LOADK                            R15 K107 ["R15ArtistIntent"]
     1525 SETTABLEKS                       R15 R14 K359 ["OUTER_CAGE"]
     1527 LOADK                            R15 K108 ["R15Fixed"]
     1528 SETTABLEKS                       R15 R14 K360 ["INNER_CAGE"]
     1530 SETTABLEKS                       R14 R11 K365 ["MESH_CONTENT_TYPE"]
     1532 NEWTABLE                         R14 4 0
     1534 GETTABLEKS                       R16 R11 K365 ["MESH_CONTENT_TYPE"]
     1536 GETTABLEKS                       R15 R16 K358 ["RENDER_MESH"]
     1538 LOADK                            R16 K29 ["Material"]
     1539 SETTABLE                         R16 R14 R15
     1540 GETTABLEKS                       R16 R11 K365 ["MESH_CONTENT_TYPE"]
     1542 GETTABLEKS                       R15 R16 K359 ["OUTER_CAGE"]
     1544 LOADK                            R16 K36 ["LocalScript"]
     1545 SETTABLE                         R16 R14 R15
     1546 GETTABLEKS                       R16 R11 K365 ["MESH_CONTENT_TYPE"]
     1548 GETTABLEKS                       R15 R16 K360 ["INNER_CAGE"]
     1550 LOADK                            R16 K37 ["ModuleScript"]
     1551 SETTABLE                         R16 R14 R15
     1552 SETTABLEKS                       R14 R11 K366 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1554 NEWTABLE                         R14 0 5
     1556 GETTABLEKS                       R16 R3 K367 ["UploadCategory"]
     1558 GETTABLEKS                       R15 R16 K368 ["TORSO_AND_LIMBS"]
     1560 GETTABLEKS                       R17 R3 K367 ["UploadCategory"]
     1562 GETTABLEKS                       R16 R17 K369 ["DYNAMIC_HEAD"]
     1564 GETTABLEKS                       R18 R3 K367 ["UploadCategory"]
     1566 GETTABLEKS                       R17 R18 K370 ["LAYERED_CLOTHING"]
     1568 GETTABLEKS                       R19 R3 K367 ["UploadCategory"]
     1570 GETTABLEKS                       R18 R19 K371 ["RIGID_ACCESSORY"]
     1572 GETTABLEKS                       R20 R3 K367 ["UploadCategory"]
     1574 GETTABLEKS                       R19 R20 K372 ["EMOTE_ANIMATION"]
     1576 SETLIST                          R14 R15 5 [1]
     1578 SETTABLEKS                       R14 R11 K373 ["AllAssetUploadCategories"]
     1580 NEWTABLE                         R14 0 2
     1582 GETTABLEKS                       R16 R3 K367 ["UploadCategory"]
     1584 GETTABLEKS                       R15 R16 K374 ["FULL_BODY"]
     1586 GETTABLEKS                       R17 R3 K367 ["UploadCategory"]
     1588 GETTABLEKS                       R16 R17 K375 ["BOTH_SHOES"]
     1590 SETLIST                          R14 R15 2 [1]
     1592 SETTABLEKS                       R14 R11 K376 ["AllBundleUploadCategories"]
     1594 NEWTABLE                         R14 0 0
     1596 SETTABLEKS                       R14 R11 K377 ["AllUploadCategories"]
     1598 GETTABLEKS                       R14 R3 K367 ["UploadCategory"]
     1600 LOADNIL                          R15
     1601 LOADNIL                          R16
     1602 FORGPREP                         R14
     1603 GETTABLEKS                       R20 R11 K377 ["AllUploadCategories"]
     1605 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
     1607 MOVE                             R21 R18
     1608 GETIMPORT                        R19 K124 [table.insert]
     1610 CALL                             R19 2 0
     1611 FORGLOOP                         R14 2 ; [-9]
     1613 NEWTABLE                         R14 8 0
     1615 GETIMPORT                        R15 K82 [Enum.AssetType.Torso]
     1617 LOADB                            R16 1
     1618 SETTABLE                         R16 R14 R15
     1619 GETIMPORT                        R15 K84 [Enum.AssetType.LeftArm]
     1621 LOADB                            R16 1
     1622 SETTABLE                         R16 R14 R15
     1623 GETIMPORT                        R15 K86 [Enum.AssetType.RightArm]
     1625 LOADB                            R16 1
     1626 SETTABLE                         R16 R14 R15
     1627 GETIMPORT                        R15 K88 [Enum.AssetType.LeftLeg]
     1629 LOADB                            R16 1
     1630 SETTABLE                         R16 R14 R15
     1631 GETIMPORT                        R15 K90 [Enum.AssetType.RightLeg]
     1633 LOADB                            R16 1
     1634 SETTABLE                         R16 R14 R15
     1635 SETTABLEKS                       R14 R11 K378 ["AssetUploadsWithFolderStructure"]
     1637 NEWTABLE                         R14 2 0
     1639 GETIMPORT                        R15 K91 [Enum.AssetType.EyebrowAccessory]
     1641 LOADB                            R16 1
     1642 SETTABLE                         R16 R14 R15
     1643 GETIMPORT                        R15 K92 [Enum.AssetType.EyelashAccessory]
     1645 LOADB                            R16 1
     1646 SETTABLE                         R16 R14 R15
     1647 SETTABLEKS                       R14 R11 K379 ["SkinningTransferRequiredTypes"]
     1649 RETURN                           R11 1
