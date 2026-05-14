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
       58 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationMakeupSupport"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K17 [game]
       63 LOADK                            R11 K18 ["UGCValidateMakeupDecalUVProperties"]
       64 LOADB                            R12 0
       65 NAMECALL                         R9 R9 K19 ["DefineFastFlag"]
       67 CALL                             R9 3 1
       68 DUPCLOSURE                       R10 K20 [PROTO_0]
       69 NEWTABLE                         R11 64 0
       71 NAMECALL                         R12 R2 K21 ["getRules"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R12 R12 K22 ["MeshRules"]
       76 GETTABLEKS                       R12 R12 K23 ["AccessoryMaxTriangles"]
       78 SETTABLEKS                       R12 R11 K24 ["MAX_HAT_TRIANGLES"]
       80 NAMECALL                         R12 R2 K21 ["getRules"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R12 R12 K25 ["TextureRules"]
       85 GETTABLEKS                       R12 R12 K26 ["MaxTextureSize"]
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
      154 NEWTABLE                         R12 0 15
      156 LOADK                            R13 K65 ["Head_OuterCage"]
      157 LOADK                            R14 K66 ["UpperTorso_OuterCage"]
      158 LOADK                            R15 K67 ["LowerTorso_OuterCage"]
      159 LOADK                            R16 K68 ["LeftUpperLeg_OuterCage"]
      160 LOADK                            R17 K69 ["LeftLowerLeg_OuterCage"]
      161 LOADK                            R18 K70 ["LeftFoot_OuterCage"]
      162 LOADK                            R19 K71 ["RightUpperLeg_OuterCage"]
      163 LOADK                            R20 K72 ["RightLowerLeg_OuterCage"]
      164 LOADK                            R21 K73 ["RightFoot_OuterCage"]
      165 LOADK                            R22 K74 ["LeftUpperArm_OuterCage"]
      166 LOADK                            R23 K75 ["LeftLowerArm_OuterCage"]
      167 LOADK                            R24 K76 ["LeftHand_OuterCage"]
      168 LOADK                            R25 K77 ["RightUpperArm_OuterCage"]
      169 LOADK                            R26 K78 ["RightLowerArm_OuterCage"]
      170 LOADK                            R27 K79 ["RightHand_OuterCage"]
      171 SETLIST                          R12 R13 15 [1]
      173 SETTABLEKS                       R12 R11 K80 ["R15_CAGE_PARTS"]
      175 NEWTABLE                         R12 0 0
      177 SETTABLEKS                       R12 R11 K81 ["NAMED_R15_BODY_PARTS"]
      179 GETTABLEKS                       R12 R11 K64 ["R15_BODY_PARTS"]
      181 LOADNIL                          R13
      182 LOADNIL                          R14
      183 FORGPREP                         R12
      184 GETTABLEKS                       R17 R11 K81 ["NAMED_R15_BODY_PARTS"]
      186 SETTABLE                         R16 R17 R16
      187 FORGLOOP                         R12 2 ; [-4]
      189 GETTABLEKS                       R12 R11 K81 ["NAMED_R15_BODY_PARTS"]
      191 LOADK                            R13 K49 ["Head"]
      192 SETTABLEKS                       R13 R12 K49 ["Head"]
      194 GETTABLEKS                       R13 R11 K81 ["NAMED_R15_BODY_PARTS"]
      196 DUPTABLE                         R14 K83 [{"__index"}]
      197 DUPCLOSURE                       R15 K84 [PROTO_1]
      198 SETTABLEKS                       R15 R14 K82 ["__index"]
      200 FASTCALL2                        SETMETATABLE R13 R14 ; [+3]
      202 GETIMPORT                        R12 K86 [setmetatable]
      204 CALL                             R12 2 0
      205 NEWTABLE                         R12 32 0
      207 LOADB                            R13 1
      208 SETTABLEKS                       R13 R12 K87 ["Root"]
      210 LOADB                            R13 1
      211 SETTABLEKS                       R13 R12 K88 ["HumanoidRootNode"]
      213 LOADB                            R13 1
      214 SETTABLEKS                       R13 R12 K89 ["DynamicHead"]
      216 LOADB                            R13 1
      217 SETTABLEKS                       R13 R12 K49 ["Head"]
      219 LOADB                            R13 1
      220 SETTABLEKS                       R13 R12 K50 ["UpperTorso"]
      222 LOADB                            R13 1
      223 SETTABLEKS                       R13 R12 K51 ["LowerTorso"]
      225 LOADB                            R13 1
      226 SETTABLEKS                       R13 R12 K52 ["LeftUpperLeg"]
      228 LOADB                            R13 1
      229 SETTABLEKS                       R13 R12 K53 ["LeftLowerLeg"]
      231 LOADB                            R13 1
      232 SETTABLEKS                       R13 R12 K54 ["LeftFoot"]
      234 LOADB                            R13 1
      235 SETTABLEKS                       R13 R12 K55 ["RightUpperLeg"]
      237 LOADB                            R13 1
      238 SETTABLEKS                       R13 R12 K56 ["RightLowerLeg"]
      240 LOADB                            R13 1
      241 SETTABLEKS                       R13 R12 K57 ["RightFoot"]
      243 LOADB                            R13 1
      244 SETTABLEKS                       R13 R12 K58 ["LeftUpperArm"]
      246 LOADB                            R13 1
      247 SETTABLEKS                       R13 R12 K59 ["LeftLowerArm"]
      249 LOADB                            R13 1
      250 SETTABLEKS                       R13 R12 K60 ["LeftHand"]
      252 LOADB                            R13 1
      253 SETTABLEKS                       R13 R12 K61 ["RightUpperArm"]
      255 LOADB                            R13 1
      256 SETTABLEKS                       R13 R12 K62 ["RightLowerArm"]
      258 LOADB                            R13 1
      259 SETTABLEKS                       R13 R12 K63 ["RightHand"]
      261 SETTABLEKS                       R12 R11 K90 ["R15_STANDARD_JOINT_NAMES"]
      263 DUPTABLE                         R12 K93 [{"RBX_Leader", "RBX_Follower"}]
      264 LOADB                            R13 1
      265 SETTABLEKS                       R13 R12 K91 ["RBX_Leader"]
      267 LOADB                            R13 1
      268 SETTABLEKS                       R13 R12 K92 ["RBX_Follower"]
      270 SETTABLEKS                       R12 R11 K94 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
      272 GETTABLEKS                       R12 R11 K64 ["R15_BODY_PARTS"]
      274 LOADNIL                          R13
      275 LOADNIL                          R14
      276 FORGPREP                         R12
      277 GETTABLEKS                       R17 R11 K90 ["R15_STANDARD_JOINT_NAMES"]
      279 LOADB                            R18 1
      280 SETTABLE                         R18 R17 R16
      281 FORGLOOP                         R12 2 ; [-5]
      283 NEWTABLE                         R12 0 18
      285 LOADK                            R13 K49 ["Head"]
      286 LOADK                            R14 K50 ["UpperTorso"]
      287 LOADK                            R15 K51 ["LowerTorso"]
      288 LOADK                            R16 K52 ["LeftUpperLeg"]
      289 LOADK                            R17 K53 ["LeftLowerLeg"]
      290 LOADK                            R18 K60 ["LeftHand"]
      291 LOADK                            R19 K61 ["RightUpperArm"]
      292 LOADK                            R20 K62 ["RightLowerArm"]
      293 LOADK                            R21 K63 ["RightHand"]
      294 LOADK                            R22 K58 ["LeftUpperArm"]
      295 LOADK                            R23 K59 ["LeftLowerArm"]
      296 LOADK                            R24 K54 ["LeftFoot"]
      297 LOADK                            R25 K55 ["RightUpperLeg"]
      298 LOADK                            R26 K56 ["RightLowerLeg"]
      299 LOADK                            R27 K57 ["RightFoot"]
      300 LOADK                            R28 K95 ["EyebrowAccessory"]
      301 SETLIST                          R12 R13 16 [1]
      303 LOADK                            R13 K96 ["EyelashAccessory"]
      304 LOADK                            R14 K97 ["HairAccessory"]
      305 SETLIST                          R12 R13 2 [17]
      307 SETTABLEKS                       R12 R11 K98 ["UGC_BODY_PARTS"]
      309 DUPTABLE                         R12 K99 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
      310 GETIMPORT                        R13 K101 [Enum.AssetType.DynamicHead]
      312 SETTABLEKS                       R13 R12 K49 ["Head"]
      314 GETIMPORT                        R13 K102 [Enum.AssetType.Torso]
      316 SETTABLEKS                       R13 R12 K50 ["UpperTorso"]
      318 GETIMPORT                        R13 K102 [Enum.AssetType.Torso]
      320 SETTABLEKS                       R13 R12 K51 ["LowerTorso"]
      322 GETIMPORT                        R13 K104 [Enum.AssetType.LeftArm]
      324 SETTABLEKS                       R13 R12 K58 ["LeftUpperArm"]
      326 GETIMPORT                        R13 K104 [Enum.AssetType.LeftArm]
      328 SETTABLEKS                       R13 R12 K59 ["LeftLowerArm"]
      330 GETIMPORT                        R13 K104 [Enum.AssetType.LeftArm]
      332 SETTABLEKS                       R13 R12 K60 ["LeftHand"]
      334 GETIMPORT                        R13 K106 [Enum.AssetType.RightArm]
      336 SETTABLEKS                       R13 R12 K61 ["RightUpperArm"]
      338 GETIMPORT                        R13 K106 [Enum.AssetType.RightArm]
      340 SETTABLEKS                       R13 R12 K62 ["RightLowerArm"]
      342 GETIMPORT                        R13 K106 [Enum.AssetType.RightArm]
      344 SETTABLEKS                       R13 R12 K63 ["RightHand"]
      346 GETIMPORT                        R13 K108 [Enum.AssetType.LeftLeg]
      348 SETTABLEKS                       R13 R12 K52 ["LeftUpperLeg"]
      350 GETIMPORT                        R13 K108 [Enum.AssetType.LeftLeg]
      352 SETTABLEKS                       R13 R12 K53 ["LeftLowerLeg"]
      354 GETIMPORT                        R13 K108 [Enum.AssetType.LeftLeg]
      356 SETTABLEKS                       R13 R12 K54 ["LeftFoot"]
      358 GETIMPORT                        R13 K110 [Enum.AssetType.RightLeg]
      360 SETTABLEKS                       R13 R12 K55 ["RightUpperLeg"]
      362 GETIMPORT                        R13 K110 [Enum.AssetType.RightLeg]
      364 SETTABLEKS                       R13 R12 K56 ["RightLowerLeg"]
      366 GETIMPORT                        R13 K110 [Enum.AssetType.RightLeg]
      368 SETTABLEKS                       R13 R12 K57 ["RightFoot"]
      370 GETIMPORT                        R13 K111 [Enum.AssetType.EyebrowAccessory]
      372 SETTABLEKS                       R13 R12 K95 ["EyebrowAccessory"]
      374 GETIMPORT                        R13 K112 [Enum.AssetType.EyelashAccessory]
      376 SETTABLEKS                       R13 R12 K96 ["EyelashAccessory"]
      378 GETIMPORT                        R13 K113 [Enum.AssetType.HairAccessory]
      380 SETTABLEKS                       R13 R12 K97 ["HairAccessory"]
      382 SETTABLEKS                       R12 R11 K114 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      384 DUPTABLE                         R12 K117 [{"LeftShoeAccessory", "RightShoeAccessory"}]
      385 GETIMPORT                        R13 K118 [Enum.AssetType.LeftShoeAccessory]
      387 SETTABLEKS                       R13 R12 K115 ["LeftShoeAccessory"]
      389 GETIMPORT                        R13 K119 [Enum.AssetType.RightShoeAccessory]
      391 SETTABLEKS                       R13 R12 K116 ["RightShoeAccessory"]
      393 SETTABLEKS                       R12 R11 K120 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      395 NEWTABLE                         R12 2 0
      397 GETIMPORT                        R13 K123 [Enum.BundleType.BodyParts]
      399 GETTABLEKS                       R14 R11 K114 ["UGC_BODY_PART_NAMES_TO_ASSET_TYPE"]
      401 SETTABLE                         R14 R12 R13
      402 GETIMPORT                        R13 K123 [Enum.BundleType.BodyParts]
      404 GETTABLEKS                       R14 R11 K120 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
      406 SETTABLE                         R14 R12 R13
      407 SETTABLEKS                       R12 R11 K124 ["BUNDLE_TO_ASSET_MAPPING"]
      409 NEWTABLE                         R12 0 4
      411 GETIMPORT                        R13 K101 [Enum.AssetType.DynamicHead]
      413 GETIMPORT                        R14 K111 [Enum.AssetType.EyebrowAccessory]
      415 GETIMPORT                        R15 K112 [Enum.AssetType.EyelashAccessory]
      417 GETIMPORT                        R16 K113 [Enum.AssetType.HairAccessory]
      419 SETLIST                          R12 R13 4 [1]
      421 SETTABLEKS                       R12 R11 K125 ["ASSET_TYPES_THAT_SKIP_FOLDER"]
      423 DUPTABLE                         R12 K129 [{"R6", "R15ArtistIntent", "R15Fixed"}]
      424 LOADK                            R13 K126 ["R6"]
      425 SETTABLEKS                       R13 R12 K126 ["R6"]
      427 LOADK                            R13 K127 ["R15ArtistIntent"]
      428 SETTABLEKS                       R13 R12 K127 ["R15ArtistIntent"]
      430 LOADK                            R13 K128 ["R15Fixed"]
      431 SETTABLEKS                       R13 R12 K128 ["R15Fixed"]
      433 SETTABLEKS                       R12 R11 K130 ["FOLDER_NAMES"]
      435 NEWTABLE                         R12 0 3
      437 LOADK                            R13 K49 ["Head"]
      438 LOADK                            R14 K131 ["HumanoidRootPart"]
      439 LOADK                            R15 K132 ["Humanoid"]
      440 SETLIST                          R12 R13 3 [1]
      442 SETTABLEKS                       R12 R11 K133 ["EXTRA_BANNED_NAMES"]
      444 NEWTABLE                         R12 0 6
      446 LOADK                            R13 K134 ["Body Colors"]
      447 LOADK                            R14 K135 ["Shirt Graphic"]
      448 LOADK                            R15 K136 ["Shirt"]
      449 LOADK                            R16 K137 ["Pants"]
      450 LOADK                            R17 K138 ["Health"]
      451 LOADK                            R18 K139 ["Animate"]
      452 SETLIST                          R12 R13 6 [1]
      454 GETIMPORT                        R13 K141 [ipairs]
      456 MOVE                             R14 R12
      457 CALL                             R13 1 3
      458 FORGPREP_INEXT                   R13
      459 GETTABLEKS                       R19 R11 K133 ["EXTRA_BANNED_NAMES"]
      461 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      463 MOVE                             R20 R17
      464 GETIMPORT                        R18 K144 [table.insert]
      466 CALL                             R18 2 0
      467 FORGLOOP                         R13 2 [inext] ; [-9]
      469 NEWTABLE                         R13 0 0
      471 SETTABLEKS                       R13 R11 K145 ["BANNED_NAMES"]
      473 NEWTABLE                         R13 0 3
      475 GETTABLEKS                       R14 R11 K48 ["R6_BODY_PARTS"]
      477 GETTABLEKS                       R15 R11 K64 ["R15_BODY_PARTS"]
      479 GETTABLEKS                       R16 R11 K133 ["EXTRA_BANNED_NAMES"]
      481 SETLIST                          R13 R14 3 [1]
      483 MOVE                             R14 R13
      484 LOADNIL                          R15
      485 LOADNIL                          R16
      486 FORGPREP                         R14
      487 MOVE                             R19 R18
      488 LOADNIL                          R20
      489 LOADNIL                          R21
      490 FORGPREP                         R19
      491 GETTABLEKS                       R24 R11 K145 ["BANNED_NAMES"]
      493 LOADB                            R25 1
      494 SETTABLE                         R25 R24 R23
      495 FORGLOOP                         R19 2 ; [-5]
      497 FORGLOOP                         R14 2 ; [-11]
      499 DUPTABLE                         R14 K149 [{"UNKNOWN", "REVIEW_PENDING", "MODERATED"}]
      500 LOADK                            R15 K150 ["Unknown"]
      501 SETTABLEKS                       R15 R14 K146 ["UNKNOWN"]
      503 LOADK                            R15 K151 ["ReviewPending"]
      504 SETTABLEKS                       R15 R14 K147 ["REVIEW_PENDING"]
      506 LOADK                            R15 K152 ["Moderated"]
      507 SETTABLEKS                       R15 R14 K148 ["MODERATED"]
      509 SETTABLEKS                       R14 R11 K153 ["ASSET_STATUS"]
      511 MOVE                             R14 R8
      512 CALL                             R14 0 1
      513 JUMPIFNOT                        R14 ; [+5]
      514 NAMECALL                         R14 R2 K154 ["getMakeupRules"]
      516 CALL                             R14 1 1
      517 SETTABLEKS                       R14 R11 K155 ["MAKEUP_INFO"]
      519 NEWTABLE                         R14 0 0
      521 SETTABLEKS                       R14 R11 K156 ["ASSET_TYPE_INFO"]
      523 GETTABLEKS                       R16 R11 K156 ["ASSET_TYPE_INFO"]
      525 NAMECALL                         R14 R2 K157 ["getAccessoryRules"]
      527 CALL                             R14 2 0
      528 NAMECALL                         R14 R2 K158 ["getFullBodyRulesBounds"]
      530 CALL                             R14 1 1
      531 SETTABLEKS                       R14 R11 K159 ["FULL_BODY_BOUNDS"]
      533 DUPTABLE                         R14 K163 [{"Classic", "ProportionsSlender", "ProportionsNormal"}]
      534 LOADB                            R15 1
      535 SETTABLEKS                       R15 R14 K160 ["Classic"]
      537 LOADB                            R15 1
      538 SETTABLEKS                       R15 R14 K161 ["ProportionsSlender"]
      540 LOADB                            R15 1
      541 SETTABLEKS                       R15 R14 K162 ["ProportionsNormal"]
      543 SETTABLEKS                       R14 R11 K164 ["AvatarPartScaleTypes"]
      545 GETTABLEKS                       R16 R11 K156 ["ASSET_TYPE_INFO"]
      547 NAMECALL                         R14 R2 K165 ["getBodyPartRules"]
      549 CALL                             R14 2 0
      550 NEWTABLE                         R14 16 0
      552 LOADNIL                          R15
      553 SETTABLEKS                       R15 R14 K49 ["Head"]
      555 LOADNIL                          R15
      556 SETTABLEKS                       R15 R14 K51 ["LowerTorso"]
      558 LOADK                            R15 K51 ["LowerTorso"]
      559 SETTABLEKS                       R15 R14 K50 ["UpperTorso"]
      561 LOADNIL                          R15
      562 SETTABLEKS                       R15 R14 K58 ["LeftUpperArm"]
      564 LOADK                            R15 K58 ["LeftUpperArm"]
      565 SETTABLEKS                       R15 R14 K59 ["LeftLowerArm"]
      567 LOADK                            R15 K59 ["LeftLowerArm"]
      568 SETTABLEKS                       R15 R14 K60 ["LeftHand"]
      570 LOADNIL                          R15
      571 SETTABLEKS                       R15 R14 K52 ["LeftUpperLeg"]
      573 LOADK                            R15 K52 ["LeftUpperLeg"]
      574 SETTABLEKS                       R15 R14 K53 ["LeftLowerLeg"]
      576 LOADNIL                          R15
      577 SETTABLEKS                       R15 R14 K61 ["RightUpperArm"]
      579 LOADK                            R15 K61 ["RightUpperArm"]
      580 SETTABLEKS                       R15 R14 K62 ["RightLowerArm"]
      582 LOADK                            R15 K62 ["RightLowerArm"]
      583 SETTABLEKS                       R15 R14 K63 ["RightHand"]
      585 LOADNIL                          R15
      586 SETTABLEKS                       R15 R14 K55 ["RightUpperLeg"]
      588 LOADK                            R15 K55 ["RightUpperLeg"]
      589 SETTABLEKS                       R15 R14 K56 ["RightLowerLeg"]
      591 SETTABLEKS                       R14 R11 K166 ["BODYPART_TO_PARENT"]
      593 MOVE                             R14 R4
      594 CALL                             R14 0 1
      595 JUMPIFNOT                        R14 ; [+11]
      596 GETTABLEKS                       R14 R11 K166 ["BODYPART_TO_PARENT"]
      598 LOADK                            R15 K56 ["RightLowerLeg"]
      599 SETTABLEKS                       R15 R14 K57 ["RightFoot"]
      601 GETTABLEKS                       R14 R11 K166 ["BODYPART_TO_PARENT"]
      603 LOADK                            R15 K53 ["LeftLowerLeg"]
      604 SETTABLEKS                       R15 R14 K54 ["LeftFoot"]
      606 JUMP                             ; [+10]
      607 GETTABLEKS                       R14 R11 K166 ["BODYPART_TO_PARENT"]
      609 LOADK                            R15 K56 ["RightLowerLeg"]
      610 SETTABLEKS                       R15 R14 K109 ["RightLeg"]
      612 GETTABLEKS                       R14 R11 K166 ["BODYPART_TO_PARENT"]
      614 LOADK                            R15 K53 ["LeftLowerLeg"]
      615 SETTABLEKS                       R15 R14 K107 ["LeftLeg"]
      617 NAMECALL                         R14 R2 K21 ["getRules"]
      619 CALL                             R14 1 1
      620 GETTABLEKS                       R14 R14 K22 ["MeshRules"]
      622 GETTABLEKS                       R14 R14 K167 ["CageMeshMaxDistanceFromRenderMesh"]
      624 SETTABLEKS                       R14 R11 K168 ["RenderVsWrapMeshMaxDiff"]
      626 DUPTABLE                         R14 K176 [{"SMALLER", "SMALLER_EQ", "FUZZY_EQ", "EXACT_EQ", "GREATER_EQ", "GREATER", "FOUND_IN"}]
      627 LOADK                            R15 K177 ["<"]
      628 SETTABLEKS                       R15 R14 K169 ["SMALLER"]
      630 LOADK                            R15 K178 ["<="]
      631 SETTABLEKS                       R15 R14 K170 ["SMALLER_EQ"]
      633 LOADK                            R15 K179 ["="]
      634 SETTABLEKS                       R15 R14 K171 ["FUZZY_EQ"]
      636 LOADK                            R15 K180 ["=="]
      637 SETTABLEKS                       R15 R14 K172 ["EXACT_EQ"]
      639 LOADK                            R15 K181 [">="]
      640 SETTABLEKS                       R15 R14 K173 ["GREATER_EQ"]
      642 LOADK                            R15 K182 [">"]
      643 SETTABLEKS                       R15 R14 K174 ["GREATER"]
      645 LOADK                            R15 K183 ["one of the following:"]
      646 SETTABLEKS                       R15 R14 K175 ["FOUND_IN"]
      648 SETTABLEKS                       R14 R11 K184 ["COMPARISON_METHODS"]
      650 GETTABLEKS                       R15 R11 K184 ["COMPARISON_METHODS"]
      652 DUPTABLE                         R16 K83 [{"__index"}]
      653 DUPCLOSURE                       R17 K185 [PROTO_2]
      654 SETTABLEKS                       R17 R16 K82 ["__index"]
      656 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      658 GETIMPORT                        R14 K86 [setmetatable]
      660 CALL                             R14 2 0
      661 DUPTABLE                         R14 K189 [{"RUN_ON_ALL", "INCLUSION_LIST", "EXCLUSION_LIST"}]
      662 LOADK                            R15 K186 ["RUN_ON_ALL"]
      663 SETTABLEKS                       R15 R14 K186 ["RUN_ON_ALL"]
      665 LOADK                            R15 K187 ["INCLUSION_LIST"]
      666 SETTABLEKS                       R15 R14 K187 ["INCLUSION_LIST"]
      668 LOADK                            R15 K188 ["EXCLUSION_LIST"]
      669 SETTABLEKS                       R15 R14 K188 ["EXCLUSION_LIST"]
      671 SETTABLEKS                       R14 R11 K190 ["INCLUSION_METHODS"]
      673 GETTABLEKS                       R15 R11 K190 ["INCLUSION_METHODS"]
      675 DUPTABLE                         R16 K83 [{"__index"}]
      676 DUPCLOSURE                       R17 K191 [PROTO_3]
      677 SETTABLEKS                       R17 R16 K82 ["__index"]
      679 FASTCALL2                        SETMETATABLE R15 R16 ; [+3]
      681 GETIMPORT                        R14 K86 [setmetatable]
      683 CALL                             R14 2 0
      684 DUPTABLE                         R14 K201 [{"Instance", "Attachment", "Decal", "SpecialMesh", "BasePart", "Part", "SurfaceAppearance", "WrapLayer", "WrapTarget"}]
      685 DUPTABLE                         R15 K203 [{"Archivable"}]
      686 LOADB                            R16 1
      687 SETTABLEKS                       R16 R15 K202 ["Archivable"]
      689 SETTABLEKS                       R15 R14 K192 ["Instance"]
      691 DUPTABLE                         R15 K205 [{"Visible"}]
      692 LOADB                            R16 0
      693 SETTABLEKS                       R16 R15 K204 ["Visible"]
      695 SETTABLEKS                       R15 R14 K193 ["Attachment"]
      697 MOVE                             R16 R8
      698 CALL                             R16 0 1
      699 JUMPIFNOT                        R16 ; [+33]
      700 DUPTABLE                         R15 K210 [{"Color3", "Transparency", "UVOffset", "UVScale"}]
      701 GETIMPORT                        R16 K212 [Color3.new]
      703 LOADN                            R17 1
      704 LOADN                            R18 1
      705 LOADN                            R19 1
      706 CALL                             R16 3 1
      707 SETTABLEKS                       R16 R15 K206 ["Color3"]
      709 LOADN                            R16 0
      710 SETTABLEKS                       R16 R15 K207 ["Transparency"]
      712 JUMPIFNOT                        R9 ; [+6]
      713 GETIMPORT                        R16 K214 [Vector2.new]
      715 LOADN                            R17 0
      716 LOADN                            R18 0
      717 CALL                             R16 2 1
      718 JUMP                             ; [+1]
      719 LOADNIL                          R16
      720 SETTABLEKS                       R16 R15 K208 ["UVOffset"]
      722 JUMPIFNOT                        R9 ; [+6]
      723 GETIMPORT                        R16 K214 [Vector2.new]
      725 LOADN                            R17 1
      726 LOADN                            R18 1
      727 CALL                             R16 2 1
      728 JUMP                             ; [+1]
      729 LOADNIL                          R16
      730 SETTABLEKS                       R16 R15 K209 ["UVScale"]
      732 JUMP                             ; [+1]
      733 LOADNIL                          R15
      734 SETTABLEKS                       R15 R14 K194 ["Decal"]
      736 DUPTABLE                         R15 K218 [{"MeshType", "Offset", "VertexColor"}]
      737 GETIMPORT                        R16 K220 [Enum.MeshType.FileMesh]
      739 SETTABLEKS                       R16 R15 K215 ["MeshType"]
      741 LOADK                            R16 K221 [{0, 0, 0}]
      742 SETTABLEKS                       R16 R15 K216 ["Offset"]
      744 LOADK                            R16 K222 [{1, 1, 1}]
      745 SETTABLEKS                       R16 R15 K217 ["VertexColor"]
      747 SETTABLEKS                       R15 R14 K195 ["SpecialMesh"]
      749 NEWTABLE                         R15 64 0
      751 LOADB                            R16 0
      752 SETTABLEKS                       R16 R15 K223 ["Anchored"]
      754 LOADN                            R16 0
      755 SETTABLEKS                       R16 R15 K224 ["CollisionGroupId"]
      757 GETTABLEKS                       R16 R1 K225 ["None"]
      759 SETTABLEKS                       R16 R15 K226 ["CustomPhysicalProperties"]
      761 LOADK                            R16 K227 [0.5]
      762 SETTABLEKS                       R16 R15 K228 ["Elasticity"]
      764 LOADK                            R16 K229 [0.3]
      765 SETTABLEKS                       R16 R15 K230 ["Friction"]
      767 LOADN                            R16 0
      768 SETTABLEKS                       R16 R15 K231 ["LocalTransparencyModifier"]
      770 LOADB                            R16 0
      771 SETTABLEKS                       R16 R15 K232 ["Massless"]
      773 LOADN                            R16 0
      774 SETTABLEKS                       R16 R15 K233 ["Reflectance"]
      776 LOADN                            R16 0
      777 SETTABLEKS                       R16 R15 K234 ["RootPriority"]
      779 LOADK                            R16 K221 [{0, 0, 0}]
      780 SETTABLEKS                       R16 R15 K235 ["RotVelocity"]
      782 LOADK                            R16 K221 [{0, 0, 0}]
      783 SETTABLEKS                       R16 R15 K236 ["Velocity"]
      785 LOADK                            R16 K237 [-0.5]
      786 SETTABLEKS                       R16 R15 K238 ["BackParamA"]
      788 LOADK                            R16 K227 [0.5]
      789 SETTABLEKS                       R16 R15 K239 ["BackParamB"]
      791 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      793 SETTABLEKS                       R16 R15 K243 ["BackSurfaceInput"]
      795 LOADK                            R16 K237 [-0.5]
      796 SETTABLEKS                       R16 R15 K244 ["BottomParamA"]
      798 LOADK                            R16 K227 [0.5]
      799 SETTABLEKS                       R16 R15 K245 ["BottomParamB"]
      801 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      803 SETTABLEKS                       R16 R15 K246 ["BottomSurfaceInput"]
      805 LOADK                            R16 K237 [-0.5]
      806 SETTABLEKS                       R16 R15 K247 ["FrontParamA"]
      808 LOADK                            R16 K227 [0.5]
      809 SETTABLEKS                       R16 R15 K248 ["FrontParamB"]
      811 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      813 SETTABLEKS                       R16 R15 K249 ["FrontSurfaceInput"]
      815 LOADK                            R16 K237 [-0.5]
      816 SETTABLEKS                       R16 R15 K250 ["LeftParamA"]
      818 LOADK                            R16 K227 [0.5]
      819 SETTABLEKS                       R16 R15 K251 ["LeftParamB"]
      821 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      823 SETTABLEKS                       R16 R15 K252 ["LeftSurfaceInput"]
      825 LOADK                            R16 K237 [-0.5]
      826 SETTABLEKS                       R16 R15 K253 ["RightParamA"]
      828 LOADK                            R16 K227 [0.5]
      829 SETTABLEKS                       R16 R15 K254 ["RightParamB"]
      831 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      833 SETTABLEKS                       R16 R15 K255 ["RightSurfaceInput"]
      835 LOADK                            R16 K237 [-0.5]
      836 SETTABLEKS                       R16 R15 K256 ["TopParamA"]
      838 LOADK                            R16 K227 [0.5]
      839 SETTABLEKS                       R16 R15 K257 ["TopParamB"]
      841 GETIMPORT                        R16 K242 [Enum.InputType.NoInput]
      843 SETTABLEKS                       R16 R15 K258 ["TopSurfaceInput"]
      845 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      847 SETTABLEKS                       R16 R15 K262 ["BackSurface"]
      849 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      851 SETTABLEKS                       R16 R15 K263 ["BottomSurface"]
      853 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      855 SETTABLEKS                       R16 R15 K264 ["FrontSurface"]
      857 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      859 SETTABLEKS                       R16 R15 K265 ["LeftSurface"]
      861 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      863 SETTABLEKS                       R16 R15 K266 ["RightSurface"]
      865 GETIMPORT                        R16 K261 [Enum.SurfaceType.Smooth]
      867 SETTABLEKS                       R16 R15 K267 ["TopSurface"]
      869 NEWTABLE                         R16 1 0
      871 GETTABLEKS                       R17 R11 K184 ["COMPARISON_METHODS"]
      873 GETTABLEKS                       R17 R17 K172 ["EXACT_EQ"]
      875 LOADN                            R18 0
      876 SETTABLE                         R18 R16 R17
      877 SETTABLEKS                       R16 R15 K207 ["Transparency"]
      879 NEWTABLE                         R16 2 0
      881 GETTABLEKS                       R17 R11 K184 ["COMPARISON_METHODS"]
      883 GETTABLEKS                       R17 R17 K171 ["FUZZY_EQ"]
      885 GETIMPORT                        R18 K269 [BrickColor.new]
      887 LOADK                            R19 K14 ["getFFlagUGCValidateCheckTexturePackOwner"]
      888 CALL                             R18 1 1
      889 GETTABLEKS                       R18 R18 K271 ["Color"]
      891 SETTABLE                         R18 R16 R17
      892 GETTABLEKS                       R17 R11 K190 ["INCLUSION_METHODS"]
      894 GETTABLEKS                       R17 R17 K188 ["EXCLUSION_LIST"]
      896 NEWTABLE                         R18 0 6
      898 GETIMPORT                        R19 K101 [Enum.AssetType.DynamicHead]
      900 GETIMPORT                        R20 K102 [Enum.AssetType.Torso]
      902 GETIMPORT                        R21 K104 [Enum.AssetType.LeftArm]
      904 GETIMPORT                        R22 K106 [Enum.AssetType.RightArm]
      906 GETIMPORT                        R23 K108 [Enum.AssetType.LeftLeg]
      908 GETIMPORT                        R24 K110 [Enum.AssetType.RightLeg]
      910 SETLIST                          R18 R19 6 [1]
      912 SETTABLE                         R18 R16 R17
      913 SETTABLEKS                       R16 R15 K271 ["Color"]
      915 SETTABLEKS                       R15 R14 K196 ["BasePart"]
      917 DUPTABLE                         R15 K273 [{"Shape"}]
      918 GETIMPORT                        R16 K276 [Enum.PartType.Block]
      920 SETTABLEKS                       R16 R15 K272 ["Shape"]
      922 SETTABLEKS                       R15 R14 K197 ["Part"]
      924 DUPTABLE                         R15 K281 [{"AlphaMode", "EmissiveMaskContent", "EmissiveStrength", "EmissiveTint"}]
      925 MOVE                             R17 R5
      926 CALL                             R17 0 1
      927 JUMPIFNOT                        R17 ; [+55]
      928 NEWTABLE                         R16 0 2
      930 NEWTABLE                         R17 2 0
      932 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
      934 GETTABLEKS                       R18 R18 K175 ["FOUND_IN"]
      936 NEWTABLE                         R19 0 2
      938 GETIMPORT                        R20 K283 [Enum.AlphaMode.Overlay]
      940 GETIMPORT                        R21 K284 [Enum.AlphaMode.Transparency]
      942 SETLIST                          R19 R20 2 [1]
      944 SETTABLE                         R19 R17 R18
      945 GETTABLEKS                       R18 R11 K190 ["INCLUSION_METHODS"]
      947 GETTABLEKS                       R18 R18 K187 ["INCLUSION_LIST"]
      949 NEWTABLE                         R19 0 2
      951 GETIMPORT                        R20 K112 [Enum.AssetType.EyelashAccessory]
      953 GETIMPORT                        R21 K111 [Enum.AssetType.EyebrowAccessory]
      955 SETLIST                          R19 R20 2 [1]
      957 SETTABLE                         R19 R17 R18
      958 NEWTABLE                         R18 2 0
      960 GETTABLEKS                       R19 R11 K184 ["COMPARISON_METHODS"]
      962 GETTABLEKS                       R19 R19 K172 ["EXACT_EQ"]
      964 GETIMPORT                        R20 K283 [Enum.AlphaMode.Overlay]
      966 SETTABLE                         R20 R18 R19
      967 GETTABLEKS                       R19 R11 K190 ["INCLUSION_METHODS"]
      969 GETTABLEKS                       R19 R19 K188 ["EXCLUSION_LIST"]
      971 NEWTABLE                         R20 0 2
      973 GETIMPORT                        R21 K112 [Enum.AssetType.EyelashAccessory]
      975 GETIMPORT                        R22 K111 [Enum.AssetType.EyebrowAccessory]
      977 SETLIST                          R20 R21 2 [1]
      979 SETTABLE                         R20 R18 R19
      980 SETLIST                          R16 R17 2 [1]
      982 JUMP                             ; [+2]
      983 GETIMPORT                        R16 K283 [Enum.AlphaMode.Overlay]
      985 SETTABLEKS                       R16 R15 K277 ["AlphaMode"]
      987 GETIMPORT                        R16 K287 [Content.none]
      989 SETTABLEKS                       R16 R15 K278 ["EmissiveMaskContent"]
      991 LOADN                            R16 1
      992 SETTABLEKS                       R16 R15 K279 ["EmissiveStrength"]
      994 GETIMPORT                        R16 K212 [Color3.new]
      996 LOADN                            R17 1
      997 LOADN                            R18 1
      998 LOADN                            R19 1
      999 CALL                             R16 3 1
     1000 SETTABLEKS                       R16 R15 K280 ["EmissiveTint"]
     1002 SETTABLEKS                       R15 R14 K198 ["SurfaceAppearance"]
     1004 DUPTABLE                         R15 K293 [{"Enabled", "CageOrigin", "ReferenceOrigin", "ImportOrigin", "BindOffset"}]
     1005 LOADB                            R16 1
     1006 SETTABLEKS                       R16 R15 K288 ["Enabled"]
     1008 DUPTABLE                         R16 K296 [{"PositionMagnitude", "Orientation"}]
     1009 NEWTABLE                         R17 1 0
     1011 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1013 GETTABLEKS                       R18 R18 K170 ["SMALLER_EQ"]
     1015 LOADN                            R19 10
     1016 SETTABLE                         R19 R17 R18
     1017 SETTABLEKS                       R17 R16 K294 ["PositionMagnitude"]
     1019 NEWTABLE                         R17 1 0
     1021 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1023 GETTABLEKS                       R18 R18 K172 ["EXACT_EQ"]
     1025 LOADK                            R19 K221 [{0, 0, 0}]
     1026 SETTABLE                         R19 R17 R18
     1027 SETTABLEKS                       R17 R16 K295 ["Orientation"]
     1029 SETTABLEKS                       R16 R15 K289 ["CageOrigin"]
     1031 DUPTABLE                         R16 K296 [{"PositionMagnitude", "Orientation"}]
     1032 NEWTABLE                         R17 1 0
     1034 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1036 GETTABLEKS                       R18 R18 K170 ["SMALLER_EQ"]
     1038 LOADN                            R19 10
     1039 SETTABLE                         R19 R17 R18
     1040 SETTABLEKS                       R17 R16 K294 ["PositionMagnitude"]
     1042 NEWTABLE                         R17 1 0
     1044 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1046 GETTABLEKS                       R18 R18 K172 ["EXACT_EQ"]
     1048 LOADK                            R19 K221 [{0, 0, 0}]
     1049 SETTABLE                         R19 R17 R18
     1050 SETTABLEKS                       R17 R16 K295 ["Orientation"]
     1052 SETTABLEKS                       R16 R15 K290 ["ReferenceOrigin"]
     1054 DUPTABLE                         R16 K297 [{"PositionMagnitude"}]
     1055 NEWTABLE                         R17 1 0
     1057 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1059 GETTABLEKS                       R18 R18 K170 ["SMALLER_EQ"]
     1061 LOADN                            R19 8
     1062 SETTABLE                         R19 R17 R18
     1063 SETTABLEKS                       R17 R16 K294 ["PositionMagnitude"]
     1065 SETTABLEKS                       R16 R15 K291 ["ImportOrigin"]
     1067 DUPTABLE                         R16 K299 [{"Position", "Orientation"}]
     1068 NEWTABLE                         R17 1 0
     1070 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1072 GETTABLEKS                       R18 R18 K172 ["EXACT_EQ"]
     1074 LOADK                            R19 K221 [{0, 0, 0}]
     1075 SETTABLE                         R19 R17 R18
     1076 SETTABLEKS                       R17 R16 K298 ["Position"]
     1078 NEWTABLE                         R17 1 0
     1080 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1082 GETTABLEKS                       R18 R18 K172 ["EXACT_EQ"]
     1084 LOADK                            R19 K221 [{0, 0, 0}]
     1085 SETTABLE                         R19 R17 R18
     1086 SETTABLEKS                       R17 R16 K295 ["Orientation"]
     1088 SETTABLEKS                       R16 R15 K292 ["BindOffset"]
     1090 SETTABLEKS                       R15 R14 K199 ["WrapLayer"]
     1092 DUPTABLE                         R15 K300 [{"CageOrigin", "ImportOrigin"}]
     1093 DUPTABLE                         R16 K296 [{"PositionMagnitude", "Orientation"}]
     1094 NEWTABLE                         R17 1 0
     1096 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1098 GETTABLEKS                       R18 R18 K170 ["SMALLER_EQ"]
     1100 LOADN                            R19 10
     1101 SETTABLE                         R19 R17 R18
     1102 SETTABLEKS                       R17 R16 K294 ["PositionMagnitude"]
     1104 NEWTABLE                         R17 1 0
     1106 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1108 GETTABLEKS                       R18 R18 K172 ["EXACT_EQ"]
     1110 LOADK                            R19 K221 [{0, 0, 0}]
     1111 SETTABLE                         R19 R17 R18
     1112 SETTABLEKS                       R17 R16 K295 ["Orientation"]
     1114 SETTABLEKS                       R16 R15 K289 ["CageOrigin"]
     1116 DUPTABLE                         R16 K297 [{"PositionMagnitude"}]
     1117 NEWTABLE                         R17 1 0
     1119 GETTABLEKS                       R18 R11 K184 ["COMPARISON_METHODS"]
     1121 GETTABLEKS                       R18 R18 K170 ["SMALLER_EQ"]
     1123 LOADN                            R19 8
     1124 SETTABLE                         R19 R17 R18
     1125 SETTABLEKS                       R17 R16 K294 ["PositionMagnitude"]
     1127 SETTABLEKS                       R16 R15 K291 ["ImportOrigin"]
     1129 SETTABLEKS                       R15 R14 K200 ["WrapTarget"]
     1131 SETTABLEKS                       R14 R11 K301 ["PROPERTIES"]
     1133 DUPTABLE                         R14 K304 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal", "WrapLayer", "WrapTarget", "Animation"}]
     1134 NEWTABLE                         R15 0 2
     1136 LOADK                            R16 K49 ["Head"]
     1137 LOADK                            R17 K50 ["UpperTorso"]
     1138 SETLIST                          R15 R16 2 [1]
     1140 SETTABLEKS                       R15 R14 K195 ["SpecialMesh"]
     1142 NEWTABLE                         R15 0 2
     1144 LOADK                            R16 K49 ["Head"]
     1145 LOADK                            R17 K51 ["LowerTorso"]
     1146 SETLIST                          R15 R16 2 [1]
     1148 SETTABLEKS                       R15 R14 K302 ["MeshPart"]
     1150 NEWTABLE                         R15 0 4
     1152 LOADK                            R16 K52 ["LeftUpperLeg"]
     1153 LOADK                            R17 K53 ["LeftLowerLeg"]
     1154 LOADK                            R18 K54 ["LeftFoot"]
     1155 LOADK                            R19 K55 ["RightUpperLeg"]
     1156 SETLIST                          R15 R16 4 [1]
     1158 SETTABLEKS                       R15 R14 K198 ["SurfaceAppearance"]
     1160 MOVE                             R16 R8
     1161 CALL                             R16 0 1
     1162 JUMPIFNOT                        R16 ; [+9]
     1163 NEWTABLE                         R15 0 4
     1165 LOADK                            R16 K52 ["LeftUpperLeg"]
     1166 LOADK                            R17 K53 ["LeftLowerLeg"]
     1167 LOADK                            R18 K54 ["LeftFoot"]
     1168 LOADK                            R19 K55 ["RightUpperLeg"]
     1169 SETLIST                          R15 R16 4 [1]
     1171 JUMP                             ; [+1]
     1172 LOADNIL                          R15
     1173 SETTABLEKS                       R15 R14 K194 ["Decal"]
     1175 NEWTABLE                         R15 0 2
     1177 LOADK                            R16 K56 ["RightLowerLeg"]
     1178 LOADK                            R17 K57 ["RightFoot"]
     1179 SETLIST                          R15 R16 2 [1]
     1181 SETTABLEKS                       R15 R14 K199 ["WrapLayer"]
     1183 NEWTABLE                         R15 0 1
     1185 LOADK                            R16 K56 ["RightLowerLeg"]
     1186 SETLIST                          R15 R16 1 [1]
     1188 SETTABLEKS                       R15 R14 K200 ["WrapTarget"]
     1190 NEWTABLE                         R15 0 1
     1192 LOADK                            R16 K58 ["LeftUpperArm"]
     1193 SETLIST                          R15 R16 1 [1]
     1195 SETTABLEKS                       R15 R14 K303 ["Animation"]
     1197 SETTABLEKS                       R14 R11 K315 ["CONTENT_ID_FIELDS"]
     1199 MOVE                             R14 R7
     1200 CALL                             R14 0 1
     1201 JUMPIFNOT                        R14 ; [+10]
     1202 GETTABLEKS                       R15 R11 K315 ["CONTENT_ID_FIELDS"]
     1204 GETTABLEKS                       R15 R15 K198 ["SurfaceAppearance"]
     1206 FASTCALL2K                       TABLE_INSERT R15 K316 ; [+4]
     1208 LOADK                            R16 K60 ["LeftHand"]
     1209 GETIMPORT                        R14 K144 [table.insert]
     1211 CALL                             R14 2 0
     1212 MOVE                             R14 R6
     1213 CALL                             R14 0 1
     1214 JUMPIFNOT                        R14 ; [+10]
     1215 GETTABLEKS                       R15 R11 K315 ["CONTENT_ID_FIELDS"]
     1217 GETTABLEKS                       R15 R15 K199 ["WrapLayer"]
     1219 FASTCALL2K                       TABLE_INSERT R15 K317 ; [+4]
     1221 LOADK                            R16 K61 ["RightUpperArm"]
     1222 GETIMPORT                        R14 K144 [table.insert]
     1224 CALL                             R14 2 0
     1225 DUPTABLE                         R14 K318 [{"SpecialMesh", "MeshPart", "WrapTarget", "Animation"}]
     1226 DUPTABLE                         R15 K319 [{"MeshId", "TextureId"}]
     1227 LOADB                            R16 1
     1228 SETTABLEKS                       R16 R15 K305 ["MeshId"]
     1230 LOADB                            R16 1
     1231 SETTABLEKS                       R16 R15 K306 ["TextureId"]
     1233 SETTABLEKS                       R15 R14 K195 ["SpecialMesh"]
     1235 DUPTABLE                         R15 K320 [{"MeshId"}]
     1236 LOADB                            R16 1
     1237 SETTABLEKS                       R16 R15 K305 ["MeshId"]
     1239 SETTABLEKS                       R15 R14 K302 ["MeshPart"]
     1241 DUPTABLE                         R15 K321 [{"CageMeshId"}]
     1242 LOADB                            R16 1
     1243 SETTABLEKS                       R16 R15 K312 ["CageMeshId"]
     1245 SETTABLEKS                       R15 R14 K200 ["WrapTarget"]
     1247 DUPTABLE                         R15 K322 [{"AnimationId"}]
     1248 LOADB                            R16 1
     1249 SETTABLEKS                       R16 R15 K314 ["AnimationId"]
     1251 SETTABLEKS                       R15 R14 K303 ["Animation"]
     1253 SETTABLEKS                       R14 R11 K323 ["CONTENT_ID_REQUIRED_FIELDS"]
     1255 DUPTABLE                         R14 K324 [{"SpecialMesh", "MeshPart", "WrapTarget", "WrapLayer"}]
     1256 NEWTABLE                         R15 0 1
     1258 LOADK                            R16 K49 ["Head"]
     1259 SETLIST                          R15 R16 1 [1]
     1261 SETTABLEKS                       R15 R14 K195 ["SpecialMesh"]
     1263 NEWTABLE                         R15 0 1
     1265 LOADK                            R16 K49 ["Head"]
     1266 SETLIST                          R15 R16 1 [1]
     1268 SETTABLEKS                       R15 R14 K302 ["MeshPart"]
     1270 NEWTABLE                         R15 0 1
     1272 LOADK                            R16 K56 ["RightLowerLeg"]
     1273 SETLIST                          R15 R16 1 [1]
     1275 SETTABLEKS                       R15 R14 K200 ["WrapTarget"]
     1277 NEWTABLE                         R15 0 2
     1279 LOADK                            R16 K56 ["RightLowerLeg"]
     1280 LOADK                            R17 K57 ["RightFoot"]
     1281 SETLIST                          R15 R16 2 [1]
     1283 SETTABLEKS                       R15 R14 K199 ["WrapLayer"]
     1285 SETTABLEKS                       R14 R11 K325 ["MESH_CONTENT_ID_FIELDS"]
     1287 DUPTABLE                         R14 K326 [{"SpecialMesh", "MeshPart", "SurfaceAppearance", "Decal"}]
     1288 NEWTABLE                         R15 0 1
     1290 LOADK                            R16 K50 ["UpperTorso"]
     1291 SETLIST                          R15 R16 1 [1]
     1293 SETTABLEKS                       R15 R14 K195 ["SpecialMesh"]
     1295 NEWTABLE                         R15 0 1
     1297 LOADK                            R16 K51 ["LowerTorso"]
     1298 SETLIST                          R15 R16 1 [1]
     1300 SETTABLEKS                       R15 R14 K302 ["MeshPart"]
     1302 NEWTABLE                         R15 0 4
     1304 LOADK                            R16 K52 ["LeftUpperLeg"]
     1305 LOADK                            R17 K53 ["LeftLowerLeg"]
     1306 LOADK                            R18 K54 ["LeftFoot"]
     1307 LOADK                            R19 K55 ["RightUpperLeg"]
     1308 SETLIST                          R15 R16 4 [1]
     1310 SETTABLEKS                       R15 R14 K198 ["SurfaceAppearance"]
     1312 MOVE                             R16 R8
     1313 CALL                             R16 0 1
     1314 JUMPIFNOT                        R16 ; [+9]
     1315 NEWTABLE                         R15 0 4
     1317 LOADK                            R16 K52 ["LeftUpperLeg"]
     1318 LOADK                            R17 K53 ["LeftLowerLeg"]
     1319 LOADK                            R18 K54 ["LeftFoot"]
     1320 LOADK                            R19 K55 ["RightUpperLeg"]
     1321 SETLIST                          R15 R16 4 [1]
     1323 JUMP                             ; [+1]
     1324 LOADNIL                          R15
     1325 SETTABLEKS                       R15 R14 K194 ["Decal"]
     1327 SETTABLEKS                       R14 R11 K327 ["TEXTURE_CONTENT_ID_FIELDS"]
     1329 DUPTABLE                         R14 K328 [{"DynamicHead", "LeftArm", "RightArm", "Torso", "LeftLeg", "RightLeg"}]
     1330 GETIMPORT                        R17 K101 [Enum.AssetType.DynamicHead]
     1332 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1334 CALL                             R15 2 1
     1335 SETTABLEKS                       R15 R14 K89 ["DynamicHead"]
     1337 GETIMPORT                        R17 K104 [Enum.AssetType.LeftArm]
     1339 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1341 CALL                             R15 2 1
     1342 SETTABLEKS                       R15 R14 K103 ["LeftArm"]
     1344 GETIMPORT                        R17 K106 [Enum.AssetType.RightArm]
     1346 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1348 CALL                             R15 2 1
     1349 SETTABLEKS                       R15 R14 K105 ["RightArm"]
     1351 GETIMPORT                        R17 K102 [Enum.AssetType.Torso]
     1353 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1355 CALL                             R15 2 1
     1356 SETTABLEKS                       R15 R14 K43 ["Torso"]
     1358 GETIMPORT                        R17 K108 [Enum.AssetType.LeftLeg]
     1360 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1362 CALL                             R15 2 1
     1363 SETTABLEKS                       R15 R14 K107 ["LeftLeg"]
     1365 GETIMPORT                        R17 K110 [Enum.AssetType.RightLeg]
     1367 NAMECALL                         R15 R2 K329 ["getBodyPartMaxTrianglesRule"]
     1369 CALL                             R15 2 1
     1370 SETTABLEKS                       R15 R14 K109 ["RightLeg"]
     1372 SETTABLEKS                       R14 R11 K330 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
     1374 DUPTABLE                         R14 K331 [{"Head", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
     1375 LOADN                            R15 87
     1376 SETTABLEKS                       R15 R14 K49 ["Head"]
     1378 LOADN                            R15 77
     1379 SETTABLEKS                       R15 R14 K58 ["LeftUpperArm"]
     1381 LOADN                            R15 77
     1382 SETTABLEKS                       R15 R14 K59 ["LeftLowerArm"]
     1384 LOADN                            R15 86
     1385 SETTABLEKS                       R15 R14 K60 ["LeftHand"]
     1387 LOADN                            R15 77
     1388 SETTABLEKS                       R15 R14 K61 ["RightUpperArm"]
     1390 LOADN                            R15 77
     1391 SETTABLEKS                       R15 R14 K62 ["RightLowerArm"]
     1393 LOADN                            R15 86
     1394 SETTABLEKS                       R15 R14 K63 ["RightHand"]
     1396 LOADN                            R15 1
     1397 SETTABLEKS                       R15 R14 K50 ["UpperTorso"]
     1399 LOADN                            R15 105
     1400 SETTABLEKS                       R15 R14 K51 ["LowerTorso"]
     1402 LOADN                            R15 88
     1403 SETTABLEKS                       R15 R14 K52 ["LeftUpperLeg"]
     1405 LOADN                            R15 88
     1406 SETTABLEKS                       R15 R14 K53 ["LeftLowerLeg"]
     1408 LOADN                            R15 86
     1409 SETTABLEKS                       R15 R14 K54 ["LeftFoot"]
     1411 LOADN                            R15 88
     1412 SETTABLEKS                       R15 R14 K55 ["RightUpperLeg"]
     1414 LOADN                            R15 88
     1415 SETTABLEKS                       R15 R14 K56 ["RightLowerLeg"]
     1417 LOADN                            R15 86
     1418 SETTABLEKS                       R15 R14 K57 ["RightFoot"]
     1420 SETTABLEKS                       R14 R11 K332 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
     1422 GETTABLEKS                       R14 R1 K333 ["Dictionary"]
     1424 GETTABLEKS                       R14 R14 K334 ["join"]
     1426 GETTABLEKS                       R15 R11 K315 ["CONTENT_ID_FIELDS"]
     1428 DUPTABLE                         R16 K345 [{"Sound", "Decal", "VideoFrame", "PackageLink", "CharacterMesh", "Tool", "Sky", "Trail", "Beam", "ShirtGraphic", "Shirt", "Pants", "AdGui"}]
     1429 NEWTABLE                         R17 0 1
     1431 LOADK                            R18 K90 ["R15_STANDARD_JOINT_NAMES"]
     1432 SETLIST                          R17 R18 1 [1]
     1434 SETTABLEKS                       R17 R16 K335 ["Sound"]
     1436 NEWTABLE                         R17 0 1
     1438 LOADK                            R18 K91 ["RBX_Leader"]
     1439 SETLIST                          R17 R18 1 [1]
     1441 SETTABLEKS                       R17 R16 K194 ["Decal"]
     1443 NEWTABLE                         R17 0 1
     1445 LOADK                            R18 K92 ["RBX_Follower"]
     1446 SETLIST                          R17 R18 1 [1]
     1448 SETTABLEKS                       R17 R16 K336 ["VideoFrame"]
     1450 NEWTABLE                         R17 0 1
     1452 LOADK                            R18 K93 [{"RBX_Leader", "RBX_Follower"}]
     1453 SETLIST                          R17 R18 1 [1]
     1455 SETTABLEKS                       R17 R16 K337 ["PackageLink"]
     1457 NEWTABLE                         R17 0 3
     1459 LOADK                            R18 K94 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
     1460 LOADK                            R19 K95 ["EyebrowAccessory"]
     1461 LOADK                            R20 K96 ["EyelashAccessory"]
     1462 SETLIST                          R17 R18 3 [1]
     1464 SETTABLEKS                       R17 R16 K338 ["CharacterMesh"]
     1466 NEWTABLE                         R17 0 1
     1468 LOADK                            R18 K50 ["UpperTorso"]
     1469 SETLIST                          R17 R18 1 [1]
     1471 SETTABLEKS                       R17 R16 K339 ["Tool"]
     1473 NEWTABLE                         R17 0 8
     1475 LOADK                            R18 K97 ["HairAccessory"]
     1476 LOADK                            R19 K98 ["UGC_BODY_PARTS"]
     1477 LOADK                            R20 K99 [{"Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}]
     1478 LOADK                            R21 K100 ["AssetType"]
     1479 LOADK                            R22 K101 [Enum.AssetType.DynamicHead]
     1480 LOADK                            R23 K102 [Enum.AssetType.Torso]
     1481 LOADK                            R24 K103 ["LeftArm"]
     1482 LOADK                            R25 K104 [Enum.AssetType.LeftArm]
     1483 SETLIST                          R17 R18 8 [1]
     1485 SETTABLEKS                       R17 R16 K340 ["Sky"]
     1487 NEWTABLE                         R17 0 1
     1489 LOADK                            R18 K105 ["RightArm"]
     1490 SETLIST                          R17 R18 1 [1]
     1492 SETTABLEKS                       R17 R16 K341 ["Trail"]
     1494 NEWTABLE                         R17 0 1
     1496 LOADK                            R18 K105 ["RightArm"]
     1497 SETLIST                          R17 R18 1 [1]
     1499 SETTABLEKS                       R17 R16 K342 ["Beam"]
     1501 NEWTABLE                         R17 0 1
     1503 LOADK                            R18 K106 [Enum.AssetType.RightArm]
     1504 SETLIST                          R17 R18 1 [1]
     1506 SETTABLEKS                       R17 R16 K343 ["ShirtGraphic"]
     1508 NEWTABLE                         R17 0 1
     1510 LOADK                            R18 K107 ["LeftLeg"]
     1511 SETLIST                          R17 R18 1 [1]
     1513 SETTABLEKS                       R17 R16 K136 ["Shirt"]
     1515 NEWTABLE                         R17 0 1
     1517 LOADK                            R18 K108 [Enum.AssetType.LeftLeg]
     1518 SETLIST                          R17 R18 1 [1]
     1520 SETTABLEKS                       R17 R16 K137 ["Pants"]
     1522 NEWTABLE                         R17 0 1
     1524 LOADK                            R18 K109 ["RightLeg"]
     1525 SETLIST                          R17 R18 1 [1]
     1527 SETTABLEKS                       R17 R16 K344 ["AdGui"]
     1529 CALL                             R14 2 1
     1530 SETTABLEKS                       R14 R11 K366 ["PACKAGE_CONTENT_ID_FIELDS"]
     1532 LOADK                            R14 K111 [Enum.AssetType.EyebrowAccessory]
     1533 SETTABLEKS                       R14 R11 K368 ["ExperienceAuthHeaderKey"]
     1535 LOADK                            R14 K113 [Enum.AssetType.HairAccessory]
     1536 SETTABLEKS                       R14 R11 K370 ["ContentType"]
     1538 LOADK                            R14 K115 ["LeftShoeAccessory"]
     1539 SETTABLEKS                       R14 R11 K372 ["ApplicationJson"]
     1541 LOADK                            R14 K117 [{"LeftShoeAccessory", "RightShoeAccessory"}]
     1542 SETTABLEKS                       R14 R11 K374 ["GUIDAttributeName"]
     1544 LOADN                            R14 100
     1545 SETTABLEKS                       R14 R11 K375 ["GUIDAttributeMaxLength"]
     1547 LOADK                            R14 K120 ["UGC_SHOE_NAMES_TO_ASSET_TYPE"]
     1548 SETTABLEKS                       R14 R11 K377 ["AlternateMeshIdAttributeName"]
     1550 DUPTABLE                         R14 K381 [{"RENDER_MESH", "OUTER_CAGE", "INNER_CAGE"}]
     1551 LOADK                            R15 K126 ["R6"]
     1552 SETTABLEKS                       R15 R14 K378 ["RENDER_MESH"]
     1554 LOADK                            R15 K127 ["R15ArtistIntent"]
     1555 SETTABLEKS                       R15 R14 K379 ["OUTER_CAGE"]
     1557 LOADK                            R15 K128 ["R15Fixed"]
     1558 SETTABLEKS                       R15 R14 K380 ["INNER_CAGE"]
     1560 SETTABLEKS                       R14 R11 K385 ["MESH_CONTENT_TYPE"]
     1562 NEWTABLE                         R14 4 0
     1564 GETTABLEKS                       R15 R11 K385 ["MESH_CONTENT_TYPE"]
     1566 GETTABLEKS                       R15 R15 K378 ["RENDER_MESH"]
     1568 LOADK                            R16 K49 ["Head"]
     1569 SETTABLE                         R16 R14 R15
     1570 GETTABLEKS                       R15 R11 K385 ["MESH_CONTENT_TYPE"]
     1572 GETTABLEKS                       R15 R15 K379 ["OUTER_CAGE"]
     1574 LOADK                            R16 K56 ["RightLowerLeg"]
     1575 SETTABLE                         R16 R14 R15
     1576 GETTABLEKS                       R15 R11 K385 ["MESH_CONTENT_TYPE"]
     1578 GETTABLEKS                       R15 R15 K380 ["INNER_CAGE"]
     1580 LOADK                            R16 K57 ["RightFoot"]
     1581 SETTABLE                         R16 R14 R15
     1582 SETTABLEKS                       R14 R11 K386 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
     1584 NEWTABLE                         R14 0 5
     1586 GETTABLEKS                       R15 R3 K387 ["UploadCategory"]
     1588 GETTABLEKS                       R15 R15 K388 ["TORSO_AND_LIMBS"]
     1590 GETTABLEKS                       R16 R3 K387 ["UploadCategory"]
     1592 GETTABLEKS                       R16 R16 K389 ["DYNAMIC_HEAD"]
     1594 GETTABLEKS                       R17 R3 K387 ["UploadCategory"]
     1596 GETTABLEKS                       R17 R17 K390 ["LAYERED_CLOTHING"]
     1598 GETTABLEKS                       R18 R3 K387 ["UploadCategory"]
     1600 GETTABLEKS                       R18 R18 K391 ["RIGID_ACCESSORY"]
     1602 GETTABLEKS                       R19 R3 K387 ["UploadCategory"]
     1604 GETTABLEKS                       R19 R19 K392 ["EMOTE_ANIMATION"]
     1606 SETLIST                          R14 R15 5 [1]
     1608 SETTABLEKS                       R14 R11 K393 ["AllAssetUploadCategories"]
     1610 NEWTABLE                         R14 0 2
     1612 GETTABLEKS                       R15 R3 K387 ["UploadCategory"]
     1614 GETTABLEKS                       R15 R15 K394 ["FULL_BODY"]
     1616 GETTABLEKS                       R16 R3 K387 ["UploadCategory"]
     1618 GETTABLEKS                       R16 R16 K395 ["BOTH_SHOES"]
     1620 SETLIST                          R14 R15 2 [1]
     1622 SETTABLEKS                       R14 R11 K396 ["AllBundleUploadCategories"]
     1624 NEWTABLE                         R14 0 0
     1626 SETTABLEKS                       R14 R11 K397 ["AllUploadCategories"]
     1628 GETTABLEKS                       R14 R3 K387 ["UploadCategory"]
     1630 LOADNIL                          R15
     1631 LOADNIL                          R16
     1632 FORGPREP                         R14
     1633 GETTABLEKS                       R20 R11 K397 ["AllUploadCategories"]
     1635 FASTCALL2                        TABLE_INSERT R20 R18 ; [+4]
     1637 MOVE                             R21 R18
     1638 GETIMPORT                        R19 K144 [table.insert]
     1640 CALL                             R19 2 0
     1641 FORGLOOP                         R14 2 ; [-9]
     1643 NEWTABLE                         R14 8 0
     1645 GETIMPORT                        R15 K102 [Enum.AssetType.Torso]
     1647 LOADB                            R16 1
     1648 SETTABLE                         R16 R14 R15
     1649 GETIMPORT                        R15 K104 [Enum.AssetType.LeftArm]
     1651 LOADB                            R16 1
     1652 SETTABLE                         R16 R14 R15
     1653 GETIMPORT                        R15 K106 [Enum.AssetType.RightArm]
     1655 LOADB                            R16 1
     1656 SETTABLE                         R16 R14 R15
     1657 GETIMPORT                        R15 K108 [Enum.AssetType.LeftLeg]
     1659 LOADB                            R16 1
     1660 SETTABLE                         R16 R14 R15
     1661 GETIMPORT                        R15 K110 [Enum.AssetType.RightLeg]
     1663 LOADB                            R16 1
     1664 SETTABLE                         R16 R14 R15
     1665 SETTABLEKS                       R14 R11 K398 ["AssetUploadsWithFolderStructure"]
     1667 NEWTABLE                         R14 2 0
     1669 GETIMPORT                        R15 K111 [Enum.AssetType.EyebrowAccessory]
     1671 LOADB                            R16 1
     1672 SETTABLE                         R16 R14 R15
     1673 GETIMPORT                        R15 K112 [Enum.AssetType.EyelashAccessory]
     1675 LOADB                            R16 1
     1676 SETTABLE                         R16 R14 R15
     1677 SETTABLEKS                       R14 R11 K399 ["SkinningTransferRequiredTypes"]
     1679 RETURN                           R11 1
