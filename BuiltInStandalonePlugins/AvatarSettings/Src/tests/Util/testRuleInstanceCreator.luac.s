PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.GameAvatarType.PlayerChoice]
        6 SETTABLEKS                       R1 R0 K5 ["AvatarType"]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarBodyRules"]
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
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K14 ["VALID_FACE_ASSETID"]
       22 GETTABLEKS                       R1 R2 K15 ["assetId"]
       24 SETTABLEKS                       R1 R0 K16 ["CustomFaceId"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K17 ["VALID_HEAD_ASSETID"]
       29 GETTABLEKS                       R1 R2 K15 ["assetId"]
       31 SETTABLEKS                       R1 R0 K18 ["CustomHeadId"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K19 ["VALID_MOOD_ASSETID"]
       36 GETTABLEKS                       R1 R2 K15 ["assetId"]
       38 SETTABLEKS                       R1 R0 K20 ["CustomMoodId"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K21 ["VALID_EYEBROW_ASSETID"]
       43 GETTABLEKS                       R1 R2 K15 ["assetId"]
       45 SETTABLEKS                       R1 R0 K22 ["CustomEyebrowId"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R2 R3 K23 ["VALID_EYELASH_ASSETID"]
       50 GETTABLEKS                       R1 R2 K15 ["assetId"]
       52 SETTABLEKS                       R1 R0 K24 ["CustomEyelashId"]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R2 R3 K25 ["VALID_TORSO_ASSETID"]
       57 GETTABLEKS                       R1 R2 K15 ["assetId"]
       59 SETTABLEKS                       R1 R0 K26 ["CustomTorsoId"]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R2 R3 K27 ["VALID_LEFTARM_ASSETID"]
       64 GETTABLEKS                       R1 R2 K15 ["assetId"]
       66 SETTABLEKS                       R1 R0 K28 ["CustomLeftArmId"]
       68 GETUPVAL                         R3 1
       69 GETTABLEKS                       R2 R3 K29 ["VALID_RIGHTARM_ASSETID"]
       71 GETTABLEKS                       R1 R2 K15 ["assetId"]
       73 SETTABLEKS                       R1 R0 K30 ["CustomRightArmId"]
       75 GETUPVAL                         R3 1
       76 GETTABLEKS                       R2 R3 K31 ["VALID_LEFTLEG_ASSETID"]
       78 GETTABLEKS                       R1 R2 K15 ["assetId"]
       80 SETTABLEKS                       R1 R0 K32 ["CustomLeftLegId"]
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R2 R3 K33 ["VALID_RIGHTLEG_ASSETID"]
       85 GETTABLEKS                       R1 R2 K15 ["assetId"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarCollisionRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsCollisionMode.SingleCollider]
        6 SETTABLEKS                       R1 R0 K5 ["CollisionMode"]
        8 LOADK                            R1 K6 [{5, 5, 5}]
        9 SETTABLEKS                       R1 R0 K7 ["SingleColliderSize"]
       11 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarAbilityRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
        6 SETTABLEKS                       R1 R0 K5 ["CharacterControllerMode"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K6 ["EnableJumping"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K7 ["EnableSitting"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarAnimationRules"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K4 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
        6 SETTABLEKS                       R1 R0 K5 ["AnimationPacksMode"]
        8 GETIMPORT                        R1 K8 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       10 SETTABLEKS                       R1 R0 K9 ["AnimationClipsMode"]
       12 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarAccessoryRules"]
        3 CALL                             R0 0 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["EnableSound"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["EnableVFX"]
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
       12 SETTABLEKS                       R1 R0 K7 ["LimitMethod"]
       14 LOADK                            R1 K8 [{5, 5, 5}]
       15 SETTABLEKS                       R1 R0 K9 ["LimitBounds"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       20 GETTABLEKS                       R1 R2 K11 ["assetId"]
       22 SETTABLEKS                       R1 R0 K12 ["CustomHeadAccessoryId"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       27 GETTABLEKS                       R1 R2 K11 ["assetId"]
       29 SETTABLEKS                       R1 R0 K13 ["CustomHairAccessoryId"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       34 GETTABLEKS                       R1 R2 K11 ["assetId"]
       36 SETTABLEKS                       R1 R0 K14 ["CustomFaceAccessoryId"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       41 GETTABLEKS                       R1 R2 K11 ["assetId"]
       43 SETTABLEKS                       R1 R0 K15 ["CustomNeckAccessoryId"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       48 GETTABLEKS                       R1 R2 K11 ["assetId"]
       50 SETTABLEKS                       R1 R0 K16 ["CustomShoulderAccessoryId"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       55 GETTABLEKS                       R1 R2 K11 ["assetId"]
       57 SETTABLEKS                       R1 R0 K17 ["CustomFrontAccessoryId"]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       62 GETTABLEKS                       R1 R2 K11 ["assetId"]
       64 SETTABLEKS                       R1 R0 K18 ["CustomBackAccessoryId"]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R2 R3 K10 ["VALID_ASSETID"]
       69 GETTABLEKS                       R1 R2 K11 ["assetId"]
       71 SETTABLEKS                       R1 R0 K19 ["CustomWaistAccessoryId"]
       73 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createAvatarClothingRules"]
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["tests"]
       13 GETTABLEKS                       R3 R4 K8 ["Util"]
       15 GETTABLEKS                       R2 R3 K9 ["TestConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R7 R0 K6 ["Src"]
       22 GETTABLEKS                       R6 R7 K8 ["Util"]
       24 GETTABLEKS                       R5 R6 K10 ["BridgingFiles"]
       26 GETTABLEKS                       R4 R5 K11 ["AssetDmFiles"]
       28 GETTABLEKS                       R3 R4 K12 ["assetDmUtils"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R1 K13 ["AssetIds"]
       33 NEWTABLE                         R4 8 0
       35 DUPCLOSURE                       R5 K14 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K15 ["createNonDefaultAvatarRulesInstance"]
       39 DUPCLOSURE                       R5 K16 [PROTO_1]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K17 ["createNonDefaultAvatarBodyRulesInstance"]
       44 DUPCLOSURE                       R5 K18 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R5 R4 K19 ["createNonDefaultAvatarCollisionRulesInstance"]
       48 DUPCLOSURE                       R5 K20 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R5 R4 K21 ["createNonDefaultAvatarAbilityRulesInstance"]
       52 DUPCLOSURE                       R5 K22 [PROTO_4]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R4 K23 ["createNonDefaultAvatarAnimationRulesInstance"]
       56 DUPCLOSURE                       R5 K24 [PROTO_5]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R5 R4 K25 ["createNonDefaultAvatarAccessoryRulesInstance"]
       61 DUPCLOSURE                       R5 K26 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R5 R4 K27 ["createNonDefaultAvatarClothingRulesInstance"]
       65 RETURN                           R4 1
