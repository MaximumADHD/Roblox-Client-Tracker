PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.GameAvatarType.PlayerChoice]
        6 SETTABLEKS                       R1 R0 K5 ["AvatarType"]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarBodyRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsScaleMode.CustomScale]
        6 SETTABLEKS                       R1 R0 K5 ["ScaleMode"]
        8 GETIMPORT                        R1 K8 [NumberRange.new]
       10 LOADN                            R2 2
       11 LOADN                            R3 9
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K9 ["CustomHeight"]
       15 GETIMPORT                        R1 K12 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       17 SETTABLEKS                       R1 R0 K13 ["AppearanceMode"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K14 ["VALID_FACE_ASSETID"]
       22 GETTABLEKS                       R1 R1 K15 ["assetId"]
       24 SETTABLEKS                       R1 R0 K16 ["CustomFaceId"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K17 ["VALID_HEAD_ASSETID"]
       29 GETTABLEKS                       R1 R1 K15 ["assetId"]
       31 SETTABLEKS                       R1 R0 K18 ["CustomHeadId"]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K19 ["VALID_MOOD_ASSETID"]
       36 GETTABLEKS                       R1 R1 K15 ["assetId"]
       38 SETTABLEKS                       R1 R0 K20 ["CustomMoodId"]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K21 ["VALID_EYEBROW_ASSETID"]
       43 GETTABLEKS                       R1 R1 K15 ["assetId"]
       45 SETTABLEKS                       R1 R0 K22 ["CustomEyebrowId"]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K23 ["VALID_EYELASH_ASSETID"]
       50 GETTABLEKS                       R1 R1 K15 ["assetId"]
       52 SETTABLEKS                       R1 R0 K24 ["CustomEyelashId"]
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K25 ["VALID_TORSO_ASSETID"]
       57 GETTABLEKS                       R1 R1 K15 ["assetId"]
       59 SETTABLEKS                       R1 R0 K26 ["CustomTorsoId"]
       61 GETUPVAL                         R1 1
       62 GETTABLEKS                       R1 R1 K27 ["VALID_LEFTARM_ASSETID"]
       64 GETTABLEKS                       R1 R1 K15 ["assetId"]
       66 SETTABLEKS                       R1 R0 K28 ["CustomLeftArmId"]
       68 GETUPVAL                         R1 1
       69 GETTABLEKS                       R1 R1 K29 ["VALID_RIGHTARM_ASSETID"]
       71 GETTABLEKS                       R1 R1 K15 ["assetId"]
       73 SETTABLEKS                       R1 R0 K30 ["CustomRightArmId"]
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K31 ["VALID_LEFTLEG_ASSETID"]
       78 GETTABLEKS                       R1 R1 K15 ["assetId"]
       80 SETTABLEKS                       R1 R0 K32 ["CustomLeftLegId"]
       82 GETUPVAL                         R1 1
       83 GETTABLEKS                       R1 R1 K33 ["VALID_RIGHTLEG_ASSETID"]
       85 GETTABLEKS                       R1 R1 K15 ["assetId"]
       87 SETTABLEKS                       R1 R0 K34 ["CustomRightLegId"]
       89 GETIMPORT                        R1 K37 [Enum.AvatarSettingsCustomBodyType.BundleId]
       91 SETTABLEKS                       R1 R0 K38 ["CustomBodyType"]
       93 LOADN                            R1 7
       94 SETTABLEKS                       R1 R0 K39 ["CustomBodyBundleId"]
       96 LOADB                            R1 0
       97 SETTABLEKS                       R1 R0 K40 ["KeepPlayerHead"]
       99 GETIMPORT                        R1 K43 [Enum.AvatarSettingsBuildMode.CustomBuild]
      101 SETTABLEKS                       R1 R0 K44 ["BuildMode"]
      103 GETIMPORT                        R1 K8 [NumberRange.new]
      105 LOADK                            R2 K45 [0.1]
      106 LOADK                            R3 K46 [0.2]
      107 CALL                             R1 2 1
      108 SETTABLEKS                       R1 R0 K47 ["CustomHeightScale"]
      110 GETIMPORT                        R1 K8 [NumberRange.new]
      112 LOADK                            R2 K45 [0.1]
      113 LOADK                            R3 K46 [0.2]
      114 CALL                             R1 2 1
      115 SETTABLEKS                       R1 R0 K48 ["CustomWidthScale"]
      117 GETIMPORT                        R1 K8 [NumberRange.new]
      119 LOADK                            R2 K45 [0.1]
      120 LOADK                            R3 K46 [0.2]
      121 CALL                             R1 2 1
      122 SETTABLEKS                       R1 R0 K49 ["CustomHeadScale"]
      124 GETIMPORT                        R1 K8 [NumberRange.new]
      126 LOADK                            R2 K45 [0.1]
      127 LOADK                            R3 K46 [0.2]
      128 CALL                             R1 2 1
      129 SETTABLEKS                       R1 R0 K50 ["CustomBodyTypeScale"]
      131 GETIMPORT                        R1 K8 [NumberRange.new]
      133 LOADK                            R2 K45 [0.1]
      134 LOADK                            R3 K46 [0.2]
      135 CALL                             R1 2 1
      136 SETTABLEKS                       R1 R0 K51 ["CustomProportionsScale"]
      138 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarCollisionRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsCollisionMode.SingleCollider]
        6 SETTABLEKS                       R1 R0 K5 ["CollisionMode"]
        8 LOADK                            R1 K6 [{5, 5, 5}]
        9 SETTABLEKS                       R1 R0 K7 ["SingleColliderSize"]
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K8 ["BodyPartsCollidableOnDeath"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarAbilityRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
        6 SETTABLEKS                       R1 R0 K5 ["CharacterControllerMode"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K6 ["EnableJumping"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K7 ["EnableSitting"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarAnimationRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
        6 SETTABLEKS                       R1 R0 K5 ["AnimationPacksMode"]
        8 GETIMPORT                        R1 K8 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       10 SETTABLEKS                       R1 R0 K9 ["AnimationClipsMode"]
       12 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarAccessoryRules"]
        3 CALL                             R0 0 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["EnableSound"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["EnableVFX"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["EnableEmissives"]
       13 GETIMPORT                        R1 K7 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
       15 SETTABLEKS                       R1 R0 K8 ["LimitMethod"]
       17 LOADK                            R1 K9 [{5, 5, 5}]
       18 SETTABLEKS                       R1 R0 K10 ["LimitBounds"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       23 GETTABLEKS                       R1 R1 K12 ["assetId"]
       25 SETTABLEKS                       R1 R0 K13 ["CustomHeadAccessoryId"]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       30 GETTABLEKS                       R1 R1 K12 ["assetId"]
       32 SETTABLEKS                       R1 R0 K14 ["CustomHairAccessoryId"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       37 GETTABLEKS                       R1 R1 K12 ["assetId"]
       39 SETTABLEKS                       R1 R0 K15 ["CustomFaceAccessoryId"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       44 GETTABLEKS                       R1 R1 K12 ["assetId"]
       46 SETTABLEKS                       R1 R0 K16 ["CustomNeckAccessoryId"]
       48 GETUPVAL                         R1 1
       49 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       51 GETTABLEKS                       R1 R1 K12 ["assetId"]
       53 SETTABLEKS                       R1 R0 K17 ["CustomShoulderAccessoryId"]
       55 GETUPVAL                         R1 1
       56 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       58 GETTABLEKS                       R1 R1 K12 ["assetId"]
       60 SETTABLEKS                       R1 R0 K18 ["CustomFrontAccessoryId"]
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       65 GETTABLEKS                       R1 R1 K12 ["assetId"]
       67 SETTABLEKS                       R1 R0 K19 ["CustomBackAccessoryId"]
       69 GETUPVAL                         R1 1
       70 GETTABLEKS                       R1 R1 K11 ["VALID_ASSETID"]
       72 GETTABLEKS                       R1 R1 K12 ["assetId"]
       74 SETTABLEKS                       R1 R0 K20 ["CustomWaistAccessoryId"]
       76 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarClothingRules"]
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["tests"]
       13 GETTABLEKS                       R2 R2 K8 ["Util"]
       15 GETTABLEKS                       R2 R2 K9 ["TestConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["BridgingFiles"]
       26 GETTABLEKS                       R3 R3 K11 ["AssetDmFiles"]
       28 GETTABLEKS                       R3 R3 K12 ["assetDmTypes"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K6 ["Src"]
       35 GETTABLEKS                       R4 R4 K8 ["Util"]
       37 GETTABLEKS                       R4 R4 K10 ["BridgingFiles"]
       39 GETTABLEKS                       R4 R4 K11 ["AssetDmFiles"]
       41 GETTABLEKS                       R4 R4 K13 ["assetDmUtils"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K14 ["Flags"]
       50 GETTABLEKS                       R5 R5 K15 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       52 CALL                             R4 1 1
       53 GETTABLEKS                       R5 R1 K16 ["AssetIds"]
       55 NEWTABLE                         R6 8 0
       57 DUPCLOSURE                       R7 K17 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R7 R6 K18 ["createNonDefaultAvatarRulesInstance"]
       61 DUPCLOSURE                       R7 K19 [PROTO_1]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R7 R6 K20 ["createNonDefaultAvatarBodyRulesInstance"]
       66 DUPCLOSURE                       R7 K21 [PROTO_2]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R7 R6 K22 ["createNonDefaultAvatarCollisionRulesInstance"]
       71 DUPCLOSURE                       R7 K23 [PROTO_3]
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R7 R6 K24 ["createNonDefaultAvatarAbilityRulesInstance"]
       75 DUPCLOSURE                       R7 K25 [PROTO_4]
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R7 R6 K26 ["createNonDefaultAvatarAnimationRulesInstance"]
       79 DUPCLOSURE                       R7 K27 [PROTO_5]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R7 R6 K28 ["createNonDefaultAvatarAccessoryRulesInstance"]
       84 DUPCLOSURE                       R7 K29 [PROTO_6]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R7 R6 K30 ["createNonDefaultAvatarClothingRulesInstance"]
       88 RETURN                           R6 1
