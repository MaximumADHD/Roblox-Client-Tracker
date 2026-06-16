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
      270 DUPTABLE                         R13 K94 [{"RBX_Leader", "RBX_Follower"}]
      271 LOADB                            R14 1
      272 SETTABLEKS                       R14 R13 K92 ["RBX_Leader"]
      274 LOADB                            R14 1
      275 SETTABLEKS                       R14 R13 K93 ["RBX_Follower"]
      277 SETTABLEKS                       R13 R12 K95 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      279 GETTABLEKS                       R13 R12 K65 ["R15_BODY_PARTS"]
      281 LOADNIL                          R14
      282 LOADNIL                          R15
      283 FORGPREP                         R13
      284 GETTABLEKS                       R18 R12 K91 ["R15_STANDARD_JOINT_NAMES"]
      286 LOADB                            R19 1
      287 SETTABLE                         R19 R18 R17
      288 FORGLOOP                         R13 2 ; [-5]
      290 NEWTABLE                         R13 0 18
      292 LOADK                            R14 K50 ["Head"]
      293 LOADK                            R15 K51 ["UpperTorso"]
      294 LOADK                            R16 K52 ["LowerTorso"]
      295 LOADK                            R17 K53 ["LeftUpperLeg"]
      296 LOADK                            R18 K54 ["LeftLowerLeg"]
      297 LOADK                            R19 K61 ["LeftHand"]
      298 LOADK                            R20 K62 ["RightUpperArm"]
      299 LOADK                            R21 K63 ["RightLowerArm"]
      300 LOADK                            R22 K64 ["RightHand"]
      301 LOADK                            R23 K59 ["LeftUpperArm"]
      302 LOADK                            R24 K60 ["LeftLowerArm"]
      303 LOADK                            R25 K55 ["LeftFoot"]
      304 LOADK                            R26 K56 ["RightUpperLeg"]
      305 LOADK                            R27 K57 ["RightLowerLeg"]
      306 LOADK                            R28 K58 ["RightFoot"]
      307 LOADK                            R29 K96 ["EyebrowAccessory"]
      308 SETLIST                          R13 R14 16 [1]
      310 LOADK                            R14 K97 ["EyelashAccessory"]
      311 LOADK                            R15 K98 ["HairAccessory"]
      312 SETLIST                          R13 R14 2 [17]
      314 SETTABLEKS                       R13 R12 K99 ["UGC_BODY_PARTS"]
      316 DUPTABLE                         R13 K100 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      317 GETIMPORT                        R14 K102 [Enum.AssetType.DynamicHead]
      319 SETTABLEKS                       R14 R13 K50 ["Head"]
      321 GETIMPORT                        R14 K103 [Enum.AssetType.Torso]
      323 SETTABLEKS                       R14 R13 K51 ["UpperTorso"]
      325 GETIMPORT                        R14 K103 [Enum.AssetType.Torso]
      327 SETTABLEKS                       R14 R13 K52 ["LowerTorso"]
      329 GETIMPORT                        R14 K105 [Enum.AssetType.LeftArm]
      331 SETTABLEKS                       R14 R13 K59 ["LeftUpperArm"]
      333 GETIMPORT                        R14 K105 [Enum.AssetType.LeftArm]
      335 SETTABLEKS                       R14 R13 K60 ["LeftLowerArm"]
      337 GETIMPORT                        R14 K105 [Enum.AssetType.LeftArm]
      339 SETTABLEKS                       R14 R13 K61 ["LeftHand"]
      341 GETIMPORT                        R14 K107 [Enum.AssetType.RightArm]
      343 SETTABLEKS                       R14 R13 K62 ["RightUpperArm"]
      345 GETIMPORT                        R14 K107 [Enum.AssetType.RightArm]
      347 SETTABLEKS                       R14 R13 K63 ["RightLowerArm"]
      349 GETIMPORT                        R14 K107 [Enum.AssetType.RightArm]
      351 SETTABLEKS                       R14 R13 K64 ["RightHand"]
      353 GETIMPORT                        R14 K109 [Enum.AssetType.LeftLeg]
      355 SETTABLEKS                       R14 R13 K53 ["LeftUpperLeg"]
      357 GETIMPORT                        R14 K109 [Enum.AssetType.LeftLeg]
      359 SETTABLEKS                       R14 R13 K54 ["LeftLowerLeg"]
      361 GETIMPORT                        R14 K109 [Enum.AssetType.LeftLeg]
      363 SETTABLEKS                       R14 R13 K55 ["LeftFoot"]
      365 GETIMPORT                        R14 K111 [Enum.AssetType.RightLeg]
      367 SETTABLEKS                       R14 R13 K56 ["RightUpperLeg"]
      369 GETIMPORT                        R14 K111 [Enum.AssetType.RightLeg]
      371 SETTABLEKS                       R14 R13 K57 ["RightLowerLeg"]
      373 GETIMPORT                        R14 K111 [Enum.AssetType.RightLeg]
      375 SETTABLEKS                       R14 R13 K58 ["RightFoot"]
      377 GETIMPORT                        R14 K112 [Enum.AssetType.EyebrowAccessory]
      379 SETTABLEKS                       R14 R13 K96 ["EyebrowAccessory"]
      381 GETIMPORT                        R14 K113 [Enum.AssetType.EyelashAccessory]
      383 SETTABLEKS                       R14 R13 K97 ["EyelashAccessory"]
      385 GETIMPORT                        R14 K114 [Enum.AssetType.HairAccessory]
      387 SETTABLEKS                       R14 R13 K98 ["HairAccessory"]
      389 SETTABLEKS                       R13 R12 K115 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      391 DUPTABLE                         R13 K118 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      392 GETIMPORT                        R14 K119 [Enum.AssetType.LeftShoeAccessory]
      394 SETTABLEKS                       R14 R13 K116 ["LeftShoeAccessory"]
      396 GETIMPORT                        R14 K120 [Enum.AssetType.RightShoeAccessory]
      398 SETTABLEKS                       R14 R13 K117 ["RightShoeAccessory"]
      400 SETTABLEKS                       R13 R12 K121 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      402 NEWTABLE                         R13 2 0
      404 GETIMPORT                        R14 K124 [Enum.BundleType.BodyParts]
      406 GETTABLEKS                       R15 R12 K115 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      408 SETTABLE                         R15 R13 R14
      409 GETIMPORT                        R14 K124 [Enum.BundleType.BodyParts]
      411 GETTABLEKS                       R15 R12 K121 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      413 SETTABLE                         R15 R13 R14
      414 SETTABLEKS                       R13 R12 K125 ["BUNDLE_TO_ASSET_MAPPING"]
      416 NEWTABLE                         R13 0 4
      418 GETIMPORT                        R14 K102 [Enum.AssetType.DynamicHead]
      420 GETIMPORT                        R15 K112 [Enum.AssetType.EyebrowAccessory]
      422 GETIMPORT                        R16 K113 [Enum.AssetType.EyelashAccessory]
      424 GETIMPORT                        R17 K114 [Enum.AssetType.HairAccessory]
      426 SETLIST                          R13 R14 4 [1]
      428 SETTABLEKS                       R13 R12 K126 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      430 DUPTABLE                         R13 K130 [{"R6", "R15ArtistIntent", "R15Fixed"}]
      431 LOADK                            R14 K127 ["R6"]
      432 SETTABLEKS                       R14 R13 K127 ["R6"]
      434 LOADK                            R14 K128 ["R15ArtistIntent"]
      435 SETTABLEKS                       R14 R13 K128 ["R15ArtistIntent"]
      437 LOADK                            R14 K129 ["R15Fixed"]
      438 SETTABLEKS                       R14 R13 K129 ["R15Fixed"]
      440 SETTABLEKS                       R13 R12 K131 ["FOLDER_NAMES"]
      442 NEWTABLE                         R13 0 3
      444 LOADK                            R14 K50 ["Head"]
      445 LOADK                            R15 K132 ["HumanoidRootPart"]
      446 LOADK                            R16 K133 ["Humanoid"]
      447 SETLIST                          R13 R14 3 [1]
      449 SETTABLEKS                       R13 R12 K134 ["EXTRA_BANNED_NAMES"]
      451 NEWTABLE                         R13 0 6
      453 LOADK                            R14 K135 ["Body Colors"]
      454 LOADK                            R15 K136 ["Shirt Graphic"]
      455 LOADK                            R16 K137 ["Shirt"]
      456 LOADK                            R17 K138 ["Pants"]
      457 LOADK                            R18 K139 ["Health"]
      458 LOADK                            R19 K140 ["Animate"]
      459 SETLIST                          R13 R14 6 [1]
      461 GETIMPORT                        R14 K142 [ipairs]
      463 MOVE                             R15 R13
      464 CALL                             R14 1 3
      465 FORGPREP_INEXT                   R14
      466 GETTABLEKS                       R20 R12 K134 ["EXTRA_BANNED_NAMES"]
      468 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
      470 MOVE                             R21 R18
      471 GETIMPORT                        R19 K145 [table.insert]
      473 CALL                             R19 2 0
      474 FORGLOOP                         R14 2 [inext] ; [-9]
      476 NEWTABLE                         R14 0 0
      478 SETTABLEKS                       R14 R12 K146 ["BANNED_NAMES"]
      480 NEWTABLE                         R14 0 3
      482 GETTABLEKS                       R15 R12 K49 ["R6_BODY_PARTS"]
      484 GETTABLEKS                       R16 R12 K65 ["R15_BODY_PARTS"]
      486 GETTABLEKS                       R17 R12 K134 ["EXTRA_BANNED_NAMES"]
      488 SETLIST                          R14 R15 3 [1]
      490 MOVE                             R15 R14
      491 LOADNIL                          R16
      492 LOADNIL                          R17
      493 FORGPREP                         R15
      494 MOVE                             R20 R19
      495 LOADNIL                          R21
      496 LOADNIL                          R22
      497 FORGPREP                         R20
      498 GETTABLEKS                       R25 R12 K146 ["BANNED_NAMES"]
      500 LOADB                            R26 1
      501 SETTABLE                         R26 R25 R24
      502 FORGLOOP                         R20 2 ; [-5]
      504 FORGLOOP                         R15 2 ; [-11]
      506 DUPTABLE                         R15 K150 [{"UNKNOWN", "REVIEW_PENDING", "MODERATED"}]
      507 LOADK                            R16 K151 ["Unknown"]
      508 SETTABLEKS                       R16 R15 K147 ["UNKNOWN"]
      510 LOADK                            R16 K152 ["ReviewPending"]
      511 SETTABLEKS                       R16 R15 K148 ["REVIEW_PENDING"]
      513 LOADK                            R16 K153 ["Moderated"]
      514 SETTABLEKS                       R16 R15 K149 ["MODERATED"]
      516 SETTABLEKS                       R15 R12 K154 ["ASSET_STATUS"]
      518 NAMECALL                         R15 R2 K155 ["getMakeupRules"]
      520 CALL                             R15 1 1
      521 SETTABLEKS                       R15 R12 K156 ["MAKEUP_INFO"]
      523 NEWTABLE                         R15 0 0
      525 SETTABLEKS                       R15 R12 K157 ["ASSET_TYPE_INFO"]
      527 GETTABLEKS                       R17 R12 K157 ["ASSET_TYPE_INFO"]
      529 NAMECALL                         R15 R2 K158 ["getAccessoryRules"]
      531 CALL                             R15 2 0
      532 NAMECALL                         R15 R2 K159 ["getFullBodyRulesBounds"]
      534 CALL                             R15 1 1
      535 SETTABLEKS                       R15 R12 K160 ["FULL_BODY_BOUNDS"]
      537 DUPTABLE                         R15 K164 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
      538 LOADB                            R16 1
      539 SETTABLEKS                       R16 R15 K161 ["Classic"]
      541 LOADB                            R16 1
      542 SETTABLEKS                       R16 R15 K162 ["ProportionsSlender"]
      544 LOADB                            R16 1
      545 SETTABLEKS                       R16 R15 K163 ["ProportionsNormal"]
      547 SETTABLEKS                       R15 R12 K165 ["AvatarPartScaleTypes"]
      549 GETTABLEKS                       R17 R12 K157 ["ASSET_TYPE_INFO"]
      551 NAMECALL                         R15 R2 K166 ["getBodyPartRules"]
      553 CALL                             R15 2 0
      554 NEWTABLE                         R15 16 0
      556 LOADNIL                          R16
      557 SETTABLEKS                       R16 R15 K50 ["Head"]
      559 LOADNIL                          R16
      560 SETTABLEKS                       R16 R15 K52 ["LowerTorso"]
      562 LOADK                            R16 K52 ["LowerTorso"]
      563 SETTABLEKS                       R16 R15 K51 ["UpperTorso"]
      565 LOADNIL                          R16
      566 SETTABLEKS                       R16 R15 K59 ["LeftUpperArm"]
      568 LOADK                            R16 K59 ["LeftUpperArm"]
      569 SETTABLEKS                       R16 R15 K60 ["LeftLowerArm"]
      571 LOADK                            R16 K60 ["LeftLowerArm"]
      572 SETTABLEKS                       R16 R15 K61 ["LeftHand"]
      574 LOADNIL                          R16
      575 SETTABLEKS                       R16 R15 K53 ["LeftUpperLeg"]
      577 LOADK                            R16 K53 ["LeftUpperLeg"]
      578 SETTABLEKS                       R16 R15 K54 ["LeftLowerLeg"]
      580 LOADNIL                          R16
      581 SETTABLEKS                       R16 R15 K62 ["RightUpperArm"]
      583 LOADK                            R16 K62 ["RightUpperArm"]
      584 SETTABLEKS                       R16 R15 K63 ["RightLowerArm"]
      586 LOADK                            R16 K63 ["RightLowerArm"]
      587 SETTABLEKS                       R16 R15 K64 ["RightHand"]
      589 LOADNIL                          R16
      590 SETTABLEKS                       R16 R15 K56 ["RightUpperLeg"]
      592 LOADK                            R16 K56 ["RightUpperLeg"]
      593 SETTABLEKS                       R16 R15 K57 ["RightLowerLeg"]
      595 SETTABLEKS                       R15 R12 K167 ["BODYPART_TO_PARENT"]
      597 MOVE                             R15 R4
      598 CALL                             R15 0 1
      599 JUMPIFNOT                        R15 ; [+11]
      600 GETTABLEKS                       R15 R12 K167 ["BODYPART_TO_PARENT"]
      602 LOADK                            R16 K57 ["RightLowerLeg"]
      603 SETTABLEKS                       R16 R15 K58 ["RightFoot"]
      605 GETTABLEKS                       R15 R12 K167 ["BODYPART_TO_PARENT"]
      607 LOADK                            R16 K54 ["LeftLowerLeg"]
      608 SETTABLEKS                       R16 R15 K55 ["LeftFoot"]
      610 JUMP                             ; [+10]
      611 GETTABLEKS                       R15 R12 K167 ["BODYPART_TO_PARENT"]
      613 LOADK                            R16 K57 ["RightLowerLeg"]
      614 SETTABLEKS                       R16 R15 K110 ["RightLeg"]
      616 GETTABLEKS                       R15 R12 K167 ["BODYPART_TO_PARENT"]
      618 LOADK                            R16 K54 ["LeftLowerLeg"]
      619 SETTABLEKS                       R16 R15 K108 ["LeftLeg"]
      621 NAMECALL                         R15 R2 K22 ["getRules"]
      623 CALL                             R15 1 1
      624 GETTABLEKS                       R15 R15 K23 ["MeshRules"]
      626 GETTABLEKS                       R15 R15 K168 ["CageMeshMaxDistanceFromRenderMesh"]
      628 SETTABLEKS                       R15 R12 K169 ["RenderVsWrapMeshMaxDiff"]
      630 DUPTABLE                         R15 K177 [{"SMALLER", "SMALLER_EQ", "FUZZY_EQ", "EXACT_EQ", "GREATER_EQ", "GREATER", "FOUND_IN"}]
      631 LOADK                            R16 K178 ["<"]
      632 SETTABLEKS                       R16 R15 K170 ["SMALLER"]
      634 LOADK                            R16 K179 ["<="]
      635 SETTABLEKS                       R16 R15 K171 ["SMALLER_EQ"]
      637 LOADK                            R16 K180 ["="]
      638 SETTABLEKS                       R16 R15 K172 ["FUZZY_EQ"]
      640 LOADK                            R16 K181 ["=="]
      641 SETTABLEKS                       R16 R15 K173 ["EXACT_EQ"]
      643 LOADK                            R16 K182 [">="]
      644 SETTABLEKS                       R16 R15 K174 ["GREATER_EQ"]
      646 LOADK                            R16 K183 [">"]
      647 SETTABLEKS                       R16 R15 K175 ["GREATER"]
      649 LOADK                            R16 K184 ["one of the following:"]
      650 SETTABLEKS                       R16 R15 K176 ["FOUND_IN"]
      652 SETTABLEKS                       R15 R12 K185 ["COMPARISON_METHODS"]
      654 GETTABLEKS                       R16 R12 K185 ["COMPARISON_METHODS"]
      656 DUPTABLE                         R17 K84 [{"__index"}]
      657 DUPCLOSURE                       R18 K186 [PROTO_2]
      658 SETTABLEKS                       R18 R17 K83 ["__index"]
      660 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
      662 GETIMPORT                        R15 K87 [setmetatable]
      664 CALL                             R15 2 0
      665 DUPTABLE                         R15 K190 [{"RUN_ON_ALL", "INCLUSION_LIST", "EXCLUSION_LIST"}]
      666 LOADK                            R16 K187 ["RUN_ON_ALL"]
      667 SETTABLEKS                       R16 R15 K187 ["RUN_ON_ALL"]
      669 LOADK                            R16 K188 ["INCLUSION_LIST"]
      670 SETTABLEKS                       R16 R15 K188 ["INCLUSION_LIST"]
      672 LOADK                            R16 K189 ["EXCLUSION_LIST"]
      673 SETTABLEKS                       R16 R15 K189 ["EXCLUSION_LIST"]
      675 SETTABLEKS                       R15 R12 K191 ["INCLUSION_METHODS"]
      677 GETTABLEKS                       R16 R12 K191 ["INCLUSION_METHODS"]
      679 DUPTABLE                         R17 K84 [{"__index"}]
      680 DUPCLOSURE                       R18 K192 [PROTO_3]
      681 SETTABLEKS                       R18 R17 K83 ["__index"]
      683 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
      685 GETIMPORT                        R15 K87 [setmetatable]
      687 CALL                             R15 2 0
      688 DUPTABLE                         R15 K202 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      689 DUPTABLE                         R16 K204 [{"Archivable"}]
      690 LOADB                            R17 1
      691 SETTABLEKS                       R17 R16 K203 ["Archivable"]
      693 SETTABLEKS                       R16 R15 K193 ["Instance"]
      695 DUPTABLE                         R16 K206 [{"Visible"}]
      696 LOADB                            R17 0
      697 SETTABLEKS                       R17 R16 K205 ["Visible"]
      699 SETTABLEKS                       R16 R15 K194 ["Attachment"]
      701 DUPTABLE                         R16 K211 [{"Color3", "Transparency", "UVOffset", "UVScale"}]
      702 GETIMPORT                        R17 K213 [Color3.new]
      704 LOADN                            R18 1
      705 LOADN                            R19 1
      706 LOADN                            R20 1
      707 CALL                             R17 3 1
      708 SETTABLEKS                       R17 R16 K207 ["Color3"]
      710 LOADN                            R17 0
      711 SETTABLEKS                       R17 R16 K208 ["Transparency"]
      713 JUMPIFNOT                        R9 ; [+6]
      714 GETIMPORT                        R17 K215 [Vector2.new]
      716 LOADN                            R18 0
      717 LOADN                            R19 0
      718 CALL                             R17 2 1
      719 JUMP                             ; [+1]
      720 LOADNIL                          R17
      721 SETTABLEKS                       R17 R16 K209 ["UVOffset"]
      723 JUMPIFNOT                        R9 ; [+6]
      724 GETIMPORT                        R17 K215 [Vector2.new]
      726 LOADN                            R18 1
      727 LOADN                            R19 1
      728 CALL                             R17 2 1
      729 JUMP                             ; [+1]
      730 LOADNIL                          R17
      731 SETTABLEKS                       R17 R16 K210 ["UVScale"]
      733 SETTABLEKS                       R16 R15 K195 ["Decal"]
      735 DUPTABLE                         R16 K219 [{"MeshType", "Offset", "VertexColor"}]
      736 GETIMPORT                        R17 K221 [Enum.MeshType.FileMesh]
      738 SETTABLEKS                       R17 R16 K216 ["MeshType"]
      740 LOADK                            R17 K222 [{0, 0, 0}]
      741 SETTABLEKS                       R17 R16 K217 ["Offset"]
      743 LOADK                            R17 K223 [{1, 1, 1}]
      744 SETTABLEKS                       R17 R16 K218 ["VertexColor"]
      746 SETTABLEKS                       R16 R15 K196 ["SpecialMesh"]
      748 NEWTABLE                         R16 64 0
      750 LOADB                            R17 0
      751 SETTABLEKS                       R17 R16 K224 ["Anchored"]
      753 LOADN                            R17 0
      754 SETTABLEKS                       R17 R16 K225 ["CollisionGroupId"]
      756 GETTABLEKS                       R17 R1 K226 ["None"]
      758 SETTABLEKS                       R17 R16 K227 ["CustomPhysicalProperties"]
      760 LOADK                            R17 K228 [0.5]
      761 SETTABLEKS                       R17 R16 K229 ["Elasticity"]
      763 LOADK                            R17 K230 [0.3]
      764 SETTABLEKS                       R17 R16 K231 ["Friction"]
      766 LOADN                            R17 0
      767 SETTABLEKS                       R17 R16 K232 ["LocalTransparencyModifier"]
      769 LOADB                            R17 0
      770 SETTABLEKS                       R17 R16 K233 ["Massless"]
      772 LOADN                            R17 0
      773 SETTABLEKS                       R17 R16 K234 ["Reflectance"]
      775 LOADN                            R17 0
      776 SETTABLEKS                       R17 R16 K235 ["RootPriority"]
      778 LOADK                            R17 K222 [{0, 0, 0}]
      779 SETTABLEKS                       R17 R16 K236 ["RotVelocity"]
      781 LOADK                            R17 K222 [{0, 0, 0}]
      782 SETTABLEKS                       R17 R16 K237 ["Velocity"]
      784 LOADK                            R17 K238 [-0.5]
      785 SETTABLEKS                       R17 R16 K239 ["BackParamA"]
      787 LOADK                            R17 K228 [0.5]
      788 SETTABLEKS                       R17 R16 K240 ["BackParamB"]
      790 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      792 SETTABLEKS                       R17 R16 K244 ["BackSurfaceInput"]
      794 LOADK                            R17 K238 [-0.5]
      795 SETTABLEKS                       R17 R16 K245 ["BottomParamA"]
      797 LOADK                            R17 K228 [0.5]
      798 SETTABLEKS                       R17 R16 K246 ["BottomParamB"]
      800 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      802 SETTABLEKS                       R17 R16 K247 ["BottomSurfaceInput"]
      804 LOADK                            R17 K238 [-0.5]
      805 SETTABLEKS                       R17 R16 K248 ["FrontParamA"]
      807 LOADK                            R17 K228 [0.5]
      808 SETTABLEKS                       R17 R16 K249 ["FrontParamB"]
      810 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      812 SETTABLEKS                       R17 R16 K250 ["FrontSurfaceInput"]
      814 LOADK                            R17 K238 [-0.5]
      815 SETTABLEKS                       R17 R16 K251 ["LeftParamA"]
      817 LOADK                            R17 K228 [0.5]
      818 SETTABLEKS                       R17 R16 K252 ["LeftParamB"]
      820 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      822 SETTABLEKS                       R17 R16 K253 ["LeftSurfaceInput"]
      824 LOADK                            R17 K238 [-0.5]
      825 SETTABLEKS                       R17 R16 K254 ["RightParamA"]
      827 LOADK                            R17 K228 [0.5]
      828 SETTABLEKS                       R17 R16 K255 ["RightParamB"]
      830 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      832 SETTABLEKS                       R17 R16 K256 ["RightSurfaceInput"]
      834 LOADK                            R17 K238 [-0.5]
      835 SETTABLEKS                       R17 R16 K257 ["TopParamA"]
      837 LOADK                            R17 K228 [0.5]
      838 SETTABLEKS                       R17 R16 K258 ["TopParamB"]
      840 GETIMPORT                        R17 K243 [Enum.InputType.NoInput]
      842 SETTABLEKS                       R17 R16 K259 ["TopSurfaceInput"]
      844 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      846 SETTABLEKS                       R17 R16 K263 ["BackSurface"]
      848 MOVE                             R18 R10
      849 CALL                             R18 0 1
      850 JUMPIFNOT                        R18 ; [+16]
      851 NEWTABLE                         R17 1 0
      853 GETTABLEKS                       R18 R12 K185 ["COMPARISON_METHODS"]
      855 GETTABLEKS                       R18 R18 K176 ["FOUND_IN"]
      857 NEWTABLE                         R19 0 2
      859 GETIMPORT                        R20 K262 [Enum.SurfaceType.Smooth]
      861 GETIMPORT                        R21 K265 [Enum.SurfaceType.Inlet]
      863 SETLIST                          R19 R20 2 [1]
      865 SETTABLE                         R19 R17 R18
      866 JUMP                             ; [+2]
      867 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      869 SETTABLEKS                       R17 R16 K266 ["BottomSurface"]
      871 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      873 SETTABLEKS                       R17 R16 K267 ["FrontSurface"]
      875 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      877 SETTABLEKS                       R17 R16 K268 ["LeftSurface"]
      879 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      881 SETTABLEKS                       R17 R16 K269 ["RightSurface"]
      883 MOVE                             R18 R10
      884 CALL                             R18 0 1
      885 JUMPIFNOT                        R18 ; [+16]
      886 NEWTABLE                         R17 1 0
      888 GETTABLEKS                       R18 R12 K185 ["COMPARISON_METHODS"]
      890 GETTABLEKS                       R18 R18 K176 ["FOUND_IN"]
      892 NEWTABLE                         R19 0 2
      894 GETIMPORT                        R20 K262 [Enum.SurfaceType.Smooth]
      896 GETIMPORT                        R21 K271 [Enum.SurfaceType.Studs]
      898 SETLIST                          R19 R20 2 [1]
      900 SETTABLE                         R19 R17 R18
      901 JUMP                             ; [+2]
      902 GETIMPORT                        R17 K262 [Enum.SurfaceType.Smooth]
      904 SETTABLEKS                       R17 R16 K272 ["TopSurface"]
      906 NEWTABLE                         R17 1 0
      908 GETTABLEKS                       R18 R12 K185 ["COMPARISON_METHODS"]
      910 GETTABLEKS                       R18 R18 K173 ["EXACT_EQ"]
      912 LOADN                            R19 0
      913 SETTABLE                         R19 R17 R18
      914 SETTABLEKS                       R17 R16 K208 ["Transparency"]
      916 NEWTABLE                         R17 2 0
      918 GETTABLEKS                       R18 R12 K185 ["COMPARISON_METHODS"]
      920 GETTABLEKS                       R18 R18 K172 ["FUZZY_EQ"]
      922 GETIMPORT                        R19 K274 [BrickColor.new]
      924 LOADK                            R20 K19 ["DefineFastFlag"]
      925 CALL                             R19 1 1
      926 GETTABLEKS                       R19 R19 K276 ["Color"]
      928 SETTABLE                         R19 R17 R18
      929 GETTABLEKS                       R18 R12 K191 ["INCLUSION_METHODS"]
      931 GETTABLEKS                       R18 R18 K189 ["EXCLUSION_LIST"]
      933 NEWTABLE                         R19 0 6
      935 GETIMPORT                        R20 K102 [Enum.AssetType.DynamicHead]
      937 GETIMPORT                        R21 K103 [Enum.AssetType.Torso]
      939 GETIMPORT                        R22 K105 [Enum.AssetType.LeftArm]
      941 GETIMPORT                        R23 K107 [Enum.AssetType.RightArm]
      943 GETIMPORT                        R24 K109 [Enum.AssetType.LeftLeg]
      945 GETIMPORT                        R25 K111 [Enum.AssetType.RightLeg]
      947 SETLIST                          R19 R20 6 [1]
      949 SETTABLE                         R19 R17 R18
      950 SETTABLEKS                       R17 R16 K276 ["Color"]
      952 SETTABLEKS                       R16 R15 K197 ["BasePart"]
      954 DUPTABLE                         R16 K278 [{"Shape"}]
      955 GETIMPORT                        R17 K281 [Enum.PartType.Block]
      957 SETTABLEKS                       R17 R16 K277 ["Shape"]
      959 SETTABLEKS                       R16 R15 K198 ["Part"]
      961 DUPTABLE                         R16 K286 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      962 MOVE                             R18 R5
      963 CALL                             R18 0 1
      964 JUMPIFNOT                        R18 ; [+55]
      965 NEWTABLE                         R17 0 2
      967 NEWTABLE                         R18 2 0
      969 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
      971 GETTABLEKS                       R19 R19 K176 ["FOUND_IN"]
      973 NEWTABLE                         R20 0 2
      975 GETIMPORT                        R21 K288 [Enum.AlphaMode.Overlay]
      977 GETIMPORT                        R22 K289 [Enum.AlphaMode.Transparency]
      979 SETLIST                          R20 R21 2 [1]
      981 SETTABLE                         R20 R18 R19
      982 GETTABLEKS                       R19 R12 K191 ["INCLUSION_METHODS"]
      984 GETTABLEKS                       R19 R19 K188 ["INCLUSION_LIST"]
      986 NEWTABLE                         R20 0 2
      988 GETIMPORT                        R21 K113 [Enum.AssetType.EyelashAccessory]
      990 GETIMPORT                        R22 K112 [Enum.AssetType.EyebrowAccessory]
      992 SETLIST                          R20 R21 2 [1]
      994 SETTABLE                         R20 R18 R19
      995 NEWTABLE                         R19 2 0
      997 GETTABLEKS                       R20 R12 K185 ["COMPARISON_METHODS"]
      999 GETTABLEKS                       R20 R20 K173 ["EXACT_EQ"]
     1001 GETIMPORT                        R21 K288 [Enum.AlphaMode.Overlay]
     1003 SETTABLE                         R21 R19 R20
     1004 GETTABLEKS                       R20 R12 K191 ["INCLUSION_METHODS"]
     1006 GETTABLEKS                       R20 R20 K189 ["EXCLUSION_LIST"]
     1008 NEWTABLE                         R21 0 2
     1010 GETIMPORT                        R22 K113 [Enum.AssetType.EyelashAccessory]
     1012 GETIMPORT                        R23 K112 [Enum.AssetType.EyebrowAccessory]
     1014 SETLIST                          R21 R22 2 [1]
     1016 SETTABLE                         R21 R19 R20
     1017 SETLIST                          R17 R18 2 [1]
     1019 JUMP                             ; [+2]
     1020 GETIMPORT                        R17 K288 [Enum.AlphaMode.Overlay]
     1022 SETTABLEKS                       R17 R16 K282 ["AlphaMode"]
     1024 GETIMPORT                        R17 K292 [Content.none]
     1026 SETTABLEKS                       R17 R16 K283 ["EmissiveMaskContent"]
     1028 LOADN                            R17 1
     1029 SETTABLEKS                       R17 R16 K284 ["EmissiveStrength"]
     1031 GETIMPORT                        R17 K213 [Color3.new]
     1033 LOADN                            R18 1
     1034 LOADN                            R19 1
     1035 LOADN                            R20 1
     1036 CALL                             R17 3 1
     1037 SETTABLEKS                       R17 R16 K285 ["EmissiveTint"]
     1039 SETTABLEKS                       R16 R15 K199 ["SurfaceAppearance"]
     1041 DUPTABLE                         R16 K298 [{"Enabled", "CageOrigin", "ReferenceOrigin", "ImportOrigin", "BindOffset"}]
     1042 LOADB                            R17 1
     1043 SETTABLEKS                       R17 R16 K293 ["Enabled"]
     1045 DUPTABLE                         R17 K301 [{"PositionMagnitude", "Orientation"}]
     1046 NEWTABLE                         R18 1 0
     1048 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1050 GETTABLEKS                       R19 R19 K171 ["SMALLER_EQ"]
     1052 LOADN                            R20 10
     1053 SETTABLE                         R20 R18 R19
     1054 SETTABLEKS                       R18 R17 K299 ["PositionMagnitude"]
     1056 NEWTABLE                         R18 1 0
     1058 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1060 GETTABLEKS                       R19 R19 K173 ["EXACT_EQ"]
     1062 LOADK                            R20 K222 [{0, 0, 0}]
     1063 SETTABLE                         R20 R18 R19
     1064 SETTABLEKS                       R18 R17 K300 ["Orientation"]
     1066 SETTABLEKS                       R17 R16 K294 ["CageOrigin"]
     1068 DUPTABLE                         R17 K301 [{"PositionMagnitude", "Orientation"}]
     1069 NEWTABLE                         R18 1 0
     1071 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1073 GETTABLEKS                       R19 R19 K171 ["SMALLER_EQ"]
     1075 LOADN                            R20 10
     1076 SETTABLE                         R20 R18 R19
     1077 SETTABLEKS                       R18 R17 K299 ["PositionMagnitude"]
     1079 NEWTABLE                         R18 1 0
     1081 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1083 GETTABLEKS                       R19 R19 K173 ["EXACT_EQ"]
     1085 LOADK                            R20 K222 [{0, 0, 0}]
     1086 SETTABLE                         R20 R18 R19
     1087 SETTABLEKS                       R18 R17 K300 ["Orientation"]
     1089 SETTABLEKS                       R17 R16 K295 ["ReferenceOrigin"]
     1091 DUPTABLE                         R17 K302 [{"PositionMagnitude"}]
     1092 NEWTABLE                         R18 1 0
     1094 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1096 GETTABLEKS                       R19 R19 K171 ["SMALLER_EQ"]
     1098 LOADN                            R20 8
     1099 SETTABLE                         R20 R18 R19
     1100 SETTABLEKS                       R18 R17 K299 ["PositionMagnitude"]
     1102 SETTABLEKS                       R17 R16 K296 ["ImportOrigin"]
     1104 DUPTABLE                         R17 K304 [{"Position", "Orientation"}]
     1105 NEWTABLE                         R18 1 0
     1107 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1109 GETTABLEKS                       R19 R19 K173 ["EXACT_EQ"]
     1111 LOADK                            R20 K222 [{0, 0, 0}]
     1112 SETTABLE                         R20 R18 R19
     1113 SETTABLEKS                       R18 R17 K303 ["Position"]
     1115 NEWTABLE                         R18 1 0
     1117 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1119 GETTABLEKS                       R19 R19 K173 ["EXACT_EQ"]
     1121 LOADK                            R20 K222 [{0, 0, 0}]
     1122 SETTABLE                         R20 R18 R19
     1123 SETTABLEKS                       R18 R17 K300 ["Orientation"]
     1125 SETTABLEKS                       R17 R16 K297 ["BindOffset"]
     1127 SETTABLEKS                       R16 R15 K200 ["WrapLayer"]
     1129 DUPTABLE                         R16 K305 [{"CageOrigin", "ImportOrigin"}]
     1130 DUPTABLE                         R17 K301 [{"PositionMagnitude", "Orientation"}]
     1131 NEWTABLE                         R18 1 0
     1133 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1135 GETTABLEKS                       R19 R19 K171 ["SMALLER_EQ"]
     1137 LOADN                            R20 10
     1138 SETTABLE                         R20 R18 R19
     1139 SETTABLEKS                       R18 R17 K299 ["PositionMagnitude"]
     1141 NEWTABLE                         R18 1 0
     1143 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1145 GETTABLEKS                       R19 R19 K173 ["EXACT_EQ"]
     1147 LOADK                            R20 K222 [{0, 0, 0}]
     1148 SETTABLE                         R20 R18 R19
     1149 SETTABLEKS                       R18 R17 K300 ["Orientation"]
     1151 SETTABLEKS                       R17 R16 K294 ["CageOrigin"]
     1153 DUPTABLE                         R17 K302 [{"PositionMagnitude"}]
     1154 NEWTABLE                         R18 1 0
     1156 GETTABLEKS                       R19 R12 K185 ["COMPARISON_METHODS"]
     1158 GETTABLEKS                       R19 R19 K171 ["SMALLER_EQ"]
     1160 LOADN                            R20 8
     1161 SETTABLE                         R20 R18 R19
     1162 SETTABLEKS                       R18 R17 K299 ["PositionMagnitude"]
     1164 SETTABLEKS                       R17 R16 K296 ["ImportOrigin"]
     1166 SETTABLEKS                       R16 R15 K201 ["WrapTarget"]
     1168 SETTABLEKS                       R15 R12 K306 ["PROPERTIES"]
     1170 DUPTABLE                         R15 K309 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1171 NEWTABLE                         R16 0 2
     1173 LOADK                            R17 K54 ["LeftLowerLeg"]
     1174 LOADK                            R18 K55 ["LeftFoot"]
     1175 SETLIST                          R16 R17 2 [1]
     1177 SETTABLEKS                       R16 R15 K196 ["SpecialMesh"]
     1179 NEWTABLE                         R16 0 2
     1181 LOADK                            R17 K54 ["LeftLowerLeg"]
     1182 LOADK                            R18 K56 ["RightUpperLeg"]
     1183 SETLIST                          R16 R17 2 [1]
     1185 SETTABLEKS                       R16 R15 K307 ["MeshPart"]
     1187 NEWTABLE                         R16 0 4
     1189 LOADK                            R17 K57 ["RightLowerLeg"]
     1190 LOADK                            R18 K58 ["RightFoot"]
     1191 LOADK                            R19 K59 ["LeftUpperArm"]
     1192 LOADK                            R20 K60 ["LeftLowerArm"]
     1193 SETLIST                          R16 R17 4 [1]
     1195 SETTABLEKS                       R16 R15 K199 ["SurfaceAppearance"]
     1197 NEWTABLE                         R16 0 4
     1199 LOADK                            R17 K57 ["RightLowerLeg"]
     1200 LOADK                            R18 K58 ["RightFoot"]
     1201 LOADK                            R19 K59 ["LeftUpperArm"]
     1202 LOADK                            R20 K60 ["LeftLowerArm"]
     1203 SETLIST                          R16 R17 4 [1]
     1205 SETTABLEKS                       R16 R15 K195 ["Decal"]
     1207 NEWTABLE                         R16 0 2
     1209 LOADK                            R17 K61 ["LeftHand"]
     1210 LOADK                            R18 K62 ["RightUpperArm"]
     1211 SETLIST                          R16 R17 2 [1]
     1213 SETTABLEKS                       R16 R15 K200 ["WrapLayer"]
     1215 NEWTABLE                         R16 0 1
     1217 LOADK                            R17 K61 ["LeftHand"]
     1218 SETLIST                          R16 R17 1 [1]
     1220 SETTABLEKS                       R16 R15 K201 ["WrapTarget"]
     1222 NEWTABLE                         R16 0 1
     1224 LOADK                            R17 K63 ["RightLowerArm"]
     1225 SETLIST                          R16 R17 1 [1]
     1227 SETTABLEKS                       R16 R15 K308 ["Animation"]
     1229 SETTABLEKS                       R15 R12 K320 ["CONTENT_ID_FIELDS"]
     1231 MOVE                             R15 R7
     1232 CALL                             R15 0 1
     1233 JUMPIFNOT                        R15 ; [+10]
     1234 GETTABLEKS                       R16 R12 K320 ["CONTENT_ID_FIELDS"]
     1236 GETTABLEKS                       R16 R16 K199 ["SurfaceAppearance"]
     1238 FASTCALL2K                       TABLE_INSERT R16 K321 ; [+4]
     1240 LOADK                            R17 K65 ["R15_BODY_PARTS"]
     1241 GETIMPORT                        R15 K145 [table.insert]
     1243 CALL                             R15 2 0
     1244 MOVE                             R15 R6
     1245 CALL                             R15 0 1
     1246 JUMPIFNOT                        R15 ; [+10]
     1247 GETTABLEKS                       R16 R12 K320 ["CONTENT_ID_FIELDS"]
     1249 GETTABLEKS                       R16 R16 K200 ["WrapLayer"]
     1251 FASTCALL2K                       TABLE_INSERT R16 K322 ; [+4]
     1253 LOADK                            R17 K66 ["Head_OuterCage"]
     1254 GETIMPORT                        R15 K145 [table.insert]
     1256 CALL                             R15 2 0
     1257 DUPTABLE                         R15 K323 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1258 DUPTABLE                         R16 K324 [{"MeshId", "TextureId"}]
     1259 LOADB                            R17 1
     1260 SETTABLEKS                       R17 R16 K310 ["MeshId"]
     1262 LOADB                            R17 1
     1263 SETTABLEKS                       R17 R16 K311 ["TextureId"]
     1265 SETTABLEKS                       R16 R15 K196 ["SpecialMesh"]
     1267 DUPTABLE                         R16 K325 [{"MeshId"}]
     1268 LOADB                            R17 1
     1269 SETTABLEKS                       R17 R16 K310 ["MeshId"]
     1271 SETTABLEKS                       R16 R15 K307 ["MeshPart"]
     1273 DUPTABLE                         R16 K326 [{"CageMeshId"}]
     1274 LOADB                            R17 1
     1275 SETTABLEKS                       R17 R16 K317 ["CageMeshId"]
     1277 SETTABLEKS                       R16 R15 K201 ["WrapTarget"]
     1279 DUPTABLE                         R16 K327 [{"AnimationId"}]
     1280 LOADB                            R17 1
     1281 SETTABLEKS                       R17 R16 K319 ["AnimationId"]
     1283 SETTABLEKS                       R16 R15 K308 ["Animation"]
     1285 SETTABLEKS                       R15 R12 K328 ["CONTENT_ID_REQUIRED_FIELDS"]
     1287 DUPTABLE                         R15 K329 [{"MeshPart", "WrapTarget", "WrapLayer", "SurfaceAppearance"}]
     1288 DUPTABLE                         R16 K330 [{"MeshId", "TextureID"}]
     1289 LOADK                            R17 K75 ["LeftUpperArm_OuterCage"]
     1290 SETTABLEKS                       R17 R16 K310 ["MeshId"]
     1292 LOADK                            R17 K76 ["LeftLowerArm_OuterCage"]
     1293 SETTABLEKS                       R17 R16 K312 ["TextureID"]
     1295 SETTABLEKS                       R16 R15 K307 ["MeshPart"]
     1297 DUPTABLE                         R16 K326 [{"CageMeshId"}]
     1298 LOADK                            R17 K77 ["LeftHand_OuterCage"]
     1299 SETTABLEKS                       R17 R16 K317 ["CageMeshId"]
     1301 SETTABLEKS                       R16 R15 K201 ["WrapTarget"]
     1303 DUPTABLE                         R16 K334 [{"CageMeshId", "ReferenceMeshId"}]
     1304 LOADK                            R17 K77 ["LeftHand_OuterCage"]
     1305 SETTABLEKS                       R17 R16 K317 ["CageMeshId"]
     1307 LOADK                            R17 K79 ["RightLowerArm_OuterCage"]
     1308 SETTABLEKS                       R17 R16 K318 ["ReferenceMeshId"]
     1310 SETTABLEKS                       R16 R15 K200 ["WrapLayer"]
     1312 DUPTABLE                         R16 K336 [{"ColorMap", "MetalnessMap", "NormalMap", "RoughnessMap"}]
     1313 LOADK                            R17 K81 ["R15_CAGE_PARTS"]
     1314 SETTABLEKS                       R17 R16 K313 ["ColorMap"]
     1316 LOADK                            R17 K82 ["NAMED_R15_BODY_PARTS"]
     1317 SETTABLEKS                       R17 R16 K314 ["MetalnessMap"]
     1319 LOADK                            R17 K83 ["__index"]
     1320 SETTABLEKS                       R17 R16 K315 ["NormalMap"]
     1322 LOADK                            R17 K84 [{"__index"}]
     1323 SETTABLEKS                       R17 R16 K316 ["RoughnessMap"]
     1325 SETTABLEKS                       R16 R15 K199 ["SurfaceAppearance"]
     1327 SETTABLEKS                       R15 R12 K341 ["CONTENT_ID_EDITABLE_PROPERTY"]
     1329 DUPTABLE                         R15 K342 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1330 NEWTABLE                         R16 0 1
     1332 LOADK                            R17 K54 ["LeftLowerLeg"]
     1333 SETLIST                          R16 R17 1 [1]
     1335 SETTABLEKS                       R16 R15 K196 ["SpecialMesh"]
     1337 NEWTABLE                         R16 0 1
     1339 LOADK                            R17 K54 ["LeftLowerLeg"]
     1340 SETLIST                          R16 R17 1 [1]
     1342 SETTABLEKS                       R16 R15 K307 ["MeshPart"]
     1344 NEWTABLE                         R16 0 1
     1346 LOADK                            R17 K61 ["LeftHand"]
     1347 SETLIST                          R16 R17 1 [1]
     1349 SETTABLEKS                       R16 R15 K201 ["WrapTarget"]
     1351 NEWTABLE                         R16 0 2
     1353 LOADK                            R17 K61 ["LeftHand"]
     1354 LOADK                            R18 K62 ["RightUpperArm"]
     1355 SETLIST                          R16 R17 2 [1]
     1357 SETTABLEKS                       R16 R15 K200 ["WrapLayer"]
     1359 SETTABLEKS                       R15 R12 K343 ["MESH_CONTENT_ID_FIELDS"]
     1361 DUPTABLE                         R15 K344 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1362 NEWTABLE                         R16 0 1
     1364 LOADK                            R17 K55 ["LeftFoot"]
     1365 SETLIST                          R16 R17 1 [1]
     1367 SETTABLEKS                       R16 R15 K196 ["SpecialMesh"]
     1369 NEWTABLE                         R16 0 1
     1371 LOADK                            R17 K56 ["RightUpperLeg"]
     1372 SETLIST                          R16 R17 1 [1]
     1374 SETTABLEKS                       R16 R15 K307 ["MeshPart"]
     1376 NEWTABLE                         R16 0 4
     1378 LOADK                            R17 K57 ["RightLowerLeg"]
     1379 LOADK                            R18 K58 ["RightFoot"]
     1380 LOADK                            R19 K59 ["LeftUpperArm"]
     1381 LOADK                            R20 K60 ["LeftLowerArm"]
     1382 SETLIST                          R16 R17 4 [1]
     1384 SETTABLEKS                       R16 R15 K199 ["SurfaceAppearance"]
     1386 NEWTABLE                         R16 0 4
     1388 LOADK                            R17 K57 ["RightLowerLeg"]
     1389 LOADK                            R18 K58 ["RightFoot"]
     1390 LOADK                            R19 K59 ["LeftUpperArm"]
     1391 LOADK                            R20 K60 ["LeftLowerArm"]
     1392 SETLIST                          R16 R17 4 [1]
     1394 SETTABLEKS                       R16 R15 K195 ["Decal"]
     1396 SETTABLEKS                       R15 R12 K345 ["TEXTURE_CONTENT_ID_FIELDS"]
     1398 DUPTABLE                         R15 K346 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1399 GETIMPORT                        R18 K102 [Enum.AssetType.DynamicHead]
     1401 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1403 CALL                             R16 2 1
     1404 SETTABLEKS                       R16 R15 K90 ["DynamicHead"]
     1406 GETIMPORT                        R18 K105 [Enum.AssetType.LeftArm]
     1408 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1410 CALL                             R16 2 1
     1411 SETTABLEKS                       R16 R15 K104 ["LeftArm"]
     1413 GETIMPORT                        R18 K107 [Enum.AssetType.RightArm]
     1415 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1417 CALL                             R16 2 1
     1418 SETTABLEKS                       R16 R15 K106 ["RightArm"]
     1420 GETIMPORT                        R18 K103 [Enum.AssetType.Torso]
     1422 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1424 CALL                             R16 2 1
     1425 SETTABLEKS                       R16 R15 K44 ["Torso"]
     1427 GETIMPORT                        R18 K109 [Enum.AssetType.LeftLeg]
     1429 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1431 CALL                             R16 2 1
     1432 SETTABLEKS                       R16 R15 K108 ["LeftLeg"]
     1434 GETIMPORT                        R18 K111 [Enum.AssetType.RightLeg]
     1436 NAMECALL                         R16 R2 K347 ["getBodyPartMaxTrianglesRule"]
     1438 CALL                             R16 2 1
     1439 SETTABLEKS                       R16 R15 K110 ["RightLeg"]
     1441 SETTABLEKS                       R15 R12 K348 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1443 DUPTABLE                         R15 K349 [{"Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
     1444 LOADN                            R16 87
     1445 SETTABLEKS                       R16 R15 K50 ["Head"]
     1447 LOADN                            R16 77
     1448 SETTABLEKS                       R16 R15 K59 ["LeftUpperArm"]
     1450 LOADN                            R16 77
     1451 SETTABLEKS                       R16 R15 K60 ["LeftLowerArm"]
     1453 LOADN                            R16 86
     1454 SETTABLEKS                       R16 R15 K61 ["LeftHand"]
     1456 LOADN                            R16 77
     1457 SETTABLEKS                       R16 R15 K62 ["RightUpperArm"]
     1459 LOADN                            R16 77
     1460 SETTABLEKS                       R16 R15 K63 ["RightLowerArm"]
     1462 LOADN                            R16 86
     1463 SETTABLEKS                       R16 R15 K64 ["RightHand"]
     1465 LOADN                            R16 1
     1466 SETTABLEKS                       R16 R15 K51 ["UpperTorso"]
     1468 LOADN                            R16 105
     1469 SETTABLEKS                       R16 R15 K52 ["LowerTorso"]
     1471 LOADN                            R16 88
     1472 SETTABLEKS                       R16 R15 K53 ["LeftUpperLeg"]
     1474 LOADN                            R16 88
     1475 SETTABLEKS                       R16 R15 K54 ["LeftLowerLeg"]
     1477 LOADN                            R16 86
     1478 SETTABLEKS                       R16 R15 K55 ["LeftFoot"]
     1480 LOADN                            R16 88
     1481 SETTABLEKS                       R16 R15 K56 ["RightUpperLeg"]
     1483 LOADN                            R16 88
     1484 SETTABLEKS                       R16 R15 K57 ["RightLowerLeg"]
     1486 LOADN                            R16 86
     1487 SETTABLEKS                       R16 R15 K58 ["RightFoot"]
     1489 SETTABLEKS                       R15 R12 K350 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1491 GETTABLEKS                       R15 R1 K351 ["Dictionary"]
     1493 GETTABLEKS                       R15 R15 K352 ["join"]
     1495 GETTABLEKS                       R16 R12 K320 ["CONTENT_ID_FIELDS"]
     1497 DUPTABLE                         R17 K363 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1498 NEWTABLE                         R18 0 1
     1500 LOADK                            R19 K108 ["LeftLeg"]
     1501 SETLIST                          R18 R19 1 [1]
     1503 SETTABLEKS                       R18 R17 K353 ["Sound"]
     1505 NEWTABLE                         R18 0 1
     1507 LOADK                            R19 K109 [Enum.AssetType.LeftLeg]
     1508 SETLIST                          R18 R19 1 [1]
     1510 SETTABLEKS                       R18 R17 K195 ["Decal"]
     1512 NEWTABLE                         R18 0 1
     1514 LOADK                            R19 K110 ["RightLeg"]
     1515 SETLIST                          R18 R19 1 [1]
     1517 SETTABLEKS                       R18 R17 K354 ["VideoFrame"]
     1519 NEWTABLE                         R18 0 1
     1521 LOADK                            R19 K111 [Enum.AssetType.RightLeg]
     1522 SETLIST                          R18 R19 1 [1]
     1524 SETTABLEKS                       R18 R17 K355 ["PackageLink"]
     1526 NEWTABLE                         R18 0 3
     1528 LOADK                            R19 K112 [Enum.AssetType.EyebrowAccessory]
     1529 LOADK                            R20 K113 [Enum.AssetType.EyelashAccessory]
     1530 LOADK                            R21 K114 [Enum.AssetType.HairAccessory]
     1531 SETLIST                          R18 R19 3 [1]
     1533 SETTABLEKS                       R18 R17 K356 ["CharacterMesh"]
     1535 NEWTABLE                         R18 0 1
     1537 LOADK                            R19 K55 ["LeftFoot"]
     1538 SETLIST                          R18 R19 1 [1]
     1540 SETTABLEKS                       R18 R17 K357 ["Tool"]
     1542 NEWTABLE                         R18 0 8
     1544 LOADK                            R19 K115 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
     1545 LOADK                            R20 K116 ["LeftShoeAccessory"]
     1546 LOADK                            R21 K117 ["RightShoeAccessory"]
     1547 LOADK                            R22 K118 [{"LeftShoeAccessory", "RightShoeAccessory"}]
     1548 LOADK                            R23 K119 [Enum.AssetType.LeftShoeAccessory]
     1549 LOADK                            R24 K120 [Enum.AssetType.RightShoeAccessory]
     1550 LOADK                            R25 K121 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
     1551 LOADK                            R26 K122 ["BundleType"]
     1552 SETLIST                          R18 R19 8 [1]
     1554 SETTABLEKS                       R18 R17 K358 ["Sky"]
     1556 NEWTABLE                         R18 0 1
     1558 LOADK                            R19 K123 ["BodyParts"]
     1559 SETLIST                          R18 R19 1 [1]
     1561 SETTABLEKS                       R18 R17 K359 ["Trail"]
     1563 NEWTABLE                         R18 0 1
     1565 LOADK                            R19 K123 ["BodyParts"]
     1566 SETLIST                          R18 R19 1 [1]
     1568 SETTABLEKS                       R18 R17 K360 ["Beam"]
     1570 NEWTABLE                         R18 0 1
     1572 LOADK                            R19 K124 [Enum.BundleType.BodyParts]
     1573 SETLIST                          R18 R19 1 [1]
     1575 SETTABLEKS                       R18 R17 K361 ["ShirtGraphic"]
     1577 NEWTABLE                         R18 0 1
     1579 LOADK                            R19 K125 ["BUNDLE_TO_ASSET_MAPPING"]
     1580 SETLIST                          R18 R19 1 [1]
     1582 SETTABLEKS                       R18 R17 K137 ["Shirt"]
     1584 NEWTABLE                         R18 0 1
     1586 LOADK                            R19 K126 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
     1587 SETLIST                          R18 R19 1 [1]
     1589 SETTABLEKS                       R18 R17 K138 ["Pants"]
     1591 NEWTABLE                         R18 0 1
     1593 LOADK                            R19 K127 ["R6"]
     1594 SETLIST                          R18 R19 1 [1]
     1596 SETTABLEKS                       R18 R17 K362 ["AdGui"]
     1598 CALL                             R15 2 1
     1599 SETTABLEKS                       R15 R12 K384 ["PACKAGE_CONTENT_ID_FIELDS"]
     1601 LOADK                            R15 K129 ["R15Fixed"]
     1602 SETTABLEKS                       R15 R12 K386 ["ExperienceAuthHeaderKey"]
     1604 LOADK                            R15 K131 ["FOLDER_NAMES"]
     1605 SETTABLEKS                       R15 R12 K388 ["ContentType"]
     1607 LOADK                            R15 K133 ["Humanoid"]
     1608 SETTABLEKS                       R15 R12 K390 ["ApplicationJson"]
     1610 LOADK                            R15 K135 ["Body Colors"]
     1611 SETTABLEKS                       R15 R12 K392 ["GUIDAttributeName"]
     1613 LOADN                            R15 100
     1614 SETTABLEKS                       R15 R12 K393 ["GUIDAttributeMaxLength"]
     1616 LOADK                            R15 K138 ["Pants"]
     1617 SETTABLEKS                       R15 R12 K395 ["AlternateMeshIdAttributeName"]
     1619 DUPTABLE                         R15 K399 [{"RENDER_MESH", "OUTER_CAGE", "INNER_CAGE"}]
     1620 LOADK                            R16 K144 ["insert"]
     1621 SETTABLEKS                       R16 R15 K396 ["RENDER_MESH"]
     1623 LOADK                            R16 K145 [table.insert]
     1624 SETTABLEKS                       R16 R15 K397 ["OUTER_CAGE"]
     1626 LOADK                            R16 K146 ["BANNED_NAMES"]
     1627 SETTABLEKS                       R16 R15 K398 ["INNER_CAGE"]
     1629 SETTABLEKS                       R15 R12 K403 ["MESH_CONTENT_TYPE"]
     1631 NEWTABLE                         R15 4 0
     1633 GETTABLEKS                       R16 R12 K403 ["MESH_CONTENT_TYPE"]
     1635 GETTABLEKS                       R16 R16 K396 ["RENDER_MESH"]
     1637 LOADK                            R17 K54 ["LeftLowerLeg"]
     1638 SETTABLE                         R17 R15 R16
     1639 GETTABLEKS                       R16 R12 K403 ["MESH_CONTENT_TYPE"]
     1641 GETTABLEKS                       R16 R16 K397 ["OUTER_CAGE"]
     1643 LOADK                            R17 K61 ["LeftHand"]
     1644 SETTABLE                         R17 R15 R16
     1645 GETTABLEKS                       R16 R12 K403 ["MESH_CONTENT_TYPE"]
     1647 GETTABLEKS                       R16 R16 K398 ["INNER_CAGE"]
     1649 LOADK                            R17 K62 ["RightUpperArm"]
     1650 SETTABLE                         R17 R15 R16
     1651 SETTABLEKS                       R15 R12 K404 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1653 MOVE                             R15 R8
     1654 CALL                             R15 0 1
     1655 JUMPIFNOT                        R15 ; [+103]
     1656 NEWTABLE                         R15 8 0
     1658 GETIMPORT                        R16 K406 [Enum.AssetType.ClimbAnimation]
     1660 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1661 LOADK                            R18 K149 ["MODERATED"]
     1662 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1664 NEWTABLE                         R18 0 1
     1666 LOADK                            R19 K154 ["ASSET_STATUS"]
     1667 SETLIST                          R18 R19 1 [1]
     1669 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1671 SETTABLE                         R17 R15 R16
     1672 GETIMPORT                        R16 K412 [Enum.AssetType.FallAnimation]
     1674 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1675 LOADK                            R18 K155 ["getMakeupRules"]
     1676 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1678 NEWTABLE                         R18 0 1
     1680 LOADK                            R19 K157 ["ASSET_TYPE_INFO"]
     1681 SETLIST                          R18 R19 1 [1]
     1683 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1685 SETTABLE                         R17 R15 R16
     1686 GETIMPORT                        R16 K415 [Enum.AssetType.IdleAnimation]
     1688 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1689 LOADK                            R18 K158 ["getAccessoryRules"]
     1690 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1692 NEWTABLE                         R18 0 1
     1694 LOADK                            R19 K160 ["FULL_BODY_BOUNDS"]
     1695 SETLIST                          R18 R19 1 [1]
     1697 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1699 SETTABLE                         R17 R15 R16
     1700 GETIMPORT                        R16 K418 [Enum.AssetType.JumpAnimation]
     1702 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1703 LOADK                            R18 K161 ["Classic"]
     1704 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1706 NEWTABLE                         R18 0 1
     1708 LOADK                            R19 K163 ["ProportionsNormal"]
     1709 SETLIST                          R18 R19 1 [1]
     1711 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1713 SETTABLE                         R17 R15 R16
     1714 GETIMPORT                        R16 K421 [Enum.AssetType.RunAnimation]
     1716 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1717 LOADK                            R18 K164 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
     1718 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1720 NEWTABLE                         R18 0 1
     1722 LOADK                            R19 K166 ["getBodyPartRules"]
     1723 SETLIST                          R18 R19 1 [1]
     1725 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1727 SETTABLE                         R17 R15 R16
     1728 GETIMPORT                        R16 K424 [Enum.AssetType.SwimAnimation]
     1730 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1731 LOADK                            R18 K167 ["BODYPART_TO_PARENT"]
     1732 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1734 NEWTABLE                         R18 0 2
     1736 LOADK                            R19 K169 ["RenderVsWrapMeshMaxDiff"]
     1737 LOADK                            R20 K170 ["SMALLER"]
     1738 SETLIST                          R18 R19 2 [1]
     1740 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1742 SETTABLE                         R17 R15 R16
     1743 GETIMPORT                        R16 K428 [Enum.AssetType.WalkAnimation]
     1745 DUPTABLE                         R17 K409 [{"modelName", "stringValueNames"}]
     1746 LOADK                            R18 K171 ["SMALLER_EQ"]
     1747 SETTABLEKS                       R18 R17 K407 ["modelName"]
     1749 NEWTABLE                         R18 0 1
     1751 LOADK                            R19 K173 ["EXACT_EQ"]
     1752 SETLIST                          R18 R19 1 [1]
     1754 SETTABLEKS                       R18 R17 K408 ["stringValueNames"]
     1756 SETTABLE                         R17 R15 R16
     1757 SETTABLEKS                       R15 R12 K430 ["ANIMATION_ASSET_INFO"]
     1759 NEWTABLE                         R15 0 5
     1761 GETTABLEKS                       R16 R3 K431 ["UploadCategory"]
     1763 GETTABLEKS                       R16 R16 K432 ["TORSO_AND_LIMBS"]
     1765 GETTABLEKS                       R17 R3 K431 ["UploadCategory"]
     1767 GETTABLEKS                       R17 R17 K433 ["DYNAMIC_HEAD"]
     1769 GETTABLEKS                       R18 R3 K431 ["UploadCategory"]
     1771 GETTABLEKS                       R18 R18 K434 ["LAYERED_CLOTHING"]
     1773 GETTABLEKS                       R19 R3 K431 ["UploadCategory"]
     1775 GETTABLEKS                       R19 R19 K435 ["RIGID_ACCESSORY"]
     1777 GETTABLEKS                       R20 R3 K431 ["UploadCategory"]
     1779 GETTABLEKS                       R20 R20 K436 ["EMOTE_ANIMATION"]
     1781 SETLIST                          R15 R16 5 [1]
     1783 SETTABLEKS                       R15 R12 K437 ["AllAssetUploadCategories"]
     1785 MOVE                             R15 R8
     1786 CALL                             R15 0 1
     1787 JUMPIFNOT                        R15 ; [+11]
     1788 GETTABLEKS                       R16 R12 K437 ["AllAssetUploadCategories"]
     1790 GETTABLEKS                       R17 R3 K431 ["UploadCategory"]
     1792 GETTABLEKS                       R17 R17 K438 ["ANIMATION"]
     1794 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1796 GETIMPORT                        R15 K145 [table.insert]
     1798 CALL                             R15 2 0
     1799 NEWTABLE                         R15 0 0
     1801 SETTABLEKS                       R15 R12 K439 ["AllAssetUploadCategoriesIncludingMakeup"]
     1803 GETTABLEKS                       R15 R12 K437 ["AllAssetUploadCategories"]
     1805 LOADNIL                          R16
     1806 LOADNIL                          R17
     1807 FORGPREP                         R15
     1808 GETTABLEKS                       R21 R12 K439 ["AllAssetUploadCategoriesIncludingMakeup"]
     1810 FASTCALL2                        TABLE_INSERT R21 R19 ; [+4]
     1812 MOVE                             R22 R19
     1813 GETIMPORT                        R20 K145 [table.insert]
     1815 CALL                             R20 2 0
     1816 FORGLOOP                         R15 2 ; [-9]
     1818 GETTABLEKS                       R16 R12 K439 ["AllAssetUploadCategoriesIncludingMakeup"]
     1820 GETTABLEKS                       R17 R3 K431 ["UploadCategory"]
     1822 GETTABLEKS                       R17 R17 K440 ["MAKEUP"]
     1824 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1826 GETIMPORT                        R15 K145 [table.insert]
     1828 CALL                             R15 2 0
     1829 NEWTABLE                         R15 0 2
     1831 GETTABLEKS                       R16 R3 K431 ["UploadCategory"]
     1833 GETTABLEKS                       R16 R16 K441 ["FULL_BODY"]
     1835 GETTABLEKS                       R17 R3 K431 ["UploadCategory"]
     1837 GETTABLEKS                       R17 R17 K442 ["BOTH_SHOES"]
     1839 SETLIST                          R15 R16 2 [1]
     1841 SETTABLEKS                       R15 R12 K443 ["AllBundleUploadCategories"]
     1843 MOVE                             R15 R8
     1844 CALL                             R15 0 1
     1845 JUMPIFNOT                        R15 ; [+11]
     1846 GETTABLEKS                       R16 R12 K443 ["AllBundleUploadCategories"]
     1848 GETTABLEKS                       R17 R3 K431 ["UploadCategory"]
     1850 GETTABLEKS                       R17 R17 K444 ["ANIMATION_PACK"]
     1852 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
     1854 GETIMPORT                        R15 K145 [table.insert]
     1856 CALL                             R15 2 0
     1857 NEWTABLE                         R15 0 0
     1859 SETTABLEKS                       R15 R12 K445 ["AllUploadCategories"]
     1861 GETTABLEKS                       R15 R3 K431 ["UploadCategory"]
     1863 LOADNIL                          R16
     1864 LOADNIL                          R17
     1865 FORGPREP                         R15
     1866 GETTABLEKS                       R21 R12 K445 ["AllUploadCategories"]
     1868 FASTCALL2                        TABLE_INSERT R21 R19 ; [+4]
     1870 MOVE                             R22 R19
     1871 GETIMPORT                        R20 K145 [table.insert]
     1873 CALL                             R20 2 0
     1874 FORGLOOP                         R15 2 ; [-9]
     1876 NEWTABLE                         R15 8 0
     1878 GETIMPORT                        R16 K103 [Enum.AssetType.Torso]
     1880 LOADB                            R17 1
     1881 SETTABLE                         R17 R15 R16
     1882 GETIMPORT                        R16 K105 [Enum.AssetType.LeftArm]
     1884 LOADB                            R17 1
     1885 SETTABLE                         R17 R15 R16
     1886 GETIMPORT                        R16 K107 [Enum.AssetType.RightArm]
     1888 LOADB                            R17 1
     1889 SETTABLE                         R17 R15 R16
     1890 GETIMPORT                        R16 K109 [Enum.AssetType.LeftLeg]
     1892 LOADB                            R17 1
     1893 SETTABLE                         R17 R15 R16
     1894 GETIMPORT                        R16 K111 [Enum.AssetType.RightLeg]
     1896 LOADB                            R17 1
     1897 SETTABLE                         R17 R15 R16
     1898 SETTABLEKS                       R15 R12 K446 ["AssetUploadsWithFolderStructure"]
     1900 NEWTABLE                         R15 2 0
     1902 GETIMPORT                        R16 K112 [Enum.AssetType.EyebrowAccessory]
     1904 LOADB                            R17 1
     1905 SETTABLE                         R17 R15 R16
     1906 GETIMPORT                        R16 K113 [Enum.AssetType.EyelashAccessory]
     1908 LOADB                            R17 1
     1909 SETTABLE                         R17 R15 R16
     1910 SETTABLEKS                       R15 R12 K447 ["SkinningTransferRequiredTypes"]
     1912 RETURN                           R12 1
