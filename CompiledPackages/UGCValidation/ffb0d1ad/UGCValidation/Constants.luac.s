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
       75 DUPCLOSURE                       R11 K21 [PROTO_0]
       76 NEWTABLE                         R12 64 0
       78 NAMECALL                         R13 R2 K22 ["getRules"]
       80 CALL                             R13 1 1
       81 GETTABLEKS                       R13 R13 K23 ["MeshRules"]
       83 GETTABLEKS                       R13 R13 K24 ["AccessoryMaxTriangles"]
       85 SETTABLEKS                       R13 R12 K25 ["MAX_HAT_TRIANGLES"]
       87 NAMECALL                         R13 R2 K22 ["getRules"]
       89 CALL                             R13 1 1
       90 GETTABLEKS                       R13 R13 K26 ["TextureRules"]
       92 GETTABLEKS                       R13 R13 K27 ["MaxTextureSize"]
       94 SETTABLEKS                       R13 R12 K28 ["MAX_TEXTURE_SIZE"]
       96 NEWTABLE                         R14 0 1
       98 GETIMPORT                        R15 K32 [Enum.Material.Plastic]
      100 SETLIST                          R14 R15 1 [1]
      102 NEWTABLE                         R15 0 0
      104 GETIMPORT                        R16 K34 [pairs]
      106 MOVE                             R17 R14
      107 CALL                             R16 1 3
      108 FORGPREP_NEXT                    R16
      109 LOADB                            R21 1
      110 SETTABLE                         R21 R15 R20
      111 FORGLOOP                         R16 2 ; [-3]
      113 MOVE                             R13 R15
      114 SETTABLEKS                       R13 R12 K35 ["MATERIAL_WHITELIST"]
      116 NEWTABLE                         R13 0 7
      118 LOADK                            R14 K36 ["Script"]
      119 LOADK                            R15 K37 ["LocalScript"]
      120 LOADK                            R16 K38 ["ModuleScript"]
      121 LOADK                            R17 K39 ["ParticleEmitter"]
      122 LOADK                            R18 K40 ["Fire"]
      123 LOADK                            R19 K41 ["Smoke"]
      124 LOADK                            R20 K42 ["Sparkles"]
      125 SETLIST                          R13 R14 7 [1]
      127 SETTABLEKS                       R13 R12 K43 ["BANNED_CLASS_NAMES"]
      129 NEWTABLE                         R13 0 5
      131 LOADK                            R14 K44 ["Torso"]
      132 LOADK                            R15 K45 ["Left Leg"]
      133 LOADK                            R16 K46 ["Right Leg"]
      134 LOADK                            R17 K47 ["Left Arm"]
      135 LOADK                            R18 K48 ["Right Arm"]
      136 SETLIST                          R13 R14 5 [1]
      138 SETTABLEKS                       R13 R12 K49 ["R6_BODY_PARTS"]
      140 NEWTABLE                         R13 0 15
      142 LOADK                            R14 K50 ["Head"]
      143 LOADK                            R15 K51 ["UpperTorso"]
      144 LOADK                            R16 K52 ["LowerTorso"]
      145 LOADK                            R17 K53 ["LeftUpperLeg"]
      146 LOADK                            R18 K54 ["LeftLowerLeg"]
      147 LOADK                            R19 K55 ["LeftFoot"]
      148 LOADK                            R20 K56 ["RightUpperLeg"]
      149 LOADK                            R21 K57 ["RightLowerLeg"]
      150 LOADK                            R22 K58 ["RightFoot"]
      151 LOADK                            R23 K59 ["LeftUpperArm"]
      152 LOADK                            R24 K60 ["LeftLowerArm"]
      153 LOADK                            R25 K61 ["LeftHand"]
      154 LOADK                            R26 K62 ["RightUpperArm"]
      155 LOADK                            R27 K63 ["RightLowerArm"]
      156 LOADK                            R28 K64 ["RightHand"]
      157 SETLIST                          R13 R14 15 [1]
      159 SETTABLEKS                       R13 R12 K65 ["R15_BODY_PARTS"]
      161 NEWTABLE                         R13 0 15
      163 LOADK                            R14 K66 ["Head_OuterCage"]
      164 LOADK                            R15 K67 ["UpperTorso_OuterCage"]
      165 LOADK                            R16 K68 ["LowerTorso_OuterCage"]
      166 LOADK                            R17 K69 ["LeftUpperLeg_OuterCage"]
      167 LOADK                            R18 K70 ["LeftLowerLeg_OuterCage"]
      168 LOADK                            R19 K71 ["LeftFoot_OuterCage"]
      169 LOADK                            R20 K72 ["RightUpperLeg_OuterCage"]
      170 LOADK                            R21 K73 ["RightLowerLeg_OuterCage"]
      171 LOADK                            R22 K74 ["RightFoot_OuterCage"]
      172 LOADK                            R23 K75 ["LeftUpperArm_OuterCage"]
      173 LOADK                            R24 K76 ["LeftLowerArm_OuterCage"]
      174 LOADK                            R25 K77 ["LeftHand_OuterCage"]
      175 LOADK                            R26 K78 ["RightUpperArm_OuterCage"]
      176 LOADK                            R27 K79 ["RightLowerArm_OuterCage"]
      177 LOADK                            R28 K80 ["RightHand_OuterCage"]
      178 SETLIST                          R13 R14 15 [1]
      180 SETTABLEKS                       R13 R12 K81 ["R15_CAGE_PARTS"]
      182 NEWTABLE                         R13 0 0
      184 SETTABLEKS                       R13 R12 K82 ["NAMED_R15_BODY_PARTS"]
      186 GETTABLEKS                       R13 R12 K65 ["R15_BODY_PARTS"]
      188 LOADNIL                          R14
      189 LOADNIL                          R15
      190 FORGPREP                         R13
      191 GETTABLEKS                       R18 R12 K82 ["NAMED_R15_BODY_PARTS"]
      193 SETTABLE                         R17 R18 R17
      194 FORGLOOP                         R13 2 ; [-4]
      196 GETTABLEKS                       R13 R12 K82 ["NAMED_R15_BODY_PARTS"]
      198 LOADK                            R14 K50 ["Head"]
      199 SETTABLEKS                       R14 R13 K50 ["Head"]
      201 GETTABLEKS                       R14 R12 K82 ["NAMED_R15_BODY_PARTS"]
      203 DUPTABLE                         R15 K84 [{"__index"}]
      204 DUPCLOSURE                       R16 K85 [PROTO_1]
      205 SETTABLEKS                       R16 R15 K83 ["__index"]
      207 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
      209 GETIMPORT                        R13 K87 [setmetatable]
      211 CALL                             R13 2 0
      212 NEWTABLE                         R13 32 0
      214 LOADB                            R14 1
      215 SETTABLEKS                       R14 R13 K88 ["Root"]
      217 LOADB                            R14 1
      218 SETTABLEKS                       R14 R13 K89 ["HumanoidRootNode"]
      220 LOADB                            R14 1
      221 SETTABLEKS                       R14 R13 K90 ["DynamicHead"]
      223 LOADB                            R14 1
      224 SETTABLEKS                       R14 R13 K50 ["Head"]
      226 LOADB                            R14 1
      227 SETTABLEKS                       R14 R13 K51 ["UpperTorso"]
      229 LOADB                            R14 1
      230 SETTABLEKS                       R14 R13 K52 ["LowerTorso"]
      232 LOADB                            R14 1
      233 SETTABLEKS                       R14 R13 K53 ["LeftUpperLeg"]
      235 LOADB                            R14 1
      236 SETTABLEKS                       R14 R13 K54 ["LeftLowerLeg"]
      238 LOADB                            R14 1
      239 SETTABLEKS                       R14 R13 K55 ["LeftFoot"]
      241 LOADB                            R14 1
      242 SETTABLEKS                       R14 R13 K56 ["RightUpperLeg"]
      244 LOADB                            R14 1
      245 SETTABLEKS                       R14 R13 K57 ["RightLowerLeg"]
      247 LOADB                            R14 1
      248 SETTABLEKS                       R14 R13 K58 ["RightFoot"]
      250 LOADB                            R14 1
      251 SETTABLEKS                       R14 R13 K59 ["LeftUpperArm"]
      253 LOADB                            R14 1
      254 SETTABLEKS                       R14 R13 K60 ["LeftLowerArm"]
      256 LOADB                            R14 1
      257 SETTABLEKS                       R14 R13 K61 ["LeftHand"]
      259 LOADB                            R14 1
      260 SETTABLEKS                       R14 R13 K62 ["RightUpperArm"]
      262 LOADB                            R14 1
      263 SETTABLEKS                       R14 R13 K63 ["RightLowerArm"]
      265 LOADB                            R14 1
      266 SETTABLEKS                       R14 R13 K64 ["RightHand"]
      268 SETTABLEKS                       R13 R12 K91 ["R15_STANDARD_JOINT_NAMES"]
      270 DUPTABLE                         R13 K95 [{["RBX_Leader"] = True, ["RBX_Follower"] = True}]
      271 SETTABLEKS                       R13 R12 K96 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      273 GETTABLEKS                       R13 R12 K65 ["R15_BODY_PARTS"]
      275 LOADNIL                          R14
      276 LOADNIL                          R15
      277 FORGPREP                         R13
      278 GETTABLEKS                       R18 R12 K91 ["R15_STANDARD_JOINT_NAMES"]
      280 LOADB                            R19 1
      281 SETTABLE                         R19 R18 R17
      282 FORGLOOP                         R13 2 ; [-5]
      284 NEWTABLE                         R13 0 18
      286 LOADK                            R14 K50 ["Head"]
      287 LOADK                            R15 K51 ["UpperTorso"]
      288 LOADK                            R16 K52 ["LowerTorso"]
      289 LOADK                            R17 K53 ["LeftUpperLeg"]
      290 LOADK                            R18 K54 ["LeftLowerLeg"]
      291 LOADK                            R19 K61 ["LeftHand"]
      292 LOADK                            R20 K62 ["RightUpperArm"]
      293 LOADK                            R21 K63 ["RightLowerArm"]
      294 LOADK                            R22 K64 ["RightHand"]
      295 LOADK                            R23 K59 ["LeftUpperArm"]
      296 LOADK                            R24 K60 ["LeftLowerArm"]
      297 LOADK                            R25 K55 ["LeftFoot"]
      298 LOADK                            R26 K56 ["RightUpperLeg"]
      299 LOADK                            R27 K57 ["RightLowerLeg"]
      300 LOADK                            R28 K58 ["RightFoot"]
      301 LOADK                            R29 K97 ["EyebrowAccessory"]
      302 SETLIST                          R13 R14 16 [1]
      304 LOADK                            R14 K98 ["EyelashAccessory"]
      305 LOADK                            R15 K99 ["HairAccessory"]
      306 SETLIST                          R13 R14 2 [17]
      308 SETTABLEKS                       R13 R12 K100 ["UGC_BODY_PARTS"]
      310 DUPTABLE                         R13 K101 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      311 GETIMPORT                        R14 K103 [Enum.AssetType.DynamicHead]
      313 SETTABLEKS                       R14 R13 K50 ["Head"]
      315 GETIMPORT                        R14 K104 [Enum.AssetType.Torso]
      317 SETTABLEKS                       R14 R13 K51 ["UpperTorso"]
      319 GETIMPORT                        R14 K104 [Enum.AssetType.Torso]
      321 SETTABLEKS                       R14 R13 K52 ["LowerTorso"]
      323 GETIMPORT                        R14 K106 [Enum.AssetType.LeftArm]
      325 SETTABLEKS                       R14 R13 K59 ["LeftUpperArm"]
      327 GETIMPORT                        R14 K106 [Enum.AssetType.LeftArm]
      329 SETTABLEKS                       R14 R13 K60 ["LeftLowerArm"]
      331 GETIMPORT                        R14 K106 [Enum.AssetType.LeftArm]
      333 SETTABLEKS                       R14 R13 K61 ["LeftHand"]
      335 GETIMPORT                        R14 K108 [Enum.AssetType.RightArm]
      337 SETTABLEKS                       R14 R13 K62 ["RightUpperArm"]
      339 GETIMPORT                        R14 K108 [Enum.AssetType.RightArm]
      341 SETTABLEKS                       R14 R13 K63 ["RightLowerArm"]
      343 GETIMPORT                        R14 K108 [Enum.AssetType.RightArm]
      345 SETTABLEKS                       R14 R13 K64 ["RightHand"]
      347 GETIMPORT                        R14 K110 [Enum.AssetType.LeftLeg]
      349 SETTABLEKS                       R14 R13 K53 ["LeftUpperLeg"]
      351 GETIMPORT                        R14 K110 [Enum.AssetType.LeftLeg]
      353 SETTABLEKS                       R14 R13 K54 ["LeftLowerLeg"]
      355 GETIMPORT                        R14 K110 [Enum.AssetType.LeftLeg]
      357 SETTABLEKS                       R14 R13 K55 ["LeftFoot"]
      359 GETIMPORT                        R14 K112 [Enum.AssetType.RightLeg]
      361 SETTABLEKS                       R14 R13 K56 ["RightUpperLeg"]
      363 GETIMPORT                        R14 K112 [Enum.AssetType.RightLeg]
      365 SETTABLEKS                       R14 R13 K57 ["RightLowerLeg"]
      367 GETIMPORT                        R14 K112 [Enum.AssetType.RightLeg]
      369 SETTABLEKS                       R14 R13 K58 ["RightFoot"]
      371 GETIMPORT                        R14 K113 [Enum.AssetType.EyebrowAccessory]
      373 SETTABLEKS                       R14 R13 K97 ["EyebrowAccessory"]
      375 GETIMPORT                        R14 K114 [Enum.AssetType.EyelashAccessory]
      377 SETTABLEKS                       R14 R13 K98 ["EyelashAccessory"]
      379 GETIMPORT                        R14 K115 [Enum.AssetType.HairAccessory]
      381 SETTABLEKS                       R14 R13 K99 ["HairAccessory"]
      383 SETTABLEKS                       R13 R12 K116 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      385 DUPTABLE                         R13 K119 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      386 GETIMPORT                        R14 K120 [Enum.AssetType.LeftShoeAccessory]
      388 SETTABLEKS                       R14 R13 K117 ["LeftShoeAccessory"]
      390 GETIMPORT                        R14 K121 [Enum.AssetType.RightShoeAccessory]
      392 SETTABLEKS                       R14 R13 K118 ["RightShoeAccessory"]
      394 SETTABLEKS                       R13 R12 K122 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      396 NEWTABLE                         R13 2 0
      398 GETIMPORT                        R14 K125 [Enum.BundleType.BodyParts]
      400 GETTABLEKS                       R15 R12 K116 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      402 SETTABLE                         R15 R13 R14
      403 GETIMPORT                        R14 K125 [Enum.BundleType.BodyParts]
      405 GETTABLEKS                       R15 R12 K122 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      407 SETTABLE                         R15 R13 R14
      408 SETTABLEKS                       R13 R12 K126 ["BUNDLE_TO_ASSET_MAPPING"]
      410 NEWTABLE                         R13 0 4
      412 GETIMPORT                        R14 K103 [Enum.AssetType.DynamicHead]
      414 GETIMPORT                        R15 K113 [Enum.AssetType.EyebrowAccessory]
      416 GETIMPORT                        R16 K114 [Enum.AssetType.EyelashAccessory]
      418 GETIMPORT                        R17 K115 [Enum.AssetType.HairAccessory]
      420 SETLIST                          R13 R14 4 [1]
      422 SETTABLEKS                       R13 R12 K127 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      424 DUPTABLE                         R13 K131 [{["R6"] = "R6", ["R15ArtistIntent"] = "R15ArtistIntent", ["R15Fixed"] = "R15Fixed"}]
      425 SETTABLEKS                       R13 R12 K132 ["FOLDER_NAMES"]
      427 NEWTABLE                         R13 0 3
      429 LOADK                            R14 K50 ["Head"]
      430 LOADK                            R15 K133 ["HumanoidRootPart"]
      431 LOADK                            R16 K134 ["Humanoid"]
      432 SETLIST                          R13 R14 3 [1]
      434 SETTABLEKS                       R13 R12 K135 ["EXTRA_BANNED_NAMES"]
      436 NEWTABLE                         R13 0 6
      438 LOADK                            R14 K136 ["Body Colors"]
      439 LOADK                            R15 K137 ["Shirt Graphic"]
      440 LOADK                            R16 K138 ["Shirt"]
      441 LOADK                            R17 K139 ["Pants"]
      442 LOADK                            R18 K140 ["Health"]
      443 LOADK                            R19 K141 ["Animate"]
      444 SETLIST                          R13 R14 6 [1]
      446 GETIMPORT                        R14 K143 [ipairs]
      448 MOVE                             R15 R13
      449 CALL                             R14 1 3
      450 FORGPREP_INEXT                   R14
      451 GETTABLEKS                       R20 R12 K135 ["EXTRA_BANNED_NAMES"]
      453 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
      455 MOVE                             R21 R18
      456 GETIMPORT                        R19 K146 [table.insert]
      458 CALL                             R19 2 0
      459 FORGLOOP                         R14 2 [inext] ; [-9]
      461 NEWTABLE                         R14 0 0
      463 SETTABLEKS                       R14 R12 K147 ["BANNED_NAMES"]
      465 NEWTABLE                         R14 0 3
      467 GETTABLEKS                       R15 R12 K49 ["R6_BODY_PARTS"]
      469 GETTABLEKS                       R16 R12 K65 ["R15_BODY_PARTS"]
      471 GETTABLEKS                       R17 R12 K135 ["EXTRA_BANNED_NAMES"]
      473 SETLIST                          R14 R15 3 [1]
      475 MOVE                             R15 R14
      476 LOADNIL                          R16
      477 LOADNIL                          R17
      478 FORGPREP                         R15
      479 MOVE                             R20 R19
      480 LOADNIL                          R21
      481 LOADNIL                          R22
      482 FORGPREP                         R20
      483 GETTABLEKS                       R25 R12 K147 ["BANNED_NAMES"]
      485 LOADB                            R26 1
      486 SETTABLE                         R26 R25 R24
      487 FORGLOOP                         R20 2 ; [-5]
      489 FORGLOOP                         R15 2 ; [-11]
      491 DUPTABLE                         R15 K154 [{["UNKNOWN"] = "Unknown", ["REVIEW_PENDING"] = "ReviewPending", ["MODERATED"] = "Moderated"}]
      492 SETTABLEKS                       R15 R12 K155 ["ASSET_STATUS"]
      494 NAMECALL                         R15 R2 K156 ["getMakeupRules"]
      496 CALL                             R15 1 1
      497 SETTABLEKS                       R15 R12 K157 ["MAKEUP_INFO"]
      499 NEWTABLE                         R15 0 0
      501 SETTABLEKS                       R15 R12 K158 ["ASSET_TYPE_INFO"]
      503 GETTABLEKS                       R17 R12 K158 ["ASSET_TYPE_INFO"]
      505 NAMECALL                         R15 R2 K159 ["getAccessoryRules"]
      507 CALL                             R15 2 0
      508 NAMECALL                         R15 R2 K160 ["getFullBodyRulesBounds"]
      510 CALL                             R15 1 1
      511 SETTABLEKS                       R15 R12 K161 ["FULL_BODY_BOUNDS"]
      513 DUPTABLE                         R15 K165 [{["Classic"] = True, ["ProportionsSlender"] = True, ["ProportionsNormal"] = True}]
      514 SETTABLEKS                       R15 R12 K166 ["AvatarPartScaleTypes"]
      516 GETTABLEKS                       R17 R12 K158 ["ASSET_TYPE_INFO"]
      518 NAMECALL                         R15 R2 K167 ["getBodyPartRules"]
      520 CALL                             R15 2 0
      521 NEWTABLE                         R15 16 0
      523 LOADNIL                          R16
      524 SETTABLEKS                       R16 R15 K50 ["Head"]
      526 LOADNIL                          R16
      527 SETTABLEKS                       R16 R15 K52 ["LowerTorso"]
      529 LOADK                            R16 K52 ["LowerTorso"]
      530 SETTABLEKS                       R16 R15 K51 ["UpperTorso"]
      532 LOADNIL                          R16
      533 SETTABLEKS                       R16 R15 K59 ["LeftUpperArm"]
      535 LOADK                            R16 K59 ["LeftUpperArm"]
      536 SETTABLEKS                       R16 R15 K60 ["LeftLowerArm"]
      538 LOADK                            R16 K60 ["LeftLowerArm"]
      539 SETTABLEKS                       R16 R15 K61 ["LeftHand"]
      541 LOADNIL                          R16
      542 SETTABLEKS                       R16 R15 K53 ["LeftUpperLeg"]
      544 LOADK                            R16 K53 ["LeftUpperLeg"]
      545 SETTABLEKS                       R16 R15 K54 ["LeftLowerLeg"]
      547 LOADNIL                          R16
      548 SETTABLEKS                       R16 R15 K62 ["RightUpperArm"]
      550 LOADK                            R16 K62 ["RightUpperArm"]
      551 SETTABLEKS                       R16 R15 K63 ["RightLowerArm"]
      553 LOADK                            R16 K63 ["RightLowerArm"]
      554 SETTABLEKS                       R16 R15 K64 ["RightHand"]
      556 LOADNIL                          R16
      557 SETTABLEKS                       R16 R15 K56 ["RightUpperLeg"]
      559 LOADK                            R16 K56 ["RightUpperLeg"]
      560 SETTABLEKS                       R16 R15 K57 ["RightLowerLeg"]
      562 SETTABLEKS                       R15 R12 K168 ["BODYPART_TO_PARENT"]
      564 MOVE                             R15 R4
      565 CALL                             R15 0 1
      566 JUMPIFNOT                        R15 ; [+11]
      567 GETTABLEKS                       R15 R12 K168 ["BODYPART_TO_PARENT"]
      569 LOADK                            R16 K57 ["RightLowerLeg"]
      570 SETTABLEKS                       R16 R15 K58 ["RightFoot"]
      572 GETTABLEKS                       R15 R12 K168 ["BODYPART_TO_PARENT"]
      574 LOADK                            R16 K54 ["LeftLowerLeg"]
      575 SETTABLEKS                       R16 R15 K55 ["LeftFoot"]
      577 JUMP                             ; [+10]
      578 GETTABLEKS                       R15 R12 K168 ["BODYPART_TO_PARENT"]
      580 LOADK                            R16 K57 ["RightLowerLeg"]
      581 SETTABLEKS                       R16 R15 K111 ["RightLeg"]
      583 GETTABLEKS                       R15 R12 K168 ["BODYPART_TO_PARENT"]
      585 LOADK                            R16 K54 ["LeftLowerLeg"]
      586 SETTABLEKS                       R16 R15 K109 ["LeftLeg"]
      588 NAMECALL                         R15 R2 K22 ["getRules"]
      590 CALL                             R15 1 1
      591 GETTABLEKS                       R15 R15 K23 ["MeshRules"]
      593 GETTABLEKS                       R15 R15 K169 ["CageMeshMaxDistanceFromRenderMesh"]
      595 SETTABLEKS                       R15 R12 K170 ["RenderVsWrapMeshMaxDiff"]
      597 DUPTABLE                         R15 K185 [{["SMALLER"] = "<", ["SMALLER_EQ"] = "<=", ["FUZZY_EQ"] = "=", ["EXACT_EQ"] = "==", ["GREATER_EQ"] = ">=", ["GREATER"] = ">", ["FOUND_IN"] = "one of the following:"}]
      598 SETTABLEKS                       R15 R12 K186 ["COMPARISON_METHODS"]
      600 GETTABLEKS                       R16 R12 K186 ["COMPARISON_METHODS"]
      602 DUPTABLE                         R17 K84 [{"__index"}]
      603 DUPCLOSURE                       R18 K187 [PROTO_2]
      604 SETTABLEKS                       R18 R17 K83 ["__index"]
      606 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
      608 GETIMPORT                        R15 K87 [setmetatable]
      610 CALL                             R15 2 0
      611 DUPTABLE                         R15 K191 [{["RUN_ON_ALL"] = "RUN_ON_ALL", ["INCLUSION_LIST"] = "INCLUSION_LIST", ["EXCLUSION_LIST"] = "EXCLUSION_LIST"}]
      612 SETTABLEKS                       R15 R12 K192 ["INCLUSION_METHODS"]
      614 GETTABLEKS                       R16 R12 K192 ["INCLUSION_METHODS"]
      616 DUPTABLE                         R17 K84 [{"__index"}]
      617 DUPCLOSURE                       R18 K193 [PROTO_3]
      618 SETTABLEKS                       R18 R17 K83 ["__index"]
      620 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
      622 GETIMPORT                        R15 K87 [setmetatable]
      624 CALL                             R15 2 0
      625 DUPTABLE                         R15 K203 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      626 DUPTABLE                         R16 K205 [{["Archivable"] = True}]
      627 SETTABLEKS                       R16 R15 K194 ["Instance"]
      629 DUPTABLE                         R16 K208 [{["Visible"] = False}]
      630 SETTABLEKS                       R16 R15 K195 ["Attachment"]
      632 DUPTABLE                         R16 K214 [{["Color3"], ["Transparency"] = 0, ["UVOffset"], ["UVScale"]}]
      633 GETIMPORT                        R17 K216 [Color3.new]
      635 LOADN                            R18 1
      636 LOADN                            R19 1
      637 LOADN                            R20 1
      638 CALL                             R17 3 1
      639 SETTABLEKS                       R17 R16 K209 ["Color3"]
      641 JUMPIFNOT                        R9 ; [+6]
      642 GETIMPORT                        R17 K218 [Vector2.new]
      644 LOADN                            R18 0
      645 LOADN                            R19 0
      646 CALL                             R17 2 1
      647 JUMP                             ; [+1]
      648 LOADNIL                          R17
      649 SETTABLEKS                       R17 R16 K212 ["UVOffset"]
      651 JUMPIFNOT                        R9 ; [+6]
      652 GETIMPORT                        R17 K218 [Vector2.new]
      654 LOADN                            R18 1
      655 LOADN                            R19 1
      656 CALL                             R17 2 1
      657 JUMP                             ; [+1]
      658 LOADNIL                          R17
      659 SETTABLEKS                       R17 R16 K213 ["UVScale"]
      661 SETTABLEKS                       R16 R15 K196 ["Decal"]
      663 DUPTABLE                         R16 K224 [{["MeshType"], ["Offset"] = {0, 0, 0}, ["VertexColor"] = {1, 1, 1}}]
      664 GETIMPORT                        R17 K226 [Enum.MeshType.FileMesh]
      666 SETTABLEKS                       R17 R16 K219 ["MeshType"]
      668 SETTABLEKS                       R16 R15 K197 ["SpecialMesh"]
      670 NEWTABLE                         R16 64 0
      672 LOADB                            R17 0
      673 SETTABLEKS                       R17 R16 K227 ["Anchored"]
      675 LOADN                            R17 0
      676 SETTABLEKS                       R17 R16 K228 ["CollisionGroupId"]
      678 GETTABLEKS                       R17 R1 K229 ["None"]
      680 SETTABLEKS                       R17 R16 K230 ["CustomPhysicalProperties"]
      682 LOADK                            R17 K231 [0.5]
      683 SETTABLEKS                       R17 R16 K232 ["Elasticity"]
      685 LOADK                            R17 K233 [0.3]
      686 SETTABLEKS                       R17 R16 K234 ["Friction"]
      688 LOADN                            R17 0
      689 SETTABLEKS                       R17 R16 K235 ["LocalTransparencyModifier"]
      691 LOADB                            R17 0
      692 SETTABLEKS                       R17 R16 K236 ["Massless"]
      694 LOADN                            R17 0
      695 SETTABLEKS                       R17 R16 K237 ["Reflectance"]
      697 LOADN                            R17 0
      698 SETTABLEKS                       R17 R16 K238 ["RootPriority"]
      700 LOADK                            R17 K221 [{0, 0, 0}]
      701 SETTABLEKS                       R17 R16 K239 ["RotVelocity"]
      703 LOADK                            R17 K221 [{0, 0, 0}]
      704 SETTABLEKS                       R17 R16 K240 ["Velocity"]
      706 LOADK                            R17 K241 [-0.5]
      707 SETTABLEKS                       R17 R16 K242 ["BackParamA"]
      709 LOADK                            R17 K231 [0.5]
      710 SETTABLEKS                       R17 R16 K243 ["BackParamB"]
      712 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      714 SETTABLEKS                       R17 R16 K247 ["BackSurfaceInput"]
      716 LOADK                            R17 K241 [-0.5]
      717 SETTABLEKS                       R17 R16 K248 ["BottomParamA"]
      719 LOADK                            R17 K231 [0.5]
      720 SETTABLEKS                       R17 R16 K249 ["BottomParamB"]
      722 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      724 SETTABLEKS                       R17 R16 K250 ["BottomSurfaceInput"]
      726 LOADK                            R17 K241 [-0.5]
      727 SETTABLEKS                       R17 R16 K251 ["FrontParamA"]
      729 LOADK                            R17 K231 [0.5]
      730 SETTABLEKS                       R17 R16 K252 ["FrontParamB"]
      732 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      734 SETTABLEKS                       R17 R16 K253 ["FrontSurfaceInput"]
      736 LOADK                            R17 K241 [-0.5]
      737 SETTABLEKS                       R17 R16 K254 ["LeftParamA"]
      739 LOADK                            R17 K231 [0.5]
      740 SETTABLEKS                       R17 R16 K255 ["LeftParamB"]
      742 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      744 SETTABLEKS                       R17 R16 K256 ["LeftSurfaceInput"]
      746 LOADK                            R17 K241 [-0.5]
      747 SETTABLEKS                       R17 R16 K257 ["RightParamA"]
      749 LOADK                            R17 K231 [0.5]
      750 SETTABLEKS                       R17 R16 K258 ["RightParamB"]
      752 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      754 SETTABLEKS                       R17 R16 K259 ["RightSurfaceInput"]
      756 LOADK                            R17 K241 [-0.5]
      757 SETTABLEKS                       R17 R16 K260 ["TopParamA"]
      759 LOADK                            R17 K231 [0.5]
      760 SETTABLEKS                       R17 R16 K261 ["TopParamB"]
      762 GETIMPORT                        R17 K246 [Enum.InputType.NoInput]
      764 SETTABLEKS                       R17 R16 K262 ["TopSurfaceInput"]
      766 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      768 SETTABLEKS                       R17 R16 K266 ["BackSurface"]
      770 MOVE                             R18 R10
      771 CALL                             R18 0 1
      772 JUMPIFNOT                        R18 ; [+16]
      773 NEWTABLE                         R17 1 0
      775 GETTABLEKS                       R18 R12 K186 ["COMPARISON_METHODS"]
      777 GETTABLEKS                       R18 R18 K183 ["FOUND_IN"]
      779 NEWTABLE                         R19 0 2
      781 GETIMPORT                        R20 K265 [Enum.SurfaceType.Smooth]
      783 GETIMPORT                        R21 K268 [Enum.SurfaceType.Inlet]
      785 SETLIST                          R19 R20 2 [1]
      787 SETTABLE                         R19 R17 R18
      788 JUMP                             ; [+2]
      789 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      791 SETTABLEKS                       R17 R16 K269 ["BottomSurface"]
      793 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      795 SETTABLEKS                       R17 R16 K270 ["FrontSurface"]
      797 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      799 SETTABLEKS                       R17 R16 K271 ["LeftSurface"]
      801 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      803 SETTABLEKS                       R17 R16 K272 ["RightSurface"]
      805 MOVE                             R18 R10
      806 CALL                             R18 0 1
      807 JUMPIFNOT                        R18 ; [+16]
      808 NEWTABLE                         R17 1 0
      810 GETTABLEKS                       R18 R12 K186 ["COMPARISON_METHODS"]
      812 GETTABLEKS                       R18 R18 K183 ["FOUND_IN"]
      814 NEWTABLE                         R19 0 2
      816 GETIMPORT                        R20 K265 [Enum.SurfaceType.Smooth]
      818 GETIMPORT                        R21 K274 [Enum.SurfaceType.Studs]
      820 SETLIST                          R19 R20 2 [1]
      822 SETTABLE                         R19 R17 R18
      823 JUMP                             ; [+2]
      824 GETIMPORT                        R17 K265 [Enum.SurfaceType.Smooth]
      826 SETTABLEKS                       R17 R16 K275 ["TopSurface"]
      828 NEWTABLE                         R17 1 0
      830 GETTABLEKS                       R18 R12 K186 ["COMPARISON_METHODS"]
      832 GETTABLEKS                       R18 R18 K177 ["EXACT_EQ"]
      834 LOADN                            R19 0
      835 SETTABLE                         R19 R17 R18
      836 SETTABLEKS                       R17 R16 K210 ["Transparency"]
      838 NEWTABLE                         R17 2 0
      840 GETTABLEKS                       R18 R12 K186 ["COMPARISON_METHODS"]
      842 GETTABLEKS                       R18 R18 K175 ["FUZZY_EQ"]
      844 GETIMPORT                        R19 K277 [BrickColor.new]
      846 LOADK                            R20 K278 ["Medium stone grey"]
      847 CALL                             R19 1 1
      848 GETTABLEKS                       R19 R19 K279 ["Color"]
      850 SETTABLE                         R19 R17 R18
      851 GETTABLEKS                       R18 R12 K192 ["INCLUSION_METHODS"]
      853 GETTABLEKS                       R18 R18 K190 ["EXCLUSION_LIST"]
      855 NEWTABLE                         R19 0 6
      857 GETIMPORT                        R20 K103 [Enum.AssetType.DynamicHead]
      859 GETIMPORT                        R21 K104 [Enum.AssetType.Torso]
      861 GETIMPORT                        R22 K106 [Enum.AssetType.LeftArm]
      863 GETIMPORT                        R23 K108 [Enum.AssetType.RightArm]
      865 GETIMPORT                        R24 K110 [Enum.AssetType.LeftLeg]
      867 GETIMPORT                        R25 K112 [Enum.AssetType.RightLeg]
      869 SETLIST                          R19 R20 6 [1]
      871 SETTABLE                         R19 R17 R18
      872 SETTABLEKS                       R17 R16 K279 ["Color"]
      874 SETTABLEKS                       R16 R15 K198 ["BasePart"]
      876 DUPTABLE                         R16 K281 [{"Shape"}]
      877 GETIMPORT                        R17 K284 [Enum.PartType.Block]
      879 SETTABLEKS                       R17 R16 K280 ["Shape"]
      881 SETTABLEKS                       R16 R15 K199 ["Part"]
      883 DUPTABLE                         R16 K290 [{["AlphaMode"], ["EmissiveMaskContent"], ["EmissiveStrength"] = 1, ["EmissiveTint"]}]
      884 MOVE                             R18 R5
      885 CALL                             R18 0 1
      886 JUMPIFNOT                        R18 ; [+55]
      887 NEWTABLE                         R17 0 2
      889 NEWTABLE                         R18 2 0
      891 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
      893 GETTABLEKS                       R19 R19 K183 ["FOUND_IN"]
      895 NEWTABLE                         R20 0 2
      897 GETIMPORT                        R21 K292 [Enum.AlphaMode.Overlay]
      899 GETIMPORT                        R22 K293 [Enum.AlphaMode.Transparency]
      901 SETLIST                          R20 R21 2 [1]
      903 SETTABLE                         R20 R18 R19
      904 GETTABLEKS                       R19 R12 K192 ["INCLUSION_METHODS"]
      906 GETTABLEKS                       R19 R19 K189 ["INCLUSION_LIST"]
      908 NEWTABLE                         R20 0 2
      910 GETIMPORT                        R21 K114 [Enum.AssetType.EyelashAccessory]
      912 GETIMPORT                        R22 K113 [Enum.AssetType.EyebrowAccessory]
      914 SETLIST                          R20 R21 2 [1]
      916 SETTABLE                         R20 R18 R19
      917 NEWTABLE                         R19 2 0
      919 GETTABLEKS                       R20 R12 K186 ["COMPARISON_METHODS"]
      921 GETTABLEKS                       R20 R20 K177 ["EXACT_EQ"]
      923 GETIMPORT                        R21 K292 [Enum.AlphaMode.Overlay]
      925 SETTABLE                         R21 R19 R20
      926 GETTABLEKS                       R20 R12 K192 ["INCLUSION_METHODS"]
      928 GETTABLEKS                       R20 R20 K190 ["EXCLUSION_LIST"]
      930 NEWTABLE                         R21 0 2
      932 GETIMPORT                        R22 K114 [Enum.AssetType.EyelashAccessory]
      934 GETIMPORT                        R23 K113 [Enum.AssetType.EyebrowAccessory]
      936 SETLIST                          R21 R22 2 [1]
      938 SETTABLE                         R21 R19 R20
      939 SETLIST                          R17 R18 2 [1]
      941 JUMP                             ; [+2]
      942 GETIMPORT                        R17 K292 [Enum.AlphaMode.Overlay]
      944 SETTABLEKS                       R17 R16 K285 ["AlphaMode"]
      946 GETIMPORT                        R17 K296 [Content.none]
      948 SETTABLEKS                       R17 R16 K286 ["EmissiveMaskContent"]
      950 GETIMPORT                        R17 K216 [Color3.new]
      952 LOADN                            R18 1
      953 LOADN                            R19 1
      954 LOADN                            R20 1
      955 CALL                             R17 3 1
      956 SETTABLEKS                       R17 R16 K289 ["EmissiveTint"]
      958 SETTABLEKS                       R16 R15 K200 ["SurfaceAppearance"]
      960 DUPTABLE                         R16 K302 [{["Enabled"] = True, ["CageOrigin"], ["ReferenceOrigin"], ["ImportOrigin"], ["BindOffset"]}]
      961 DUPTABLE                         R17 K305 [{"PositionMagnitude", "Orientation"}]
      962 NEWTABLE                         R18 1 0
      964 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
      966 GETTABLEKS                       R19 R19 K173 ["SMALLER_EQ"]
      968 LOADN                            R20 10
      969 SETTABLE                         R20 R18 R19
      970 SETTABLEKS                       R18 R17 K303 ["PositionMagnitude"]
      972 NEWTABLE                         R18 1 0
      974 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
      976 GETTABLEKS                       R19 R19 K177 ["EXACT_EQ"]
      978 LOADK                            R20 K221 [{0, 0, 0}]
      979 SETTABLE                         R20 R18 R19
      980 SETTABLEKS                       R18 R17 K304 ["Orientation"]
      982 SETTABLEKS                       R17 R16 K298 ["CageOrigin"]
      984 DUPTABLE                         R17 K305 [{"PositionMagnitude", "Orientation"}]
      985 NEWTABLE                         R18 1 0
      987 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
      989 GETTABLEKS                       R19 R19 K173 ["SMALLER_EQ"]
      991 LOADN                            R20 10
      992 SETTABLE                         R20 R18 R19
      993 SETTABLEKS                       R18 R17 K303 ["PositionMagnitude"]
      995 NEWTABLE                         R18 1 0
      997 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
      999 GETTABLEKS                       R19 R19 K177 ["EXACT_EQ"]
     1001 LOADK                            R20 K221 [{0, 0, 0}]
     1002 SETTABLE                         R20 R18 R19
     1003 SETTABLEKS                       R18 R17 K304 ["Orientation"]
     1005 SETTABLEKS                       R17 R16 K299 ["ReferenceOrigin"]
     1007 DUPTABLE                         R17 K306 [{"PositionMagnitude"}]
     1008 NEWTABLE                         R18 1 0
     1010 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1012 GETTABLEKS                       R19 R19 K173 ["SMALLER_EQ"]
     1014 LOADN                            R20 8
     1015 SETTABLE                         R20 R18 R19
     1016 SETTABLEKS                       R18 R17 K303 ["PositionMagnitude"]
     1018 SETTABLEKS                       R17 R16 K300 ["ImportOrigin"]
     1020 DUPTABLE                         R17 K308 [{"Position", "Orientation"}]
     1021 NEWTABLE                         R18 1 0
     1023 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1025 GETTABLEKS                       R19 R19 K177 ["EXACT_EQ"]
     1027 LOADK                            R20 K221 [{0, 0, 0}]
     1028 SETTABLE                         R20 R18 R19
     1029 SETTABLEKS                       R18 R17 K307 ["Position"]
     1031 NEWTABLE                         R18 1 0
     1033 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1035 GETTABLEKS                       R19 R19 K177 ["EXACT_EQ"]
     1037 LOADK                            R20 K221 [{0, 0, 0}]
     1038 SETTABLE                         R20 R18 R19
     1039 SETTABLEKS                       R18 R17 K304 ["Orientation"]
     1041 SETTABLEKS                       R17 R16 K301 ["BindOffset"]
     1043 SETTABLEKS                       R16 R15 K201 ["WrapLayer"]
     1045 DUPTABLE                         R16 K309 [{"CageOrigin", "ImportOrigin"}]
     1046 DUPTABLE                         R17 K305 [{"PositionMagnitude", "Orientation"}]
     1047 NEWTABLE                         R18 1 0
     1049 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1051 GETTABLEKS                       R19 R19 K173 ["SMALLER_EQ"]
     1053 LOADN                            R20 10
     1054 SETTABLE                         R20 R18 R19
     1055 SETTABLEKS                       R18 R17 K303 ["PositionMagnitude"]
     1057 NEWTABLE                         R18 1 0
     1059 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1061 GETTABLEKS                       R19 R19 K177 ["EXACT_EQ"]
     1063 LOADK                            R20 K221 [{0, 0, 0}]
     1064 SETTABLE                         R20 R18 R19
     1065 SETTABLEKS                       R18 R17 K304 ["Orientation"]
     1067 SETTABLEKS                       R17 R16 K298 ["CageOrigin"]
     1069 DUPTABLE                         R17 K306 [{"PositionMagnitude"}]
     1070 NEWTABLE                         R18 1 0
     1072 GETTABLEKS                       R19 R12 K186 ["COMPARISON_METHODS"]
     1074 GETTABLEKS                       R19 R19 K173 ["SMALLER_EQ"]
     1076 LOADN                            R20 8
     1077 SETTABLE                         R20 R18 R19
     1078 SETTABLEKS                       R18 R17 K303 ["PositionMagnitude"]
     1080 SETTABLEKS                       R17 R16 K300 ["ImportOrigin"]
     1082 SETTABLEKS                       R16 R15 K202 ["WrapTarget"]
     1084 SETTABLEKS                       R15 R12 K310 ["PROPERTIES"]
     1086 DUPTABLE                         R15 K313 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1087 NEWTABLE                         R16 0 2
     1089 LOADK                            R17 K314 ["MeshId"]
     1090 LOADK                            R18 K315 ["TextureId"]
     1091 SETLIST                          R16 R17 2 [1]
     1093 SETTABLEKS                       R16 R15 K197 ["SpecialMesh"]
     1095 NEWTABLE                         R16 0 2
     1097 LOADK                            R17 K314 ["MeshId"]
     1098 LOADK                            R18 K316 ["TextureID"]
     1099 SETLIST                          R16 R17 2 [1]
     1101 SETTABLEKS                       R16 R15 K311 ["MeshPart"]
     1103 NEWTABLE                         R16 0 4
     1105 LOADK                            R17 K317 ["ColorMap"]
     1106 LOADK                            R18 K318 ["MetalnessMap"]
     1107 LOADK                            R19 K319 ["NormalMap"]
     1108 LOADK                            R20 K320 ["RoughnessMap"]
     1109 SETLIST                          R16 R17 4 [1]
     1111 SETTABLEKS                       R16 R15 K200 ["SurfaceAppearance"]
     1113 NEWTABLE                         R16 0 4
     1115 LOADK                            R17 K317 ["ColorMap"]
     1116 LOADK                            R18 K318 ["MetalnessMap"]
     1117 LOADK                            R19 K319 ["NormalMap"]
     1118 LOADK                            R20 K320 ["RoughnessMap"]
     1119 SETLIST                          R16 R17 4 [1]
     1121 SETTABLEKS                       R16 R15 K196 ["Decal"]
     1123 NEWTABLE                         R16 0 2
     1125 LOADK                            R17 K321 ["CageMeshId"]
     1126 LOADK                            R18 K322 ["ReferenceMeshId"]
     1127 SETLIST                          R16 R17 2 [1]
     1129 SETTABLEKS                       R16 R15 K201 ["WrapLayer"]
     1131 NEWTABLE                         R16 0 1
     1133 LOADK                            R17 K321 ["CageMeshId"]
     1134 SETLIST                          R16 R17 1 [1]
     1136 SETTABLEKS                       R16 R15 K202 ["WrapTarget"]
     1138 NEWTABLE                         R16 0 1
     1140 LOADK                            R17 K323 ["AnimationId"]
     1141 SETLIST                          R16 R17 1 [1]
     1143 SETTABLEKS                       R16 R15 K312 ["Animation"]
     1145 SETTABLEKS                       R15 R12 K324 ["CONTENT_ID_FIELDS"]
     1147 MOVE                             R15 R7
     1148 CALL                             R15 0 1
     1149 JUMPIFNOT                        R15 ; [+10]
     1150 GETTABLEKS                       R16 R12 K324 ["CONTENT_ID_FIELDS"]
     1152 GETTABLEKS                       R16 R16 K200 ["SurfaceAppearance"]
     1154 FASTCALL2K                       TABLE_INSERT R16 K325 ; [+4]
     1156 LOADK                            R17 K325 ["TexturePack"]
     1157 GETIMPORT                        R15 K146 [table.insert]
     1159 CALL                             R15 2 0
     1160 MOVE                             R15 R6
     1161 CALL                             R15 0 1
     1162 JUMPIFNOT                        R15 ; [+10]
     1163 GETTABLEKS                       R16 R12 K324 ["CONTENT_ID_FIELDS"]
     1165 GETTABLEKS                       R16 R16 K201 ["WrapLayer"]
     1167 FASTCALL2K                       TABLE_INSERT R16 K326 ; [+4]
     1169 LOADK                            R17 K326 ["HSRAssetId"]
     1170 GETIMPORT                        R15 K146 [table.insert]
     1172 CALL                             R15 2 0
     1173 DUPTABLE                         R15 K327 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1174 DUPTABLE                         R16 K328 [{["MeshId"] = True, ["TextureId"] = True}]
     1175 SETTABLEKS                       R16 R15 K197 ["SpecialMesh"]
     1177 DUPTABLE                         R16 K329 [{["MeshId"] = True}]
     1178 SETTABLEKS                       R16 R15 K311 ["MeshPart"]
     1180 DUPTABLE                         R16 K330 [{["CageMeshId"] = True}]
     1181 SETTABLEKS                       R16 R15 K202 ["WrapTarget"]
     1183 DUPTABLE                         R16 K331 [{["AnimationId"] = True}]
     1184 SETTABLEKS                       R16 R15 K312 ["Animation"]
     1186 SETTABLEKS                       R15 R12 K332 ["CONTENT_ID_REQUIRED_FIELDS"]
     1188 DUPTABLE                         R15 K333 [{"MeshPart", "WrapTarget", "WrapLayer", "SurfaceAppearance"}]
     1189 DUPTABLE                         R16 K336 [{["MeshId"] = "MeshContent", ["TextureID"] = "TextureContent"}]
     1190 SETTABLEKS                       R16 R15 K311 ["MeshPart"]
     1192 DUPTABLE                         R16 K338 [{["CageMeshId"] = "CageMeshContent"}]
     1193 SETTABLEKS                       R16 R15 K202 ["WrapTarget"]
     1195 DUPTABLE                         R16 K340 [{["CageMeshId"] = "CageMeshContent", ["ReferenceMeshId"] = "ReferenceMeshContent"}]
     1196 SETTABLEKS                       R16 R15 K201 ["WrapLayer"]
     1198 DUPTABLE                         R16 K345 [{["ColorMap"] = "ColorMapContent", ["MetalnessMap"] = "MetalnessMapContent", ["NormalMap"] = "NormalMapContent", ["RoughnessMap"] = "RoughnessMapContent"}]
     1199 SETTABLEKS                       R16 R15 K200 ["SurfaceAppearance"]
     1201 SETTABLEKS                       R15 R12 K346 ["CONTENT_ID_EDITABLE_PROPERTY"]
     1203 DUPTABLE                         R15 K347 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1204 NEWTABLE                         R16 0 1
     1206 LOADK                            R17 K314 ["MeshId"]
     1207 SETLIST                          R16 R17 1 [1]
     1209 SETTABLEKS                       R16 R15 K197 ["SpecialMesh"]
     1211 NEWTABLE                         R16 0 1
     1213 LOADK                            R17 K314 ["MeshId"]
     1214 SETLIST                          R16 R17 1 [1]
     1216 SETTABLEKS                       R16 R15 K311 ["MeshPart"]
     1218 NEWTABLE                         R16 0 1
     1220 LOADK                            R17 K321 ["CageMeshId"]
     1221 SETLIST                          R16 R17 1 [1]
     1223 SETTABLEKS                       R16 R15 K202 ["WrapTarget"]
     1225 NEWTABLE                         R16 0 2
     1227 LOADK                            R17 K321 ["CageMeshId"]
     1228 LOADK                            R18 K322 ["ReferenceMeshId"]
     1229 SETLIST                          R16 R17 2 [1]
     1231 SETTABLEKS                       R16 R15 K201 ["WrapLayer"]
     1233 SETTABLEKS                       R15 R12 K348 ["MESH_CONTENT_ID_FIELDS"]
     1235 DUPTABLE                         R15 K349 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1236 NEWTABLE                         R16 0 1
     1238 LOADK                            R17 K315 ["TextureId"]
     1239 SETLIST                          R16 R17 1 [1]
     1241 SETTABLEKS                       R16 R15 K197 ["SpecialMesh"]
     1243 NEWTABLE                         R16 0 1
     1245 LOADK                            R17 K316 ["TextureID"]
     1246 SETLIST                          R16 R17 1 [1]
     1248 SETTABLEKS                       R16 R15 K311 ["MeshPart"]
     1250 NEWTABLE                         R16 0 4
     1252 LOADK                            R17 K317 ["ColorMap"]
     1253 LOADK                            R18 K318 ["MetalnessMap"]
     1254 LOADK                            R19 K319 ["NormalMap"]
     1255 LOADK                            R20 K320 ["RoughnessMap"]
     1256 SETLIST                          R16 R17 4 [1]
     1258 SETTABLEKS                       R16 R15 K200 ["SurfaceAppearance"]
     1260 NEWTABLE                         R16 0 4
     1262 LOADK                            R17 K317 ["ColorMap"]
     1263 LOADK                            R18 K318 ["MetalnessMap"]
     1264 LOADK                            R19 K319 ["NormalMap"]
     1265 LOADK                            R20 K320 ["RoughnessMap"]
     1266 SETLIST                          R16 R17 4 [1]
     1268 SETTABLEKS                       R16 R15 K196 ["Decal"]
     1270 SETTABLEKS                       R15 R12 K350 ["TEXTURE_CONTENT_ID_FIELDS"]
     1272 DUPTABLE                         R15 K351 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1273 GETIMPORT                        R18 K103 [Enum.AssetType.DynamicHead]
     1275 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1277 CALL                             R16 2 1
     1278 SETTABLEKS                       R16 R15 K90 ["DynamicHead"]
     1280 GETIMPORT                        R18 K106 [Enum.AssetType.LeftArm]
     1282 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1284 CALL                             R16 2 1
     1285 SETTABLEKS                       R16 R15 K105 ["LeftArm"]
     1287 GETIMPORT                        R18 K108 [Enum.AssetType.RightArm]
     1289 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1291 CALL                             R16 2 1
     1292 SETTABLEKS                       R16 R15 K107 ["RightArm"]
     1294 GETIMPORT                        R18 K104 [Enum.AssetType.Torso]
     1296 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1298 CALL                             R16 2 1
     1299 SETTABLEKS                       R16 R15 K44 ["Torso"]
     1301 GETIMPORT                        R18 K110 [Enum.AssetType.LeftLeg]
     1303 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1305 CALL                             R16 2 1
     1306 SETTABLEKS                       R16 R15 K109 ["LeftLeg"]
     1308 GETIMPORT                        R18 K112 [Enum.AssetType.RightLeg]
     1310 NAMECALL                         R16 R2 K352 ["getBodyPartMaxTrianglesRule"]
     1312 CALL                             R16 2 1
     1313 SETTABLEKS                       R16 R15 K111 ["RightLeg"]
     1315 SETTABLEKS                       R15 R12 K353 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1317 DUPTABLE                         R15 K360 [{["Head"] = 343, ["LeftUpperArm"] = 77, ["LeftLowerArm"] = 77, ["LeftHand"] = 86, ["RightUpperArm"] = 77, ["RightLowerArm"] = 77, ["RightHand"] = 86, ["UpperTorso"] = 257, ["LowerTorso"] = 105, ["LeftUpperLeg"] = 88, ["LeftLowerLeg"] = 88, ["LeftFoot"] = 86, ["RightUpperLeg"] = 88, ["RightLowerLeg"] = 88, ["RightFoot"] = 86}]
     1318 SETTABLEKS                       R15 R12 K361 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1320 GETTABLEKS                       R15 R1 K362 ["Dictionary"]
     1322 GETTABLEKS                       R15 R15 K363 ["join"]
     1324 GETTABLEKS                       R16 R12 K324 ["CONTENT_ID_FIELDS"]
     1326 DUPTABLE                         R17 K374 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1327 NEWTABLE                         R18 0 1
     1329 LOADK                            R19 K375 ["SoundId"]
     1330 SETLIST                          R18 R19 1 [1]
     1332 SETTABLEKS                       R18 R17 K364 ["Sound"]
     1334 NEWTABLE                         R18 0 1
     1336 LOADK                            R19 K376 ["Texture"]
     1337 SETLIST                          R18 R19 1 [1]
     1339 SETTABLEKS                       R18 R17 K196 ["Decal"]
     1341 NEWTABLE                         R18 0 1
     1343 LOADK                            R19 K377 ["Video"]
     1344 SETLIST                          R18 R19 1 [1]
     1346 SETTABLEKS                       R18 R17 K365 ["VideoFrame"]
     1348 NEWTABLE                         R18 0 1
     1350 LOADK                            R19 K378 ["PackageId"]
     1351 SETLIST                          R18 R19 1 [1]
     1353 SETTABLEKS                       R18 R17 K366 ["PackageLink"]
     1355 NEWTABLE                         R18 0 3
     1357 LOADK                            R19 K379 ["baseTextureAssetId"]
     1358 LOADK                            R20 K380 ["overlayTextureAssetId"]
     1359 LOADK                            R21 K381 ["meshAssetId"]
     1360 SETLIST                          R18 R19 3 [1]
     1362 SETTABLEKS                       R18 R17 K367 ["CharacterMesh"]
     1364 NEWTABLE                         R18 0 1
     1366 LOADK                            R19 K315 ["TextureId"]
     1367 SETLIST                          R18 R19 1 [1]
     1369 SETTABLEKS                       R18 R17 K368 ["Tool"]
     1371 NEWTABLE                         R18 0 8
     1373 LOADK                            R19 K382 ["SkyUp"]
     1374 LOADK                            R20 K383 ["SkyLf"]
     1375 LOADK                            R21 K384 ["SkyRt"]
     1376 LOADK                            R22 K385 ["SkyBk"]
     1377 LOADK                            R23 K386 ["SkyFt"]
     1378 LOADK                            R24 K387 ["SkyDn"]
     1379 LOADK                            R25 K388 ["Sun"]
     1380 LOADK                            R26 K389 ["Moon"]
     1381 SETLIST                          R18 R19 8 [1]
     1383 SETTABLEKS                       R18 R17 K369 ["Sky"]
     1385 NEWTABLE                         R18 0 1
     1387 LOADK                            R19 K390 ["texture"]
     1388 SETLIST                          R18 R19 1 [1]
     1390 SETTABLEKS                       R18 R17 K370 ["Trail"]
     1392 NEWTABLE                         R18 0 1
     1394 LOADK                            R19 K390 ["texture"]
     1395 SETLIST                          R18 R19 1 [1]
     1397 SETTABLEKS                       R18 R17 K371 ["Beam"]
     1399 NEWTABLE                         R18 0 1
     1401 LOADK                            R19 K391 ["Graphic"]
     1402 SETLIST                          R18 R19 1 [1]
     1404 SETTABLEKS                       R18 R17 K372 ["ShirtGraphic"]
     1406 NEWTABLE                         R18 0 1
     1408 LOADK                            R19 K392 ["ShirtTemplate"]
     1409 SETLIST                          R18 R19 1 [1]
     1411 SETTABLEKS                       R18 R17 K138 ["Shirt"]
     1413 NEWTABLE                         R18 0 1
     1415 LOADK                            R19 K393 ["PantsTemplate"]
     1416 SETLIST                          R18 R19 1 [1]
     1418 SETTABLEKS                       R18 R17 K139 ["Pants"]
     1420 NEWTABLE                         R18 0 1
     1422 LOADK                            R19 K394 ["FallbackImage"]
     1423 SETLIST                          R18 R19 1 [1]
     1425 SETTABLEKS                       R18 R17 K373 ["AdGui"]
     1427 CALL                             R15 2 1
     1428 SETTABLEKS                       R15 R12 K395 ["PACKAGE_CONTENT_ID_FIELDS"]
     1430 LOADK                            R15 K396 ["RBX-ExperienceAuthorization"]
     1431 SETTABLEKS                       R15 R12 K397 ["ExperienceAuthHeaderKey"]
     1433 LOADK                            R15 K398 ["Content-Type"]
     1434 SETTABLEKS                       R15 R12 K399 ["ContentType"]
     1436 LOADK                            R15 K400 ["application/json"]
     1437 SETTABLEKS                       R15 R12 K401 ["ApplicationJson"]
     1439 LOADK                            R15 K402 ["RBXGUID"]
     1440 SETTABLEKS                       R15 R12 K403 ["GUIDAttributeName"]
     1442 LOADN                            R15 100
     1443 SETTABLEKS                       R15 R12 K404 ["GUIDAttributeMaxLength"]
     1445 LOADK                            R15 K405 ["RBX_ALT_MESH_ID"]
     1446 SETTABLEKS                       R15 R12 K406 ["AlternateMeshIdAttributeName"]
     1448 DUPTABLE                         R15 K413 [{["RENDER_MESH"] = "RenderMesh", ["OUTER_CAGE"] = "OuterCage", ["INNER_CAGE"] = "InnerCage"}]
     1449 SETTABLEKS                       R15 R12 K414 ["MESH_CONTENT_TYPE"]
     1451 NEWTABLE                         R15 4 0
     1453 GETTABLEKS                       R16 R12 K414 ["MESH_CONTENT_TYPE"]
     1455 GETTABLEKS                       R16 R16 K407 ["RENDER_MESH"]
     1457 LOADK                            R17 K314 ["MeshId"]
     1458 SETTABLE                         R17 R15 R16
     1459 GETTABLEKS                       R16 R12 K414 ["MESH_CONTENT_TYPE"]
     1461 GETTABLEKS                       R16 R16 K409 ["OUTER_CAGE"]
     1463 LOADK                            R17 K321 ["CageMeshId"]
     1464 SETTABLE                         R17 R15 R16
     1465 GETTABLEKS                       R16 R12 K414 ["MESH_CONTENT_TYPE"]
     1467 GETTABLEKS                       R16 R16 K411 ["INNER_CAGE"]
     1469 LOADK                            R17 K322 ["ReferenceMeshId"]
     1470 SETTABLE                         R17 R15 R16
     1471 SETTABLEKS                       R15 R12 K415 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1473 MOVE                             R15 R8
     1474 CALL                             R15 0 1
     1475 JUMPIFNOT                        R15 ; [+82]
     1476 NEWTABLE                         R15 8 0
     1478 GETIMPORT                        R16 K417 [Enum.AssetType.ClimbAnimation]
     1480 DUPTABLE                         R17 K420 [{["modelName"] = "ClimbAnimation", ["stringValueNames"]}]
     1481 NEWTABLE                         R18 0 1
     1483 LOADK                            R19 K421 ["climb"]
     1484 SETLIST                          R18 R19 1 [1]
     1486 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1488 SETTABLE                         R17 R15 R16
     1489 GETIMPORT                        R16 K423 [Enum.AssetType.FallAnimation]
     1491 DUPTABLE                         R17 K424 [{["modelName"] = "FallAnimation", ["stringValueNames"]}]
     1492 NEWTABLE                         R18 0 1
     1494 LOADK                            R19 K425 ["fall"]
     1495 SETLIST                          R18 R19 1 [1]
     1497 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1499 SETTABLE                         R17 R15 R16
     1500 GETIMPORT                        R16 K427 [Enum.AssetType.IdleAnimation]
     1502 DUPTABLE                         R17 K428 [{["modelName"] = "IdleAnimation", ["stringValueNames"]}]
     1503 NEWTABLE                         R18 0 1
     1505 LOADK                            R19 K429 ["idle"]
     1506 SETLIST                          R18 R19 1 [1]
     1508 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1510 SETTABLE                         R17 R15 R16
     1511 GETIMPORT                        R16 K431 [Enum.AssetType.JumpAnimation]
     1513 DUPTABLE                         R17 K432 [{["modelName"] = "JumpAnimation", ["stringValueNames"]}]
     1514 NEWTABLE                         R18 0 1
     1516 LOADK                            R19 K433 ["jump"]
     1517 SETLIST                          R18 R19 1 [1]
     1519 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1521 SETTABLE                         R17 R15 R16
     1522 GETIMPORT                        R16 K435 [Enum.AssetType.RunAnimation]
     1524 DUPTABLE                         R17 K436 [{["modelName"] = "RunAnimation", ["stringValueNames"]}]
     1525 NEWTABLE                         R18 0 1
     1527 LOADK                            R19 K437 ["run"]
     1528 SETLIST                          R18 R19 1 [1]
     1530 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1532 SETTABLE                         R17 R15 R16
     1533 GETIMPORT                        R16 K439 [Enum.AssetType.SwimAnimation]
     1535 DUPTABLE                         R17 K440 [{["modelName"] = "SwimAnimation", ["stringValueNames"]}]
     1536 NEWTABLE                         R18 0 2
     1538 LOADK                            R19 K441 ["swim"]
     1539 LOADK                            R20 K442 ["swimidle"]
     1540 SETLIST                          R18 R19 2 [1]
     1542 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1544 SETTABLE                         R17 R15 R16
     1545 GETIMPORT                        R16 K444 [Enum.AssetType.WalkAnimation]
     1547 DUPTABLE                         R17 K445 [{["modelName"] = "WalkAnimation", ["stringValueNames"]}]
     1548 NEWTABLE                         R18 0 1
     1550 LOADK                            R19 K446 ["walk"]
     1551 SETLIST                          R18 R19 1 [1]
     1553 SETTABLEKS                       R18 R17 K419 ["stringValueNames"]
     1555 SETTABLE                         R17 R15 R16
     1556 SETTABLEKS                       R15 R12 K447 ["ANIMATION_ASSET_INFO"]
     1558 NEWTABLE                         R15 0 5
     1560 GETTABLEKS                       R16 R3 K448 ["UploadCategory"]
     1562 GETTABLEKS                       R16 R16 K449 ["TORSO_AND_LIMBS"]
     1564 GETTABLEKS                       R17 R3 K448 ["UploadCategory"]
     1566 GETTABLEKS                       R17 R17 K450 ["DYNAMIC_HEAD"]
     1568 GETTABLEKS                       R18 R3 K448 ["UploadCategory"]
     1570 GETTABLEKS                       R18 R18 K451 ["LAYERED_CLOTHING"]
     1572 GETTABLEKS                       R19 R3 K448 ["UploadCategory"]
     1574 GETTABLEKS                       R19 R19 K452 ["RIGID_ACCESSORY"]
     1576 GETTABLEKS                       R20 R3 K448 ["UploadCategory"]
     1578 GETTABLEKS                       R20 R20 K453 ["EMOTE_ANIMATION"]
     1580 SETLIST                          R15 R16 5 [1]
     1582 SETTABLEKS                       R15 R12 K454 ["AllAssetUploadCategories"]
     1584 MOVE                             R15 R8
     1585 CALL                             R15 0 1
     1586 JUMPIFNOT                        R15 ; [+11]
     1587 GETTABLEKS                       R16 R12 K454 ["AllAssetUploadCategories"]
     1589 GETTABLEKS                       R17 R3 K448 ["UploadCategory"]
     1591 GETTABLEKS                       R17 R17 K455 ["ANIMATION"]
     1593 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1595 GETIMPORT                        R15 K146 [table.insert]
     1597 CALL                             R15 2 0
     1598 NEWTABLE                         R15 0 0
     1600 SETTABLEKS                       R15 R12 K456 ["AllAssetUploadCategoriesIncludingMakeup"]
     1602 GETTABLEKS                       R15 R12 K454 ["AllAssetUploadCategories"]
     1604 LOADNIL                          R16
     1605 LOADNIL                          R17
     1606 FORGPREP                         R15
     1607 GETTABLEKS                       R21 R12 K456 ["AllAssetUploadCategoriesIncludingMakeup"]
     1609 FASTCALL2                        TABLE_INSERT R21 R19 ; [+4]
     1611 MOVE                             R22 R19
     1612 GETIMPORT                        R20 K146 [table.insert]
     1614 CALL                             R20 2 0
     1615 FORGLOOP                         R15 2 ; [-9]
     1617 GETTABLEKS                       R16 R12 K456 ["AllAssetUploadCategoriesIncludingMakeup"]
     1619 GETTABLEKS                       R17 R3 K448 ["UploadCategory"]
     1621 GETTABLEKS                       R17 R17 K457 ["MAKEUP"]
     1623 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1625 GETIMPORT                        R15 K146 [table.insert]
     1627 CALL                             R15 2 0
     1628 NEWTABLE                         R15 0 2
     1630 GETTABLEKS                       R16 R3 K448 ["UploadCategory"]
     1632 GETTABLEKS                       R16 R16 K458 ["FULL_BODY"]
     1634 GETTABLEKS                       R17 R3 K448 ["UploadCategory"]
     1636 GETTABLEKS                       R17 R17 K459 ["BOTH_SHOES"]
     1638 SETLIST                          R15 R16 2 [1]
     1640 SETTABLEKS                       R15 R12 K460 ["AllBundleUploadCategories"]
     1642 MOVE                             R15 R8
     1643 CALL                             R15 0 1
     1644 JUMPIFNOT                        R15 ; [+11]
     1645 GETTABLEKS                       R16 R12 K460 ["AllBundleUploadCategories"]
     1647 GETTABLEKS                       R17 R3 K448 ["UploadCategory"]
     1649 GETTABLEKS                       R17 R17 K461 ["ANIMATION_PACK"]
     1651 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1653 GETIMPORT                        R15 K146 [table.insert]
     1655 CALL                             R15 2 0
     1656 NEWTABLE                         R15 0 0
     1658 SETTABLEKS                       R15 R12 K462 ["AllUploadCategories"]
     1660 GETTABLEKS                       R15 R3 K448 ["UploadCategory"]
     1662 LOADNIL                          R16
     1663 LOADNIL                          R17
     1664 FORGPREP                         R15
     1665 GETTABLEKS                       R21 R12 K462 ["AllUploadCategories"]
     1667 FASTCALL2                        TABLE_INSERT R21 R19 ; [+4]
     1669 MOVE                             R22 R19
     1670 GETIMPORT                        R20 K146 [table.insert]
     1672 CALL                             R20 2 0
     1673 FORGLOOP                         R15 2 ; [-9]
     1675 NEWTABLE                         R15 8 0
     1677 GETIMPORT                        R16 K104 [Enum.AssetType.Torso]
     1679 LOADB                            R17 1
     1680 SETTABLE                         R17 R15 R16
     1681 GETIMPORT                        R16 K106 [Enum.AssetType.LeftArm]
     1683 LOADB                            R17 1
     1684 SETTABLE                         R17 R15 R16
     1685 GETIMPORT                        R16 K108 [Enum.AssetType.RightArm]
     1687 LOADB                            R17 1
     1688 SETTABLE                         R17 R15 R16
     1689 GETIMPORT                        R16 K110 [Enum.AssetType.LeftLeg]
     1691 LOADB                            R17 1
     1692 SETTABLE                         R17 R15 R16
     1693 GETIMPORT                        R16 K112 [Enum.AssetType.RightLeg]
     1695 LOADB                            R17 1
     1696 SETTABLE                         R17 R15 R16
     1697 SETTABLEKS                       R15 R12 K463 ["AssetUploadsWithFolderStructure"]
     1699 NEWTABLE                         R15 2 0
     1701 GETIMPORT                        R16 K113 [Enum.AssetType.EyebrowAccessory]
     1703 LOADB                            R17 1
     1704 SETTABLE                         R17 R15 R16
     1705 GETIMPORT                        R16 K114 [Enum.AssetType.EyelashAccessory]
     1707 LOADB                            R17 1
     1708 SETTABLE                         R17 R15 R16
     1709 SETTABLEKS                       R15 R12 K464 ["SkinningTransferRequiredTypes"]
     1711 RETURN                           R12 1
