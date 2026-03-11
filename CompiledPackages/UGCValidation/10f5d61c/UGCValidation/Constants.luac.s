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
       30 GETTABLEKS                       R5 R6 K11 ["getFFlagFixPackageIDFieldName"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["flags"]
       37 GETTABLEKS                       R6 R7 K12 ["getFFlagUGCValidateWrapLayersEnabled"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K10 ["flags"]
       44 GETTABLEKS                       R7 R8 K13 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K10 ["flags"]
       51 GETTABLEKS                       R8 R9 K14 ["getFFlagUGCValidationFixConstantsTypoLeg"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R0 K10 ["flags"]
       58 GETTABLEKS                       R9 R10 K15 ["getFFlagUGCValidateBindOffset"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R0 K10 ["flags"]
       65 GETTABLEKS                       R10 R11 K16 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R12 R0 K10 ["flags"]
       72 GETTABLEKS                       R11 R12 K17 ["getFFlagUGCValidateCheckHSROwner"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R13 R0 K10 ["flags"]
       79 GETTABLEKS                       R12 R13 K18 ["getFFlagUGCValidateCheckTexturePackOwner"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K4 [require]
       84 GETTABLEKS                       R14 R0 K10 ["flags"]
       86 GETTABLEKS                       R13 R14 K19 ["getFFlagUGCValidationMakeupSupport"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K21 [game]
       91 LOADK                            R15 K22 ["UGCValidateMakeupDecalUVProperties"]
       92 LOADB                            R16 0
       93 NAMECALL                         R13 R13 K23 ["DefineFastFlag"]
       95 CALL                             R13 3 1
       96 DUPCLOSURE                       R14 K24 [PROTO_0]
       97 NEWTABLE                         R15 64 0
       99 NAMECALL                         R18 R2 K25 ["getRules"]
      101 CALL                             R18 1 1
      102 GETTABLEKS                       R17 R18 K26 ["MeshRules"]
      104 GETTABLEKS                       R16 R17 K27 ["AccessoryMaxTriangles"]
      106 SETTABLEKS                       R16 R15 K28 ["MAX_HAT_TRIANGLES"]
      108 NAMECALL                         R18 R2 K25 ["getRules"]
      110 CALL                             R18 1 1
      111 GETTABLEKS                       R17 R18 K29 ["TextureRules"]
      113 GETTABLEKS                       R16 R17 K30 ["MaxTextureSize"]
      115 SETTABLEKS                       R16 R15 K31 ["MAX_TEXTURE_SIZE"]
      117 NEWTABLE                         R17 0 1
      119 GETIMPORT                        R18 K35 [Enum.Material.Plastic]
      121 SETLIST                          R17 R18 1 [1]
      123 NEWTABLE                         R18 0 0
      125 GETIMPORT                        R19 K37 [pairs]
      127 MOVE                             R20 R17
      128 CALL                             R19 1 3
      129 FORGPREP_NEXT                    R19
      130 LOADB                            R24 1
      131 SETTABLE                         R24 R18 R23
      132 FORGLOOP                         R19 2 ; [-3]
      134 MOVE                             R16 R18
      135 SETTABLEKS                       R16 R15 K38 ["MATERIAL_WHITELIST"]
      137 NEWTABLE                         R16 0 7
      139 LOADK                            R17 K39 ["Script"]
      140 LOADK                            R18 K40 ["LocalScript"]
      141 LOADK                            R19 K41 ["ModuleScript"]
      142 LOADK                            R20 K42 ["ParticleEmitter"]
      143 LOADK                            R21 K43 ["Fire"]
      144 LOADK                            R22 K44 ["Smoke"]
      145 LOADK                            R23 K45 ["Sparkles"]
      146 SETLIST                          R16 R17 7 [1]
      148 SETTABLEKS                       R16 R15 K46 ["BANNED_CLASS_NAMES"]
      150 NEWTABLE                         R16 0 5
      152 LOADK                            R17 K47 ["Torso"]
      153 LOADK                            R18 K48 ["Left Leg"]
      154 LOADK                            R19 K49 ["Right Leg"]
      155 LOADK                            R20 K50 ["Left Arm"]
      156 LOADK                            R21 K51 ["Right Arm"]
      157 SETLIST                          R16 R17 5 [1]
      159 SETTABLEKS                       R16 R15 K52 ["R6_BODY_PARTS"]
      161 NEWTABLE                         R16 0 15
      163 LOADK                            R17 K53 ["Head"]
      164 LOADK                            R18 K54 ["UpperTorso"]
      165 LOADK                            R19 K55 ["LowerTorso"]
      166 LOADK                            R20 K56 ["LeftUpperLeg"]
      167 LOADK                            R21 K57 ["LeftLowerLeg"]
      168 LOADK                            R22 K58 ["LeftFoot"]
      169 LOADK                            R23 K59 ["RightUpperLeg"]
      170 LOADK                            R24 K60 ["RightLowerLeg"]
      171 LOADK                            R25 K61 ["RightFoot"]
      172 LOADK                            R26 K62 ["LeftUpperArm"]
      173 LOADK                            R27 K63 ["LeftLowerArm"]
      174 LOADK                            R28 K64 ["LeftHand"]
      175 LOADK                            R29 K65 ["RightUpperArm"]
      176 LOADK                            R30 K66 ["RightLowerArm"]
      177 LOADK                            R31 K67 ["RightHand"]
      178 SETLIST                          R16 R17 15 [1]
      180 SETTABLEKS                       R16 R15 K68 ["R15_BODY_PARTS"]
      182 NEWTABLE                         R16 0 0
      184 SETTABLEKS                       R16 R15 K69 ["NAMED_R15_BODY_PARTS"]
      186 GETTABLEKS                       R16 R15 K68 ["R15_BODY_PARTS"]
      188 LOADNIL                          R17
      189 LOADNIL                          R18
      190 FORGPREP                         R16
      191 GETTABLEKS                       R21 R15 K69 ["NAMED_R15_BODY_PARTS"]
      193 SETTABLE                         R20 R21 R20
      194 FORGLOOP                         R16 2 ; [-4]
      196 GETTABLEKS                       R16 R15 K69 ["NAMED_R15_BODY_PARTS"]
      198 LOADK                            R17 K53 ["Head"]
      199 SETTABLEKS                       R17 R16 K53 ["Head"]
      201 GETTABLEKS                       R17 R15 K69 ["NAMED_R15_BODY_PARTS"]
      203 DUPTABLE                         R18 K71 [{"__index"}]
      204 DUPCLOSURE                       R19 K72 [PROTO_1]
      205 SETTABLEKS                       R19 R18 K70 ["__index"]
      207 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
      209 GETIMPORT                        R16 K74 [setmetatable]
      211 CALL                             R16 2 0
      212 NEWTABLE                         R16 32 0
      214 LOADB                            R17 1
      215 SETTABLEKS                       R17 R16 K75 ["Root"]
      217 LOADB                            R17 1
      218 SETTABLEKS                       R17 R16 K76 ["HumanoidRootNode"]
      220 LOADB                            R17 1
      221 SETTABLEKS                       R17 R16 K77 ["DynamicHead"]
      223 LOADB                            R17 1
      224 SETTABLEKS                       R17 R16 K53 ["Head"]
      226 LOADB                            R17 1
      227 SETTABLEKS                       R17 R16 K54 ["UpperTorso"]
      229 LOADB                            R17 1
      230 SETTABLEKS                       R17 R16 K55 ["LowerTorso"]
      232 LOADB                            R17 1
      233 SETTABLEKS                       R17 R16 K56 ["LeftUpperLeg"]
      235 LOADB                            R17 1
      236 SETTABLEKS                       R17 R16 K57 ["LeftLowerLeg"]
      238 LOADB                            R17 1
      239 SETTABLEKS                       R17 R16 K58 ["LeftFoot"]
      241 LOADB                            R17 1
      242 SETTABLEKS                       R17 R16 K59 ["RightUpperLeg"]
      244 LOADB                            R17 1
      245 SETTABLEKS                       R17 R16 K60 ["RightLowerLeg"]
      247 LOADB                            R17 1
      248 SETTABLEKS                       R17 R16 K61 ["RightFoot"]
      250 LOADB                            R17 1
      251 SETTABLEKS                       R17 R16 K62 ["LeftUpperArm"]
      253 LOADB                            R17 1
      254 SETTABLEKS                       R17 R16 K63 ["LeftLowerArm"]
      256 LOADB                            R17 1
      257 SETTABLEKS                       R17 R16 K64 ["LeftHand"]
      259 LOADB                            R17 1
      260 SETTABLEKS                       R17 R16 K65 ["RightUpperArm"]
      262 LOADB                            R17 1
      263 SETTABLEKS                       R17 R16 K66 ["RightLowerArm"]
      265 LOADB                            R17 1
      266 SETTABLEKS                       R17 R16 K67 ["RightHand"]
      268 SETTABLEKS                       R16 R15 K78 ["R15_STANDARD_JOINT_NAMES"]
      270 GETTABLEKS                       R16 R15 K68 ["R15_BODY_PARTS"]
      272 LOADNIL                          R17
      273 LOADNIL                          R18
      274 FORGPREP                         R16
      275 GETTABLEKS                       R21 R15 K78 ["R15_STANDARD_JOINT_NAMES"]
      277 LOADB                            R22 1
      278 SETTABLE                         R22 R21 R20
      279 FORGLOOP                         R16 2 ; [-5]
      281 NEWTABLE                         R16 0 18
      283 LOADK                            R17 K53 ["Head"]
      284 LOADK                            R18 K54 ["UpperTorso"]
      285 LOADK                            R19 K55 ["LowerTorso"]
      286 LOADK                            R20 K56 ["LeftUpperLeg"]
      287 LOADK                            R21 K57 ["LeftLowerLeg"]
      288 LOADK                            R22 K64 ["LeftHand"]
      289 LOADK                            R23 K65 ["RightUpperArm"]
      290 LOADK                            R24 K66 ["RightLowerArm"]
      291 LOADK                            R25 K67 ["RightHand"]
      292 LOADK                            R26 K62 ["LeftUpperArm"]
      293 LOADK                            R27 K63 ["LeftLowerArm"]
      294 LOADK                            R28 K58 ["LeftFoot"]
      295 LOADK                            R29 K59 ["RightUpperLeg"]
      296 LOADK                            R30 K60 ["RightLowerLeg"]
      297 LOADK                            R31 K61 ["RightFoot"]
      298 LOADK                            R32 K79 ["EyebrowAccessory"]
      299 SETLIST                          R16 R17 16 [1]
      301 LOADK                            R17 K80 ["EyelashAccessory"]
      302 LOADK                            R18 K81 ["HairAccessory"]
      303 SETLIST                          R16 R17 2 [17]
      305 SETTABLEKS                       R16 R15 K82 ["UGC_BODY_PARTS"]
      307 DUPTABLE                         R16 K83 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      308 GETIMPORT                        R17 K85 [Enum.AssetType.DynamicHead]
      310 SETTABLEKS                       R17 R16 K53 ["Head"]
      312 GETIMPORT                        R17 K86 [Enum.AssetType.Torso]
      314 SETTABLEKS                       R17 R16 K54 ["UpperTorso"]
      316 GETIMPORT                        R17 K86 [Enum.AssetType.Torso]
      318 SETTABLEKS                       R17 R16 K55 ["LowerTorso"]
      320 GETIMPORT                        R17 K88 [Enum.AssetType.LeftArm]
      322 SETTABLEKS                       R17 R16 K62 ["LeftUpperArm"]
      324 GETIMPORT                        R17 K88 [Enum.AssetType.LeftArm]
      326 SETTABLEKS                       R17 R16 K63 ["LeftLowerArm"]
      328 GETIMPORT                        R17 K88 [Enum.AssetType.LeftArm]
      330 SETTABLEKS                       R17 R16 K64 ["LeftHand"]
      332 GETIMPORT                        R17 K90 [Enum.AssetType.RightArm]
      334 SETTABLEKS                       R17 R16 K65 ["RightUpperArm"]
      336 GETIMPORT                        R17 K90 [Enum.AssetType.RightArm]
      338 SETTABLEKS                       R17 R16 K66 ["RightLowerArm"]
      340 GETIMPORT                        R17 K90 [Enum.AssetType.RightArm]
      342 SETTABLEKS                       R17 R16 K67 ["RightHand"]
      344 GETIMPORT                        R17 K92 [Enum.AssetType.LeftLeg]
      346 SETTABLEKS                       R17 R16 K56 ["LeftUpperLeg"]
      348 GETIMPORT                        R17 K92 [Enum.AssetType.LeftLeg]
      350 SETTABLEKS                       R17 R16 K57 ["LeftLowerLeg"]
      352 GETIMPORT                        R17 K92 [Enum.AssetType.LeftLeg]
      354 SETTABLEKS                       R17 R16 K58 ["LeftFoot"]
      356 GETIMPORT                        R17 K94 [Enum.AssetType.RightLeg]
      358 SETTABLEKS                       R17 R16 K59 ["RightUpperLeg"]
      360 GETIMPORT                        R17 K94 [Enum.AssetType.RightLeg]
      362 SETTABLEKS                       R17 R16 K60 ["RightLowerLeg"]
      364 GETIMPORT                        R17 K94 [Enum.AssetType.RightLeg]
      366 SETTABLEKS                       R17 R16 K61 ["RightFoot"]
      368 GETIMPORT                        R17 K95 [Enum.AssetType.EyebrowAccessory]
      370 SETTABLEKS                       R17 R16 K79 ["EyebrowAccessory"]
      372 GETIMPORT                        R17 K96 [Enum.AssetType.EyelashAccessory]
      374 SETTABLEKS                       R17 R16 K80 ["EyelashAccessory"]
      376 GETIMPORT                        R17 K97 [Enum.AssetType.HairAccessory]
      378 SETTABLEKS                       R17 R16 K81 ["HairAccessory"]
      380 SETTABLEKS                       R16 R15 K98 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      382 DUPTABLE                         R16 K101 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      383 GETIMPORT                        R17 K102 [Enum.AssetType.LeftShoeAccessory]
      385 SETTABLEKS                       R17 R16 K99 ["LeftShoeAccessory"]
      387 GETIMPORT                        R17 K103 [Enum.AssetType.RightShoeAccessory]
      389 SETTABLEKS                       R17 R16 K100 ["RightShoeAccessory"]
      391 SETTABLEKS                       R16 R15 K104 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      393 NEWTABLE                         R16 2 0
      395 GETIMPORT                        R17 K107 [Enum.BundleType.BodyParts]
      397 GETTABLEKS                       R18 R15 K98 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      399 SETTABLE                         R18 R16 R17
      400 GETIMPORT                        R17 K107 [Enum.BundleType.BodyParts]
      402 GETTABLEKS                       R18 R15 K104 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      404 SETTABLE                         R18 R16 R17
      405 SETTABLEKS                       R16 R15 K108 ["BUNDLE_TO_ASSET_MAPPING"]
      407 NEWTABLE                         R16 0 4
      409 GETIMPORT                        R17 K85 [Enum.AssetType.DynamicHead]
      411 GETIMPORT                        R18 K95 [Enum.AssetType.EyebrowAccessory]
      413 GETIMPORT                        R19 K96 [Enum.AssetType.EyelashAccessory]
      415 GETIMPORT                        R20 K97 [Enum.AssetType.HairAccessory]
      417 SETLIST                          R16 R17 4 [1]
      419 SETTABLEKS                       R16 R15 K109 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      421 DUPTABLE                         R16 K113 [{"R6", "R15ArtistIntent", "R15Fixed"}]
      422 LOADK                            R17 K110 ["R6"]
      423 SETTABLEKS                       R17 R16 K110 ["R6"]
      425 LOADK                            R17 K111 ["R15ArtistIntent"]
      426 SETTABLEKS                       R17 R16 K111 ["R15ArtistIntent"]
      428 LOADK                            R17 K112 ["R15Fixed"]
      429 SETTABLEKS                       R17 R16 K112 ["R15Fixed"]
      431 SETTABLEKS                       R16 R15 K114 ["FOLDER_NAMES"]
      433 NEWTABLE                         R16 0 3
      435 LOADK                            R17 K53 ["Head"]
      436 LOADK                            R18 K115 ["HumanoidRootPart"]
      437 LOADK                            R19 K116 ["Humanoid"]
      438 SETLIST                          R16 R17 3 [1]
      440 SETTABLEKS                       R16 R15 K117 ["EXTRA_BANNED_NAMES"]
      442 NEWTABLE                         R16 0 6
      444 LOADK                            R17 K118 ["Body Colors"]
      445 LOADK                            R18 K119 ["Shirt Graphic"]
      446 LOADK                            R19 K120 ["Shirt"]
      447 LOADK                            R20 K121 ["Pants"]
      448 LOADK                            R21 K122 ["Health"]
      449 LOADK                            R22 K123 ["Animate"]
      450 SETLIST                          R16 R17 6 [1]
      452 GETIMPORT                        R17 K125 [ipairs]
      454 MOVE                             R18 R16
      455 CALL                             R17 1 3
      456 FORGPREP_INEXT                   R17
      457 GETTABLEKS                       R23 R15 K117 ["EXTRA_BANNED_NAMES"]
      459 FASTCALL2                        TABLE_INSERT R23 R21 ; [+4]
      461 MOVE                             R24 R21
      462 GETIMPORT                        R22 K128 [table.insert]
      464 CALL                             R22 2 0
      465 FORGLOOP                         R17 2 [inext] ; [-9]
      467 NEWTABLE                         R17 0 0
      469 SETTABLEKS                       R17 R15 K129 ["BANNED_NAMES"]
      471 NEWTABLE                         R17 0 3
      473 GETTABLEKS                       R18 R15 K52 ["R6_BODY_PARTS"]
      475 GETTABLEKS                       R19 R15 K68 ["R15_BODY_PARTS"]
      477 GETTABLEKS                       R20 R15 K117 ["EXTRA_BANNED_NAMES"]
      479 SETLIST                          R17 R18 3 [1]
      481 MOVE                             R18 R17
      482 LOADNIL                          R19
      483 LOADNIL                          R20
      484 FORGPREP                         R18
      485 MOVE                             R23 R22
      486 LOADNIL                          R24
      487 LOADNIL                          R25
      488 FORGPREP                         R23
      489 GETTABLEKS                       R28 R15 K129 ["BANNED_NAMES"]
      491 LOADB                            R29 1
      492 SETTABLE                         R29 R28 R27
      493 FORGLOOP                         R23 2 ; [-5]
      495 FORGLOOP                         R18 2 ; [-11]
      497 DUPTABLE                         R18 K133 [{"UNKNOWN", "REVIEW_PENDING", "MODERATED"}]
      498 LOADK                            R19 K134 ["Unknown"]
      499 SETTABLEKS                       R19 R18 K130 ["UNKNOWN"]
      501 LOADK                            R19 K135 ["ReviewPending"]
      502 SETTABLEKS                       R19 R18 K131 ["REVIEW_PENDING"]
      504 LOADK                            R19 K136 ["Moderated"]
      505 SETTABLEKS                       R19 R18 K132 ["MODERATED"]
      507 SETTABLEKS                       R18 R15 K137 ["ASSET_STATUS"]
      509 MOVE                             R18 R12
      510 CALL                             R18 0 1
      511 JUMPIFNOT                        R18 ; [+5]
      512 NAMECALL                         R18 R2 K138 ["getMakeupRules"]
      514 CALL                             R18 1 1
      515 SETTABLEKS                       R18 R15 K139 ["MAKEUP_INFO"]
      517 NEWTABLE                         R18 0 0
      519 SETTABLEKS                       R18 R15 K140 ["ASSET_TYPE_INFO"]
      521 GETTABLEKS                       R20 R15 K140 ["ASSET_TYPE_INFO"]
      523 NAMECALL                         R18 R2 K141 ["getAccessoryRules"]
      525 CALL                             R18 2 0
      526 NAMECALL                         R18 R2 K142 ["getFullBodyRulesBounds"]
      528 CALL                             R18 1 1
      529 SETTABLEKS                       R18 R15 K143 ["FULL_BODY_BOUNDS"]
      531 DUPTABLE                         R18 K147 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
      532 LOADB                            R19 1
      533 SETTABLEKS                       R19 R18 K144 ["Classic"]
      535 LOADB                            R19 1
      536 SETTABLEKS                       R19 R18 K145 ["ProportionsSlender"]
      538 LOADB                            R19 1
      539 SETTABLEKS                       R19 R18 K146 ["ProportionsNormal"]
      541 SETTABLEKS                       R18 R15 K148 ["AvatarPartScaleTypes"]
      543 GETTABLEKS                       R20 R15 K140 ["ASSET_TYPE_INFO"]
      545 NAMECALL                         R18 R2 K149 ["getBodyPartRules"]
      547 CALL                             R18 2 0
      548 NEWTABLE                         R18 16 0
      550 LOADNIL                          R19
      551 SETTABLEKS                       R19 R18 K53 ["Head"]
      553 LOADNIL                          R19
      554 SETTABLEKS                       R19 R18 K55 ["LowerTorso"]
      556 LOADK                            R19 K55 ["LowerTorso"]
      557 SETTABLEKS                       R19 R18 K54 ["UpperTorso"]
      559 LOADNIL                          R19
      560 SETTABLEKS                       R19 R18 K62 ["LeftUpperArm"]
      562 LOADK                            R19 K62 ["LeftUpperArm"]
      563 SETTABLEKS                       R19 R18 K63 ["LeftLowerArm"]
      565 LOADK                            R19 K63 ["LeftLowerArm"]
      566 SETTABLEKS                       R19 R18 K64 ["LeftHand"]
      568 LOADNIL                          R19
      569 SETTABLEKS                       R19 R18 K56 ["LeftUpperLeg"]
      571 LOADK                            R19 K56 ["LeftUpperLeg"]
      572 SETTABLEKS                       R19 R18 K57 ["LeftLowerLeg"]
      574 LOADNIL                          R19
      575 SETTABLEKS                       R19 R18 K65 ["RightUpperArm"]
      577 LOADK                            R19 K65 ["RightUpperArm"]
      578 SETTABLEKS                       R19 R18 K66 ["RightLowerArm"]
      580 LOADK                            R19 K66 ["RightLowerArm"]
      581 SETTABLEKS                       R19 R18 K67 ["RightHand"]
      583 LOADNIL                          R19
      584 SETTABLEKS                       R19 R18 K59 ["RightUpperLeg"]
      586 LOADK                            R19 K59 ["RightUpperLeg"]
      587 SETTABLEKS                       R19 R18 K60 ["RightLowerLeg"]
      589 SETTABLEKS                       R18 R15 K150 ["BODYPART_TO_PARENT"]
      591 MOVE                             R18 R7
      592 CALL                             R18 0 1
      593 JUMPIFNOT                        R18 ; [+11]
      594 GETTABLEKS                       R18 R15 K150 ["BODYPART_TO_PARENT"]
      596 LOADK                            R19 K60 ["RightLowerLeg"]
      597 SETTABLEKS                       R19 R18 K61 ["RightFoot"]
      599 GETTABLEKS                       R18 R15 K150 ["BODYPART_TO_PARENT"]
      601 LOADK                            R19 K57 ["LeftLowerLeg"]
      602 SETTABLEKS                       R19 R18 K58 ["LeftFoot"]
      604 JUMP                             ; [+10]
      605 GETTABLEKS                       R18 R15 K150 ["BODYPART_TO_PARENT"]
      607 LOADK                            R19 K60 ["RightLowerLeg"]
      608 SETTABLEKS                       R19 R18 K93 ["RightLeg"]
      610 GETTABLEKS                       R18 R15 K150 ["BODYPART_TO_PARENT"]
      612 LOADK                            R19 K57 ["LeftLowerLeg"]
      613 SETTABLEKS                       R19 R18 K91 ["LeftLeg"]
      615 NAMECALL                         R20 R2 K25 ["getRules"]
      617 CALL                             R20 1 1
      618 GETTABLEKS                       R19 R20 K26 ["MeshRules"]
      620 GETTABLEKS                       R18 R19 K151 ["CageMeshMaxDistanceFromRenderMesh"]
      622 SETTABLEKS                       R18 R15 K152 ["RenderVsWrapMeshMaxDiff"]
      624 DUPTABLE                         R18 K160 [{"SMALLER", "SMALLER_EQ", "FUZZY_EQ", "EXACT_EQ", "GREATER_EQ", "GREATER", "FOUND_IN"}]
      625 LOADK                            R19 K161 ["<"]
      626 SETTABLEKS                       R19 R18 K153 ["SMALLER"]
      628 LOADK                            R19 K162 ["<="]
      629 SETTABLEKS                       R19 R18 K154 ["SMALLER_EQ"]
      631 LOADK                            R19 K163 ["="]
      632 SETTABLEKS                       R19 R18 K155 ["FUZZY_EQ"]
      634 LOADK                            R19 K164 ["=="]
      635 SETTABLEKS                       R19 R18 K156 ["EXACT_EQ"]
      637 LOADK                            R19 K165 [">="]
      638 SETTABLEKS                       R19 R18 K157 ["GREATER_EQ"]
      640 LOADK                            R19 K166 [">"]
      641 SETTABLEKS                       R19 R18 K158 ["GREATER"]
      643 LOADK                            R19 K167 ["one of the following:"]
      644 SETTABLEKS                       R19 R18 K159 ["FOUND_IN"]
      646 SETTABLEKS                       R18 R15 K168 ["COMPARISON_METHODS"]
      648 GETTABLEKS                       R19 R15 K168 ["COMPARISON_METHODS"]
      650 DUPTABLE                         R20 K71 [{"__index"}]
      651 DUPCLOSURE                       R21 K169 [PROTO_2]
      652 SETTABLEKS                       R21 R20 K70 ["__index"]
      654 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      656 GETIMPORT                        R18 K74 [setmetatable]
      658 CALL                             R18 2 0
      659 DUPTABLE                         R18 K173 [{"RUN_ON_ALL", "INCLUSION_LIST", "EXCLUSION_LIST"}]
      660 LOADK                            R19 K170 ["RUN_ON_ALL"]
      661 SETTABLEKS                       R19 R18 K170 ["RUN_ON_ALL"]
      663 LOADK                            R19 K171 ["INCLUSION_LIST"]
      664 SETTABLEKS                       R19 R18 K171 ["INCLUSION_LIST"]
      666 LOADK                            R19 K172 ["EXCLUSION_LIST"]
      667 SETTABLEKS                       R19 R18 K172 ["EXCLUSION_LIST"]
      669 SETTABLEKS                       R18 R15 K174 ["INCLUSION_METHODS"]
      671 GETTABLEKS                       R19 R15 K174 ["INCLUSION_METHODS"]
      673 DUPTABLE                         R20 K71 [{"__index"}]
      674 DUPCLOSURE                       R21 K175 [PROTO_3]
      675 SETTABLEKS                       R21 R20 K70 ["__index"]
      677 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      679 GETIMPORT                        R18 K74 [setmetatable]
      681 CALL                             R18 2 0
      682 DUPTABLE                         R18 K185 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      683 DUPTABLE                         R19 K187 [{"Archivable"}]
      684 LOADB                            R20 1
      685 SETTABLEKS                       R20 R19 K186 ["Archivable"]
      687 SETTABLEKS                       R19 R18 K176 ["Instance"]
      689 DUPTABLE                         R19 K189 [{"Visible"}]
      690 LOADB                            R20 0
      691 SETTABLEKS                       R20 R19 K188 ["Visible"]
      693 SETTABLEKS                       R19 R18 K177 ["Attachment"]
      695 MOVE                             R20 R12
      696 CALL                             R20 0 1
      697 JUMPIFNOT                        R20 ; [+33]
      698 DUPTABLE                         R19 K194 [{"Color3", "Transparency", "UVOffset", "UVScale"}]
      699 GETIMPORT                        R20 K196 [Color3.new]
      701 LOADN                            R21 1
      702 LOADN                            R22 1
      703 LOADN                            R23 1
      704 CALL                             R20 3 1
      705 SETTABLEKS                       R20 R19 K190 ["Color3"]
      707 LOADN                            R20 0
      708 SETTABLEKS                       R20 R19 K191 ["Transparency"]
      710 JUMPIFNOT                        R13 ; [+6]
      711 GETIMPORT                        R20 K198 [Vector2.new]
      713 LOADN                            R21 0
      714 LOADN                            R22 0
      715 CALL                             R20 2 1
      716 JUMP                             ; [+1]
      717 LOADNIL                          R20
      718 SETTABLEKS                       R20 R19 K192 ["UVOffset"]
      720 JUMPIFNOT                        R13 ; [+6]
      721 GETIMPORT                        R20 K198 [Vector2.new]
      723 LOADN                            R21 1
      724 LOADN                            R22 1
      725 CALL                             R20 2 1
      726 JUMP                             ; [+1]
      727 LOADNIL                          R20
      728 SETTABLEKS                       R20 R19 K193 ["UVScale"]
      730 JUMP                             ; [+1]
      731 LOADNIL                          R19
      732 SETTABLEKS                       R19 R18 K178 ["Decal"]
      734 DUPTABLE                         R19 K202 [{"MeshType", "Offset", "VertexColor"}]
      735 GETIMPORT                        R20 K204 [Enum.MeshType.FileMesh]
      737 SETTABLEKS                       R20 R19 K199 ["MeshType"]
      739 LOADK                            R20 K205 [{0, 0, 0}]
      740 SETTABLEKS                       R20 R19 K200 ["Offset"]
      742 LOADK                            R20 K206 [{1, 1, 1}]
      743 SETTABLEKS                       R20 R19 K201 ["VertexColor"]
      745 SETTABLEKS                       R19 R18 K179 ["SpecialMesh"]
      747 NEWTABLE                         R19 64 0
      749 LOADB                            R20 0
      750 SETTABLEKS                       R20 R19 K207 ["Anchored"]
      752 LOADN                            R20 0
      753 SETTABLEKS                       R20 R19 K208 ["CollisionGroupId"]
      755 GETTABLEKS                       R20 R1 K209 ["None"]
      757 SETTABLEKS                       R20 R19 K210 ["CustomPhysicalProperties"]
      759 LOADK                            R20 K211 [0.5]
      760 SETTABLEKS                       R20 R19 K212 ["Elasticity"]
      762 LOADK                            R20 K213 [0.3]
      763 SETTABLEKS                       R20 R19 K214 ["Friction"]
      765 LOADN                            R20 0
      766 SETTABLEKS                       R20 R19 K215 ["LocalTransparencyModifier"]
      768 LOADB                            R20 0
      769 SETTABLEKS                       R20 R19 K216 ["Massless"]
      771 LOADN                            R20 0
      772 SETTABLEKS                       R20 R19 K217 ["Reflectance"]
      774 LOADN                            R20 0
      775 SETTABLEKS                       R20 R19 K218 ["RootPriority"]
      777 LOADK                            R20 K205 [{0, 0, 0}]
      778 SETTABLEKS                       R20 R19 K219 ["RotVelocity"]
      780 LOADK                            R20 K205 [{0, 0, 0}]
      781 SETTABLEKS                       R20 R19 K220 ["Velocity"]
      783 LOADK                            R20 K221 [-0.5]
      784 SETTABLEKS                       R20 R19 K222 ["BackParamA"]
      786 LOADK                            R20 K211 [0.5]
      787 SETTABLEKS                       R20 R19 K223 ["BackParamB"]
      789 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      791 SETTABLEKS                       R20 R19 K227 ["BackSurfaceInput"]
      793 LOADK                            R20 K221 [-0.5]
      794 SETTABLEKS                       R20 R19 K228 ["BottomParamA"]
      796 LOADK                            R20 K211 [0.5]
      797 SETTABLEKS                       R20 R19 K229 ["BottomParamB"]
      799 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      801 SETTABLEKS                       R20 R19 K230 ["BottomSurfaceInput"]
      803 LOADK                            R20 K221 [-0.5]
      804 SETTABLEKS                       R20 R19 K231 ["FrontParamA"]
      806 LOADK                            R20 K211 [0.5]
      807 SETTABLEKS                       R20 R19 K232 ["FrontParamB"]
      809 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      811 SETTABLEKS                       R20 R19 K233 ["FrontSurfaceInput"]
      813 LOADK                            R20 K221 [-0.5]
      814 SETTABLEKS                       R20 R19 K234 ["LeftParamA"]
      816 LOADK                            R20 K211 [0.5]
      817 SETTABLEKS                       R20 R19 K235 ["LeftParamB"]
      819 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      821 SETTABLEKS                       R20 R19 K236 ["LeftSurfaceInput"]
      823 LOADK                            R20 K221 [-0.5]
      824 SETTABLEKS                       R20 R19 K237 ["RightParamA"]
      826 LOADK                            R20 K211 [0.5]
      827 SETTABLEKS                       R20 R19 K238 ["RightParamB"]
      829 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      831 SETTABLEKS                       R20 R19 K239 ["RightSurfaceInput"]
      833 LOADK                            R20 K221 [-0.5]
      834 SETTABLEKS                       R20 R19 K240 ["TopParamA"]
      836 LOADK                            R20 K211 [0.5]
      837 SETTABLEKS                       R20 R19 K241 ["TopParamB"]
      839 GETIMPORT                        R20 K226 [Enum.InputType.NoInput]
      841 SETTABLEKS                       R20 R19 K242 ["TopSurfaceInput"]
      843 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      845 SETTABLEKS                       R20 R19 K246 ["BackSurface"]
      847 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      849 SETTABLEKS                       R20 R19 K247 ["BottomSurface"]
      851 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      853 SETTABLEKS                       R20 R19 K248 ["FrontSurface"]
      855 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      857 SETTABLEKS                       R20 R19 K249 ["LeftSurface"]
      859 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      861 SETTABLEKS                       R20 R19 K250 ["RightSurface"]
      863 GETIMPORT                        R20 K245 [Enum.SurfaceType.Smooth]
      865 SETTABLEKS                       R20 R19 K251 ["TopSurface"]
      867 NEWTABLE                         R20 1 0
      869 GETTABLEKS                       R22 R15 K168 ["COMPARISON_METHODS"]
      871 GETTABLEKS                       R21 R22 K156 ["EXACT_EQ"]
      873 LOADN                            R22 0
      874 SETTABLE                         R22 R20 R21
      875 SETTABLEKS                       R20 R19 K191 ["Transparency"]
      877 NEWTABLE                         R20 2 0
      879 GETTABLEKS                       R22 R15 K168 ["COMPARISON_METHODS"]
      881 GETTABLEKS                       R21 R22 K155 ["FUZZY_EQ"]
      883 GETIMPORT                        R23 K253 [BrickColor.new]
      885 LOADK                            R24 K254 ["Medium stone grey"]
      886 CALL                             R23 1 1
      887 GETTABLEKS                       R22 R23 K255 ["Color"]
      889 SETTABLE                         R22 R20 R21
      890 GETTABLEKS                       R22 R15 K174 ["INCLUSION_METHODS"]
      892 GETTABLEKS                       R21 R22 K172 ["EXCLUSION_LIST"]
      894 NEWTABLE                         R22 0 6
      896 GETIMPORT                        R23 K85 [Enum.AssetType.DynamicHead]
      898 GETIMPORT                        R24 K86 [Enum.AssetType.Torso]
      900 GETIMPORT                        R25 K88 [Enum.AssetType.LeftArm]
      902 GETIMPORT                        R26 K90 [Enum.AssetType.RightArm]
      904 GETIMPORT                        R27 K92 [Enum.AssetType.LeftLeg]
      906 GETIMPORT                        R28 K94 [Enum.AssetType.RightLeg]
      908 SETLIST                          R22 R23 6 [1]
      910 SETTABLE                         R22 R20 R21
      911 SETTABLEKS                       R20 R19 K255 ["Color"]
      913 SETTABLEKS                       R19 R18 K180 ["BasePart"]
      915 DUPTABLE                         R19 K257 [{"Shape"}]
      916 GETIMPORT                        R20 K260 [Enum.PartType.Block]
      918 SETTABLEKS                       R20 R19 K256 ["Shape"]
      920 SETTABLEKS                       R19 R18 K181 ["Part"]
      922 DUPTABLE                         R19 K265 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      923 MOVE                             R21 R9
      924 CALL                             R21 0 1
      925 JUMPIFNOT                        R21 ; [+55]
      926 NEWTABLE                         R20 0 2
      928 NEWTABLE                         R21 2 0
      930 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
      932 GETTABLEKS                       R22 R23 K159 ["FOUND_IN"]
      934 NEWTABLE                         R23 0 2
      936 GETIMPORT                        R24 K267 [Enum.AlphaMode.Overlay]
      938 GETIMPORT                        R25 K268 [Enum.AlphaMode.Transparency]
      940 SETLIST                          R23 R24 2 [1]
      942 SETTABLE                         R23 R21 R22
      943 GETTABLEKS                       R23 R15 K174 ["INCLUSION_METHODS"]
      945 GETTABLEKS                       R22 R23 K171 ["INCLUSION_LIST"]
      947 NEWTABLE                         R23 0 2
      949 GETIMPORT                        R24 K96 [Enum.AssetType.EyelashAccessory]
      951 GETIMPORT                        R25 K95 [Enum.AssetType.EyebrowAccessory]
      953 SETLIST                          R23 R24 2 [1]
      955 SETTABLE                         R23 R21 R22
      956 NEWTABLE                         R22 2 0
      958 GETTABLEKS                       R24 R15 K168 ["COMPARISON_METHODS"]
      960 GETTABLEKS                       R23 R24 K156 ["EXACT_EQ"]
      962 GETIMPORT                        R24 K267 [Enum.AlphaMode.Overlay]
      964 SETTABLE                         R24 R22 R23
      965 GETTABLEKS                       R24 R15 K174 ["INCLUSION_METHODS"]
      967 GETTABLEKS                       R23 R24 K172 ["EXCLUSION_LIST"]
      969 NEWTABLE                         R24 0 2
      971 GETIMPORT                        R25 K96 [Enum.AssetType.EyelashAccessory]
      973 GETIMPORT                        R26 K95 [Enum.AssetType.EyebrowAccessory]
      975 SETLIST                          R24 R25 2 [1]
      977 SETTABLE                         R24 R22 R23
      978 SETLIST                          R20 R21 2 [1]
      980 JUMP                             ; [+2]
      981 GETIMPORT                        R20 K267 [Enum.AlphaMode.Overlay]
      983 SETTABLEKS                       R20 R19 K261 ["AlphaMode"]
      985 GETIMPORT                        R20 K271 [Content.none]
      987 SETTABLEKS                       R20 R19 K262 ["EmissiveMaskContent"]
      989 LOADN                            R20 1
      990 SETTABLEKS                       R20 R19 K263 ["EmissiveStrength"]
      992 GETIMPORT                        R20 K196 [Color3.new]
      994 LOADN                            R21 1
      995 LOADN                            R22 1
      996 LOADN                            R23 1
      997 CALL                             R20 3 1
      998 SETTABLEKS                       R20 R19 K264 ["EmissiveTint"]
     1000 SETTABLEKS                       R19 R18 K182 ["SurfaceAppearance"]
     1002 DUPTABLE                         R19 K277 [{"Enabled", "CageOrigin", "ReferenceOrigin", "ImportOrigin", "BindOffset"}]
     1003 MOVE                             R21 R5
     1004 CALL                             R21 0 1
     1005 JUMPIFNOT                        R21 ; [+2]
     1006 LOADB                            R20 1
     1007 JUMP                             ; [+1]
     1008 LOADNIL                          R20
     1009 SETTABLEKS                       R20 R19 K272 ["Enabled"]
     1011 DUPTABLE                         R20 K280 [{"PositionMagnitude", "Orientation"}]
     1012 NEWTABLE                         R21 1 0
     1014 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1016 GETTABLEKS                       R22 R23 K154 ["SMALLER_EQ"]
     1018 LOADN                            R23 10
     1019 SETTABLE                         R23 R21 R22
     1020 SETTABLEKS                       R21 R20 K278 ["PositionMagnitude"]
     1022 NEWTABLE                         R21 1 0
     1024 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1026 GETTABLEKS                       R22 R23 K156 ["EXACT_EQ"]
     1028 LOADK                            R23 K205 [{0, 0, 0}]
     1029 SETTABLE                         R23 R21 R22
     1030 SETTABLEKS                       R21 R20 K279 ["Orientation"]
     1032 SETTABLEKS                       R20 R19 K273 ["CageOrigin"]
     1034 DUPTABLE                         R20 K280 [{"PositionMagnitude", "Orientation"}]
     1035 NEWTABLE                         R21 1 0
     1037 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1039 GETTABLEKS                       R22 R23 K154 ["SMALLER_EQ"]
     1041 LOADN                            R23 10
     1042 SETTABLE                         R23 R21 R22
     1043 SETTABLEKS                       R21 R20 K278 ["PositionMagnitude"]
     1045 NEWTABLE                         R21 1 0
     1047 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1049 GETTABLEKS                       R22 R23 K156 ["EXACT_EQ"]
     1051 LOADK                            R23 K205 [{0, 0, 0}]
     1052 SETTABLE                         R23 R21 R22
     1053 SETTABLEKS                       R21 R20 K279 ["Orientation"]
     1055 SETTABLEKS                       R20 R19 K274 ["ReferenceOrigin"]
     1057 DUPTABLE                         R20 K281 [{"PositionMagnitude"}]
     1058 NEWTABLE                         R21 1 0
     1060 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1062 GETTABLEKS                       R22 R23 K154 ["SMALLER_EQ"]
     1064 LOADN                            R23 8
     1065 SETTABLE                         R23 R21 R22
     1066 SETTABLEKS                       R21 R20 K278 ["PositionMagnitude"]
     1068 SETTABLEKS                       R20 R19 K275 ["ImportOrigin"]
     1070 MOVE                             R21 R8
     1071 CALL                             R21 0 1
     1072 JUMPIFNOT                        R21 ; [+22]
     1073 DUPTABLE                         R20 K283 [{"Position", "Orientation"}]
     1074 NEWTABLE                         R21 1 0
     1076 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1078 GETTABLEKS                       R22 R23 K156 ["EXACT_EQ"]
     1080 LOADK                            R23 K205 [{0, 0, 0}]
     1081 SETTABLE                         R23 R21 R22
     1082 SETTABLEKS                       R21 R20 K282 ["Position"]
     1084 NEWTABLE                         R21 1 0
     1086 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1088 GETTABLEKS                       R22 R23 K156 ["EXACT_EQ"]
     1090 LOADK                            R23 K205 [{0, 0, 0}]
     1091 SETTABLE                         R23 R21 R22
     1092 SETTABLEKS                       R21 R20 K279 ["Orientation"]
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R20
     1096 SETTABLEKS                       R20 R19 K276 ["BindOffset"]
     1098 SETTABLEKS                       R19 R18 K183 ["WrapLayer"]
     1100 DUPTABLE                         R19 K284 [{"CageOrigin", "ImportOrigin"}]
     1101 DUPTABLE                         R20 K280 [{"PositionMagnitude", "Orientation"}]
     1102 NEWTABLE                         R21 1 0
     1104 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1106 GETTABLEKS                       R22 R23 K154 ["SMALLER_EQ"]
     1108 LOADN                            R23 10
     1109 SETTABLE                         R23 R21 R22
     1110 SETTABLEKS                       R21 R20 K278 ["PositionMagnitude"]
     1112 NEWTABLE                         R21 1 0
     1114 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1116 GETTABLEKS                       R22 R23 K156 ["EXACT_EQ"]
     1118 LOADK                            R23 K205 [{0, 0, 0}]
     1119 SETTABLE                         R23 R21 R22
     1120 SETTABLEKS                       R21 R20 K279 ["Orientation"]
     1122 SETTABLEKS                       R20 R19 K273 ["CageOrigin"]
     1124 DUPTABLE                         R20 K281 [{"PositionMagnitude"}]
     1125 NEWTABLE                         R21 1 0
     1127 GETTABLEKS                       R23 R15 K168 ["COMPARISON_METHODS"]
     1129 GETTABLEKS                       R22 R23 K154 ["SMALLER_EQ"]
     1131 LOADN                            R23 8
     1132 SETTABLE                         R23 R21 R22
     1133 SETTABLEKS                       R21 R20 K278 ["PositionMagnitude"]
     1135 SETTABLEKS                       R20 R19 K275 ["ImportOrigin"]
     1137 SETTABLEKS                       R19 R18 K184 ["WrapTarget"]
     1139 SETTABLEKS                       R18 R15 K285 ["PROPERTIES"]
     1141 DUPTABLE                         R18 K288 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1142 NEWTABLE                         R19 0 2
     1144 LOADK                            R20 K33 ["Material"]
     1145 LOADK                            R21 K34 ["Plastic"]
     1146 SETLIST                          R19 R20 2 [1]
     1148 SETTABLEKS                       R19 R18 K179 ["SpecialMesh"]
     1150 NEWTABLE                         R19 0 2
     1152 LOADK                            R20 K33 ["Material"]
     1153 LOADK                            R21 K35 [Enum.Material.Plastic]
     1154 SETLIST                          R19 R20 2 [1]
     1156 SETTABLEKS                       R19 R18 K286 ["MeshPart"]
     1158 NEWTABLE                         R19 0 4
     1160 LOADK                            R20 K36 ["pairs"]
     1161 LOADK                            R21 K37 [pairs]
     1162 LOADK                            R22 K38 ["MATERIAL_WHITELIST"]
     1163 LOADK                            R23 K39 ["Script"]
     1164 SETLIST                          R19 R20 4 [1]
     1166 SETTABLEKS                       R19 R18 K182 ["SurfaceAppearance"]
     1168 MOVE                             R20 R12
     1169 CALL                             R20 0 1
     1170 JUMPIFNOT                        R20 ; [+9]
     1171 NEWTABLE                         R19 0 4
     1173 LOADK                            R20 K36 ["pairs"]
     1174 LOADK                            R21 K37 [pairs]
     1175 LOADK                            R22 K38 ["MATERIAL_WHITELIST"]
     1176 LOADK                            R23 K39 ["Script"]
     1177 SETLIST                          R19 R20 4 [1]
     1179 JUMP                             ; [+1]
     1180 LOADNIL                          R19
     1181 SETTABLEKS                       R19 R18 K178 ["Decal"]
     1183 NEWTABLE                         R19 0 2
     1185 LOADK                            R20 K40 ["LocalScript"]
     1186 LOADK                            R21 K41 ["ModuleScript"]
     1187 SETLIST                          R19 R20 2 [1]
     1189 SETTABLEKS                       R19 R18 K183 ["WrapLayer"]
     1191 NEWTABLE                         R19 0 1
     1193 LOADK                            R20 K40 ["LocalScript"]
     1194 SETLIST                          R19 R20 1 [1]
     1196 SETTABLEKS                       R19 R18 K184 ["WrapTarget"]
     1198 NEWTABLE                         R19 0 1
     1200 LOADK                            R20 K42 ["ParticleEmitter"]
     1201 SETLIST                          R19 R20 1 [1]
     1203 SETTABLEKS                       R19 R18 K287 ["Animation"]
     1205 SETTABLEKS                       R18 R15 K299 ["CONTENT_ID_FIELDS"]
     1207 MOVE                             R18 R11
     1208 CALL                             R18 0 1
     1209 JUMPIFNOT                        R18 ; [+10]
     1210 GETTABLEKS                       R20 R15 K299 ["CONTENT_ID_FIELDS"]
     1212 GETTABLEKS                       R19 R20 K182 ["SurfaceAppearance"]
     1214 FASTCALL2K                       TABLE_INSERT R19 K300 ; [+4]
     1216 LOADK                            R20 K44 ["Smoke"]
     1217 GETIMPORT                        R18 K128 [table.insert]
     1219 CALL                             R18 2 0
     1220 MOVE                             R18 R10
     1221 CALL                             R18 0 1
     1222 JUMPIFNOT                        R18 ; [+10]
     1223 GETTABLEKS                       R20 R15 K299 ["CONTENT_ID_FIELDS"]
     1225 GETTABLEKS                       R19 R20 K183 ["WrapLayer"]
     1227 FASTCALL2K                       TABLE_INSERT R19 K301 ; [+4]
     1229 LOADK                            R20 K45 ["Sparkles"]
     1230 GETIMPORT                        R18 K128 [table.insert]
     1232 CALL                             R18 2 0
     1233 DUPTABLE                         R18 K302 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1234 DUPTABLE                         R19 K303 [{"MeshId", "TextureId"}]
     1235 LOADB                            R20 1
     1236 SETTABLEKS                       R20 R19 K289 ["MeshId"]
     1238 LOADB                            R20 1
     1239 SETTABLEKS                       R20 R19 K290 ["TextureId"]
     1241 SETTABLEKS                       R19 R18 K179 ["SpecialMesh"]
     1243 DUPTABLE                         R19 K304 [{"MeshId"}]
     1244 LOADB                            R20 1
     1245 SETTABLEKS                       R20 R19 K289 ["MeshId"]
     1247 SETTABLEKS                       R19 R18 K286 ["MeshPart"]
     1249 DUPTABLE                         R19 K305 [{"CageMeshId"}]
     1250 LOADB                            R20 1
     1251 SETTABLEKS                       R20 R19 K296 ["CageMeshId"]
     1253 SETTABLEKS                       R19 R18 K184 ["WrapTarget"]
     1255 DUPTABLE                         R19 K306 [{"AnimationId"}]
     1256 LOADB                            R20 1
     1257 SETTABLEKS                       R20 R19 K298 ["AnimationId"]
     1259 SETTABLEKS                       R19 R18 K287 ["Animation"]
     1261 SETTABLEKS                       R18 R15 K307 ["CONTENT_ID_REQUIRED_FIELDS"]
     1263 DUPTABLE                         R18 K308 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1264 NEWTABLE                         R19 0 1
     1266 LOADK                            R20 K33 ["Material"]
     1267 SETLIST                          R19 R20 1 [1]
     1269 SETTABLEKS                       R19 R18 K179 ["SpecialMesh"]
     1271 NEWTABLE                         R19 0 1
     1273 LOADK                            R20 K33 ["Material"]
     1274 SETLIST                          R19 R20 1 [1]
     1276 SETTABLEKS                       R19 R18 K286 ["MeshPart"]
     1278 NEWTABLE                         R19 0 1
     1280 LOADK                            R20 K40 ["LocalScript"]
     1281 SETLIST                          R19 R20 1 [1]
     1283 SETTABLEKS                       R19 R18 K184 ["WrapTarget"]
     1285 NEWTABLE                         R19 0 2
     1287 LOADK                            R20 K40 ["LocalScript"]
     1288 LOADK                            R21 K41 ["ModuleScript"]
     1289 SETLIST                          R19 R20 2 [1]
     1291 SETTABLEKS                       R19 R18 K183 ["WrapLayer"]
     1293 SETTABLEKS                       R18 R15 K309 ["MESH_CONTENT_ID_FIELDS"]
     1295 DUPTABLE                         R18 K310 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1296 NEWTABLE                         R19 0 1
     1298 LOADK                            R20 K34 ["Plastic"]
     1299 SETLIST                          R19 R20 1 [1]
     1301 SETTABLEKS                       R19 R18 K179 ["SpecialMesh"]
     1303 NEWTABLE                         R19 0 1
     1305 LOADK                            R20 K35 [Enum.Material.Plastic]
     1306 SETLIST                          R19 R20 1 [1]
     1308 SETTABLEKS                       R19 R18 K286 ["MeshPart"]
     1310 NEWTABLE                         R19 0 4
     1312 LOADK                            R20 K36 ["pairs"]
     1313 LOADK                            R21 K37 [pairs]
     1314 LOADK                            R22 K38 ["MATERIAL_WHITELIST"]
     1315 LOADK                            R23 K39 ["Script"]
     1316 SETLIST                          R19 R20 4 [1]
     1318 SETTABLEKS                       R19 R18 K182 ["SurfaceAppearance"]
     1320 MOVE                             R20 R12
     1321 CALL                             R20 0 1
     1322 JUMPIFNOT                        R20 ; [+9]
     1323 NEWTABLE                         R19 0 4
     1325 LOADK                            R20 K36 ["pairs"]
     1326 LOADK                            R21 K37 [pairs]
     1327 LOADK                            R22 K38 ["MATERIAL_WHITELIST"]
     1328 LOADK                            R23 K39 ["Script"]
     1329 SETLIST                          R19 R20 4 [1]
     1331 JUMP                             ; [+1]
     1332 LOADNIL                          R19
     1333 SETTABLEKS                       R19 R18 K178 ["Decal"]
     1335 SETTABLEKS                       R18 R15 K311 ["TEXTURE_CONTENT_ID_FIELDS"]
     1337 DUPTABLE                         R18 K312 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1338 GETIMPORT                        R21 K85 [Enum.AssetType.DynamicHead]
     1340 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1342 CALL                             R19 2 1
     1343 SETTABLEKS                       R19 R18 K77 ["DynamicHead"]
     1345 GETIMPORT                        R21 K88 [Enum.AssetType.LeftArm]
     1347 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1349 CALL                             R19 2 1
     1350 SETTABLEKS                       R19 R18 K87 ["LeftArm"]
     1352 GETIMPORT                        R21 K90 [Enum.AssetType.RightArm]
     1354 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1356 CALL                             R19 2 1
     1357 SETTABLEKS                       R19 R18 K89 ["RightArm"]
     1359 GETIMPORT                        R21 K86 [Enum.AssetType.Torso]
     1361 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1363 CALL                             R19 2 1
     1364 SETTABLEKS                       R19 R18 K47 ["Torso"]
     1366 GETIMPORT                        R21 K92 [Enum.AssetType.LeftLeg]
     1368 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1370 CALL                             R19 2 1
     1371 SETTABLEKS                       R19 R18 K91 ["LeftLeg"]
     1373 GETIMPORT                        R21 K94 [Enum.AssetType.RightLeg]
     1375 NAMECALL                         R19 R2 K313 ["getBodyPartMaxTrianglesRule"]
     1377 CALL                             R19 2 1
     1378 SETTABLEKS                       R19 R18 K93 ["RightLeg"]
     1380 SETTABLEKS                       R18 R15 K314 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1382 DUPTABLE                         R18 K315 [{"Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
     1383 LOADN                            R19 87
     1384 SETTABLEKS                       R19 R18 K53 ["Head"]
     1386 LOADN                            R19 77
     1387 SETTABLEKS                       R19 R18 K62 ["LeftUpperArm"]
     1389 LOADN                            R19 77
     1390 SETTABLEKS                       R19 R18 K63 ["LeftLowerArm"]
     1392 LOADN                            R19 86
     1393 SETTABLEKS                       R19 R18 K64 ["LeftHand"]
     1395 LOADN                            R19 77
     1396 SETTABLEKS                       R19 R18 K65 ["RightUpperArm"]
     1398 LOADN                            R19 77
     1399 SETTABLEKS                       R19 R18 K66 ["RightLowerArm"]
     1401 LOADN                            R19 86
     1402 SETTABLEKS                       R19 R18 K67 ["RightHand"]
     1404 LOADN                            R19 1
     1405 SETTABLEKS                       R19 R18 K54 ["UpperTorso"]
     1407 LOADN                            R19 105
     1408 SETTABLEKS                       R19 R18 K55 ["LowerTorso"]
     1410 LOADN                            R19 88
     1411 SETTABLEKS                       R19 R18 K56 ["LeftUpperLeg"]
     1413 LOADN                            R19 88
     1414 SETTABLEKS                       R19 R18 K57 ["LeftLowerLeg"]
     1416 LOADN                            R19 86
     1417 SETTABLEKS                       R19 R18 K58 ["LeftFoot"]
     1419 LOADN                            R19 88
     1420 SETTABLEKS                       R19 R18 K59 ["RightUpperLeg"]
     1422 LOADN                            R19 88
     1423 SETTABLEKS                       R19 R18 K60 ["RightLowerLeg"]
     1425 LOADN                            R19 86
     1426 SETTABLEKS                       R19 R18 K61 ["RightFoot"]
     1428 SETTABLEKS                       R18 R15 K316 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1430 GETTABLEKS                       R19 R1 K317 ["Dictionary"]
     1432 GETTABLEKS                       R18 R19 K318 ["join"]
     1434 GETTABLEKS                       R19 R15 K299 ["CONTENT_ID_FIELDS"]
     1436 MOVE                             R21 R4
     1437 CALL                             R21 0 1
     1438 JUMPIFNOT                        R21 ; [+88]
     1439 DUPTABLE                         R20 K328 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1440 NEWTABLE                         R21 0 1
     1442 LOADK                            R22 K73 ["setmetatable"]
     1443 SETLIST                          R21 R22 1 [1]
     1445 SETTABLEKS                       R21 R20 K319 ["Sound"]
     1447 NEWTABLE                         R21 0 1
     1449 LOADK                            R22 K74 [setmetatable]
     1450 SETLIST                          R21 R22 1 [1]
     1452 SETTABLEKS                       R21 R20 K178 ["Decal"]
     1454 NEWTABLE                         R21 0 1
     1456 LOADK                            R22 K75 ["Root"]
     1457 SETLIST                          R21 R22 1 [1]
     1459 SETTABLEKS                       R21 R20 K320 ["VideoFrame"]
     1461 NEWTABLE                         R21 0 1
     1463 LOADK                            R22 K76 ["HumanoidRootNode"]
     1464 SETLIST                          R21 R22 1 [1]
     1466 SETTABLEKS                       R21 R20 K321 ["PackageLink"]
     1468 NEWTABLE                         R21 0 3
     1470 LOADK                            R22 K77 ["DynamicHead"]
     1471 LOADK                            R23 K33 ["Material"]
     1472 LOADK                            R24 K78 ["R15_STANDARD_JOINT_NAMES"]
     1473 SETLIST                          R21 R22 3 [1]
     1475 SETTABLEKS                       R21 R20 K322 ["CharacterMesh"]
     1477 NEWTABLE                         R21 0 1
     1479 LOADK                            R22 K34 ["Plastic"]
     1480 SETLIST                          R21 R22 1 [1]
     1482 SETTABLEKS                       R21 R20 K323 ["Tool"]
     1484 NEWTABLE                         R21 0 1
     1486 LOADK                            R22 K74 [setmetatable]
     1487 SETLIST                          R21 R22 1 [1]
     1489 SETTABLEKS                       R21 R20 K324 ["Trail"]
     1491 NEWTABLE                         R21 0 1
     1493 LOADK                            R22 K74 [setmetatable]
     1494 SETLIST                          R21 R22 1 [1]
     1496 SETTABLEKS                       R21 R20 K325 ["Beam"]
     1498 NEWTABLE                         R21 0 1
     1500 LOADK                            R22 K79 ["EyebrowAccessory"]
     1501 SETLIST                          R21 R22 1 [1]
     1503 SETTABLEKS                       R21 R20 K326 ["ShirtGraphic"]
     1505 NEWTABLE                         R21 0 1
     1507 LOADK                            R22 K80 ["EyelashAccessory"]
     1508 SETLIST                          R21 R22 1 [1]
     1510 SETTABLEKS                       R21 R20 K120 ["Shirt"]
     1512 NEWTABLE                         R21 0 1
     1514 LOADK                            R22 K81 ["HairAccessory"]
     1515 SETLIST                          R21 R22 1 [1]
     1517 SETTABLEKS                       R21 R20 K121 ["Pants"]
     1519 NEWTABLE                         R21 0 1
     1521 LOADK                            R22 K82 ["UGC_BODY_PARTS"]
     1522 SETLIST                          R21 R22 1 [1]
     1524 SETTABLEKS                       R21 R20 K327 ["AdGui"]
     1526 JUMP                             ; [+101]
     1527 DUPTABLE                         R20 K340 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1528 NEWTABLE                         R21 0 1
     1530 LOADK                            R22 K73 ["setmetatable"]
     1531 SETLIST                          R21 R22 1 [1]
     1533 SETTABLEKS                       R21 R20 K319 ["Sound"]
     1535 NEWTABLE                         R21 0 1
     1537 LOADK                            R22 K74 [setmetatable]
     1538 SETLIST                          R21 R22 1 [1]
     1540 SETTABLEKS                       R21 R20 K178 ["Decal"]
     1542 NEWTABLE                         R21 0 1
     1544 LOADK                            R22 K75 ["Root"]
     1545 SETLIST                          R21 R22 1 [1]
     1547 SETTABLEKS                       R21 R20 K320 ["VideoFrame"]
     1549 NEWTABLE                         R21 0 1
     1551 LOADK                            R22 K76 ["HumanoidRootNode"]
     1552 SETLIST                          R21 R22 1 [1]
     1554 SETTABLEKS                       R21 R20 K321 ["PackageLink"]
     1556 NEWTABLE                         R21 0 3
     1558 LOADK                            R22 K85 [Enum.AssetType.DynamicHead]
     1559 LOADK                            R23 K86 [Enum.AssetType.Torso]
     1560 LOADK                            R24 K87 ["LeftArm"]
     1561 SETLIST                          R21 R22 3 [1]
     1563 SETTABLEKS                       R21 R20 K322 ["CharacterMesh"]
     1565 NEWTABLE                         R21 0 1
     1567 LOADK                            R22 K34 ["Plastic"]
     1568 SETLIST                          R21 R22 1 [1]
     1570 SETTABLEKS                       R21 R20 K323 ["Tool"]
     1572 NEWTABLE                         R21 0 8
     1574 LOADK                            R22 K88 [Enum.AssetType.LeftArm]
     1575 LOADK                            R23 K89 ["RightArm"]
     1576 LOADK                            R24 K90 [Enum.AssetType.RightArm]
     1577 LOADK                            R25 K91 ["LeftLeg"]
     1578 LOADK                            R26 K92 [Enum.AssetType.LeftLeg]
     1579 LOADK                            R27 K93 ["RightLeg"]
     1580 LOADK                            R28 K94 [Enum.AssetType.RightLeg]
     1581 LOADK                            R29 K95 [Enum.AssetType.EyebrowAccessory]
     1582 SETLIST                          R21 R22 8 [1]
     1584 SETTABLEKS                       R21 R20 K339 ["Sky"]
     1586 NEWTABLE                         R21 0 1
     1588 LOADK                            R22 K96 [Enum.AssetType.EyelashAccessory]
     1589 SETLIST                          R21 R22 1 [1]
     1591 SETTABLEKS                       R21 R20 K324 ["Trail"]
     1593 NEWTABLE                         R21 0 1
     1595 LOADK                            R22 K96 [Enum.AssetType.EyelashAccessory]
     1596 SETLIST                          R21 R22 1 [1]
     1598 SETTABLEKS                       R21 R20 K325 ["Beam"]
     1600 NEWTABLE                         R21 0 1
     1602 LOADK                            R22 K79 ["EyebrowAccessory"]
     1603 SETLIST                          R21 R22 1 [1]
     1605 SETTABLEKS                       R21 R20 K326 ["ShirtGraphic"]
     1607 NEWTABLE                         R21 0 1
     1609 LOADK                            R22 K80 ["EyelashAccessory"]
     1610 SETLIST                          R21 R22 1 [1]
     1612 SETTABLEKS                       R21 R20 K120 ["Shirt"]
     1614 NEWTABLE                         R21 0 1
     1616 LOADK                            R22 K81 ["HairAccessory"]
     1617 SETLIST                          R21 R22 1 [1]
     1619 SETTABLEKS                       R21 R20 K121 ["Pants"]
     1621 NEWTABLE                         R21 0 1
     1623 LOADK                            R22 K82 ["UGC_BODY_PARTS"]
     1624 SETLIST                          R21 R22 1 [1]
     1626 SETTABLEKS                       R21 R20 K327 ["AdGui"]
     1628 CALL                             R18 2 1
     1629 SETTABLEKS                       R18 R15 K353 ["PACKAGE_CONTENT_ID_FIELDS"]
     1631 LOADK                            R18 K98 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
     1632 SETTABLEKS                       R18 R15 K355 ["ExperienceAuthHeaderKey"]
     1634 LOADK                            R18 K100 ["RightShoeAccessory"]
     1635 SETTABLEKS                       R18 R15 K357 ["ContentType"]
     1637 LOADK                            R18 K102 [Enum.AssetType.LeftShoeAccessory]
     1638 SETTABLEKS                       R18 R15 K359 ["ApplicationJson"]
     1640 LOADK                            R18 K104 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
     1641 SETTABLEKS                       R18 R15 K361 ["GUIDAttributeName"]
     1643 LOADN                            R18 100
     1644 SETTABLEKS                       R18 R15 K362 ["GUIDAttributeMaxLength"]
     1646 LOADK                            R18 K107 [Enum.BundleType.BodyParts]
     1647 SETTABLEKS                       R18 R15 K364 ["AlternateMeshIdAttributeName"]
     1649 MOVE                             R18 R6
     1650 CALL                             R18 0 1
     1651 JUMPIFNOT                        R18 ; [+34]
     1652 DUPTABLE                         R18 K368 [{"RENDER_MESH", "OUTER_CAGE", "INNER_CAGE"}]
     1653 LOADK                            R19 K113 [{"R6", "R15ArtistIntent", "R15Fixed"}]
     1654 SETTABLEKS                       R19 R18 K365 ["RENDER_MESH"]
     1656 LOADK                            R19 K114 ["FOLDER_NAMES"]
     1657 SETTABLEKS                       R19 R18 K366 ["OUTER_CAGE"]
     1659 LOADK                            R19 K115 ["HumanoidRootPart"]
     1660 SETTABLEKS                       R19 R18 K367 ["INNER_CAGE"]
     1662 SETTABLEKS                       R18 R15 K372 ["MESH_CONTENT_TYPE"]
     1664 NEWTABLE                         R18 4 0
     1666 GETTABLEKS                       R20 R15 K372 ["MESH_CONTENT_TYPE"]
     1668 GETTABLEKS                       R19 R20 K365 ["RENDER_MESH"]
     1670 LOADK                            R20 K33 ["Material"]
     1671 SETTABLE                         R20 R18 R19
     1672 GETTABLEKS                       R20 R15 K372 ["MESH_CONTENT_TYPE"]
     1674 GETTABLEKS                       R19 R20 K366 ["OUTER_CAGE"]
     1676 LOADK                            R20 K40 ["LocalScript"]
     1677 SETTABLE                         R20 R18 R19
     1678 GETTABLEKS                       R20 R15 K372 ["MESH_CONTENT_TYPE"]
     1680 GETTABLEKS                       R19 R20 K367 ["INNER_CAGE"]
     1682 LOADK                            R20 K41 ["ModuleScript"]
     1683 SETTABLE                         R20 R18 R19
     1684 SETTABLEKS                       R18 R15 K373 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1686 NEWTABLE                         R18 0 5
     1688 GETTABLEKS                       R20 R3 K374 ["UploadCategory"]
     1690 GETTABLEKS                       R19 R20 K375 ["TORSO_AND_LIMBS"]
     1692 GETTABLEKS                       R21 R3 K374 ["UploadCategory"]
     1694 GETTABLEKS                       R20 R21 K376 ["DYNAMIC_HEAD"]
     1696 GETTABLEKS                       R22 R3 K374 ["UploadCategory"]
     1698 GETTABLEKS                       R21 R22 K377 ["LAYERED_CLOTHING"]
     1700 GETTABLEKS                       R23 R3 K374 ["UploadCategory"]
     1702 GETTABLEKS                       R22 R23 K378 ["RIGID_ACCESSORY"]
     1704 GETTABLEKS                       R24 R3 K374 ["UploadCategory"]
     1706 GETTABLEKS                       R23 R24 K379 ["EMOTE_ANIMATION"]
     1708 SETLIST                          R18 R19 5 [1]
     1710 SETTABLEKS                       R18 R15 K380 ["AllAssetUploadCategories"]
     1712 NEWTABLE                         R18 0 2
     1714 GETTABLEKS                       R20 R3 K374 ["UploadCategory"]
     1716 GETTABLEKS                       R19 R20 K381 ["FULL_BODY"]
     1718 GETTABLEKS                       R21 R3 K374 ["UploadCategory"]
     1720 GETTABLEKS                       R20 R21 K382 ["BOTH_SHOES"]
     1722 SETLIST                          R18 R19 2 [1]
     1724 SETTABLEKS                       R18 R15 K383 ["AllBundleUploadCategories"]
     1726 NEWTABLE                         R18 0 0
     1728 SETTABLEKS                       R18 R15 K384 ["AllUploadCategories"]
     1730 GETTABLEKS                       R18 R3 K374 ["UploadCategory"]
     1732 LOADNIL                          R19
     1733 LOADNIL                          R20
     1734 FORGPREP                         R18
     1735 GETTABLEKS                       R24 R15 K384 ["AllUploadCategories"]
     1737 FASTCALL2                        TABLE_INSERT R24 R22 ; [+4]
     1739 MOVE                             R25 R22
     1740 GETIMPORT                        R23 K128 [table.insert]
     1742 CALL                             R23 2 0
     1743 FORGLOOP                         R18 2 ; [-9]
     1745 NEWTABLE                         R18 8 0
     1747 GETIMPORT                        R19 K86 [Enum.AssetType.Torso]
     1749 LOADB                            R20 1
     1750 SETTABLE                         R20 R18 R19
     1751 GETIMPORT                        R19 K88 [Enum.AssetType.LeftArm]
     1753 LOADB                            R20 1
     1754 SETTABLE                         R20 R18 R19
     1755 GETIMPORT                        R19 K90 [Enum.AssetType.RightArm]
     1757 LOADB                            R20 1
     1758 SETTABLE                         R20 R18 R19
     1759 GETIMPORT                        R19 K92 [Enum.AssetType.LeftLeg]
     1761 LOADB                            R20 1
     1762 SETTABLE                         R20 R18 R19
     1763 GETIMPORT                        R19 K94 [Enum.AssetType.RightLeg]
     1765 LOADB                            R20 1
     1766 SETTABLE                         R20 R18 R19
     1767 SETTABLEKS                       R18 R15 K385 ["AssetUploadsWithFolderStructure"]
     1769 NEWTABLE                         R18 2 0
     1771 GETIMPORT                        R19 K95 [Enum.AssetType.EyebrowAccessory]
     1773 LOADB                            R20 1
     1774 SETTABLE                         R20 R18 R19
     1775 GETIMPORT                        R19 K96 [Enum.AssetType.EyelashAccessory]
     1777 LOADB                            R20 1
     1778 SETTABLE                         R20 R18 R19
     1779 SETTABLEKS                       R18 R15 K386 ["SkinningTransferRequiredTypes"]
     1781 RETURN                           R15 1
