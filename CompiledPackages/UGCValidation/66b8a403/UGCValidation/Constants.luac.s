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
       30 GETTABLEKS                       R5 R6 K11 ["getFFlagAddUGCValidationForPackage"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["flags"]
       37 GETTABLEKS                       R6 R7 K12 ["getFFlagFixPackageIDFieldName"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K10 ["flags"]
       44 GETTABLEKS                       R7 R8 K13 ["getFFlagUGCValidateWrapLayersEnabled"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K10 ["flags"]
       51 GETTABLEKS                       R8 R9 K14 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K10 ["flags"]
       58 GETTABLEKS                       R9 R10 K15 ["getFFlagUGCValidationFixConstantsTypoLeg"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K10 ["flags"]
       65 GETTABLEKS                       R10 R11 K16 ["getFFlagUGCValidateBindOffset"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K10 ["flags"]
       72 GETTABLEKS                       R11 R12 K17 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K10 ["flags"]
       79 GETTABLEKS                       R12 R13 K18 ["getFFlagUGCValidateCheckHSROwner"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K10 ["flags"]
       86 GETTABLEKS                       R13 R14 K19 ["getFFlagUGCValidateCheckTexturePackOwner"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K4 [require]
       91 GETTABLEKS                       R15 R0 K10 ["flags"]
       93 GETTABLEKS                       R14 R15 K20 ["getFFlagUGCValidationMakeupSupport"]
       95 CALL                             R13 1 1
       96 DUPCLOSURE                       R14 K21 [PROTO_0]
       97 NEWTABLE                         R15 64 0
       99 NAMECALL                         R18 R2 K22 ["getRules"]
      101 CALL                             R18 1 1
      102 GETTABLEKS                       R17 R18 K23 ["MeshRules"]
      104 GETTABLEKS                       R16 R17 K24 ["AccessoryMaxTriangles"]
      106 SETTABLEKS                       R16 R15 K25 ["MAX_HAT_TRIANGLES"]
      108 NAMECALL                         R18 R2 K22 ["getRules"]
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R17 R18 K26 ["TextureRules"]
      113 GETTABLEKS                       R16 R17 K27 ["MaxTextureSize"]
      115 SETTABLEKS                       R16 R15 K28 ["MAX_TEXTURE_SIZE"]
      117 NEWTABLE                         R17 0 1
      119 GETIMPORT                        R18 K32 [Enum.Material.Plastic]
      121 SETLIST                          R17 R18 1 [1]
      123 NEWTABLE                         R18 0 0
      125 GETIMPORT                        R19 K34 [pairs]
      127 MOVE                             R20 R17
      128 CALL                             R19 1 3
      129 FORGPREP_NEXT                    R19
      130 LOADB                            R24 1
      131 SETTABLE                         R24 R18 R23
      132 FORGLOOP                         R19 2 ; [-3]
      134 MOVE                             R16 R18
      135 SETTABLEKS                       R16 R15 K35 ["MATERIAL_WHITELIST"]
      137 NEWTABLE                         R16 0 7
      139 LOADK                            R17 K36 ["Script"]
      140 LOADK                            R18 K37 ["LocalScript"]
      141 LOADK                            R19 K38 ["ModuleScript"]
      142 LOADK                            R20 K39 ["ParticleEmitter"]
      143 LOADK                            R21 K40 ["Fire"]
      144 LOADK                            R22 K41 ["Smoke"]
      145 LOADK                            R23 K42 ["Sparkles"]
      146 SETLIST                          R16 R17 7 [1]
      148 SETTABLEKS                       R16 R15 K43 ["BANNED_CLASS_NAMES"]
      150 NEWTABLE                         R16 0 5
      152 LOADK                            R17 K44 ["Torso"]
      153 LOADK                            R18 K45 ["Left Leg"]
      154 LOADK                            R19 K46 ["Right Leg"]
      155 LOADK                            R20 K47 ["Left Arm"]
      156 LOADK                            R21 K48 ["Right Arm"]
      157 SETLIST                          R16 R17 5 [1]
      159 SETTABLEKS                       R16 R15 K49 ["R6_BODY_PARTS"]
      161 NEWTABLE                         R16 0 15
      163 LOADK                            R17 K50 ["Head"]
      164 LOADK                            R18 K51 ["UpperTorso"]
      165 LOADK                            R19 K52 ["LowerTorso"]
      166 LOADK                            R20 K53 ["LeftUpperLeg"]
      167 LOADK                            R21 K54 ["LeftLowerLeg"]
      168 LOADK                            R22 K55 ["LeftFoot"]
      169 LOADK                            R23 K56 ["RightUpperLeg"]
      170 LOADK                            R24 K57 ["RightLowerLeg"]
      171 LOADK                            R25 K58 ["RightFoot"]
      172 LOADK                            R26 K59 ["LeftUpperArm"]
      173 LOADK                            R27 K60 ["LeftLowerArm"]
      174 LOADK                            R28 K61 ["LeftHand"]
      175 LOADK                            R29 K62 ["RightUpperArm"]
      176 LOADK                            R30 K63 ["RightLowerArm"]
      177 LOADK                            R31 K64 ["RightHand"]
      178 SETLIST                          R16 R17 15 [1]
      180 SETTABLEKS                       R16 R15 K65 ["R15_BODY_PARTS"]
      182 NEWTABLE                         R16 0 0
      184 SETTABLEKS                       R16 R15 K66 ["NAMED_R15_BODY_PARTS"]
      186 GETTABLEKS                       R16 R15 K65 ["R15_BODY_PARTS"]
      188 LOADNIL                          R17
      189 LOADNIL                          R18
      190 FORGPREP                         R16
      191 GETTABLEKS                       R21 R15 K66 ["NAMED_R15_BODY_PARTS"]
      193 SETTABLE                         R20 R21 R20
      194 FORGLOOP                         R16 2 ; [-4]
      196 GETTABLEKS                       R16 R15 K66 ["NAMED_R15_BODY_PARTS"]
      198 LOADK                            R17 K50 ["Head"]
      199 SETTABLEKS                       R17 R16 K50 ["Head"]
      201 GETTABLEKS                       R17 R15 K66 ["NAMED_R15_BODY_PARTS"]
      203 DUPTABLE                         R18 K68 [{"__index"}]
      204 DUPCLOSURE                       R19 K69 [PROTO_1]
      205 SETTABLEKS                       R19 R18 K67 ["__index"]
      207 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
      209 GETIMPORT                        R16 K71 [setmetatable]
      211 CALL                             R16 2 0
      212 NEWTABLE                         R16 32 0
      214 LOADB                            R17 1
      215 SETTABLEKS                       R17 R16 K72 ["Root"]
      217 LOADB                            R17 1
      218 SETTABLEKS                       R17 R16 K73 ["HumanoidRootNode"]
      220 LOADB                            R17 1
      221 SETTABLEKS                       R17 R16 K74 ["DynamicHead"]
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K50 ["Head"]
      226 LOADB                            R17 1
      227 SETTABLEKS                       R17 R16 K51 ["UpperTorso"]
      229 LOADB                            R17 1
      230 SETTABLEKS                       R17 R16 K52 ["LowerTorso"]
      232 LOADB                            R17 1
      233 SETTABLEKS                       R17 R16 K53 ["LeftUpperLeg"]
      235 LOADB                            R17 1
      236 SETTABLEKS                       R17 R16 K54 ["LeftLowerLeg"]
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K55 ["LeftFoot"]
      241 LOADB                            R17 1
      242 SETTABLEKS                       R17 R16 K56 ["RightUpperLeg"]
      244 LOADB                            R17 1
      245 SETTABLEKS                       R17 R16 K57 ["RightLowerLeg"]
      247 LOADB                            R17 1
      248 SETTABLEKS                       R17 R16 K58 ["RightFoot"]
      250 LOADB                            R17 1
      251 SETTABLEKS                       R17 R16 K59 ["LeftUpperArm"]
      253 LOADB                            R17 1
      254 SETTABLEKS                       R17 R16 K60 ["LeftLowerArm"]
      256 LOADB                            R17 1
      257 SETTABLEKS                       R17 R16 K61 ["LeftHand"]
      259 LOADB                            R17 1
      260 SETTABLEKS                       R17 R16 K62 ["RightUpperArm"]
      262 LOADB                            R17 1
      263 SETTABLEKS                       R17 R16 K63 ["RightLowerArm"]
      265 LOADB                            R17 1
      266 SETTABLEKS                       R17 R16 K64 ["RightHand"]
      268 SETTABLEKS                       R16 R15 K75 ["R15_STANDARD_JOINT_NAMES"]
      270 GETTABLEKS                       R16 R15 K65 ["R15_BODY_PARTS"]
      272 LOADNIL                          R17
      273 LOADNIL                          R18
      274 FORGPREP                         R16
      275 GETTABLEKS                       R21 R15 K75 ["R15_STANDARD_JOINT_NAMES"]
      277 LOADB                            R22 1
      278 SETTABLE                         R22 R21 R20
      279 FORGLOOP                         R16 2 ; [-5]
      281 NEWTABLE                         R16 0 18
      283 LOADK                            R17 K50 ["Head"]
      284 LOADK                            R18 K51 ["UpperTorso"]
      285 LOADK                            R19 K52 ["LowerTorso"]
      286 LOADK                            R20 K53 ["LeftUpperLeg"]
      287 LOADK                            R21 K54 ["LeftLowerLeg"]
      288 LOADK                            R22 K61 ["LeftHand"]
      289 LOADK                            R23 K62 ["RightUpperArm"]
      290 LOADK                            R24 K63 ["RightLowerArm"]
      291 LOADK                            R25 K64 ["RightHand"]
      292 LOADK                            R26 K59 ["LeftUpperArm"]
      293 LOADK                            R27 K60 ["LeftLowerArm"]
      294 LOADK                            R28 K55 ["LeftFoot"]
      295 LOADK                            R29 K56 ["RightUpperLeg"]
      296 LOADK                            R30 K57 ["RightLowerLeg"]
      297 LOADK                            R31 K58 ["RightFoot"]
      298 LOADK                            R32 K76 ["EyebrowAccessory"]
      299 SETLIST                          R16 R17 16 [1]
      301 LOADK                            R17 K77 ["EyelashAccessory"]
      302 LOADK                            R18 K78 ["HairAccessory"]
      303 SETLIST                          R16 R17 2 [17]
      305 SETTABLEKS                       R16 R15 K79 ["UGC_BODY_PARTS"]
      307 DUPTABLE                         R16 K80 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      308 GETIMPORT                        R17 K82 [Enum.AssetType.DynamicHead]
      310 SETTABLEKS                       R17 R16 K50 ["Head"]
      312 GETIMPORT                        R17 K83 [Enum.AssetType.Torso]
      314 SETTABLEKS                       R17 R16 K51 ["UpperTorso"]
      316 GETIMPORT                        R17 K83 [Enum.AssetType.Torso]
      318 SETTABLEKS                       R17 R16 K52 ["LowerTorso"]
      320 GETIMPORT                        R17 K85 [Enum.AssetType.LeftArm]
      322 SETTABLEKS                       R17 R16 K59 ["LeftUpperArm"]
      324 GETIMPORT                        R17 K85 [Enum.AssetType.LeftArm]
      326 SETTABLEKS                       R17 R16 K60 ["LeftLowerArm"]
      328 GETIMPORT                        R17 K85 [Enum.AssetType.LeftArm]
      330 SETTABLEKS                       R17 R16 K61 ["LeftHand"]
      332 GETIMPORT                        R17 K87 [Enum.AssetType.RightArm]
      334 SETTABLEKS                       R17 R16 K62 ["RightUpperArm"]
      336 GETIMPORT                        R17 K87 [Enum.AssetType.RightArm]
      338 SETTABLEKS                       R17 R16 K63 ["RightLowerArm"]
      340 GETIMPORT                        R17 K87 [Enum.AssetType.RightArm]
      342 SETTABLEKS                       R17 R16 K64 ["RightHand"]
      344 GETIMPORT                        R17 K89 [Enum.AssetType.LeftLeg]
      346 SETTABLEKS                       R17 R16 K53 ["LeftUpperLeg"]
      348 GETIMPORT                        R17 K89 [Enum.AssetType.LeftLeg]
      350 SETTABLEKS                       R17 R16 K54 ["LeftLowerLeg"]
      352 GETIMPORT                        R17 K89 [Enum.AssetType.LeftLeg]
      354 SETTABLEKS                       R17 R16 K55 ["LeftFoot"]
      356 GETIMPORT                        R17 K91 [Enum.AssetType.RightLeg]
      358 SETTABLEKS                       R17 R16 K56 ["RightUpperLeg"]
      360 GETIMPORT                        R17 K91 [Enum.AssetType.RightLeg]
      362 SETTABLEKS                       R17 R16 K57 ["RightLowerLeg"]
      364 GETIMPORT                        R17 K91 [Enum.AssetType.RightLeg]
      366 SETTABLEKS                       R17 R16 K58 ["RightFoot"]
      368 GETIMPORT                        R17 K92 [Enum.AssetType.EyebrowAccessory]
      370 SETTABLEKS                       R17 R16 K76 ["EyebrowAccessory"]
      372 GETIMPORT                        R17 K93 [Enum.AssetType.EyelashAccessory]
      374 SETTABLEKS                       R17 R16 K77 ["EyelashAccessory"]
      376 GETIMPORT                        R17 K94 [Enum.AssetType.HairAccessory]
      378 SETTABLEKS                       R17 R16 K78 ["HairAccessory"]
      380 SETTABLEKS                       R16 R15 K95 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      382 DUPTABLE                         R16 K98 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      383 GETIMPORT                        R17 K99 [Enum.AssetType.LeftShoeAccessory]
      385 SETTABLEKS                       R17 R16 K96 ["LeftShoeAccessory"]
      387 GETIMPORT                        R17 K100 [Enum.AssetType.RightShoeAccessory]
      389 SETTABLEKS                       R17 R16 K97 ["RightShoeAccessory"]
      391 SETTABLEKS                       R16 R15 K101 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      393 NEWTABLE                         R16 2 0
      395 GETIMPORT                        R17 K104 [Enum.BundleType.BodyParts]
      397 GETTABLEKS                       R18 R15 K95 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      399 SETTABLE                         R18 R16 R17
      400 GETIMPORT                        R17 K104 [Enum.BundleType.BodyParts]
      402 GETTABLEKS                       R18 R15 K101 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      404 SETTABLE                         R18 R16 R17
      405 SETTABLEKS                       R16 R15 K105 ["BUNDLE_TO_ASSET_MAPPING"]
      407 NEWTABLE                         R16 0 4
      409 GETIMPORT                        R17 K82 [Enum.AssetType.DynamicHead]
      411 GETIMPORT                        R18 K92 [Enum.AssetType.EyebrowAccessory]
      413 GETIMPORT                        R19 K93 [Enum.AssetType.EyelashAccessory]
      415 GETIMPORT                        R20 K94 [Enum.AssetType.HairAccessory]
      417 SETLIST                          R16 R17 4 [1]
      419 SETTABLEKS                       R16 R15 K106 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      421 DUPTABLE                         R16 K110 [{"R6", "R15ArtistIntent", "R15Fixed"}]
      422 LOADK                            R17 K107 ["R6"]
      423 SETTABLEKS                       R17 R16 K107 ["R6"]
      425 LOADK                            R17 K108 ["R15ArtistIntent"]
      426 SETTABLEKS                       R17 R16 K108 ["R15ArtistIntent"]
      428 LOADK                            R17 K109 ["R15Fixed"]
      429 SETTABLEKS                       R17 R16 K109 ["R15Fixed"]
      431 SETTABLEKS                       R16 R15 K111 ["FOLDER_NAMES"]
      433 NEWTABLE                         R16 0 3
      435 LOADK                            R17 K50 ["Head"]
      436 LOADK                            R18 K112 ["HumanoidRootPart"]
      437 LOADK                            R19 K113 ["Humanoid"]
      438 SETLIST                          R16 R17 3 [1]
      440 SETTABLEKS                       R16 R15 K114 ["EXTRA_BANNED_NAMES"]
      442 NEWTABLE                         R16 0 6
      444 LOADK                            R17 K115 ["Body Colors"]
      445 LOADK                            R18 K116 ["Shirt Graphic"]
      446 LOADK                            R19 K117 ["Shirt"]
      447 LOADK                            R20 K118 ["Pants"]
      448 LOADK                            R21 K119 ["Health"]
      449 LOADK                            R22 K120 ["Animate"]
      450 SETLIST                          R16 R17 6 [1]
      452 GETIMPORT                        R17 K122 [ipairs]
      454 MOVE                             R18 R16
      455 CALL                             R17 1 3
      456 FORGPREP_INEXT                   R17
      457 GETTABLEKS                       R23 R15 K114 ["EXTRA_BANNED_NAMES"]
      459 FASTCALL2                        TABLE_INSERT R23 R21 ; [+4]
      461 MOVE                             R24 R21
      462 GETIMPORT                        R22 K125 [table.insert]
      464 CALL                             R22 2 0
      465 FORGLOOP                         R17 2 [inext] ; [-9]
      467 NEWTABLE                         R17 0 0
      469 SETTABLEKS                       R17 R15 K126 ["BANNED_NAMES"]
      471 NEWTABLE                         R17 0 3
      473 GETTABLEKS                       R18 R15 K49 ["R6_BODY_PARTS"]
      475 GETTABLEKS                       R19 R15 K65 ["R15_BODY_PARTS"]
      477 GETTABLEKS                       R20 R15 K114 ["EXTRA_BANNED_NAMES"]
      479 SETLIST                          R17 R18 3 [1]
      481 MOVE                             R18 R17
      482 LOADNIL                          R19
      483 LOADNIL                          R20
      484 FORGPREP                         R18
      485 MOVE                             R23 R22
      486 LOADNIL                          R24
      487 LOADNIL                          R25
      488 FORGPREP                         R23
      489 GETTABLEKS                       R28 R15 K126 ["BANNED_NAMES"]
      491 LOADB                            R29 1
      492 SETTABLE                         R29 R28 R27
      493 FORGLOOP                         R23 2 ; [-5]
      495 FORGLOOP                         R18 2 ; [-11]
      497 DUPTABLE                         R18 K130 [{"UNKNOWN", "REVIEW_PENDING", "MODERATED"}]
      498 LOADK                            R19 K131 ["Unknown"]
      499 SETTABLEKS                       R19 R18 K127 ["UNKNOWN"]
      501 LOADK                            R19 K132 ["ReviewPending"]
      502 SETTABLEKS                       R19 R18 K128 ["REVIEW_PENDING"]
      504 LOADK                            R19 K133 ["Moderated"]
      505 SETTABLEKS                       R19 R18 K129 ["MODERATED"]
      507 SETTABLEKS                       R18 R15 K134 ["ASSET_STATUS"]
      509 MOVE                             R18 R13
      510 CALL                             R18 0 1
      511 JUMPIFNOT                        R18 ; [+5]
      512 NAMECALL                         R18 R2 K135 ["getMakeupRules"]
      514 CALL                             R18 1 1
      515 SETTABLEKS                       R18 R15 K136 ["MAKEUP_INFO"]
      517 NEWTABLE                         R18 0 0
      519 SETTABLEKS                       R18 R15 K137 ["ASSET_TYPE_INFO"]
      521 GETTABLEKS                       R20 R15 K137 ["ASSET_TYPE_INFO"]
      523 NAMECALL                         R18 R2 K138 ["getAccessoryRules"]
      525 CALL                             R18 2 0
      526 NAMECALL                         R18 R2 K139 ["getFullBodyRulesBounds"]
      528 CALL                             R18 1 1
      529 SETTABLEKS                       R18 R15 K140 ["FULL_BODY_BOUNDS"]
      531 DUPTABLE                         R18 K144 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
      532 LOADB                            R19 1
      533 SETTABLEKS                       R19 R18 K141 ["Classic"]
      535 LOADB                            R19 1
      536 SETTABLEKS                       R19 R18 K142 ["ProportionsSlender"]
      538 LOADB                            R19 1
      539 SETTABLEKS                       R19 R18 K143 ["ProportionsNormal"]
      541 SETTABLEKS                       R18 R15 K145 ["AvatarPartScaleTypes"]
      543 GETTABLEKS                       R20 R15 K137 ["ASSET_TYPE_INFO"]
      545 NAMECALL                         R18 R2 K146 ["getBodyPartRules"]
      547 CALL                             R18 2 0
      548 NEWTABLE                         R18 16 0
      550 LOADNIL                          R19
      551 SETTABLEKS                       R19 R18 K50 ["Head"]
      553 LOADNIL                          R19
      554 SETTABLEKS                       R19 R18 K52 ["LowerTorso"]
      556 LOADK                            R19 K52 ["LowerTorso"]
      557 SETTABLEKS                       R19 R18 K51 ["UpperTorso"]
      559 LOADNIL                          R19
      560 SETTABLEKS                       R19 R18 K59 ["LeftUpperArm"]
      562 LOADK                            R19 K59 ["LeftUpperArm"]
      563 SETTABLEKS                       R19 R18 K60 ["LeftLowerArm"]
      565 LOADK                            R19 K60 ["LeftLowerArm"]
      566 SETTABLEKS                       R19 R18 K61 ["LeftHand"]
      568 LOADNIL                          R19
      569 SETTABLEKS                       R19 R18 K53 ["LeftUpperLeg"]
      571 LOADK                            R19 K53 ["LeftUpperLeg"]
      572 SETTABLEKS                       R19 R18 K54 ["LeftLowerLeg"]
      574 LOADNIL                          R19
      575 SETTABLEKS                       R19 R18 K62 ["RightUpperArm"]
      577 LOADK                            R19 K62 ["RightUpperArm"]
      578 SETTABLEKS                       R19 R18 K63 ["RightLowerArm"]
      580 LOADK                            R19 K63 ["RightLowerArm"]
      581 SETTABLEKS                       R19 R18 K64 ["RightHand"]
      583 LOADNIL                          R19
      584 SETTABLEKS                       R19 R18 K56 ["RightUpperLeg"]
      586 LOADK                            R19 K56 ["RightUpperLeg"]
      587 SETTABLEKS                       R19 R18 K57 ["RightLowerLeg"]
      589 SETTABLEKS                       R18 R15 K147 ["BODYPART_TO_PARENT"]
      591 MOVE                             R18 R8
      592 CALL                             R18 0 1
      593 JUMPIFNOT                        R18 ; [+11]
      594 GETTABLEKS                       R18 R15 K147 ["BODYPART_TO_PARENT"]
      596 LOADK                            R19 K57 ["RightLowerLeg"]
      597 SETTABLEKS                       R19 R18 K58 ["RightFoot"]
      599 GETTABLEKS                       R18 R15 K147 ["BODYPART_TO_PARENT"]
      601 LOADK                            R19 K54 ["LeftLowerLeg"]
      602 SETTABLEKS                       R19 R18 K55 ["LeftFoot"]
      604 JUMP                             ; [+10]
      605 GETTABLEKS                       R18 R15 K147 ["BODYPART_TO_PARENT"]
      607 LOADK                            R19 K57 ["RightLowerLeg"]
      608 SETTABLEKS                       R19 R18 K90 ["RightLeg"]
      610 GETTABLEKS                       R18 R15 K147 ["BODYPART_TO_PARENT"]
      612 LOADK                            R19 K54 ["LeftLowerLeg"]
      613 SETTABLEKS                       R19 R18 K88 ["LeftLeg"]
      615 NAMECALL                         R20 R2 K22 ["getRules"]
      617 CALL                             R20 1 1
      618 GETTABLEKS                       R19 R20 K23 ["MeshRules"]
      620 GETTABLEKS                       R18 R19 K148 ["CageMeshMaxDistanceFromRenderMesh"]
      622 SETTABLEKS                       R18 R15 K149 ["RenderVsWrapMeshMaxDiff"]
      624 DUPTABLE                         R18 K157 [{"SMALLER", "SMALLER_EQ", "FUZZY_EQ", "EXACT_EQ", "GREATER_EQ", "GREATER", "FOUND_IN"}]
      625 LOADK                            R19 K158 ["<"]
      626 SETTABLEKS                       R19 R18 K150 ["SMALLER"]
      628 LOADK                            R19 K159 ["<="]
      629 SETTABLEKS                       R19 R18 K151 ["SMALLER_EQ"]
      631 LOADK                            R19 K160 ["="]
      632 SETTABLEKS                       R19 R18 K152 ["FUZZY_EQ"]
      634 LOADK                            R19 K161 ["=="]
      635 SETTABLEKS                       R19 R18 K153 ["EXACT_EQ"]
      637 LOADK                            R19 K162 [">="]
      638 SETTABLEKS                       R19 R18 K154 ["GREATER_EQ"]
      640 LOADK                            R19 K163 [">"]
      641 SETTABLEKS                       R19 R18 K155 ["GREATER"]
      643 LOADK                            R19 K164 ["one of the following:"]
      644 SETTABLEKS                       R19 R18 K156 ["FOUND_IN"]
      646 SETTABLEKS                       R18 R15 K165 ["COMPARISON_METHODS"]
      648 GETTABLEKS                       R19 R15 K165 ["COMPARISON_METHODS"]
      650 DUPTABLE                         R20 K68 [{"__index"}]
      651 DUPCLOSURE                       R21 K166 [PROTO_2]
      652 SETTABLEKS                       R21 R20 K67 ["__index"]
      654 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      656 GETIMPORT                        R18 K71 [setmetatable]
      658 CALL                             R18 2 0
      659 DUPTABLE                         R18 K170 [{"RUN_ON_ALL", "INCLUSION_LIST", "EXCLUSION_LIST"}]
      660 LOADK                            R19 K167 ["RUN_ON_ALL"]
      661 SETTABLEKS                       R19 R18 K167 ["RUN_ON_ALL"]
      663 LOADK                            R19 K168 ["INCLUSION_LIST"]
      664 SETTABLEKS                       R19 R18 K168 ["INCLUSION_LIST"]
      666 LOADK                            R19 K169 ["EXCLUSION_LIST"]
      667 SETTABLEKS                       R19 R18 K169 ["EXCLUSION_LIST"]
      669 SETTABLEKS                       R18 R15 K171 ["INCLUSION_METHODS"]
      671 GETTABLEKS                       R19 R15 K171 ["INCLUSION_METHODS"]
      673 DUPTABLE                         R20 K68 [{"__index"}]
      674 DUPCLOSURE                       R21 K172 [PROTO_3]
      675 SETTABLEKS                       R21 R20 K67 ["__index"]
      677 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      679 GETIMPORT                        R18 K71 [setmetatable]
      681 CALL                             R18 2 0
      682 DUPTABLE                         R18 K182 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      683 DUPTABLE                         R19 K184 [{"Archivable"}]
      684 LOADB                            R20 1
      685 SETTABLEKS                       R20 R19 K183 ["Archivable"]
      687 SETTABLEKS                       R19 R18 K173 ["Instance"]
      689 DUPTABLE                         R19 K186 [{"Visible"}]
      690 LOADB                            R20 0
      691 SETTABLEKS                       R20 R19 K185 ["Visible"]
      693 SETTABLEKS                       R19 R18 K174 ["Attachment"]
      695 MOVE                             R20 R13
      696 CALL                             R20 0 1
      697 JUMPIFNOT                        R20 ; [+13]
      698 DUPTABLE                         R19 K189 [{"Color3", "Transparency"}]
      699 GETIMPORT                        R20 K191 [Color3.new]
      701 LOADN                            R21 1
      702 LOADN                            R22 1
      703 LOADN                            R23 1
      704 CALL                             R20 3 1
      705 SETTABLEKS                       R20 R19 K187 ["Color3"]
      707 LOADN                            R20 0
      708 SETTABLEKS                       R20 R19 K188 ["Transparency"]
      710 JUMP                             ; [+1]
      711 LOADNIL                          R19
      712 SETTABLEKS                       R19 R18 K175 ["Decal"]
      714 DUPTABLE                         R19 K195 [{"MeshType", "Offset", "VertexColor"}]
      715 GETIMPORT                        R20 K197 [Enum.MeshType.FileMesh]
      717 SETTABLEKS                       R20 R19 K192 ["MeshType"]
      719 LOADK                            R20 K198 [{0, 0, 0}]
      720 SETTABLEKS                       R20 R19 K193 ["Offset"]
      722 LOADK                            R20 K199 [{1, 1, 1}]
      723 SETTABLEKS                       R20 R19 K194 ["VertexColor"]
      725 SETTABLEKS                       R19 R18 K176 ["SpecialMesh"]
      727 NEWTABLE                         R19 64 0
      729 LOADB                            R20 0
      730 SETTABLEKS                       R20 R19 K200 ["Anchored"]
      732 LOADN                            R20 0
      733 SETTABLEKS                       R20 R19 K201 ["CollisionGroupId"]
      735 GETTABLEKS                       R20 R1 K202 ["None"]
      737 SETTABLEKS                       R20 R19 K203 ["CustomPhysicalProperties"]
      739 LOADK                            R20 K204 [0.5]
      740 SETTABLEKS                       R20 R19 K205 ["Elasticity"]
      742 LOADK                            R20 K206 [0.3]
      743 SETTABLEKS                       R20 R19 K207 ["Friction"]
      745 LOADN                            R20 0
      746 SETTABLEKS                       R20 R19 K208 ["LocalTransparencyModifier"]
      748 LOADB                            R20 0
      749 SETTABLEKS                       R20 R19 K209 ["Massless"]
      751 LOADN                            R20 0
      752 SETTABLEKS                       R20 R19 K210 ["Reflectance"]
      754 LOADN                            R20 0
      755 SETTABLEKS                       R20 R19 K211 ["RootPriority"]
      757 LOADK                            R20 K198 [{0, 0, 0}]
      758 SETTABLEKS                       R20 R19 K212 ["RotVelocity"]
      760 LOADK                            R20 K198 [{0, 0, 0}]
      761 SETTABLEKS                       R20 R19 K213 ["Velocity"]
      763 LOADK                            R20 K214 [-0.5]
      764 SETTABLEKS                       R20 R19 K215 ["BackParamA"]
      766 LOADK                            R20 K204 [0.5]
      767 SETTABLEKS                       R20 R19 K216 ["BackParamB"]
      769 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      771 SETTABLEKS                       R20 R19 K220 ["BackSurfaceInput"]
      773 LOADK                            R20 K214 [-0.5]
      774 SETTABLEKS                       R20 R19 K221 ["BottomParamA"]
      776 LOADK                            R20 K204 [0.5]
      777 SETTABLEKS                       R20 R19 K222 ["BottomParamB"]
      779 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      781 SETTABLEKS                       R20 R19 K223 ["BottomSurfaceInput"]
      783 LOADK                            R20 K214 [-0.5]
      784 SETTABLEKS                       R20 R19 K224 ["FrontParamA"]
      786 LOADK                            R20 K204 [0.5]
      787 SETTABLEKS                       R20 R19 K225 ["FrontParamB"]
      789 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      791 SETTABLEKS                       R20 R19 K226 ["FrontSurfaceInput"]
      793 LOADK                            R20 K214 [-0.5]
      794 SETTABLEKS                       R20 R19 K227 ["LeftParamA"]
      796 LOADK                            R20 K204 [0.5]
      797 SETTABLEKS                       R20 R19 K228 ["LeftParamB"]
      799 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      801 SETTABLEKS                       R20 R19 K229 ["LeftSurfaceInput"]
      803 LOADK                            R20 K214 [-0.5]
      804 SETTABLEKS                       R20 R19 K230 ["RightParamA"]
      806 LOADK                            R20 K204 [0.5]
      807 SETTABLEKS                       R20 R19 K231 ["RightParamB"]
      809 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      811 SETTABLEKS                       R20 R19 K232 ["RightSurfaceInput"]
      813 LOADK                            R20 K214 [-0.5]
      814 SETTABLEKS                       R20 R19 K233 ["TopParamA"]
      816 LOADK                            R20 K204 [0.5]
      817 SETTABLEKS                       R20 R19 K234 ["TopParamB"]
      819 GETIMPORT                        R20 K219 [Enum.InputType.NoInput]
      821 SETTABLEKS                       R20 R19 K235 ["TopSurfaceInput"]
      823 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      825 SETTABLEKS                       R20 R19 K239 ["BackSurface"]
      827 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      829 SETTABLEKS                       R20 R19 K240 ["BottomSurface"]
      831 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      833 SETTABLEKS                       R20 R19 K241 ["FrontSurface"]
      835 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      837 SETTABLEKS                       R20 R19 K242 ["LeftSurface"]
      839 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      841 SETTABLEKS                       R20 R19 K243 ["RightSurface"]
      843 GETIMPORT                        R20 K238 [Enum.SurfaceType.Smooth]
      845 SETTABLEKS                       R20 R19 K244 ["TopSurface"]
      847 NEWTABLE                         R20 1 0
      849 GETTABLEKS                       R22 R15 K165 ["COMPARISON_METHODS"]
      851 GETTABLEKS                       R21 R22 K153 ["EXACT_EQ"]
      853 LOADN                            R22 0
      854 SETTABLE                         R22 R20 R21
      855 SETTABLEKS                       R20 R19 K188 ["Transparency"]
      857 NEWTABLE                         R20 2 0
      859 GETTABLEKS                       R22 R15 K165 ["COMPARISON_METHODS"]
      861 GETTABLEKS                       R21 R22 K152 ["FUZZY_EQ"]
      863 GETIMPORT                        R23 K246 [BrickColor.new]
      865 LOADK                            R24 K247 ["Medium stone grey"]
      866 CALL                             R23 1 1
      867 GETTABLEKS                       R22 R23 K248 ["Color"]
      869 SETTABLE                         R22 R20 R21
      870 GETTABLEKS                       R22 R15 K171 ["INCLUSION_METHODS"]
      872 GETTABLEKS                       R21 R22 K169 ["EXCLUSION_LIST"]
      874 NEWTABLE                         R22 0 6
      876 GETIMPORT                        R23 K82 [Enum.AssetType.DynamicHead]
      878 GETIMPORT                        R24 K83 [Enum.AssetType.Torso]
      880 GETIMPORT                        R25 K85 [Enum.AssetType.LeftArm]
      882 GETIMPORT                        R26 K87 [Enum.AssetType.RightArm]
      884 GETIMPORT                        R27 K89 [Enum.AssetType.LeftLeg]
      886 GETIMPORT                        R28 K91 [Enum.AssetType.RightLeg]
      888 SETLIST                          R22 R23 6 [1]
      890 SETTABLE                         R22 R20 R21
      891 SETTABLEKS                       R20 R19 K248 ["Color"]
      893 SETTABLEKS                       R19 R18 K177 ["BasePart"]
      895 DUPTABLE                         R19 K250 [{"Shape"}]
      896 GETIMPORT                        R20 K253 [Enum.PartType.Block]
      898 SETTABLEKS                       R20 R19 K249 ["Shape"]
      900 SETTABLEKS                       R19 R18 K178 ["Part"]
      902 DUPTABLE                         R19 K258 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      903 MOVE                             R21 R10
      904 CALL                             R21 0 1
      905 JUMPIFNOT                        R21 ; [+55]
      906 NEWTABLE                         R20 0 2
      908 NEWTABLE                         R21 2 0
      910 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
      912 GETTABLEKS                       R22 R23 K156 ["FOUND_IN"]
      914 NEWTABLE                         R23 0 2
      916 GETIMPORT                        R24 K260 [Enum.AlphaMode.Overlay]
      918 GETIMPORT                        R25 K261 [Enum.AlphaMode.Transparency]
      920 SETLIST                          R23 R24 2 [1]
      922 SETTABLE                         R23 R21 R22
      923 GETTABLEKS                       R23 R15 K171 ["INCLUSION_METHODS"]
      925 GETTABLEKS                       R22 R23 K168 ["INCLUSION_LIST"]
      927 NEWTABLE                         R23 0 2
      929 GETIMPORT                        R24 K93 [Enum.AssetType.EyelashAccessory]
      931 GETIMPORT                        R25 K92 [Enum.AssetType.EyebrowAccessory]
      933 SETLIST                          R23 R24 2 [1]
      935 SETTABLE                         R23 R21 R22
      936 NEWTABLE                         R22 2 0
      938 GETTABLEKS                       R24 R15 K165 ["COMPARISON_METHODS"]
      940 GETTABLEKS                       R23 R24 K153 ["EXACT_EQ"]
      942 GETIMPORT                        R24 K260 [Enum.AlphaMode.Overlay]
      944 SETTABLE                         R24 R22 R23
      945 GETTABLEKS                       R24 R15 K171 ["INCLUSION_METHODS"]
      947 GETTABLEKS                       R23 R24 K169 ["EXCLUSION_LIST"]
      949 NEWTABLE                         R24 0 2
      951 GETIMPORT                        R25 K93 [Enum.AssetType.EyelashAccessory]
      953 GETIMPORT                        R26 K92 [Enum.AssetType.EyebrowAccessory]
      955 SETLIST                          R24 R25 2 [1]
      957 SETTABLE                         R24 R22 R23
      958 SETLIST                          R20 R21 2 [1]
      960 JUMP                             ; [+2]
      961 GETIMPORT                        R20 K260 [Enum.AlphaMode.Overlay]
      963 SETTABLEKS                       R20 R19 K254 ["AlphaMode"]
      965 GETIMPORT                        R20 K264 [Content.none]
      967 SETTABLEKS                       R20 R19 K255 ["EmissiveMaskContent"]
      969 LOADN                            R20 1
      970 SETTABLEKS                       R20 R19 K256 ["EmissiveStrength"]
      972 GETIMPORT                        R20 K191 [Color3.new]
      974 LOADN                            R21 1
      975 LOADN                            R22 1
      976 LOADN                            R23 1
      977 CALL                             R20 3 1
      978 SETTABLEKS                       R20 R19 K257 ["EmissiveTint"]
      980 SETTABLEKS                       R19 R18 K179 ["SurfaceAppearance"]
      982 DUPTABLE                         R19 K270 [{"Enabled", "CageOrigin", "ReferenceOrigin", "ImportOrigin", "BindOffset"}]
      983 MOVE                             R21 R6
      984 CALL                             R21 0 1
      985 JUMPIFNOT                        R21 ; [+2]
      986 LOADB                            R20 1
      987 JUMP                             ; [+1]
      988 LOADNIL                          R20
      989 SETTABLEKS                       R20 R19 K265 ["Enabled"]
      991 DUPTABLE                         R20 K273 [{"PositionMagnitude", "Orientation"}]
      992 NEWTABLE                         R21 1 0
      994 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
      996 GETTABLEKS                       R22 R23 K151 ["SMALLER_EQ"]
      998 LOADN                            R23 10
      999 SETTABLE                         R23 R21 R22
     1000 SETTABLEKS                       R21 R20 K271 ["PositionMagnitude"]
     1002 NEWTABLE                         R21 1 0
     1004 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1006 GETTABLEKS                       R22 R23 K153 ["EXACT_EQ"]
     1008 LOADK                            R23 K198 [{0, 0, 0}]
     1009 SETTABLE                         R23 R21 R22
     1010 SETTABLEKS                       R21 R20 K272 ["Orientation"]
     1012 SETTABLEKS                       R20 R19 K266 ["CageOrigin"]
     1014 DUPTABLE                         R20 K273 [{"PositionMagnitude", "Orientation"}]
     1015 NEWTABLE                         R21 1 0
     1017 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1019 GETTABLEKS                       R22 R23 K151 ["SMALLER_EQ"]
     1021 LOADN                            R23 10
     1022 SETTABLE                         R23 R21 R22
     1023 SETTABLEKS                       R21 R20 K271 ["PositionMagnitude"]
     1025 NEWTABLE                         R21 1 0
     1027 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1029 GETTABLEKS                       R22 R23 K153 ["EXACT_EQ"]
     1031 LOADK                            R23 K198 [{0, 0, 0}]
     1032 SETTABLE                         R23 R21 R22
     1033 SETTABLEKS                       R21 R20 K272 ["Orientation"]
     1035 SETTABLEKS                       R20 R19 K267 ["ReferenceOrigin"]
     1037 DUPTABLE                         R20 K274 [{"PositionMagnitude"}]
     1038 NEWTABLE                         R21 1 0
     1040 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1042 GETTABLEKS                       R22 R23 K151 ["SMALLER_EQ"]
     1044 LOADN                            R23 8
     1045 SETTABLE                         R23 R21 R22
     1046 SETTABLEKS                       R21 R20 K271 ["PositionMagnitude"]
     1048 SETTABLEKS                       R20 R19 K268 ["ImportOrigin"]
     1050 MOVE                             R21 R9
     1051 CALL                             R21 0 1
     1052 JUMPIFNOT                        R21 ; [+22]
     1053 DUPTABLE                         R20 K276 [{"Position", "Orientation"}]
     1054 NEWTABLE                         R21 1 0
     1056 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1058 GETTABLEKS                       R22 R23 K153 ["EXACT_EQ"]
     1060 LOADK                            R23 K198 [{0, 0, 0}]
     1061 SETTABLE                         R23 R21 R22
     1062 SETTABLEKS                       R21 R20 K275 ["Position"]
     1064 NEWTABLE                         R21 1 0
     1066 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1068 GETTABLEKS                       R22 R23 K153 ["EXACT_EQ"]
     1070 LOADK                            R23 K198 [{0, 0, 0}]
     1071 SETTABLE                         R23 R21 R22
     1072 SETTABLEKS                       R21 R20 K272 ["Orientation"]
     1074 JUMP                             ; [+1]
     1075 LOADNIL                          R20
     1076 SETTABLEKS                       R20 R19 K269 ["BindOffset"]
     1078 SETTABLEKS                       R19 R18 K180 ["WrapLayer"]
     1080 DUPTABLE                         R19 K277 [{"CageOrigin", "ImportOrigin"}]
     1081 DUPTABLE                         R20 K273 [{"PositionMagnitude", "Orientation"}]
     1082 NEWTABLE                         R21 1 0
     1084 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1086 GETTABLEKS                       R22 R23 K151 ["SMALLER_EQ"]
     1088 LOADN                            R23 10
     1089 SETTABLE                         R23 R21 R22
     1090 SETTABLEKS                       R21 R20 K271 ["PositionMagnitude"]
     1092 NEWTABLE                         R21 1 0
     1094 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1096 GETTABLEKS                       R22 R23 K153 ["EXACT_EQ"]
     1098 LOADK                            R23 K198 [{0, 0, 0}]
     1099 SETTABLE                         R23 R21 R22
     1100 SETTABLEKS                       R21 R20 K272 ["Orientation"]
     1102 SETTABLEKS                       R20 R19 K266 ["CageOrigin"]
     1104 DUPTABLE                         R20 K274 [{"PositionMagnitude"}]
     1105 NEWTABLE                         R21 1 0
     1107 GETTABLEKS                       R23 R15 K165 ["COMPARISON_METHODS"]
     1109 GETTABLEKS                       R22 R23 K151 ["SMALLER_EQ"]
     1111 LOADN                            R23 8
     1112 SETTABLE                         R23 R21 R22
     1113 SETTABLEKS                       R21 R20 K271 ["PositionMagnitude"]
     1115 SETTABLEKS                       R20 R19 K268 ["ImportOrigin"]
     1117 SETTABLEKS                       R19 R18 K181 ["WrapTarget"]
     1119 SETTABLEKS                       R18 R15 K278 ["PROPERTIES"]
     1121 DUPTABLE                         R18 K281 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1122 NEWTABLE                         R19 0 2
     1124 LOADK                            R20 K26 ["TextureRules"]
     1125 LOADK                            R21 K27 ["MaxTextureSize"]
     1126 SETLIST                          R19 R20 2 [1]
     1128 SETTABLEKS                       R19 R18 K176 ["SpecialMesh"]
     1130 NEWTABLE                         R19 0 2
     1132 LOADK                            R20 K26 ["TextureRules"]
     1133 LOADK                            R21 K28 ["MAX_TEXTURE_SIZE"]
     1134 SETLIST                          R19 R20 2 [1]
     1136 SETTABLEKS                       R19 R18 K279 ["MeshPart"]
     1138 NEWTABLE                         R19 0 4
     1140 LOADK                            R20 K29 ["Enum"]
     1141 LOADK                            R21 K30 ["Material"]
     1142 LOADK                            R22 K31 ["Plastic"]
     1143 LOADK                            R23 K32 [Enum.Material.Plastic]
     1144 SETLIST                          R19 R20 4 [1]
     1146 SETTABLEKS                       R19 R18 K179 ["SurfaceAppearance"]
     1148 MOVE                             R20 R13
     1149 CALL                             R20 0 1
     1150 JUMPIFNOT                        R20 ; [+9]
     1151 NEWTABLE                         R19 0 4
     1153 LOADK                            R20 K29 ["Enum"]
     1154 LOADK                            R21 K30 ["Material"]
     1155 LOADK                            R22 K31 ["Plastic"]
     1156 LOADK                            R23 K32 [Enum.Material.Plastic]
     1157 SETLIST                          R19 R20 4 [1]
     1159 JUMP                             ; [+1]
     1160 LOADNIL                          R19
     1161 SETTABLEKS                       R19 R18 K175 ["Decal"]
     1163 NEWTABLE                         R19 0 2
     1165 LOADK                            R20 K33 ["pairs"]
     1166 LOADK                            R21 K34 [pairs]
     1167 SETLIST                          R19 R20 2 [1]
     1169 SETTABLEKS                       R19 R18 K180 ["WrapLayer"]
     1171 NEWTABLE                         R19 0 1
     1173 LOADK                            R20 K33 ["pairs"]
     1174 SETLIST                          R19 R20 1 [1]
     1176 SETTABLEKS                       R19 R18 K181 ["WrapTarget"]
     1178 NEWTABLE                         R19 0 1
     1180 LOADK                            R20 K35 ["MATERIAL_WHITELIST"]
     1181 SETLIST                          R19 R20 1 [1]
     1183 SETTABLEKS                       R19 R18 K280 ["Animation"]
     1185 SETTABLEKS                       R18 R15 K292 ["CONTENT_ID_FIELDS"]
     1187 MOVE                             R18 R12
     1188 CALL                             R18 0 1
     1189 JUMPIFNOT                        R18 ; [+10]
     1190 GETTABLEKS                       R20 R15 K292 ["CONTENT_ID_FIELDS"]
     1192 GETTABLEKS                       R19 R20 K179 ["SurfaceAppearance"]
     1194 FASTCALL2K                       TABLE_INSERT R19 K293 ; [+4]
     1196 LOADK                            R20 K37 ["LocalScript"]
     1197 GETIMPORT                        R18 K125 [table.insert]
     1199 CALL                             R18 2 0
     1200 MOVE                             R18 R11
     1201 CALL                             R18 0 1
     1202 JUMPIFNOT                        R18 ; [+10]
     1203 GETTABLEKS                       R20 R15 K292 ["CONTENT_ID_FIELDS"]
     1205 GETTABLEKS                       R19 R20 K180 ["WrapLayer"]
     1207 FASTCALL2K                       TABLE_INSERT R19 K294 ; [+4]
     1209 LOADK                            R20 K38 ["ModuleScript"]
     1210 GETIMPORT                        R18 K125 [table.insert]
     1212 CALL                             R18 2 0
     1213 DUPTABLE                         R18 K295 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1214 DUPTABLE                         R19 K296 [{"MeshId", "TextureId"}]
     1215 LOADB                            R20 1
     1216 SETTABLEKS                       R20 R19 K282 ["MeshId"]
     1218 LOADB                            R20 1
     1219 SETTABLEKS                       R20 R19 K283 ["TextureId"]
     1221 SETTABLEKS                       R19 R18 K176 ["SpecialMesh"]
     1223 DUPTABLE                         R19 K297 [{"MeshId"}]
     1224 LOADB                            R20 1
     1225 SETTABLEKS                       R20 R19 K282 ["MeshId"]
     1227 SETTABLEKS                       R19 R18 K279 ["MeshPart"]
     1229 DUPTABLE                         R19 K298 [{"CageMeshId"}]
     1230 LOADB                            R20 1
     1231 SETTABLEKS                       R20 R19 K289 ["CageMeshId"]
     1233 SETTABLEKS                       R19 R18 K181 ["WrapTarget"]
     1235 DUPTABLE                         R19 K299 [{"AnimationId"}]
     1236 LOADB                            R20 1
     1237 SETTABLEKS                       R20 R19 K291 ["AnimationId"]
     1239 SETTABLEKS                       R19 R18 K280 ["Animation"]
     1241 SETTABLEKS                       R18 R15 K300 ["CONTENT_ID_REQUIRED_FIELDS"]
     1243 DUPTABLE                         R18 K301 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1244 NEWTABLE                         R19 0 1
     1246 LOADK                            R20 K26 ["TextureRules"]
     1247 SETLIST                          R19 R20 1 [1]
     1249 SETTABLEKS                       R19 R18 K176 ["SpecialMesh"]
     1251 NEWTABLE                         R19 0 1
     1253 LOADK                            R20 K26 ["TextureRules"]
     1254 SETLIST                          R19 R20 1 [1]
     1256 SETTABLEKS                       R19 R18 K279 ["MeshPart"]
     1258 NEWTABLE                         R19 0 1
     1260 LOADK                            R20 K33 ["pairs"]
     1261 SETLIST                          R19 R20 1 [1]
     1263 SETTABLEKS                       R19 R18 K181 ["WrapTarget"]
     1265 NEWTABLE                         R19 0 2
     1267 LOADK                            R20 K33 ["pairs"]
     1268 LOADK                            R21 K34 [pairs]
     1269 SETLIST                          R19 R20 2 [1]
     1271 SETTABLEKS                       R19 R18 K180 ["WrapLayer"]
     1273 SETTABLEKS                       R18 R15 K302 ["MESH_CONTENT_ID_FIELDS"]
     1275 DUPTABLE                         R18 K303 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1276 NEWTABLE                         R19 0 1
     1278 LOADK                            R20 K27 ["MaxTextureSize"]
     1279 SETLIST                          R19 R20 1 [1]
     1281 SETTABLEKS                       R19 R18 K176 ["SpecialMesh"]
     1283 NEWTABLE                         R19 0 1
     1285 LOADK                            R20 K28 ["MAX_TEXTURE_SIZE"]
     1286 SETLIST                          R19 R20 1 [1]
     1288 SETTABLEKS                       R19 R18 K279 ["MeshPart"]
     1290 NEWTABLE                         R19 0 4
     1292 LOADK                            R20 K29 ["Enum"]
     1293 LOADK                            R21 K30 ["Material"]
     1294 LOADK                            R22 K31 ["Plastic"]
     1295 LOADK                            R23 K32 [Enum.Material.Plastic]
     1296 SETLIST                          R19 R20 4 [1]
     1298 SETTABLEKS                       R19 R18 K179 ["SurfaceAppearance"]
     1300 MOVE                             R20 R13
     1301 CALL                             R20 0 1
     1302 JUMPIFNOT                        R20 ; [+9]
     1303 NEWTABLE                         R19 0 4
     1305 LOADK                            R20 K29 ["Enum"]
     1306 LOADK                            R21 K30 ["Material"]
     1307 LOADK                            R22 K31 ["Plastic"]
     1308 LOADK                            R23 K32 [Enum.Material.Plastic]
     1309 SETLIST                          R19 R20 4 [1]
     1311 JUMP                             ; [+1]
     1312 LOADNIL                          R19
     1313 SETTABLEKS                       R19 R18 K175 ["Decal"]
     1315 SETTABLEKS                       R18 R15 K304 ["TEXTURE_CONTENT_ID_FIELDS"]
     1317 DUPTABLE                         R18 K305 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1318 GETIMPORT                        R21 K82 [Enum.AssetType.DynamicHead]
     1320 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1322 CALL                             R19 2 1
     1323 SETTABLEKS                       R19 R18 K74 ["DynamicHead"]
     1325 GETIMPORT                        R21 K85 [Enum.AssetType.LeftArm]
     1327 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1329 CALL                             R19 2 1
     1330 SETTABLEKS                       R19 R18 K84 ["LeftArm"]
     1332 GETIMPORT                        R21 K87 [Enum.AssetType.RightArm]
     1334 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1336 CALL                             R19 2 1
     1337 SETTABLEKS                       R19 R18 K86 ["RightArm"]
     1339 GETIMPORT                        R21 K83 [Enum.AssetType.Torso]
     1341 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1343 CALL                             R19 2 1
     1344 SETTABLEKS                       R19 R18 K44 ["Torso"]
     1346 GETIMPORT                        R21 K89 [Enum.AssetType.LeftLeg]
     1348 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1350 CALL                             R19 2 1
     1351 SETTABLEKS                       R19 R18 K88 ["LeftLeg"]
     1353 GETIMPORT                        R21 K91 [Enum.AssetType.RightLeg]
     1355 NAMECALL                         R19 R2 K306 ["getBodyPartMaxTrianglesRule"]
     1357 CALL                             R19 2 1
     1358 SETTABLEKS                       R19 R18 K90 ["RightLeg"]
     1360 SETTABLEKS                       R18 R15 K307 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1362 DUPTABLE                         R18 K308 [{"Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
     1363 LOADN                            R19 87
     1364 SETTABLEKS                       R19 R18 K50 ["Head"]
     1366 LOADN                            R19 77
     1367 SETTABLEKS                       R19 R18 K59 ["LeftUpperArm"]
     1369 LOADN                            R19 77
     1370 SETTABLEKS                       R19 R18 K60 ["LeftLowerArm"]
     1372 LOADN                            R19 86
     1373 SETTABLEKS                       R19 R18 K61 ["LeftHand"]
     1375 LOADN                            R19 77
     1376 SETTABLEKS                       R19 R18 K62 ["RightUpperArm"]
     1378 LOADN                            R19 77
     1379 SETTABLEKS                       R19 R18 K63 ["RightLowerArm"]
     1381 LOADN                            R19 86
     1382 SETTABLEKS                       R19 R18 K64 ["RightHand"]
     1384 LOADN                            R19 1
     1385 SETTABLEKS                       R19 R18 K51 ["UpperTorso"]
     1387 LOADN                            R19 105
     1388 SETTABLEKS                       R19 R18 K52 ["LowerTorso"]
     1390 LOADN                            R19 88
     1391 SETTABLEKS                       R19 R18 K53 ["LeftUpperLeg"]
     1393 LOADN                            R19 88
     1394 SETTABLEKS                       R19 R18 K54 ["LeftLowerLeg"]
     1396 LOADN                            R19 86
     1397 SETTABLEKS                       R19 R18 K55 ["LeftFoot"]
     1399 LOADN                            R19 88
     1400 SETTABLEKS                       R19 R18 K56 ["RightUpperLeg"]
     1402 LOADN                            R19 88
     1403 SETTABLEKS                       R19 R18 K57 ["RightLowerLeg"]
     1405 LOADN                            R19 86
     1406 SETTABLEKS                       R19 R18 K58 ["RightFoot"]
     1408 SETTABLEKS                       R18 R15 K309 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1410 MOVE                             R18 R4
     1411 CALL                             R18 0 1
     1412 JUMPIFNOT                        R18 ; [+210]
     1413 GETTABLEKS                       R19 R1 K310 ["Dictionary"]
     1415 GETTABLEKS                       R18 R19 K311 ["join"]
     1417 GETTABLEKS                       R19 R15 K292 ["CONTENT_ID_FIELDS"]
     1419 MOVE                             R21 R5
     1420 CALL                             R21 0 1
     1421 JUMPIFNOT                        R21 ; [+88]
     1422 DUPTABLE                         R20 K321 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1423 NEWTABLE                         R21 0 1
     1425 LOADK                            R22 K66 ["NAMED_R15_BODY_PARTS"]
     1426 SETLIST                          R21 R22 1 [1]
     1428 SETTABLEKS                       R21 R20 K312 ["Sound"]
     1430 NEWTABLE                         R21 0 1
     1432 LOADK                            R22 K67 ["__index"]
     1433 SETLIST                          R21 R22 1 [1]
     1435 SETTABLEKS                       R21 R20 K175 ["Decal"]
     1437 NEWTABLE                         R21 0 1
     1439 LOADK                            R22 K68 [{"__index"}]
     1440 SETLIST                          R21 R22 1 [1]
     1442 SETTABLEKS                       R21 R20 K313 ["VideoFrame"]
     1444 NEWTABLE                         R21 0 1
     1446 LOADK                            R22 K69 [PROTO_1]
     1447 SETLIST                          R21 R22 1 [1]
     1449 SETTABLEKS                       R21 R20 K314 ["PackageLink"]
     1451 NEWTABLE                         R21 0 3
     1453 LOADK                            R22 K70 ["setmetatable"]
     1454 LOADK                            R23 K26 ["TextureRules"]
     1455 LOADK                            R24 K71 [setmetatable]
     1456 SETLIST                          R21 R22 3 [1]
     1458 SETTABLEKS                       R21 R20 K315 ["CharacterMesh"]
     1460 NEWTABLE                         R21 0 1
     1462 LOADK                            R22 K27 ["MaxTextureSize"]
     1463 SETLIST                          R21 R22 1 [1]
     1465 SETTABLEKS                       R21 R20 K316 ["Tool"]
     1467 NEWTABLE                         R21 0 1
     1469 LOADK                            R22 K67 ["__index"]
     1470 SETLIST                          R21 R22 1 [1]
     1472 SETTABLEKS                       R21 R20 K317 ["Trail"]
     1474 NEWTABLE                         R21 0 1
     1476 LOADK                            R22 K67 ["__index"]
     1477 SETLIST                          R21 R22 1 [1]
     1479 SETTABLEKS                       R21 R20 K318 ["Beam"]
     1481 NEWTABLE                         R21 0 1
     1483 LOADK                            R22 K72 ["Root"]
     1484 SETLIST                          R21 R22 1 [1]
     1486 SETTABLEKS                       R21 R20 K319 ["ShirtGraphic"]
     1488 NEWTABLE                         R21 0 1
     1490 LOADK                            R22 K73 ["HumanoidRootNode"]
     1491 SETLIST                          R21 R22 1 [1]
     1493 SETTABLEKS                       R21 R20 K117 ["Shirt"]
     1495 NEWTABLE                         R21 0 1
     1497 LOADK                            R22 K74 ["DynamicHead"]
     1498 SETLIST                          R21 R22 1 [1]
     1500 SETTABLEKS                       R21 R20 K118 ["Pants"]
     1502 NEWTABLE                         R21 0 1
     1504 LOADK                            R22 K75 ["R15_STANDARD_JOINT_NAMES"]
     1505 SETLIST                          R21 R22 1 [1]
     1507 SETTABLEKS                       R21 R20 K320 ["AdGui"]
     1509 JUMP                             ; [+101]
     1510 DUPTABLE                         R20 K333 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1511 NEWTABLE                         R21 0 1
     1513 LOADK                            R22 K66 ["NAMED_R15_BODY_PARTS"]
     1514 SETLIST                          R21 R22 1 [1]
     1516 SETTABLEKS                       R21 R20 K312 ["Sound"]
     1518 NEWTABLE                         R21 0 1
     1520 LOADK                            R22 K67 ["__index"]
     1521 SETLIST                          R21 R22 1 [1]
     1523 SETTABLEKS                       R21 R20 K175 ["Decal"]
     1525 NEWTABLE                         R21 0 1
     1527 LOADK                            R22 K68 [{"__index"}]
     1528 SETLIST                          R21 R22 1 [1]
     1530 SETTABLEKS                       R21 R20 K313 ["VideoFrame"]
     1532 NEWTABLE                         R21 0 1
     1534 LOADK                            R22 K69 [PROTO_1]
     1535 SETLIST                          R21 R22 1 [1]
     1537 SETTABLEKS                       R21 R20 K314 ["PackageLink"]
     1539 NEWTABLE                         R21 0 3
     1541 LOADK                            R22 K78 ["HairAccessory"]
     1542 LOADK                            R23 K79 ["UGC_BODY_PARTS"]
     1543 LOADK                            R24 K80 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
     1544 SETLIST                          R21 R22 3 [1]
     1546 SETTABLEKS                       R21 R20 K315 ["CharacterMesh"]
     1548 NEWTABLE                         R21 0 1
     1550 LOADK                            R22 K27 ["MaxTextureSize"]
     1551 SETLIST                          R21 R22 1 [1]
     1553 SETTABLEKS                       R21 R20 K316 ["Tool"]
     1555 NEWTABLE                         R21 0 8
     1557 LOADK                            R22 K81 ["AssetType"]
     1558 LOADK                            R23 K82 [Enum.AssetType.DynamicHead]
     1559 LOADK                            R24 K83 [Enum.AssetType.Torso]
     1560 LOADK                            R25 K84 ["LeftArm"]
     1561 LOADK                            R26 K85 [Enum.AssetType.LeftArm]
     1562 LOADK                            R27 K86 ["RightArm"]
     1563 LOADK                            R28 K87 [Enum.AssetType.RightArm]
     1564 LOADK                            R29 K88 ["LeftLeg"]
     1565 SETLIST                          R21 R22 8 [1]
     1567 SETTABLEKS                       R21 R20 K332 ["Sky"]
     1569 NEWTABLE                         R21 0 1
     1571 LOADK                            R22 K89 [Enum.AssetType.LeftLeg]
     1572 SETLIST                          R21 R22 1 [1]
     1574 SETTABLEKS                       R21 R20 K317 ["Trail"]
     1576 NEWTABLE                         R21 0 1
     1578 LOADK                            R22 K89 [Enum.AssetType.LeftLeg]
     1579 SETLIST                          R21 R22 1 [1]
     1581 SETTABLEKS                       R21 R20 K318 ["Beam"]
     1583 NEWTABLE                         R21 0 1
     1585 LOADK                            R22 K72 ["Root"]
     1586 SETLIST                          R21 R22 1 [1]
     1588 SETTABLEKS                       R21 R20 K319 ["ShirtGraphic"]
     1590 NEWTABLE                         R21 0 1
     1592 LOADK                            R22 K73 ["HumanoidRootNode"]
     1593 SETLIST                          R21 R22 1 [1]
     1595 SETTABLEKS                       R21 R20 K117 ["Shirt"]
     1597 NEWTABLE                         R21 0 1
     1599 LOADK                            R22 K74 ["DynamicHead"]
     1600 SETLIST                          R21 R22 1 [1]
     1602 SETTABLEKS                       R21 R20 K118 ["Pants"]
     1604 NEWTABLE                         R21 0 1
     1606 LOADK                            R22 K75 ["R15_STANDARD_JOINT_NAMES"]
     1607 SETLIST                          R21 R22 1 [1]
     1609 SETTABLEKS                       R21 R20 K320 ["AdGui"]
     1611 CALL                             R18 2 1
     1612 SETTABLEKS                       R18 R15 K346 ["PACKAGE_CONTENT_ID_FIELDS"]
     1614 LOADK                            R18 K91 [Enum.AssetType.RightLeg]
     1615 SETTABLEKS                       R18 R15 K348 ["ExperienceAuthHeaderKey"]
     1617 LOADK                            R18 K93 [Enum.AssetType.EyelashAccessory]
     1618 SETTABLEKS                       R18 R15 K350 ["ContentType"]
     1620 LOADK                            R18 K95 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
     1621 SETTABLEKS                       R18 R15 K352 ["ApplicationJson"]
     1623 LOADK                            R18 K97 ["RightShoeAccessory"]
     1624 SETTABLEKS                       R18 R15 K354 ["GUIDAttributeName"]
     1626 LOADN                            R18 100
     1627 SETTABLEKS                       R18 R15 K355 ["GUIDAttributeMaxLength"]
     1629 LOADK                            R18 K100 [Enum.AssetType.RightShoeAccessory]
     1630 SETTABLEKS                       R18 R15 K357 ["AlternateMeshIdAttributeName"]
     1632 MOVE                             R18 R7
     1633 CALL                             R18 0 1
     1634 JUMPIFNOT                        R18 ; [+34]
     1635 DUPTABLE                         R18 K361 [{"RENDER_MESH", "OUTER_CAGE", "INNER_CAGE"}]
     1636 LOADK                            R19 K106 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
     1637 SETTABLEKS                       R19 R18 K358 ["RENDER_MESH"]
     1639 LOADK                            R19 K107 ["R6"]
     1640 SETTABLEKS                       R19 R18 K359 ["OUTER_CAGE"]
     1642 LOADK                            R19 K108 ["R15ArtistIntent"]
     1643 SETTABLEKS                       R19 R18 K360 ["INNER_CAGE"]
     1645 SETTABLEKS                       R18 R15 K365 ["MESH_CONTENT_TYPE"]
     1647 NEWTABLE                         R18 4 0
     1649 GETTABLEKS                       R20 R15 K365 ["MESH_CONTENT_TYPE"]
     1651 GETTABLEKS                       R19 R20 K358 ["RENDER_MESH"]
     1653 LOADK                            R20 K26 ["TextureRules"]
     1654 SETTABLE                         R20 R18 R19
     1655 GETTABLEKS                       R20 R15 K365 ["MESH_CONTENT_TYPE"]
     1657 GETTABLEKS                       R19 R20 K359 ["OUTER_CAGE"]
     1659 LOADK                            R20 K33 ["pairs"]
     1660 SETTABLE                         R20 R18 R19
     1661 GETTABLEKS                       R20 R15 K365 ["MESH_CONTENT_TYPE"]
     1663 GETTABLEKS                       R19 R20 K360 ["INNER_CAGE"]
     1665 LOADK                            R20 K34 [pairs]
     1666 SETTABLE                         R20 R18 R19
     1667 SETTABLEKS                       R18 R15 K366 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1669 NEWTABLE                         R18 0 5
     1671 GETTABLEKS                       R20 R3 K367 ["UploadCategory"]
     1673 GETTABLEKS                       R19 R20 K368 ["TORSO_AND_LIMBS"]
     1675 GETTABLEKS                       R21 R3 K367 ["UploadCategory"]
     1677 GETTABLEKS                       R20 R21 K369 ["DYNAMIC_HEAD"]
     1679 GETTABLEKS                       R22 R3 K367 ["UploadCategory"]
     1681 GETTABLEKS                       R21 R22 K370 ["LAYERED_CLOTHING"]
     1683 GETTABLEKS                       R23 R3 K367 ["UploadCategory"]
     1685 GETTABLEKS                       R22 R23 K371 ["RIGID_ACCESSORY"]
     1687 GETTABLEKS                       R24 R3 K367 ["UploadCategory"]
     1689 GETTABLEKS                       R23 R24 K372 ["EMOTE_ANIMATION"]
     1691 SETLIST                          R18 R19 5 [1]
     1693 SETTABLEKS                       R18 R15 K373 ["AllAssetUploadCategories"]
     1695 NEWTABLE                         R18 0 2
     1697 GETTABLEKS                       R20 R3 K367 ["UploadCategory"]
     1699 GETTABLEKS                       R19 R20 K374 ["FULL_BODY"]
     1701 GETTABLEKS                       R21 R3 K367 ["UploadCategory"]
     1703 GETTABLEKS                       R20 R21 K375 ["BOTH_SHOES"]
     1705 SETLIST                          R18 R19 2 [1]
     1707 SETTABLEKS                       R18 R15 K376 ["AllBundleUploadCategories"]
     1709 NEWTABLE                         R18 0 0
     1711 SETTABLEKS                       R18 R15 K377 ["AllUploadCategories"]
     1713 GETTABLEKS                       R18 R3 K367 ["UploadCategory"]
     1715 LOADNIL                          R19
     1716 LOADNIL                          R20
     1717 FORGPREP                         R18
     1718 GETTABLEKS                       R24 R15 K377 ["AllUploadCategories"]
     1720 FASTCALL2                        TABLE_INSERT R24 R22 ; [+4]
     1722 MOVE                             R25 R22
     1723 GETIMPORT                        R23 K125 [table.insert]
     1725 CALL                             R23 2 0
     1726 FORGLOOP                         R18 2 ; [-9]
     1728 NEWTABLE                         R18 8 0
     1730 GETIMPORT                        R19 K83 [Enum.AssetType.Torso]
     1732 LOADB                            R20 1
     1733 SETTABLE                         R20 R18 R19
     1734 GETIMPORT                        R19 K85 [Enum.AssetType.LeftArm]
     1736 LOADB                            R20 1
     1737 SETTABLE                         R20 R18 R19
     1738 GETIMPORT                        R19 K87 [Enum.AssetType.RightArm]
     1740 LOADB                            R20 1
     1741 SETTABLE                         R20 R18 R19
     1742 GETIMPORT                        R19 K89 [Enum.AssetType.LeftLeg]
     1744 LOADB                            R20 1
     1745 SETTABLE                         R20 R18 R19
     1746 GETIMPORT                        R19 K91 [Enum.AssetType.RightLeg]
     1748 LOADB                            R20 1
     1749 SETTABLE                         R20 R18 R19
     1750 SETTABLEKS                       R18 R15 K378 ["AssetUploadsWithFolderStructure"]
     1752 NEWTABLE                         R18 2 0
     1754 GETIMPORT                        R19 K92 [Enum.AssetType.EyebrowAccessory]
     1756 LOADB                            R20 1
     1757 SETTABLE                         R20 R18 R19
     1758 GETIMPORT                        R19 K93 [Enum.AssetType.EyelashAccessory]
     1760 LOADB                            R20 1
     1761 SETTABLE                         R20 R18 R19
     1762 SETTABLEKS                       R18 R15 K379 ["SkinningTransferRequiredTypes"]
     1764 RETURN                           R15 1
