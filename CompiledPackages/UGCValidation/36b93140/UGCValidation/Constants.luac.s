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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Cryo"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["ValidationRulesUtil"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       23 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K10 ["flags"]
       30 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidationFixConstantsTypoLeg"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K10 ["flags"]
       37 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K10 ["flags"]
       44 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateCheckHSROwner"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K10 ["flags"]
       51 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateCheckTexturePackOwner"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K10 ["flags"]
       58 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationAnimationPackSupport"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K17 [game]
       63 LOADK                            R11 K18 ["UGCValidateMakeupDecalUVProperties"]
       64 LOADB                            R12 0
       65 NAMECALL                         R9 R9 K19 ["DefineFastFlag"]
       67 CALL                             R9 3 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K10 ["flags"]
       72 GETTABLEKS                       R11 R11 K20 ["getFFlagUGCValidationAllowEngineDefaultPartSurfaces"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K4 [require]
       77 GETTABLEKS                       R12 R0 K10 ["flags"]
       79 GETTABLEKS                       R12 R12 K21 ["getFFlagUGCValidateAllowEmissives"]
       81 CALL                             R11 1 1
       82 DUPCLOSURE                       R12 K22 [PROTO_0]
       83 NEWTABLE                         R13 64 0
       85 NAMECALL                         R14 R2 K23 ["getRules"]
       87 CALL                             R14 1 1
       88 GETTABLEKS                       R14 R14 K24 ["MeshRules"]
       90 GETTABLEKS                       R14 R14 K25 ["AccessoryMaxTriangles"]
       92 SETTABLEKS                       R14 R13 K26 ["MAX_HAT_TRIANGLES"]
       94 NAMECALL                         R14 R2 K23 ["getRules"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R14 R14 K27 ["TextureRules"]
       99 GETTABLEKS                       R14 R14 K28 ["MaxTextureSize"]
      101 SETTABLEKS                       R14 R13 K29 ["MAX_TEXTURE_SIZE"]
      103 NEWTABLE                         R15 0 1
      105 GETIMPORT                        R16 K33 [Enum.Material.Plastic]
      107 SETLIST                          R15 R16 1 [1]
      109 NEWTABLE                         R16 0 0
      111 GETIMPORT                        R17 K35 [pairs]
      113 MOVE                             R18 R15
      114 CALL                             R17 1 3
      115 FORGPREP_NEXT                    R17
      116 LOADB                            R22 1
      117 SETTABLE                         R22 R16 R21
      118 FORGLOOP                         R17 2 ; [-3]
      120 MOVE                             R14 R16
      121 SETTABLEKS                       R14 R13 K36 ["MATERIAL_WHITELIST"]
      123 NEWTABLE                         R14 0 7
      125 LOADK                            R15 K37 ["Script"]
      126 LOADK                            R16 K38 ["LocalScript"]
      127 LOADK                            R17 K39 ["ModuleScript"]
      128 LOADK                            R18 K40 ["ParticleEmitter"]
      129 LOADK                            R19 K41 ["Fire"]
      130 LOADK                            R20 K42 ["Smoke"]
      131 LOADK                            R21 K43 ["Sparkles"]
      132 SETLIST                          R14 R15 7 [1]
      134 SETTABLEKS                       R14 R13 K44 ["BANNED_CLASS_NAMES"]
      136 NEWTABLE                         R14 0 5
      138 LOADK                            R15 K45 ["Torso"]
      139 LOADK                            R16 K46 ["Left Leg"]
      140 LOADK                            R17 K47 ["Right Leg"]
      141 LOADK                            R18 K48 ["Left Arm"]
      142 LOADK                            R19 K49 ["Right Arm"]
      143 SETLIST                          R14 R15 5 [1]
      145 SETTABLEKS                       R14 R13 K50 ["R6_BODY_PARTS"]
      147 NEWTABLE                         R14 0 15
      149 LOADK                            R15 K51 ["Head"]
      150 LOADK                            R16 K52 ["UpperTorso"]
      151 LOADK                            R17 K53 ["LowerTorso"]
      152 LOADK                            R18 K54 ["LeftUpperLeg"]
      153 LOADK                            R19 K55 ["LeftLowerLeg"]
      154 LOADK                            R20 K56 ["LeftFoot"]
      155 LOADK                            R21 K57 ["RightUpperLeg"]
      156 LOADK                            R22 K58 ["RightLowerLeg"]
      157 LOADK                            R23 K59 ["RightFoot"]
      158 LOADK                            R24 K60 ["LeftUpperArm"]
      159 LOADK                            R25 K61 ["LeftLowerArm"]
      160 LOADK                            R26 K62 ["LeftHand"]
      161 LOADK                            R27 K63 ["RightUpperArm"]
      162 LOADK                            R28 K64 ["RightLowerArm"]
      163 LOADK                            R29 K65 ["RightHand"]
      164 SETLIST                          R14 R15 15 [1]
      166 SETTABLEKS                       R14 R13 K66 ["R15_BODY_PARTS"]
      168 NEWTABLE                         R14 0 15
      170 LOADK                            R15 K67 ["Head_OuterCage"]
      171 LOADK                            R16 K68 ["UpperTorso_OuterCage"]
      172 LOADK                            R17 K69 ["LowerTorso_OuterCage"]
      173 LOADK                            R18 K70 ["LeftUpperLeg_OuterCage"]
      174 LOADK                            R19 K71 ["LeftLowerLeg_OuterCage"]
      175 LOADK                            R20 K72 ["LeftFoot_OuterCage"]
      176 LOADK                            R21 K73 ["RightUpperLeg_OuterCage"]
      177 LOADK                            R22 K74 ["RightLowerLeg_OuterCage"]
      178 LOADK                            R23 K75 ["RightFoot_OuterCage"]
      179 LOADK                            R24 K76 ["LeftUpperArm_OuterCage"]
      180 LOADK                            R25 K77 ["LeftLowerArm_OuterCage"]
      181 LOADK                            R26 K78 ["LeftHand_OuterCage"]
      182 LOADK                            R27 K79 ["RightUpperArm_OuterCage"]
      183 LOADK                            R28 K80 ["RightLowerArm_OuterCage"]
      184 LOADK                            R29 K81 ["RightHand_OuterCage"]
      185 SETLIST                          R14 R15 15 [1]
      187 SETTABLEKS                       R14 R13 K82 ["R15_CAGE_PARTS"]
      189 NEWTABLE                         R14 0 0
      191 SETTABLEKS                       R14 R13 K83 ["NAMED_R15_BODY_PARTS"]
      193 GETTABLEKS                       R14 R13 K66 ["R15_BODY_PARTS"]
      195 LOADNIL                          R15
      196 LOADNIL                          R16
      197 FORGPREP                         R14
      198 GETTABLEKS                       R19 R13 K83 ["NAMED_R15_BODY_PARTS"]
      200 SETTABLE                         R18 R19 R18
      201 FORGLOOP                         R14 2 ; [-4]
      203 GETTABLEKS                       R14 R13 K83 ["NAMED_R15_BODY_PARTS"]
      205 LOADK                            R15 K51 ["Head"]
      206 SETTABLEKS                       R15 R14 K51 ["Head"]
      208 GETTABLEKS                       R15 R13 K83 ["NAMED_R15_BODY_PARTS"]
      210 DUPTABLE                         R16 K85 [{"__index"}]
      211 DUPCLOSURE                       R17 K86 [PROTO_1]
      212 SETTABLEKS                       R17 R16 K84 ["__index"]
      214 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      216 GETIMPORT                        R14 K88 [setmetatable]
      218 CALL                             R14 2 0
      219 NEWTABLE                         R14 32 0
      221 LOADB                            R15 1
      222 SETTABLEKS                       R15 R14 K89 ["Root"]
      224 LOADB                            R15 1
      225 SETTABLEKS                       R15 R14 K90 ["HumanoidRootNode"]
      227 LOADB                            R15 1
      228 SETTABLEKS                       R15 R14 K91 ["DynamicHead"]
      230 LOADB                            R15 1
      231 SETTABLEKS                       R15 R14 K51 ["Head"]
      233 LOADB                            R15 1
      234 SETTABLEKS                       R15 R14 K52 ["UpperTorso"]
      236 LOADB                            R15 1
      237 SETTABLEKS                       R15 R14 K53 ["LowerTorso"]
      239 LOADB                            R15 1
      240 SETTABLEKS                       R15 R14 K54 ["LeftUpperLeg"]
      242 LOADB                            R15 1
      243 SETTABLEKS                       R15 R14 K55 ["LeftLowerLeg"]
      245 LOADB                            R15 1
      246 SETTABLEKS                       R15 R14 K56 ["LeftFoot"]
      248 LOADB                            R15 1
      249 SETTABLEKS                       R15 R14 K57 ["RightUpperLeg"]
      251 LOADB                            R15 1
      252 SETTABLEKS                       R15 R14 K58 ["RightLowerLeg"]
      254 LOADB                            R15 1
      255 SETTABLEKS                       R15 R14 K59 ["RightFoot"]
      257 LOADB                            R15 1
      258 SETTABLEKS                       R15 R14 K60 ["LeftUpperArm"]
      260 LOADB                            R15 1
      261 SETTABLEKS                       R15 R14 K61 ["LeftLowerArm"]
      263 LOADB                            R15 1
      264 SETTABLEKS                       R15 R14 K62 ["LeftHand"]
      266 LOADB                            R15 1
      267 SETTABLEKS                       R15 R14 K63 ["RightUpperArm"]
      269 LOADB                            R15 1
      270 SETTABLEKS                       R15 R14 K64 ["RightLowerArm"]
      272 LOADB                            R15 1
      273 SETTABLEKS                       R15 R14 K65 ["RightHand"]
      275 SETTABLEKS                       R14 R13 K92 ["R15_STANDARD_JOINT_NAMES"]
      277 DUPTABLE                         R14 K96 [{["RBX_Leader"] = True, ["RBX_Follower"] = True}]
      278 SETTABLEKS                       R14 R13 K97 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      280 GETTABLEKS                       R14 R13 K66 ["R15_BODY_PARTS"]
      282 LOADNIL                          R15
      283 LOADNIL                          R16
      284 FORGPREP                         R14
      285 GETTABLEKS                       R19 R13 K92 ["R15_STANDARD_JOINT_NAMES"]
      287 LOADB                            R20 1
      288 SETTABLE                         R20 R19 R18
      289 FORGLOOP                         R14 2 ; [-5]
      291 NEWTABLE                         R14 0 18
      293 LOADK                            R15 K51 ["Head"]
      294 LOADK                            R16 K52 ["UpperTorso"]
      295 LOADK                            R17 K53 ["LowerTorso"]
      296 LOADK                            R18 K54 ["LeftUpperLeg"]
      297 LOADK                            R19 K55 ["LeftLowerLeg"]
      298 LOADK                            R20 K62 ["LeftHand"]
      299 LOADK                            R21 K63 ["RightUpperArm"]
      300 LOADK                            R22 K64 ["RightLowerArm"]
      301 LOADK                            R23 K65 ["RightHand"]
      302 LOADK                            R24 K60 ["LeftUpperArm"]
      303 LOADK                            R25 K61 ["LeftLowerArm"]
      304 LOADK                            R26 K56 ["LeftFoot"]
      305 LOADK                            R27 K57 ["RightUpperLeg"]
      306 LOADK                            R28 K58 ["RightLowerLeg"]
      307 LOADK                            R29 K59 ["RightFoot"]
      308 LOADK                            R30 K98 ["EyebrowAccessory"]
      309 SETLIST                          R14 R15 16 [1]
      311 LOADK                            R15 K99 ["EyelashAccessory"]
      312 LOADK                            R16 K100 ["HairAccessory"]
      313 SETLIST                          R14 R15 2 [17]
      315 SETTABLEKS                       R14 R13 K101 ["UGC_BODY_PARTS"]
      317 DUPTABLE                         R14 K102 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      318 GETIMPORT                        R15 K104 [Enum.AssetType.DynamicHead]
      320 SETTABLEKS                       R15 R14 K51 ["Head"]
      322 GETIMPORT                        R15 K105 [Enum.AssetType.Torso]
      324 SETTABLEKS                       R15 R14 K52 ["UpperTorso"]
      326 GETIMPORT                        R15 K105 [Enum.AssetType.Torso]
      328 SETTABLEKS                       R15 R14 K53 ["LowerTorso"]
      330 GETIMPORT                        R15 K107 [Enum.AssetType.LeftArm]
      332 SETTABLEKS                       R15 R14 K60 ["LeftUpperArm"]
      334 GETIMPORT                        R15 K107 [Enum.AssetType.LeftArm]
      336 SETTABLEKS                       R15 R14 K61 ["LeftLowerArm"]
      338 GETIMPORT                        R15 K107 [Enum.AssetType.LeftArm]
      340 SETTABLEKS                       R15 R14 K62 ["LeftHand"]
      342 GETIMPORT                        R15 K109 [Enum.AssetType.RightArm]
      344 SETTABLEKS                       R15 R14 K63 ["RightUpperArm"]
      346 GETIMPORT                        R15 K109 [Enum.AssetType.RightArm]
      348 SETTABLEKS                       R15 R14 K64 ["RightLowerArm"]
      350 GETIMPORT                        R15 K109 [Enum.AssetType.RightArm]
      352 SETTABLEKS                       R15 R14 K65 ["RightHand"]
      354 GETIMPORT                        R15 K111 [Enum.AssetType.LeftLeg]
      356 SETTABLEKS                       R15 R14 K54 ["LeftUpperLeg"]
      358 GETIMPORT                        R15 K111 [Enum.AssetType.LeftLeg]
      360 SETTABLEKS                       R15 R14 K55 ["LeftLowerLeg"]
      362 GETIMPORT                        R15 K111 [Enum.AssetType.LeftLeg]
      364 SETTABLEKS                       R15 R14 K56 ["LeftFoot"]
      366 GETIMPORT                        R15 K113 [Enum.AssetType.RightLeg]
      368 SETTABLEKS                       R15 R14 K57 ["RightUpperLeg"]
      370 GETIMPORT                        R15 K113 [Enum.AssetType.RightLeg]
      372 SETTABLEKS                       R15 R14 K58 ["RightLowerLeg"]
      374 GETIMPORT                        R15 K113 [Enum.AssetType.RightLeg]
      376 SETTABLEKS                       R15 R14 K59 ["RightFoot"]
      378 GETIMPORT                        R15 K114 [Enum.AssetType.EyebrowAccessory]
      380 SETTABLEKS                       R15 R14 K98 ["EyebrowAccessory"]
      382 GETIMPORT                        R15 K115 [Enum.AssetType.EyelashAccessory]
      384 SETTABLEKS                       R15 R14 K99 ["EyelashAccessory"]
      386 GETIMPORT                        R15 K116 [Enum.AssetType.HairAccessory]
      388 SETTABLEKS                       R15 R14 K100 ["HairAccessory"]
      390 SETTABLEKS                       R14 R13 K117 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      392 DUPTABLE                         R14 K120 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      393 GETIMPORT                        R15 K121 [Enum.AssetType.LeftShoeAccessory]
      395 SETTABLEKS                       R15 R14 K118 ["LeftShoeAccessory"]
      397 GETIMPORT                        R15 K122 [Enum.AssetType.RightShoeAccessory]
      399 SETTABLEKS                       R15 R14 K119 ["RightShoeAccessory"]
      401 SETTABLEKS                       R14 R13 K123 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      403 NEWTABLE                         R14 2 0
      405 GETIMPORT                        R15 K126 [Enum.BundleType.BodyParts]
      407 GETTABLEKS                       R16 R13 K117 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      409 SETTABLE                         R16 R14 R15
      410 GETIMPORT                        R15 K126 [Enum.BundleType.BodyParts]
      412 GETTABLEKS                       R16 R13 K123 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      414 SETTABLE                         R16 R14 R15
      415 SETTABLEKS                       R14 R13 K127 ["BUNDLE_TO_ASSET_MAPPING"]
      417 NEWTABLE                         R14 0 4
      419 GETIMPORT                        R15 K104 [Enum.AssetType.DynamicHead]
      421 GETIMPORT                        R16 K114 [Enum.AssetType.EyebrowAccessory]
      423 GETIMPORT                        R17 K115 [Enum.AssetType.EyelashAccessory]
      425 GETIMPORT                        R18 K116 [Enum.AssetType.HairAccessory]
      427 SETLIST                          R14 R15 4 [1]
      429 SETTABLEKS                       R14 R13 K128 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      431 DUPTABLE                         R14 K132 [{["R6"] = "R6", ["R15ArtistIntent"] = "R15ArtistIntent", ["R15Fixed"] = "R15Fixed"}]
      432 SETTABLEKS                       R14 R13 K133 ["FOLDER_NAMES"]
      434 NEWTABLE                         R14 0 3
      436 LOADK                            R15 K51 ["Head"]
      437 LOADK                            R16 K134 ["HumanoidRootPart"]
      438 LOADK                            R17 K135 ["Humanoid"]
      439 SETLIST                          R14 R15 3 [1]
      441 SETTABLEKS                       R14 R13 K136 ["EXTRA_BANNED_NAMES"]
      443 NEWTABLE                         R14 0 6
      445 LOADK                            R15 K137 ["Body Colors"]
      446 LOADK                            R16 K138 ["Shirt Graphic"]
      447 LOADK                            R17 K139 ["Shirt"]
      448 LOADK                            R18 K140 ["Pants"]
      449 LOADK                            R19 K141 ["Health"]
      450 LOADK                            R20 K142 ["Animate"]
      451 SETLIST                          R14 R15 6 [1]
      453 GETIMPORT                        R15 K144 [ipairs]
      455 MOVE                             R16 R14
      456 CALL                             R15 1 3
      457 FORGPREP_INEXT                   R15
      458 GETTABLEKS                       R21 R13 K136 ["EXTRA_BANNED_NAMES"]
      460 FASTCALL2                        TABLE_INSERT R21 R19 ; [+4]
      462 MOVE                             R22 R19
      463 GETIMPORT                        R20 K147 [table.insert]
      465 CALL                             R20 2 0
      466 FORGLOOP                         R15 2 [inext] ; [-9]
      468 NEWTABLE                         R15 0 0
      470 SETTABLEKS                       R15 R13 K148 ["BANNED_NAMES"]
      472 NEWTABLE                         R15 0 3
      474 GETTABLEKS                       R16 R13 K50 ["R6_BODY_PARTS"]
      476 GETTABLEKS                       R17 R13 K66 ["R15_BODY_PARTS"]
      478 GETTABLEKS                       R18 R13 K136 ["EXTRA_BANNED_NAMES"]
      480 SETLIST                          R15 R16 3 [1]
      482 MOVE                             R16 R15
      483 LOADNIL                          R17
      484 LOADNIL                          R18
      485 FORGPREP                         R16
      486 MOVE                             R21 R20
      487 LOADNIL                          R22
      488 LOADNIL                          R23
      489 FORGPREP                         R21
      490 GETTABLEKS                       R26 R13 K148 ["BANNED_NAMES"]
      492 LOADB                            R27 1
      493 SETTABLE                         R27 R26 R25
      494 FORGLOOP                         R21 2 ; [-5]
      496 FORGLOOP                         R16 2 ; [-11]
      498 DUPTABLE                         R16 K155 [{["UNKNOWN"] = "Unknown", ["REVIEW_PENDING"] = "ReviewPending", ["MODERATED"] = "Moderated"}]
      499 SETTABLEKS                       R16 R13 K156 ["ASSET_STATUS"]
      501 NAMECALL                         R16 R2 K157 ["getMakeupRules"]
      503 CALL                             R16 1 1
      504 SETTABLEKS                       R16 R13 K158 ["MAKEUP_INFO"]
      506 NEWTABLE                         R16 0 0
      508 SETTABLEKS                       R16 R13 K159 ["ASSET_TYPE_INFO"]
      510 GETTABLEKS                       R18 R13 K159 ["ASSET_TYPE_INFO"]
      512 NAMECALL                         R16 R2 K160 ["getAccessoryRules"]
      514 CALL                             R16 2 0
      515 NAMECALL                         R16 R2 K161 ["getFullBodyRulesBounds"]
      517 CALL                             R16 1 1
      518 SETTABLEKS                       R16 R13 K162 ["FULL_BODY_BOUNDS"]
      520 DUPTABLE                         R16 K166 [{["Classic"] = True, ["ProportionsSlender"] = True, ["ProportionsNormal"] = True}]
      521 SETTABLEKS                       R16 R13 K167 ["AvatarPartScaleTypes"]
      523 GETTABLEKS                       R18 R13 K159 ["ASSET_TYPE_INFO"]
      525 NAMECALL                         R16 R2 K168 ["getBodyPartRules"]
      527 CALL                             R16 2 0
      528 NEWTABLE                         R16 16 0
      530 LOADNIL                          R17
      531 SETTABLEKS                       R17 R16 K51 ["Head"]
      533 LOADNIL                          R17
      534 SETTABLEKS                       R17 R16 K53 ["LowerTorso"]
      536 LOADK                            R17 K53 ["LowerTorso"]
      537 SETTABLEKS                       R17 R16 K52 ["UpperTorso"]
      539 LOADNIL                          R17
      540 SETTABLEKS                       R17 R16 K60 ["LeftUpperArm"]
      542 LOADK                            R17 K60 ["LeftUpperArm"]
      543 SETTABLEKS                       R17 R16 K61 ["LeftLowerArm"]
      545 LOADK                            R17 K61 ["LeftLowerArm"]
      546 SETTABLEKS                       R17 R16 K62 ["LeftHand"]
      548 LOADNIL                          R17
      549 SETTABLEKS                       R17 R16 K54 ["LeftUpperLeg"]
      551 LOADK                            R17 K54 ["LeftUpperLeg"]
      552 SETTABLEKS                       R17 R16 K55 ["LeftLowerLeg"]
      554 LOADNIL                          R17
      555 SETTABLEKS                       R17 R16 K63 ["RightUpperArm"]
      557 LOADK                            R17 K63 ["RightUpperArm"]
      558 SETTABLEKS                       R17 R16 K64 ["RightLowerArm"]
      560 LOADK                            R17 K64 ["RightLowerArm"]
      561 SETTABLEKS                       R17 R16 K65 ["RightHand"]
      563 LOADNIL                          R17
      564 SETTABLEKS                       R17 R16 K57 ["RightUpperLeg"]
      566 LOADK                            R17 K57 ["RightUpperLeg"]
      567 SETTABLEKS                       R17 R16 K58 ["RightLowerLeg"]
      569 SETTABLEKS                       R16 R13 K169 ["BODYPART_TO_PARENT"]
      571 MOVE                             R16 R4
      572 CALL                             R16 0 1
      573 JUMPIFNOT                        R16 ; [+11]
      574 GETTABLEKS                       R16 R13 K169 ["BODYPART_TO_PARENT"]
      576 LOADK                            R17 K58 ["RightLowerLeg"]
      577 SETTABLEKS                       R17 R16 K59 ["RightFoot"]
      579 GETTABLEKS                       R16 R13 K169 ["BODYPART_TO_PARENT"]
      581 LOADK                            R17 K55 ["LeftLowerLeg"]
      582 SETTABLEKS                       R17 R16 K56 ["LeftFoot"]
      584 JUMP                             ; [+10]
      585 GETTABLEKS                       R16 R13 K169 ["BODYPART_TO_PARENT"]
      587 LOADK                            R17 K58 ["RightLowerLeg"]
      588 SETTABLEKS                       R17 R16 K112 ["RightLeg"]
      590 GETTABLEKS                       R16 R13 K169 ["BODYPART_TO_PARENT"]
      592 LOADK                            R17 K55 ["LeftLowerLeg"]
      593 SETTABLEKS                       R17 R16 K110 ["LeftLeg"]
      595 NAMECALL                         R16 R2 K23 ["getRules"]
      597 CALL                             R16 1 1
      598 GETTABLEKS                       R16 R16 K24 ["MeshRules"]
      600 GETTABLEKS                       R16 R16 K170 ["CageMeshMaxDistanceFromRenderMesh"]
      602 SETTABLEKS                       R16 R13 K171 ["RenderVsWrapMeshMaxDiff"]
      604 DUPTABLE                         R16 K186 [{["SMALLER"] = "<", ["SMALLER_EQ"] = "<=", ["FUZZY_EQ"] = "=", ["EXACT_EQ"] = "==", ["GREATER_EQ"] = ">=", ["GREATER"] = ">", ["FOUND_IN"] = "one of the following:"}]
      605 SETTABLEKS                       R16 R13 K187 ["COMPARISON_METHODS"]
      607 GETTABLEKS                       R17 R13 K187 ["COMPARISON_METHODS"]
      609 DUPTABLE                         R18 K85 [{"__index"}]
      610 DUPCLOSURE                       R19 K188 [PROTO_2]
      611 SETTABLEKS                       R19 R18 K84 ["__index"]
      613 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
      615 GETIMPORT                        R16 K88 [setmetatable]
      617 CALL                             R16 2 0
      618 DUPTABLE                         R16 K192 [{["RUN_ON_ALL"] = "RUN_ON_ALL", ["INCLUSION_LIST"] = "INCLUSION_LIST", ["EXCLUSION_LIST"] = "EXCLUSION_LIST"}]
      619 SETTABLEKS                       R16 R13 K193 ["INCLUSION_METHODS"]
      621 GETTABLEKS                       R17 R13 K193 ["INCLUSION_METHODS"]
      623 DUPTABLE                         R18 K85 [{"__index"}]
      624 DUPCLOSURE                       R19 K194 [PROTO_3]
      625 SETTABLEKS                       R19 R18 K84 ["__index"]
      627 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
      629 GETIMPORT                        R16 K88 [setmetatable]
      631 CALL                             R16 2 0
      632 DUPTABLE                         R16 K204 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      633 DUPTABLE                         R17 K206 [{["Archivable"] = True}]
      634 SETTABLEKS                       R17 R16 K195 ["Instance"]
      636 DUPTABLE                         R17 K209 [{["Visible"] = False}]
      637 SETTABLEKS                       R17 R16 K196 ["Attachment"]
      639 DUPTABLE                         R17 K215 [{["Color3"], ["Transparency"] = 0, ["UVOffset"], ["UVScale"]}]
      640 GETIMPORT                        R18 K217 [Color3.new]
      642 LOADN                            R19 1
      643 LOADN                            R20 1
      644 LOADN                            R21 1
      645 CALL                             R18 3 1
      646 SETTABLEKS                       R18 R17 K210 ["Color3"]
      648 JUMPIFNOT                        R9 ; [+6]
      649 GETIMPORT                        R18 K219 [Vector2.new]
      651 LOADN                            R19 0
      652 LOADN                            R20 0
      653 CALL                             R18 2 1
      654 JUMP                             ; [+1]
      655 LOADNIL                          R18
      656 SETTABLEKS                       R18 R17 K213 ["UVOffset"]
      658 JUMPIFNOT                        R9 ; [+6]
      659 GETIMPORT                        R18 K219 [Vector2.new]
      661 LOADN                            R19 1
      662 LOADN                            R20 1
      663 CALL                             R18 2 1
      664 JUMP                             ; [+1]
      665 LOADNIL                          R18
      666 SETTABLEKS                       R18 R17 K214 ["UVScale"]
      668 SETTABLEKS                       R17 R16 K197 ["Decal"]
      670 DUPTABLE                         R17 K225 [{["MeshType"], ["Offset"] = {0, 0, 0}, ["VertexColor"] = {1, 1, 1}}]
      671 GETIMPORT                        R18 K227 [Enum.MeshType.FileMesh]
      673 SETTABLEKS                       R18 R17 K220 ["MeshType"]
      675 SETTABLEKS                       R17 R16 K198 ["SpecialMesh"]
      677 NEWTABLE                         R17 64 0
      679 LOADB                            R18 0
      680 SETTABLEKS                       R18 R17 K228 ["Anchored"]
      682 LOADN                            R18 0
      683 SETTABLEKS                       R18 R17 K229 ["CollisionGroupId"]
      685 GETTABLEKS                       R18 R1 K230 ["None"]
      687 SETTABLEKS                       R18 R17 K231 ["CustomPhysicalProperties"]
      689 LOADK                            R18 K232 [0.5]
      690 SETTABLEKS                       R18 R17 K233 ["Elasticity"]
      692 LOADK                            R18 K234 [0.3]
      693 SETTABLEKS                       R18 R17 K235 ["Friction"]
      695 LOADN                            R18 0
      696 SETTABLEKS                       R18 R17 K236 ["LocalTransparencyModifier"]
      698 LOADB                            R18 0
      699 SETTABLEKS                       R18 R17 K237 ["Massless"]
      701 LOADN                            R18 0
      702 SETTABLEKS                       R18 R17 K238 ["Reflectance"]
      704 LOADN                            R18 0
      705 SETTABLEKS                       R18 R17 K239 ["RootPriority"]
      707 LOADK                            R18 K222 [{0, 0, 0}]
      708 SETTABLEKS                       R18 R17 K240 ["RotVelocity"]
      710 LOADK                            R18 K222 [{0, 0, 0}]
      711 SETTABLEKS                       R18 R17 K241 ["Velocity"]
      713 LOADK                            R18 K242 [-0.5]
      714 SETTABLEKS                       R18 R17 K243 ["BackParamA"]
      716 LOADK                            R18 K232 [0.5]
      717 SETTABLEKS                       R18 R17 K244 ["BackParamB"]
      719 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      721 SETTABLEKS                       R18 R17 K248 ["BackSurfaceInput"]
      723 LOADK                            R18 K242 [-0.5]
      724 SETTABLEKS                       R18 R17 K249 ["BottomParamA"]
      726 LOADK                            R18 K232 [0.5]
      727 SETTABLEKS                       R18 R17 K250 ["BottomParamB"]
      729 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      731 SETTABLEKS                       R18 R17 K251 ["BottomSurfaceInput"]
      733 LOADK                            R18 K242 [-0.5]
      734 SETTABLEKS                       R18 R17 K252 ["FrontParamA"]
      736 LOADK                            R18 K232 [0.5]
      737 SETTABLEKS                       R18 R17 K253 ["FrontParamB"]
      739 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      741 SETTABLEKS                       R18 R17 K254 ["FrontSurfaceInput"]
      743 LOADK                            R18 K242 [-0.5]
      744 SETTABLEKS                       R18 R17 K255 ["LeftParamA"]
      746 LOADK                            R18 K232 [0.5]
      747 SETTABLEKS                       R18 R17 K256 ["LeftParamB"]
      749 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      751 SETTABLEKS                       R18 R17 K257 ["LeftSurfaceInput"]
      753 LOADK                            R18 K242 [-0.5]
      754 SETTABLEKS                       R18 R17 K258 ["RightParamA"]
      756 LOADK                            R18 K232 [0.5]
      757 SETTABLEKS                       R18 R17 K259 ["RightParamB"]
      759 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      761 SETTABLEKS                       R18 R17 K260 ["RightSurfaceInput"]
      763 LOADK                            R18 K242 [-0.5]
      764 SETTABLEKS                       R18 R17 K261 ["TopParamA"]
      766 LOADK                            R18 K232 [0.5]
      767 SETTABLEKS                       R18 R17 K262 ["TopParamB"]
      769 GETIMPORT                        R18 K247 [Enum.InputType.NoInput]
      771 SETTABLEKS                       R18 R17 K263 ["TopSurfaceInput"]
      773 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      775 SETTABLEKS                       R18 R17 K267 ["BackSurface"]
      777 MOVE                             R19 R10
      778 CALL                             R19 0 1
      779 JUMPIFNOT                        R19 ; [+16]
      780 NEWTABLE                         R18 1 0
      782 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      784 GETTABLEKS                       R19 R19 K184 ["FOUND_IN"]
      786 NEWTABLE                         R20 0 2
      788 GETIMPORT                        R21 K266 [Enum.SurfaceType.Smooth]
      790 GETIMPORT                        R22 K269 [Enum.SurfaceType.Inlet]
      792 SETLIST                          R20 R21 2 [1]
      794 SETTABLE                         R20 R18 R19
      795 JUMP                             ; [+2]
      796 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      798 SETTABLEKS                       R18 R17 K270 ["BottomSurface"]
      800 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      802 SETTABLEKS                       R18 R17 K271 ["FrontSurface"]
      804 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      806 SETTABLEKS                       R18 R17 K272 ["LeftSurface"]
      808 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      810 SETTABLEKS                       R18 R17 K273 ["RightSurface"]
      812 MOVE                             R19 R10
      813 CALL                             R19 0 1
      814 JUMPIFNOT                        R19 ; [+16]
      815 NEWTABLE                         R18 1 0
      817 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      819 GETTABLEKS                       R19 R19 K184 ["FOUND_IN"]
      821 NEWTABLE                         R20 0 2
      823 GETIMPORT                        R21 K266 [Enum.SurfaceType.Smooth]
      825 GETIMPORT                        R22 K275 [Enum.SurfaceType.Studs]
      827 SETLIST                          R20 R21 2 [1]
      829 SETTABLE                         R20 R18 R19
      830 JUMP                             ; [+2]
      831 GETIMPORT                        R18 K266 [Enum.SurfaceType.Smooth]
      833 SETTABLEKS                       R18 R17 K276 ["TopSurface"]
      835 NEWTABLE                         R18 1 0
      837 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      839 GETTABLEKS                       R19 R19 K178 ["EXACT_EQ"]
      841 LOADN                            R20 0
      842 SETTABLE                         R20 R18 R19
      843 SETTABLEKS                       R18 R17 K211 ["Transparency"]
      845 NEWTABLE                         R18 2 0
      847 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      849 GETTABLEKS                       R19 R19 K176 ["FUZZY_EQ"]
      851 GETIMPORT                        R20 K278 [BrickColor.new]
      853 LOADK                            R21 K279 ["Medium stone grey"]
      854 CALL                             R20 1 1
      855 GETTABLEKS                       R20 R20 K280 ["Color"]
      857 SETTABLE                         R20 R18 R19
      858 GETTABLEKS                       R19 R13 K193 ["INCLUSION_METHODS"]
      860 GETTABLEKS                       R19 R19 K191 ["EXCLUSION_LIST"]
      862 NEWTABLE                         R20 0 6
      864 GETIMPORT                        R21 K104 [Enum.AssetType.DynamicHead]
      866 GETIMPORT                        R22 K105 [Enum.AssetType.Torso]
      868 GETIMPORT                        R23 K107 [Enum.AssetType.LeftArm]
      870 GETIMPORT                        R24 K109 [Enum.AssetType.RightArm]
      872 GETIMPORT                        R25 K111 [Enum.AssetType.LeftLeg]
      874 GETIMPORT                        R26 K113 [Enum.AssetType.RightLeg]
      876 SETLIST                          R20 R21 6 [1]
      878 SETTABLE                         R20 R18 R19
      879 SETTABLEKS                       R18 R17 K280 ["Color"]
      881 SETTABLEKS                       R17 R16 K199 ["BasePart"]
      883 DUPTABLE                         R17 K282 [{"Shape"}]
      884 GETIMPORT                        R18 K285 [Enum.PartType.Block]
      886 SETTABLEKS                       R18 R17 K281 ["Shape"]
      888 SETTABLEKS                       R17 R16 K200 ["Part"]
      890 DUPTABLE                         R17 K290 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      891 MOVE                             R19 R5
      892 CALL                             R19 0 1
      893 JUMPIFNOT                        R19 ; [+55]
      894 NEWTABLE                         R18 0 2
      896 NEWTABLE                         R19 2 0
      898 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
      900 GETTABLEKS                       R20 R20 K184 ["FOUND_IN"]
      902 NEWTABLE                         R21 0 2
      904 GETIMPORT                        R22 K292 [Enum.AlphaMode.Overlay]
      906 GETIMPORT                        R23 K293 [Enum.AlphaMode.Transparency]
      908 SETLIST                          R21 R22 2 [1]
      910 SETTABLE                         R21 R19 R20
      911 GETTABLEKS                       R20 R13 K193 ["INCLUSION_METHODS"]
      913 GETTABLEKS                       R20 R20 K190 ["INCLUSION_LIST"]
      915 NEWTABLE                         R21 0 2
      917 GETIMPORT                        R22 K115 [Enum.AssetType.EyelashAccessory]
      919 GETIMPORT                        R23 K114 [Enum.AssetType.EyebrowAccessory]
      921 SETLIST                          R21 R22 2 [1]
      923 SETTABLE                         R21 R19 R20
      924 NEWTABLE                         R20 2 0
      926 GETTABLEKS                       R21 R13 K187 ["COMPARISON_METHODS"]
      928 GETTABLEKS                       R21 R21 K178 ["EXACT_EQ"]
      930 GETIMPORT                        R22 K292 [Enum.AlphaMode.Overlay]
      932 SETTABLE                         R22 R20 R21
      933 GETTABLEKS                       R21 R13 K193 ["INCLUSION_METHODS"]
      935 GETTABLEKS                       R21 R21 K191 ["EXCLUSION_LIST"]
      937 NEWTABLE                         R22 0 2
      939 GETIMPORT                        R23 K115 [Enum.AssetType.EyelashAccessory]
      941 GETIMPORT                        R24 K114 [Enum.AssetType.EyebrowAccessory]
      943 SETLIST                          R22 R23 2 [1]
      945 SETTABLE                         R22 R20 R21
      946 SETLIST                          R18 R19 2 [1]
      948 JUMP                             ; [+2]
      949 GETIMPORT                        R18 K292 [Enum.AlphaMode.Overlay]
      951 SETTABLEKS                       R18 R17 K286 ["AlphaMode"]
      953 MOVE                             R19 R11
      954 CALL                             R19 0 1
      955 JUMPIFNOT                        R19 ; [+2]
      956 LOADNIL                          R18
      957 JUMP                             ; [+2]
      958 GETIMPORT                        R18 K296 [Content.none]
      960 SETTABLEKS                       R18 R17 K287 ["EmissiveMaskContent"]
      962 MOVE                             R19 R11
      963 CALL                             R19 0 1
      964 JUMPIFNOT                        R19 ; [+15]
      965 NEWTABLE                         R18 2 0
      967 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      969 GETTABLEKS                       R19 R19 K180 ["GREATER_EQ"]
      971 LOADN                            R20 0
      972 SETTABLE                         R20 R18 R19
      973 GETTABLEKS                       R19 R13 K187 ["COMPARISON_METHODS"]
      975 GETTABLEKS                       R19 R19 K174 ["SMALLER_EQ"]
      977 LOADN                            R20 40
      978 SETTABLE                         R20 R18 R19
      979 JUMP                             ; [+1]
      980 LOADN                            R18 1
      981 SETTABLEKS                       R18 R17 K288 ["EmissiveStrength"]
      983 MOVE                             R19 R11
      984 CALL                             R19 0 1
      985 JUMPIFNOT                        R19 ; [+2]
      986 LOADNIL                          R18
      987 JUMP                             ; [+6]
      988 GETIMPORT                        R18 K217 [Color3.new]
      990 LOADN                            R19 1
      991 LOADN                            R20 1
      992 LOADN                            R21 1
      993 CALL                             R18 3 1
      994 SETTABLEKS                       R18 R17 K289 ["EmissiveTint"]
      996 SETTABLEKS                       R17 R16 K201 ["SurfaceAppearance"]
      998 DUPTABLE                         R17 K302 [{["Enabled"] = True, ["CageOrigin"], ["ReferenceOrigin"], ["ImportOrigin"], ["BindOffset"]}]
      999 DUPTABLE                         R18 K305 [{"PositionMagnitude", "Orientation"}]
     1000 NEWTABLE                         R19 1 0
     1002 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1004 GETTABLEKS                       R20 R20 K174 ["SMALLER_EQ"]
     1006 LOADN                            R21 10
     1007 SETTABLE                         R21 R19 R20
     1008 SETTABLEKS                       R19 R18 K303 ["PositionMagnitude"]
     1010 NEWTABLE                         R19 1 0
     1012 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1014 GETTABLEKS                       R20 R20 K178 ["EXACT_EQ"]
     1016 LOADK                            R21 K222 [{0, 0, 0}]
     1017 SETTABLE                         R21 R19 R20
     1018 SETTABLEKS                       R19 R18 K304 ["Orientation"]
     1020 SETTABLEKS                       R18 R17 K298 ["CageOrigin"]
     1022 DUPTABLE                         R18 K305 [{"PositionMagnitude", "Orientation"}]
     1023 NEWTABLE                         R19 1 0
     1025 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1027 GETTABLEKS                       R20 R20 K174 ["SMALLER_EQ"]
     1029 LOADN                            R21 10
     1030 SETTABLE                         R21 R19 R20
     1031 SETTABLEKS                       R19 R18 K303 ["PositionMagnitude"]
     1033 NEWTABLE                         R19 1 0
     1035 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1037 GETTABLEKS                       R20 R20 K178 ["EXACT_EQ"]
     1039 LOADK                            R21 K222 [{0, 0, 0}]
     1040 SETTABLE                         R21 R19 R20
     1041 SETTABLEKS                       R19 R18 K304 ["Orientation"]
     1043 SETTABLEKS                       R18 R17 K299 ["ReferenceOrigin"]
     1045 DUPTABLE                         R18 K306 [{"PositionMagnitude"}]
     1046 NEWTABLE                         R19 1 0
     1048 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1050 GETTABLEKS                       R20 R20 K174 ["SMALLER_EQ"]
     1052 LOADN                            R21 8
     1053 SETTABLE                         R21 R19 R20
     1054 SETTABLEKS                       R19 R18 K303 ["PositionMagnitude"]
     1056 SETTABLEKS                       R18 R17 K300 ["ImportOrigin"]
     1058 DUPTABLE                         R18 K308 [{"Position", "Orientation"}]
     1059 NEWTABLE                         R19 1 0
     1061 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1063 GETTABLEKS                       R20 R20 K178 ["EXACT_EQ"]
     1065 LOADK                            R21 K222 [{0, 0, 0}]
     1066 SETTABLE                         R21 R19 R20
     1067 SETTABLEKS                       R19 R18 K307 ["Position"]
     1069 NEWTABLE                         R19 1 0
     1071 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1073 GETTABLEKS                       R20 R20 K178 ["EXACT_EQ"]
     1075 LOADK                            R21 K222 [{0, 0, 0}]
     1076 SETTABLE                         R21 R19 R20
     1077 SETTABLEKS                       R19 R18 K304 ["Orientation"]
     1079 SETTABLEKS                       R18 R17 K301 ["BindOffset"]
     1081 SETTABLEKS                       R17 R16 K202 ["WrapLayer"]
     1083 DUPTABLE                         R17 K309 [{"CageOrigin", "ImportOrigin"}]
     1084 DUPTABLE                         R18 K305 [{"PositionMagnitude", "Orientation"}]
     1085 NEWTABLE                         R19 1 0
     1087 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1089 GETTABLEKS                       R20 R20 K174 ["SMALLER_EQ"]
     1091 LOADN                            R21 10
     1092 SETTABLE                         R21 R19 R20
     1093 SETTABLEKS                       R19 R18 K303 ["PositionMagnitude"]
     1095 NEWTABLE                         R19 1 0
     1097 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1099 GETTABLEKS                       R20 R20 K178 ["EXACT_EQ"]
     1101 LOADK                            R21 K222 [{0, 0, 0}]
     1102 SETTABLE                         R21 R19 R20
     1103 SETTABLEKS                       R19 R18 K304 ["Orientation"]
     1105 SETTABLEKS                       R18 R17 K298 ["CageOrigin"]
     1107 DUPTABLE                         R18 K306 [{"PositionMagnitude"}]
     1108 NEWTABLE                         R19 1 0
     1110 GETTABLEKS                       R20 R13 K187 ["COMPARISON_METHODS"]
     1112 GETTABLEKS                       R20 R20 K174 ["SMALLER_EQ"]
     1114 LOADN                            R21 8
     1115 SETTABLE                         R21 R19 R20
     1116 SETTABLEKS                       R19 R18 K303 ["PositionMagnitude"]
     1118 SETTABLEKS                       R18 R17 K300 ["ImportOrigin"]
     1120 SETTABLEKS                       R17 R16 K203 ["WrapTarget"]
     1122 SETTABLEKS                       R16 R13 K310 ["PROPERTIES"]
     1124 DUPTABLE                         R16 K313 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1125 NEWTABLE                         R17 0 2
     1127 LOADK                            R18 K314 ["MeshId"]
     1128 LOADK                            R19 K315 ["TextureId"]
     1129 SETLIST                          R17 R18 2 [1]
     1131 SETTABLEKS                       R17 R16 K198 ["SpecialMesh"]
     1133 NEWTABLE                         R17 0 2
     1135 LOADK                            R18 K314 ["MeshId"]
     1136 LOADK                            R19 K316 ["TextureID"]
     1137 SETLIST                          R17 R18 2 [1]
     1139 SETTABLEKS                       R17 R16 K311 ["MeshPart"]
     1141 NEWTABLE                         R17 0 4
     1143 LOADK                            R18 K317 ["ColorMap"]
     1144 LOADK                            R19 K318 ["MetalnessMap"]
     1145 LOADK                            R20 K319 ["NormalMap"]
     1146 LOADK                            R21 K320 ["RoughnessMap"]
     1147 SETLIST                          R17 R18 4 [1]
     1149 SETTABLEKS                       R17 R16 K201 ["SurfaceAppearance"]
     1151 NEWTABLE                         R17 0 4
     1153 LOADK                            R18 K317 ["ColorMap"]
     1154 LOADK                            R19 K318 ["MetalnessMap"]
     1155 LOADK                            R20 K319 ["NormalMap"]
     1156 LOADK                            R21 K320 ["RoughnessMap"]
     1157 SETLIST                          R17 R18 4 [1]
     1159 SETTABLEKS                       R17 R16 K197 ["Decal"]
     1161 NEWTABLE                         R17 0 2
     1163 LOADK                            R18 K321 ["CageMeshId"]
     1164 LOADK                            R19 K322 ["ReferenceMeshId"]
     1165 SETLIST                          R17 R18 2 [1]
     1167 SETTABLEKS                       R17 R16 K202 ["WrapLayer"]
     1169 NEWTABLE                         R17 0 1
     1171 LOADK                            R18 K321 ["CageMeshId"]
     1172 SETLIST                          R17 R18 1 [1]
     1174 SETTABLEKS                       R17 R16 K203 ["WrapTarget"]
     1176 NEWTABLE                         R17 0 1
     1178 LOADK                            R18 K323 ["AnimationId"]
     1179 SETLIST                          R17 R18 1 [1]
     1181 SETTABLEKS                       R17 R16 K312 ["Animation"]
     1183 SETTABLEKS                       R16 R13 K324 ["CONTENT_ID_FIELDS"]
     1185 DUPTABLE                         R16 K325 [{"SurfaceAppearance"}]
     1186 NEWTABLE                         R17 0 1
     1188 LOADK                            R18 K287 ["EmissiveMaskContent"]
     1189 SETLIST                          R17 R18 1 [1]
     1191 SETTABLEKS                       R17 R16 K201 ["SurfaceAppearance"]
     1193 SETTABLEKS                       R16 R13 K326 ["CONTENT_FIELDS_WITHOUT_CONTENTID"]
     1195 MOVE                             R16 R7
     1196 CALL                             R16 0 1
     1197 JUMPIFNOT                        R16 ; [+10]
     1198 GETTABLEKS                       R17 R13 K324 ["CONTENT_ID_FIELDS"]
     1200 GETTABLEKS                       R17 R17 K201 ["SurfaceAppearance"]
     1202 FASTCALL2K                       TABLE_INSERT R17 K327 ; [+4]
     1204 LOADK                            R18 K327 ["TexturePack"]
     1205 GETIMPORT                        R16 K147 [table.insert]
     1207 CALL                             R16 2 0
     1208 MOVE                             R16 R6
     1209 CALL                             R16 0 1
     1210 JUMPIFNOT                        R16 ; [+10]
     1211 GETTABLEKS                       R17 R13 K324 ["CONTENT_ID_FIELDS"]
     1213 GETTABLEKS                       R17 R17 K202 ["WrapLayer"]
     1215 FASTCALL2K                       TABLE_INSERT R17 K328 ; [+4]
     1217 LOADK                            R18 K328 ["HSRAssetId"]
     1218 GETIMPORT                        R16 K147 [table.insert]
     1220 CALL                             R16 2 0
     1221 DUPTABLE                         R16 K329 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1222 DUPTABLE                         R17 K330 [{["MeshId"] = True, ["TextureId"] = True}]
     1223 SETTABLEKS                       R17 R16 K198 ["SpecialMesh"]
     1225 DUPTABLE                         R17 K331 [{["MeshId"] = True}]
     1226 SETTABLEKS                       R17 R16 K311 ["MeshPart"]
     1228 DUPTABLE                         R17 K332 [{["CageMeshId"] = True}]
     1229 SETTABLEKS                       R17 R16 K203 ["WrapTarget"]
     1231 DUPTABLE                         R17 K333 [{["AnimationId"] = True}]
     1232 SETTABLEKS                       R17 R16 K312 ["Animation"]
     1234 SETTABLEKS                       R16 R13 K334 ["CONTENT_ID_REQUIRED_FIELDS"]
     1236 DUPTABLE                         R16 K335 [{"MeshPart", "WrapTarget", "WrapLayer", "SurfaceAppearance"}]
     1237 DUPTABLE                         R17 K338 [{["MeshId"] = "MeshContent", ["TextureID"] = "TextureContent"}]
     1238 SETTABLEKS                       R17 R16 K311 ["MeshPart"]
     1240 DUPTABLE                         R17 K340 [{["CageMeshId"] = "CageMeshContent"}]
     1241 SETTABLEKS                       R17 R16 K203 ["WrapTarget"]
     1243 DUPTABLE                         R17 K342 [{["CageMeshId"] = "CageMeshContent", ["ReferenceMeshId"] = "ReferenceMeshContent"}]
     1244 SETTABLEKS                       R17 R16 K202 ["WrapLayer"]
     1246 DUPTABLE                         R17 K347 [{["ColorMap"] = "ColorMapContent", ["MetalnessMap"] = "MetalnessMapContent", ["NormalMap"] = "NormalMapContent", ["RoughnessMap"] = "RoughnessMapContent"}]
     1247 SETTABLEKS                       R17 R16 K201 ["SurfaceAppearance"]
     1249 SETTABLEKS                       R16 R13 K348 ["CONTENT_ID_EDITABLE_PROPERTY"]
     1251 DUPTABLE                         R16 K349 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1252 NEWTABLE                         R17 0 1
     1254 LOADK                            R18 K314 ["MeshId"]
     1255 SETLIST                          R17 R18 1 [1]
     1257 SETTABLEKS                       R17 R16 K198 ["SpecialMesh"]
     1259 NEWTABLE                         R17 0 1
     1261 LOADK                            R18 K314 ["MeshId"]
     1262 SETLIST                          R17 R18 1 [1]
     1264 SETTABLEKS                       R17 R16 K311 ["MeshPart"]
     1266 NEWTABLE                         R17 0 1
     1268 LOADK                            R18 K321 ["CageMeshId"]
     1269 SETLIST                          R17 R18 1 [1]
     1271 SETTABLEKS                       R17 R16 K203 ["WrapTarget"]
     1273 NEWTABLE                         R17 0 2
     1275 LOADK                            R18 K321 ["CageMeshId"]
     1276 LOADK                            R19 K322 ["ReferenceMeshId"]
     1277 SETLIST                          R17 R18 2 [1]
     1279 SETTABLEKS                       R17 R16 K202 ["WrapLayer"]
     1281 SETTABLEKS                       R16 R13 K350 ["MESH_CONTENT_ID_FIELDS"]
     1283 DUPTABLE                         R16 K351 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1284 NEWTABLE                         R17 0 1
     1286 LOADK                            R18 K315 ["TextureId"]
     1287 SETLIST                          R17 R18 1 [1]
     1289 SETTABLEKS                       R17 R16 K198 ["SpecialMesh"]
     1291 NEWTABLE                         R17 0 1
     1293 LOADK                            R18 K316 ["TextureID"]
     1294 SETLIST                          R17 R18 1 [1]
     1296 SETTABLEKS                       R17 R16 K311 ["MeshPart"]
     1298 NEWTABLE                         R17 0 4
     1300 LOADK                            R18 K317 ["ColorMap"]
     1301 LOADK                            R19 K318 ["MetalnessMap"]
     1302 LOADK                            R20 K319 ["NormalMap"]
     1303 LOADK                            R21 K320 ["RoughnessMap"]
     1304 SETLIST                          R17 R18 4 [1]
     1306 SETTABLEKS                       R17 R16 K201 ["SurfaceAppearance"]
     1308 NEWTABLE                         R17 0 4
     1310 LOADK                            R18 K317 ["ColorMap"]
     1311 LOADK                            R19 K318 ["MetalnessMap"]
     1312 LOADK                            R20 K319 ["NormalMap"]
     1313 LOADK                            R21 K320 ["RoughnessMap"]
     1314 SETLIST                          R17 R18 4 [1]
     1316 SETTABLEKS                       R17 R16 K197 ["Decal"]
     1318 SETTABLEKS                       R16 R13 K352 ["TEXTURE_CONTENT_ID_FIELDS"]
     1320 DUPTABLE                         R16 K353 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1321 GETIMPORT                        R19 K104 [Enum.AssetType.DynamicHead]
     1323 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1325 CALL                             R17 2 1
     1326 SETTABLEKS                       R17 R16 K91 ["DynamicHead"]
     1328 GETIMPORT                        R19 K107 [Enum.AssetType.LeftArm]
     1330 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1332 CALL                             R17 2 1
     1333 SETTABLEKS                       R17 R16 K106 ["LeftArm"]
     1335 GETIMPORT                        R19 K109 [Enum.AssetType.RightArm]
     1337 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1339 CALL                             R17 2 1
     1340 SETTABLEKS                       R17 R16 K108 ["RightArm"]
     1342 GETIMPORT                        R19 K105 [Enum.AssetType.Torso]
     1344 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1346 CALL                             R17 2 1
     1347 SETTABLEKS                       R17 R16 K45 ["Torso"]
     1349 GETIMPORT                        R19 K111 [Enum.AssetType.LeftLeg]
     1351 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1353 CALL                             R17 2 1
     1354 SETTABLEKS                       R17 R16 K110 ["LeftLeg"]
     1356 GETIMPORT                        R19 K113 [Enum.AssetType.RightLeg]
     1358 NAMECALL                         R17 R2 K354 ["getBodyPartMaxTrianglesRule"]
     1360 CALL                             R17 2 1
     1361 SETTABLEKS                       R17 R16 K112 ["RightLeg"]
     1363 SETTABLEKS                       R16 R13 K355 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1365 DUPTABLE                         R16 K362 [{["Head"] = 343, ["LeftUpperArm"] = 77, ["LeftLowerArm"] = 77, ["LeftHand"] = 86, ["RightUpperArm"] = 77, ["RightLowerArm"] = 77, ["RightHand"] = 86, ["UpperTorso"] = 257, ["LowerTorso"] = 105, ["LeftUpperLeg"] = 88, ["LeftLowerLeg"] = 88, ["LeftFoot"] = 86, ["RightUpperLeg"] = 88, ["RightLowerLeg"] = 88, ["RightFoot"] = 86}]
     1366 SETTABLEKS                       R16 R13 K363 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1368 GETTABLEKS                       R16 R1 K364 ["Dictionary"]
     1370 GETTABLEKS                       R16 R16 K365 ["join"]
     1372 GETTABLEKS                       R17 R13 K324 ["CONTENT_ID_FIELDS"]
     1374 DUPTABLE                         R18 K376 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1375 NEWTABLE                         R19 0 1
     1377 LOADK                            R20 K377 ["SoundId"]
     1378 SETLIST                          R19 R20 1 [1]
     1380 SETTABLEKS                       R19 R18 K366 ["Sound"]
     1382 NEWTABLE                         R19 0 1
     1384 LOADK                            R20 K378 ["Texture"]
     1385 SETLIST                          R19 R20 1 [1]
     1387 SETTABLEKS                       R19 R18 K197 ["Decal"]
     1389 NEWTABLE                         R19 0 1
     1391 LOADK                            R20 K379 ["Video"]
     1392 SETLIST                          R19 R20 1 [1]
     1394 SETTABLEKS                       R19 R18 K367 ["VideoFrame"]
     1396 NEWTABLE                         R19 0 1
     1398 LOADK                            R20 K380 ["PackageId"]
     1399 SETLIST                          R19 R20 1 [1]
     1401 SETTABLEKS                       R19 R18 K368 ["PackageLink"]
     1403 NEWTABLE                         R19 0 3
     1405 LOADK                            R20 K381 ["baseTextureAssetId"]
     1406 LOADK                            R21 K382 ["overlayTextureAssetId"]
     1407 LOADK                            R22 K383 ["meshAssetId"]
     1408 SETLIST                          R19 R20 3 [1]
     1410 SETTABLEKS                       R19 R18 K369 ["CharacterMesh"]
     1412 NEWTABLE                         R19 0 1
     1414 LOADK                            R20 K315 ["TextureId"]
     1415 SETLIST                          R19 R20 1 [1]
     1417 SETTABLEKS                       R19 R18 K370 ["Tool"]
     1419 NEWTABLE                         R19 0 8
     1421 LOADK                            R20 K384 ["SkyUp"]
     1422 LOADK                            R21 K385 ["SkyLf"]
     1423 LOADK                            R22 K386 ["SkyRt"]
     1424 LOADK                            R23 K387 ["SkyBk"]
     1425 LOADK                            R24 K388 ["SkyFt"]
     1426 LOADK                            R25 K389 ["SkyDn"]
     1427 LOADK                            R26 K390 ["Sun"]
     1428 LOADK                            R27 K391 ["Moon"]
     1429 SETLIST                          R19 R20 8 [1]
     1431 SETTABLEKS                       R19 R18 K371 ["Sky"]
     1433 NEWTABLE                         R19 0 1
     1435 LOADK                            R20 K392 ["texture"]
     1436 SETLIST                          R19 R20 1 [1]
     1438 SETTABLEKS                       R19 R18 K372 ["Trail"]
     1440 NEWTABLE                         R19 0 1
     1442 LOADK                            R20 K392 ["texture"]
     1443 SETLIST                          R19 R20 1 [1]
     1445 SETTABLEKS                       R19 R18 K373 ["Beam"]
     1447 NEWTABLE                         R19 0 1
     1449 LOADK                            R20 K393 ["Graphic"]
     1450 SETLIST                          R19 R20 1 [1]
     1452 SETTABLEKS                       R19 R18 K374 ["ShirtGraphic"]
     1454 NEWTABLE                         R19 0 1
     1456 LOADK                            R20 K394 ["ShirtTemplate"]
     1457 SETLIST                          R19 R20 1 [1]
     1459 SETTABLEKS                       R19 R18 K139 ["Shirt"]
     1461 NEWTABLE                         R19 0 1
     1463 LOADK                            R20 K395 ["PantsTemplate"]
     1464 SETLIST                          R19 R20 1 [1]
     1466 SETTABLEKS                       R19 R18 K140 ["Pants"]
     1468 NEWTABLE                         R19 0 1
     1470 LOADK                            R20 K396 ["FallbackImage"]
     1471 SETLIST                          R19 R20 1 [1]
     1473 SETTABLEKS                       R19 R18 K375 ["AdGui"]
     1475 CALL                             R16 2 1
     1476 SETTABLEKS                       R16 R13 K397 ["PACKAGE_CONTENT_ID_FIELDS"]
     1478 LOADK                            R16 K398 ["RBX-ExperienceAuthorization"]
     1479 SETTABLEKS                       R16 R13 K399 ["ExperienceAuthHeaderKey"]
     1481 LOADK                            R16 K400 ["Content-Type"]
     1482 SETTABLEKS                       R16 R13 K401 ["ContentType"]
     1484 LOADK                            R16 K402 ["application/json"]
     1485 SETTABLEKS                       R16 R13 K403 ["ApplicationJson"]
     1487 LOADK                            R16 K404 ["RBXGUID"]
     1488 SETTABLEKS                       R16 R13 K405 ["GUIDAttributeName"]
     1490 LOADN                            R16 100
     1491 SETTABLEKS                       R16 R13 K406 ["GUIDAttributeMaxLength"]
     1493 LOADK                            R16 K407 ["RBX_ALT_MESH_ID"]
     1494 SETTABLEKS                       R16 R13 K408 ["AlternateMeshIdAttributeName"]
     1496 DUPTABLE                         R16 K415 [{["RENDER_MESH"] = "RenderMesh", ["OUTER_CAGE"] = "OuterCage", ["INNER_CAGE"] = "InnerCage"}]
     1497 SETTABLEKS                       R16 R13 K416 ["MESH_CONTENT_TYPE"]
     1499 NEWTABLE                         R16 4 0
     1501 GETTABLEKS                       R17 R13 K416 ["MESH_CONTENT_TYPE"]
     1503 GETTABLEKS                       R17 R17 K409 ["RENDER_MESH"]
     1505 LOADK                            R18 K314 ["MeshId"]
     1506 SETTABLE                         R18 R16 R17
     1507 GETTABLEKS                       R17 R13 K416 ["MESH_CONTENT_TYPE"]
     1509 GETTABLEKS                       R17 R17 K411 ["OUTER_CAGE"]
     1511 LOADK                            R18 K321 ["CageMeshId"]
     1512 SETTABLE                         R18 R16 R17
     1513 GETTABLEKS                       R17 R13 K416 ["MESH_CONTENT_TYPE"]
     1515 GETTABLEKS                       R17 R17 K413 ["INNER_CAGE"]
     1517 LOADK                            R18 K322 ["ReferenceMeshId"]
     1518 SETTABLE                         R18 R16 R17
     1519 SETTABLEKS                       R16 R13 K417 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1521 MOVE                             R16 R8
     1522 CALL                             R16 0 1
     1523 JUMPIFNOT                        R16 ; [+82]
     1524 NEWTABLE                         R16 8 0
     1526 GETIMPORT                        R17 K419 [Enum.AssetType.ClimbAnimation]
     1528 DUPTABLE                         R18 K422 [{["modelName"] = "ClimbAnimation", ["stringValueNames"]}]
     1529 NEWTABLE                         R19 0 1
     1531 LOADK                            R20 K423 ["climb"]
     1532 SETLIST                          R19 R20 1 [1]
     1534 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1536 SETTABLE                         R18 R16 R17
     1537 GETIMPORT                        R17 K425 [Enum.AssetType.FallAnimation]
     1539 DUPTABLE                         R18 K426 [{["modelName"] = "FallAnimation", ["stringValueNames"]}]
     1540 NEWTABLE                         R19 0 1
     1542 LOADK                            R20 K427 ["fall"]
     1543 SETLIST                          R19 R20 1 [1]
     1545 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1547 SETTABLE                         R18 R16 R17
     1548 GETIMPORT                        R17 K429 [Enum.AssetType.IdleAnimation]
     1550 DUPTABLE                         R18 K430 [{["modelName"] = "IdleAnimation", ["stringValueNames"]}]
     1551 NEWTABLE                         R19 0 1
     1553 LOADK                            R20 K431 ["idle"]
     1554 SETLIST                          R19 R20 1 [1]
     1556 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1558 SETTABLE                         R18 R16 R17
     1559 GETIMPORT                        R17 K433 [Enum.AssetType.JumpAnimation]
     1561 DUPTABLE                         R18 K434 [{["modelName"] = "JumpAnimation", ["stringValueNames"]}]
     1562 NEWTABLE                         R19 0 1
     1564 LOADK                            R20 K435 ["jump"]
     1565 SETLIST                          R19 R20 1 [1]
     1567 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1569 SETTABLE                         R18 R16 R17
     1570 GETIMPORT                        R17 K437 [Enum.AssetType.RunAnimation]
     1572 DUPTABLE                         R18 K438 [{["modelName"] = "RunAnimation", ["stringValueNames"]}]
     1573 NEWTABLE                         R19 0 1
     1575 LOADK                            R20 K439 ["run"]
     1576 SETLIST                          R19 R20 1 [1]
     1578 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1580 SETTABLE                         R18 R16 R17
     1581 GETIMPORT                        R17 K441 [Enum.AssetType.SwimAnimation]
     1583 DUPTABLE                         R18 K442 [{["modelName"] = "SwimAnimation", ["stringValueNames"]}]
     1584 NEWTABLE                         R19 0 2
     1586 LOADK                            R20 K443 ["swim"]
     1587 LOADK                            R21 K444 ["swimidle"]
     1588 SETLIST                          R19 R20 2 [1]
     1590 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1592 SETTABLE                         R18 R16 R17
     1593 GETIMPORT                        R17 K446 [Enum.AssetType.WalkAnimation]
     1595 DUPTABLE                         R18 K447 [{["modelName"] = "WalkAnimation", ["stringValueNames"]}]
     1596 NEWTABLE                         R19 0 1
     1598 LOADK                            R20 K448 ["walk"]
     1599 SETLIST                          R19 R20 1 [1]
     1601 SETTABLEKS                       R19 R18 K421 ["stringValueNames"]
     1603 SETTABLE                         R18 R16 R17
     1604 SETTABLEKS                       R16 R13 K449 ["ANIMATION_ASSET_INFO"]
     1606 NEWTABLE                         R16 0 5
     1608 GETTABLEKS                       R17 R3 K450 ["UploadCategory"]
     1610 GETTABLEKS                       R17 R17 K451 ["TORSO_AND_LIMBS"]
     1612 GETTABLEKS                       R18 R3 K450 ["UploadCategory"]
     1614 GETTABLEKS                       R18 R18 K452 ["DYNAMIC_HEAD"]
     1616 GETTABLEKS                       R19 R3 K450 ["UploadCategory"]
     1618 GETTABLEKS                       R19 R19 K453 ["LAYERED_CLOTHING"]
     1620 GETTABLEKS                       R20 R3 K450 ["UploadCategory"]
     1622 GETTABLEKS                       R20 R20 K454 ["RIGID_ACCESSORY"]
     1624 GETTABLEKS                       R21 R3 K450 ["UploadCategory"]
     1626 GETTABLEKS                       R21 R21 K455 ["EMOTE_ANIMATION"]
     1628 SETLIST                          R16 R17 5 [1]
     1630 SETTABLEKS                       R16 R13 K456 ["AllAssetUploadCategories"]
     1632 MOVE                             R16 R8
     1633 CALL                             R16 0 1
     1634 JUMPIFNOT                        R16 ; [+11]
     1635 GETTABLEKS                       R17 R13 K456 ["AllAssetUploadCategories"]
     1637 GETTABLEKS                       R18 R3 K450 ["UploadCategory"]
     1639 GETTABLEKS                       R18 R18 K457 ["ANIMATION"]
     1641 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
     1643 GETIMPORT                        R16 K147 [table.insert]
     1645 CALL                             R16 2 0
     1646 NEWTABLE                         R16 0 0
     1648 SETTABLEKS                       R16 R13 K458 ["AllAssetUploadCategoriesIncludingMakeup"]
     1650 GETTABLEKS                       R16 R13 K456 ["AllAssetUploadCategories"]
     1652 LOADNIL                          R17
     1653 LOADNIL                          R18
     1654 FORGPREP                         R16
     1655 GETTABLEKS                       R22 R13 K458 ["AllAssetUploadCategoriesIncludingMakeup"]
     1657 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
     1659 MOVE                             R23 R20
     1660 GETIMPORT                        R21 K147 [table.insert]
     1662 CALL                             R21 2 0
     1663 FORGLOOP                         R16 2 ; [-9]
     1665 GETTABLEKS                       R17 R13 K458 ["AllAssetUploadCategoriesIncludingMakeup"]
     1667 GETTABLEKS                       R18 R3 K450 ["UploadCategory"]
     1669 GETTABLEKS                       R18 R18 K459 ["MAKEUP"]
     1671 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
     1673 GETIMPORT                        R16 K147 [table.insert]
     1675 CALL                             R16 2 0
     1676 NEWTABLE                         R16 0 2
     1678 GETTABLEKS                       R17 R3 K450 ["UploadCategory"]
     1680 GETTABLEKS                       R17 R17 K460 ["FULL_BODY"]
     1682 GETTABLEKS                       R18 R3 K450 ["UploadCategory"]
     1684 GETTABLEKS                       R18 R18 K461 ["BOTH_SHOES"]
     1686 SETLIST                          R16 R17 2 [1]
     1688 SETTABLEKS                       R16 R13 K462 ["AllBundleUploadCategories"]
     1690 MOVE                             R16 R8
     1691 CALL                             R16 0 1
     1692 JUMPIFNOT                        R16 ; [+11]
     1693 GETTABLEKS                       R17 R13 K462 ["AllBundleUploadCategories"]
     1695 GETTABLEKS                       R18 R3 K450 ["UploadCategory"]
     1697 GETTABLEKS                       R18 R18 K463 ["ANIMATION_PACK"]
     1699 FASTCALL2                        TABLE_INSERT R17 R18 ; [+3]
     1701 GETIMPORT                        R16 K147 [table.insert]
     1703 CALL                             R16 2 0
     1704 NEWTABLE                         R16 0 0
     1706 SETTABLEKS                       R16 R13 K464 ["AllUploadCategories"]
     1708 GETTABLEKS                       R16 R3 K450 ["UploadCategory"]
     1710 LOADNIL                          R17
     1711 LOADNIL                          R18
     1712 FORGPREP                         R16
     1713 GETTABLEKS                       R22 R13 K464 ["AllUploadCategories"]
     1715 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
     1717 MOVE                             R23 R20
     1718 GETIMPORT                        R21 K147 [table.insert]
     1720 CALL                             R21 2 0
     1721 FORGLOOP                         R16 2 ; [-9]
     1723 NEWTABLE                         R16 8 0
     1725 GETIMPORT                        R17 K105 [Enum.AssetType.Torso]
     1727 LOADB                            R18 1
     1728 SETTABLE                         R18 R16 R17
     1729 GETIMPORT                        R17 K107 [Enum.AssetType.LeftArm]
     1731 LOADB                            R18 1
     1732 SETTABLE                         R18 R16 R17
     1733 GETIMPORT                        R17 K109 [Enum.AssetType.RightArm]
     1735 LOADB                            R18 1
     1736 SETTABLE                         R18 R16 R17
     1737 GETIMPORT                        R17 K111 [Enum.AssetType.LeftLeg]
     1739 LOADB                            R18 1
     1740 SETTABLE                         R18 R16 R17
     1741 GETIMPORT                        R17 K113 [Enum.AssetType.RightLeg]
     1743 LOADB                            R18 1
     1744 SETTABLE                         R18 R16 R17
     1745 SETTABLEKS                       R16 R13 K465 ["AssetUploadsWithFolderStructure"]
     1747 NEWTABLE                         R16 2 0
     1749 GETIMPORT                        R17 K114 [Enum.AssetType.EyebrowAccessory]
     1751 LOADB                            R18 1
     1752 SETTABLE                         R18 R16 R17
     1753 GETIMPORT                        R17 K115 [Enum.AssetType.EyelashAccessory]
     1755 LOADB                            R18 1
     1756 SETTABLE                         R18 R16 R17
     1757 SETTABLEKS                       R16 R13 K466 ["SkinningTransferRequiredTypes"]
     1759 RETURN                           R13 1
