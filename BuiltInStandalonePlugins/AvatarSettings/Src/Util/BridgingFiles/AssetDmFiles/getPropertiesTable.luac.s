PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["ruleInstance"]
        2 GETTABLEKS                       R3 R0 K1 ["property"]
        4 LOADK                            R4 K2 ["Id"]
        5 CONCAT                           R2 R3 R4
        6 GETTABLEKS                       R4 R0 K1 ["property"]
        8 LOADK                            R5 K3 ["Enabled"]
        9 CONCAT                           R3 R4 R5
       10 DUPTABLE                         R4 K5 [{"AssetId", "Enabled"}]
       11 GETTABLE                         R5 R1 R2
       12 SETTABLEKS                       R5 R4 K4 ["AssetId"]
       14 GETTABLE                         R5 R1 R3
       15 SETTABLEKS                       R5 R4 K3 ["Enabled"]
       17 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 DUPTABLE                         R1 K2 [{"AvatarType"}]
        5 GETTABLEKS                       R2 R0 K1 ["AvatarType"]
        7 SETTABLEKS                       R2 R1 K1 ["AvatarType"]
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarBodyRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarBodyRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K14 [{"ScaleMode", "CustomHeight", "AppearanceMode", "KeepPlayerHead", "BuildMode", "CustomHeightScale", "CustomWidthScale", "CustomHeadScale", "CustomBodyTypeScale", "CustomProportionsScale"}]
       12 GETTABLEKS                       R2 R0 K4 ["ScaleMode"]
       14 SETTABLEKS                       R2 R1 K4 ["ScaleMode"]
       16 GETTABLEKS                       R2 R0 K5 ["CustomHeight"]
       18 SETTABLEKS                       R2 R1 K5 ["CustomHeight"]
       20 GETTABLEKS                       R2 R0 K6 ["AppearanceMode"]
       22 SETTABLEKS                       R2 R1 K6 ["AppearanceMode"]
       24 GETTABLEKS                       R2 R0 K7 ["KeepPlayerHead"]
       26 SETTABLEKS                       R2 R1 K7 ["KeepPlayerHead"]
       28 GETTABLEKS                       R2 R0 K8 ["BuildMode"]
       30 SETTABLEKS                       R2 R1 K8 ["BuildMode"]
       32 GETTABLEKS                       R2 R0 K9 ["CustomHeightScale"]
       34 SETTABLEKS                       R2 R1 K9 ["CustomHeightScale"]
       36 GETTABLEKS                       R2 R0 K10 ["CustomWidthScale"]
       38 SETTABLEKS                       R2 R1 K10 ["CustomWidthScale"]
       40 GETTABLEKS                       R2 R0 K11 ["CustomHeadScale"]
       42 SETTABLEKS                       R2 R1 K11 ["CustomHeadScale"]
       44 GETTABLEKS                       R2 R0 K12 ["CustomBodyTypeScale"]
       46 SETTABLEKS                       R2 R1 K12 ["CustomBodyTypeScale"]
       48 GETTABLEKS                       R2 R0 K13 ["CustomProportionsScale"]
       50 SETTABLEKS                       R2 R1 K13 ["CustomProportionsScale"]
       52 NEWTABLE                         R2 0 10
       54 DUPTABLE                         R3 K18 [{["ruleInstance"], ["property"] = "CustomFace"}]
       55 SETTABLEKS                       R0 R3 K15 ["ruleInstance"]
       57 DUPTABLE                         R4 K20 [{["ruleInstance"], ["property"] = "CustomHead"}]
       58 SETTABLEKS                       R0 R4 K15 ["ruleInstance"]
       60 DUPTABLE                         R5 K22 [{["ruleInstance"], ["property"] = "CustomMood"}]
       61 SETTABLEKS                       R0 R5 K15 ["ruleInstance"]
       63 DUPTABLE                         R6 K24 [{["ruleInstance"], ["property"] = "CustomEyelash"}]
       64 SETTABLEKS                       R0 R6 K15 ["ruleInstance"]
       66 DUPTABLE                         R7 K26 [{["ruleInstance"], ["property"] = "CustomEyebrow"}]
       67 SETTABLEKS                       R0 R7 K15 ["ruleInstance"]
       69 DUPTABLE                         R8 K28 [{["ruleInstance"], ["property"] = "CustomTorso"}]
       70 SETTABLEKS                       R0 R8 K15 ["ruleInstance"]
       72 DUPTABLE                         R9 K30 [{["ruleInstance"], ["property"] = "CustomLeftArm"}]
       73 SETTABLEKS                       R0 R9 K15 ["ruleInstance"]
       75 DUPTABLE                         R10 K32 [{["ruleInstance"], ["property"] = "CustomRightArm"}]
       76 SETTABLEKS                       R0 R10 K15 ["ruleInstance"]
       78 DUPTABLE                         R11 K34 [{["ruleInstance"], ["property"] = "CustomLeftLeg"}]
       79 SETTABLEKS                       R0 R11 K15 ["ruleInstance"]
       81 DUPTABLE                         R12 K36 [{["ruleInstance"], ["property"] = "CustomRightLeg"}]
       82 SETTABLEKS                       R0 R12 K15 ["ruleInstance"]
       84 SETLIST                          R2 R3 10 [1]
       86 MOVE                             R3 R2
       87 LOADNIL                          R4
       88 LOADNIL                          R5
       89 FORGPREP                         R3
       90 GETTABLEKS                       R8 R7 K16 ["property"]
       92 GETTABLEKS                       R10 R7 K15 ["ruleInstance"]
       94 GETTABLEKS                       R12 R7 K16 ["property"]
       96 LOADK                            R13 K37 ["Id"]
       97 CONCAT                           R11 R12 R13
       98 GETTABLEKS                       R13 R7 K16 ["property"]
      100 LOADK                            R14 K38 ["Enabled"]
      101 CONCAT                           R12 R13 R14
      102 DUPTABLE                         R9 K40 [{"AssetId", "Enabled"}]
      103 GETTABLE                         R13 R10 R11
      104 SETTABLEKS                       R13 R9 K39 ["AssetId"]
      106 GETTABLE                         R13 R10 R12
      107 SETTABLEKS                       R13 R9 K38 ["Enabled"]
      109 SETTABLE                         R9 R1 R8
      110 FORGLOOP                         R3 2 ; [-21]
      112 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarCollisionRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarCollisionRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K8 [{"CollisionMode", "HitAndTouchDetectionMode", "AvatarSettingsLegacyCollisionMode", "SingleColliderSize"}]
       12 GETTABLEKS                       R2 R0 K4 ["CollisionMode"]
       14 SETTABLEKS                       R2 R1 K4 ["CollisionMode"]
       16 GETTABLEKS                       R2 R0 K5 ["HitAndTouchDetectionMode"]
       18 SETTABLEKS                       R2 R1 K5 ["HitAndTouchDetectionMode"]
       20 GETTABLEKS                       R2 R0 K9 ["LegacyCollisionMode"]
       22 SETTABLEKS                       R2 R1 K6 ["AvatarSettingsLegacyCollisionMode"]
       24 GETTABLEKS                       R2 R0 K7 ["SingleColliderSize"]
       26 SETTABLEKS                       R2 R1 K7 ["SingleColliderSize"]
       28 GETUPVAL                         R2 1
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETTABLEKS                       R2 R0 K10 ["BodyPartsCollidableOnDeath"]
       33 SETTABLEKS                       R2 R1 K10 ["BodyPartsCollidableOnDeath"]
       35 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarAbilityRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarAbilityRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+6]
       14 GETUPVAL                         R1 2
       15 CALL                             R1 0 1
       16 JUMPIF                           R1 ; [+3]
       17 GETUPVAL                         R1 3
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+63]
       20 DUPTABLE                         R1 K12 [{"CharacterControllerMode", "EnableClimbing", "EnableFallingDown", "EnableGettingUp", "EnableJumping", "EnableRunning", "EnableSitting", "EnableSwimming"}]
       21 GETTABLEKS                       R2 R0 K4 ["CharacterControllerMode"]
       23 SETTABLEKS                       R2 R1 K4 ["CharacterControllerMode"]
       25 GETTABLEKS                       R2 R0 K5 ["EnableClimbing"]
       27 SETTABLEKS                       R2 R1 K5 ["EnableClimbing"]
       29 GETTABLEKS                       R2 R0 K6 ["EnableFallingDown"]
       31 SETTABLEKS                       R2 R1 K6 ["EnableFallingDown"]
       33 GETTABLEKS                       R2 R0 K7 ["EnableGettingUp"]
       35 SETTABLEKS                       R2 R1 K7 ["EnableGettingUp"]
       37 GETTABLEKS                       R2 R0 K8 ["EnableJumping"]
       39 SETTABLEKS                       R2 R1 K8 ["EnableJumping"]
       41 GETTABLEKS                       R2 R0 K9 ["EnableRunning"]
       43 SETTABLEKS                       R2 R1 K9 ["EnableRunning"]
       45 GETTABLEKS                       R2 R0 K10 ["EnableSitting"]
       47 SETTABLEKS                       R2 R1 K10 ["EnableSitting"]
       49 GETTABLEKS                       R2 R0 K11 ["EnableSwimming"]
       51 SETTABLEKS                       R2 R1 K11 ["EnableSwimming"]
       53 GETUPVAL                         R2 1
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+8]
       56 GETTABLEKS                       R2 R0 K13 ["EnableCrouching"]
       58 SETTABLEKS                       R2 R1 K13 ["EnableCrouching"]
       60 GETTABLEKS                       R2 R0 K14 ["EnableSprinting"]
       62 SETTABLEKS                       R2 R1 K14 ["EnableSprinting"]
       64 GETUPVAL                         R2 3
       65 CALL                             R2 0 1
       66 JUMPIFNOT                        R2 ; [+4]
       67 GETTABLEKS                       R2 R0 K15 ["EnableTurning"]
       69 SETTABLEKS                       R2 R1 K15 ["EnableTurning"]
       71 GETUPVAL                         R2 2
       72 CALL                             R2 0 1
       73 JUMPIFNOT                        R2 ; [+8]
       74 GETTABLEKS                       R2 R0 K16 ["EnableHolding"]
       76 SETTABLEKS                       R2 R1 K16 ["EnableHolding"]
       78 GETTABLEKS                       R2 R0 K17 ["EnableReaching"]
       80 SETTABLEKS                       R2 R1 K17 ["EnableReaching"]
       82 RETURN                           R1 1
       83 DUPTABLE                         R1 K18 [{"CharacterControllerMode", "EnableRunning", "EnableJumping", "EnableSitting", "EnableFallingDown", "EnableGettingUp", "EnableClimbing", "EnableSwimming"}]
       84 GETTABLEKS                       R2 R0 K4 ["CharacterControllerMode"]
       86 SETTABLEKS                       R2 R1 K4 ["CharacterControllerMode"]
       88 GETTABLEKS                       R2 R0 K9 ["EnableRunning"]
       90 SETTABLEKS                       R2 R1 K9 ["EnableRunning"]
       92 GETTABLEKS                       R2 R0 K8 ["EnableJumping"]
       94 SETTABLEKS                       R2 R1 K8 ["EnableJumping"]
       96 GETTABLEKS                       R2 R0 K10 ["EnableSitting"]
       98 SETTABLEKS                       R2 R1 K10 ["EnableSitting"]
      100 GETTABLEKS                       R2 R0 K6 ["EnableFallingDown"]
      102 SETTABLEKS                       R2 R1 K6 ["EnableFallingDown"]
      104 GETTABLEKS                       R2 R0 K7 ["EnableGettingUp"]
      106 SETTABLEKS                       R2 R1 K7 ["EnableGettingUp"]
      108 GETTABLEKS                       R2 R0 K5 ["EnableClimbing"]
      110 SETTABLEKS                       R2 R1 K5 ["EnableClimbing"]
      112 GETTABLEKS                       R2 R0 K11 ["EnableSwimming"]
      114 SETTABLEKS                       R2 R1 K11 ["EnableSwimming"]
      116 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarAnimationRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarAnimationRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K6 [{"AnimationPacksMode", "AnimationClipsMode"}]
       12 GETTABLEKS                       R2 R0 K4 ["AnimationPacksMode"]
       14 SETTABLEKS                       R2 R1 K4 ["AnimationPacksMode"]
       16 GETTABLEKS                       R2 R0 K5 ["AnimationClipsMode"]
       18 SETTABLEKS                       R2 R1 K5 ["AnimationClipsMode"]
       20 NEWTABLE                         R2 0 10
       22 DUPTABLE                         R3 K10 [{["ruleInstance"], ["property"] = "CustomRunAnimation"}]
       23 SETTABLEKS                       R0 R3 K7 ["ruleInstance"]
       25 DUPTABLE                         R4 K12 [{["ruleInstance"], ["property"] = "CustomWalkAnimation"}]
       26 SETTABLEKS                       R0 R4 K7 ["ruleInstance"]
       28 DUPTABLE                         R5 K14 [{["ruleInstance"], ["property"] = "CustomFallAnimation"}]
       29 SETTABLEKS                       R0 R5 K7 ["ruleInstance"]
       31 DUPTABLE                         R6 K16 [{["ruleInstance"], ["property"] = "CustomJumpAnimation"}]
       32 SETTABLEKS                       R0 R6 K7 ["ruleInstance"]
       34 DUPTABLE                         R7 K18 [{["ruleInstance"], ["property"] = "CustomIdleAnimation"}]
       35 SETTABLEKS                       R0 R7 K7 ["ruleInstance"]
       37 DUPTABLE                         R8 K20 [{["ruleInstance"], ["property"] = "CustomIdleAlt1Animation"}]
       38 SETTABLEKS                       R0 R8 K7 ["ruleInstance"]
       40 DUPTABLE                         R9 K22 [{["ruleInstance"], ["property"] = "CustomIdleAlt2Animation"}]
       41 SETTABLEKS                       R0 R9 K7 ["ruleInstance"]
       43 DUPTABLE                         R10 K24 [{["ruleInstance"], ["property"] = "CustomSwimAnimation"}]
       44 SETTABLEKS                       R0 R10 K7 ["ruleInstance"]
       46 DUPTABLE                         R11 K26 [{["ruleInstance"], ["property"] = "CustomSwimIdleAnimation"}]
       47 SETTABLEKS                       R0 R11 K7 ["ruleInstance"]
       49 DUPTABLE                         R12 K28 [{["ruleInstance"], ["property"] = "CustomClimbAnimation"}]
       50 SETTABLEKS                       R0 R12 K7 ["ruleInstance"]
       52 SETLIST                          R2 R3 10 [1]
       54 MOVE                             R3 R2
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETTABLEKS                       R8 R7 K8 ["property"]
       60 GETTABLEKS                       R10 R7 K7 ["ruleInstance"]
       62 GETTABLEKS                       R12 R7 K8 ["property"]
       64 LOADK                            R13 K29 ["Id"]
       65 CONCAT                           R11 R12 R13
       66 GETTABLEKS                       R13 R7 K8 ["property"]
       68 LOADK                            R14 K30 ["Enabled"]
       69 CONCAT                           R12 R13 R14
       70 DUPTABLE                         R9 K32 [{"AssetId", "Enabled"}]
       71 GETTABLE                         R13 R10 R11
       72 SETTABLEKS                       R13 R9 K31 ["AssetId"]
       74 GETTABLE                         R13 R10 R12
       75 SETTABLEKS                       R13 R9 K30 ["Enabled"]
       77 SETTABLE                         R9 R1 R8
       78 FORGLOOP                         R3 2 ; [-21]
       80 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarAccessoryRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarAccessoryRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K11 [{"EnableSound", "EnableVFX", "EnableEmissives", "AccessoryMode", "LimitMethod", "LimitBounds", "CustomAccessoryMode"}]
       12 GETTABLEKS                       R2 R0 K4 ["EnableSound"]
       14 SETTABLEKS                       R2 R1 K4 ["EnableSound"]
       16 GETTABLEKS                       R2 R0 K5 ["EnableVFX"]
       18 SETTABLEKS                       R2 R1 K5 ["EnableVFX"]
       20 GETTABLEKS                       R2 R0 K6 ["EnableEmissives"]
       22 SETTABLEKS                       R2 R1 K6 ["EnableEmissives"]
       24 GETTABLEKS                       R2 R0 K7 ["AccessoryMode"]
       26 SETTABLEKS                       R2 R1 K7 ["AccessoryMode"]
       28 GETTABLEKS                       R2 R0 K8 ["LimitMethod"]
       30 SETTABLEKS                       R2 R1 K8 ["LimitMethod"]
       32 GETTABLEKS                       R2 R0 K9 ["LimitBounds"]
       34 SETTABLEKS                       R2 R1 K9 ["LimitBounds"]
       36 GETTABLEKS                       R2 R0 K10 ["CustomAccessoryMode"]
       38 SETTABLEKS                       R2 R1 K10 ["CustomAccessoryMode"]
       40 NEWTABLE                         R2 0 8
       42 DUPTABLE                         R3 K15 [{["ruleInstance"], ["property"] = "CustomHairAccessory"}]
       43 SETTABLEKS                       R0 R3 K12 ["ruleInstance"]
       45 DUPTABLE                         R4 K17 [{["ruleInstance"], ["property"] = "CustomHeadAccessory"}]
       46 SETTABLEKS                       R0 R4 K12 ["ruleInstance"]
       48 DUPTABLE                         R5 K19 [{["ruleInstance"], ["property"] = "CustomFaceAccessory"}]
       49 SETTABLEKS                       R0 R5 K12 ["ruleInstance"]
       51 DUPTABLE                         R6 K21 [{["ruleInstance"], ["property"] = "CustomNeckAccessory"}]
       52 SETTABLEKS                       R0 R6 K12 ["ruleInstance"]
       54 DUPTABLE                         R7 K23 [{["ruleInstance"], ["property"] = "CustomShoulderAccessory"}]
       55 SETTABLEKS                       R0 R7 K12 ["ruleInstance"]
       57 DUPTABLE                         R8 K25 [{["ruleInstance"], ["property"] = "CustomFrontAccessory"}]
       58 SETTABLEKS                       R0 R8 K12 ["ruleInstance"]
       60 DUPTABLE                         R9 K27 [{["ruleInstance"], ["property"] = "CustomBackAccessory"}]
       61 SETTABLEKS                       R0 R9 K12 ["ruleInstance"]
       63 DUPTABLE                         R10 K29 [{["ruleInstance"], ["property"] = "CustomWaistAccessory"}]
       64 SETTABLEKS                       R0 R10 K12 ["ruleInstance"]
       66 SETLIST                          R2 R3 8 [1]
       68 MOVE                             R3 R2
       69 LOADNIL                          R4
       70 LOADNIL                          R5
       71 FORGPREP                         R3
       72 GETTABLEKS                       R8 R7 K13 ["property"]
       74 GETTABLEKS                       R10 R7 K12 ["ruleInstance"]
       76 GETTABLEKS                       R12 R7 K13 ["property"]
       78 LOADK                            R13 K30 ["Id"]
       79 CONCAT                           R11 R12 R13
       80 GETTABLEKS                       R13 R7 K13 ["property"]
       82 LOADK                            R14 K31 ["Enabled"]
       83 CONCAT                           R12 R13 R14
       84 DUPTABLE                         R9 K33 [{"AssetId", "Enabled"}]
       85 GETTABLE                         R13 R10 R11
       86 SETTABLEKS                       R13 R9 K32 ["AssetId"]
       88 GETTABLE                         R13 R10 R12
       89 SETTABLEKS                       R13 R9 K31 ["Enabled"]
       91 SETTABLE                         R9 R1 R8
       92 FORGLOOP                         R3 2 ; [-21]
       94 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarClothingRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarClothingRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K7 [{"ClothingMode", "LimitBounds", "CustomClothingMode"}]
       12 GETTABLEKS                       R2 R0 K4 ["ClothingMode"]
       14 SETTABLEKS                       R2 R1 K4 ["ClothingMode"]
       16 GETTABLEKS                       R2 R0 K5 ["LimitBounds"]
       18 SETTABLEKS                       R2 R1 K5 ["LimitBounds"]
       20 GETTABLEKS                       R2 R0 K6 ["CustomClothingMode"]
       22 SETTABLEKS                       R2 R1 K6 ["CustomClothingMode"]
       24 NEWTABLE                         R2 0 12
       26 DUPTABLE                         R3 K11 [{["ruleInstance"], ["property"] = "CustomTShirtAccessory"}]
       27 SETTABLEKS                       R0 R3 K8 ["ruleInstance"]
       29 DUPTABLE                         R4 K13 [{["ruleInstance"], ["property"] = "CustomShirtAccessory"}]
       30 SETTABLEKS                       R0 R4 K8 ["ruleInstance"]
       32 DUPTABLE                         R5 K15 [{["ruleInstance"], ["property"] = "CustomJacketAccessory"}]
       33 SETTABLEKS                       R0 R5 K8 ["ruleInstance"]
       35 DUPTABLE                         R6 K17 [{["ruleInstance"], ["property"] = "CustomSweaterAccessory"}]
       36 SETTABLEKS                       R0 R6 K8 ["ruleInstance"]
       38 DUPTABLE                         R7 K19 [{["ruleInstance"], ["property"] = "CustomPantsAccessory"}]
       39 SETTABLEKS                       R0 R7 K8 ["ruleInstance"]
       41 DUPTABLE                         R8 K21 [{["ruleInstance"], ["property"] = "CustomShortsAccessory"}]
       42 SETTABLEKS                       R0 R8 K8 ["ruleInstance"]
       44 DUPTABLE                         R9 K23 [{["ruleInstance"], ["property"] = "CustomDressSkirtAccessory"}]
       45 SETTABLEKS                       R0 R9 K8 ["ruleInstance"]
       47 DUPTABLE                         R10 K25 [{["ruleInstance"], ["property"] = "CustomLeftShoesAccessory"}]
       48 SETTABLEKS                       R0 R10 K8 ["ruleInstance"]
       50 DUPTABLE                         R11 K27 [{["ruleInstance"], ["property"] = "CustomRightShoesAccessory"}]
       51 SETTABLEKS                       R0 R11 K8 ["ruleInstance"]
       53 DUPTABLE                         R12 K29 [{["ruleInstance"], ["property"] = "CustomClassicShirtsAccessory"}]
       54 SETTABLEKS                       R0 R12 K8 ["ruleInstance"]
       56 DUPTABLE                         R13 K31 [{["ruleInstance"], ["property"] = "CustomClassicTShirtsAccessory"}]
       57 SETTABLEKS                       R0 R13 K8 ["ruleInstance"]
       59 DUPTABLE                         R14 K33 [{["ruleInstance"], ["property"] = "CustomClassicPantsAccessory"}]
       60 SETTABLEKS                       R0 R14 K8 ["ruleInstance"]
       62 SETLIST                          R2 R3 12 [1]
       64 MOVE                             R3 R2
       65 LOADNIL                          R4
       66 LOADNIL                          R5
       67 FORGPREP                         R3
       68 GETTABLEKS                       R8 R7 K9 ["property"]
       70 GETTABLEKS                       R10 R7 K8 ["ruleInstance"]
       72 GETTABLEKS                       R12 R7 K9 ["property"]
       74 LOADK                            R13 K34 ["Id"]
       75 CONCAT                           R11 R12 R13
       76 GETTABLEKS                       R13 R7 K9 ["property"]
       78 LOADK                            R14 K35 ["Enabled"]
       79 CONCAT                           R12 R13 R14
       80 DUPTABLE                         R9 K37 [{"AssetId", "Enabled"}]
       81 GETTABLE                         R13 R10 R11
       82 SETTABLEKS                       R13 R9 K36 ["AssetId"]
       84 GETTABLE                         R13 R10 R12
       85 SETTABLEKS                       R13 R9 K35 ["Enabled"]
       87 SETTABLE                         R9 R1 R8
       88 FORGLOOP                         R3 2 ; [-21]
       90 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"Gravity"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Gravity"]
        4 SETTABLEKS                       R1 R0 K0 ["Gravity"]
        6 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R0 K8 [{"AvatarRules", "AvatarBodyRules", "AvatarCollisionRules", "AvatarAbilityRules", "AvatarAnimationRules", "AvatarAccessoryRules", "AvatarClothingRules", "OtherProperties"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K9 ["avatarRules"]
        4 CALL                             R2 0 1
        5 DUPTABLE                         R1 K11 [{"AvatarType"}]
        6 GETTABLEKS                       R3 R2 K10 ["AvatarType"]
        8 SETTABLEKS                       R3 R1 K10 ["AvatarType"]
       10 SETTABLEKS                       R1 R0 K0 ["AvatarRules"]
       12 GETUPVAL                         R1 1
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K1 ["AvatarBodyRules"]
       16 GETUPVAL                         R1 2
       17 CALL                             R1 0 1
       18 SETTABLEKS                       R1 R0 K2 ["AvatarCollisionRules"]
       20 GETUPVAL                         R1 3
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K3 ["AvatarAbilityRules"]
       24 GETUPVAL                         R1 4
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K4 ["AvatarAnimationRules"]
       28 GETUPVAL                         R1 5
       29 CALL                             R1 0 1
       30 SETTABLEKS                       R1 R0 K5 ["AvatarAccessoryRules"]
       32 GETUPVAL                         R1 6
       33 CALL                             R1 0 1
       34 SETTABLEKS                       R1 R0 K6 ["AvatarClothingRules"]
       36 DUPTABLE                         R1 K13 [{"Gravity"}]
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R2 R2 K12 ["Gravity"]
       40 SETTABLEKS                       R2 R1 K12 ["Gravity"]
       42 SETTABLEKS                       R1 R0 K7 ["OtherProperties"]
       44 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarSettingsSyncTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["BridgingFiles"]
       30 GETTABLEKS                       R4 R4 K14 ["AssetDmFiles"]
       32 GETTABLEKS                       R4 R4 K15 ["assetDmTypes"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K9 [require]
       37 GETTABLEKS                       R5 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K11 ["Util"]
       41 GETTABLEKS                       R5 R5 K13 ["BridgingFiles"]
       43 GETTABLEKS                       R5 R5 K14 ["AssetDmFiles"]
       45 GETTABLEKS                       R5 R5 K16 ["assetDmUtils"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K9 [require]
       50 GETTABLEKS                       R6 R0 K10 ["Src"]
       52 GETTABLEKS                       R6 R6 K17 ["Flags"]
       54 GETTABLEKS                       R6 R6 K18 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K9 [require]
       59 GETTABLEKS                       R7 R0 K10 ["Src"]
       61 GETTABLEKS                       R7 R7 K17 ["Flags"]
       63 GETTABLEKS                       R7 R7 K19 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R8 R0 K10 ["Src"]
       70 GETTABLEKS                       R8 R8 K17 ["Flags"]
       72 GETTABLEKS                       R8 R8 K20 ["getFFlagAvatarSettingsReachHold"]
       74 CALL                             R7 1 1
       75 GETIMPORT                        R8 K9 [require]
       77 GETTABLEKS                       R9 R0 K10 ["Src"]
       79 GETTABLEKS                       R9 R9 K17 ["Flags"]
       81 GETTABLEKS                       R9 R9 K21 ["getFFlagAvatarSettingsTurning"]
       83 CALL                             R8 1 1
       84 DUPCLOSURE                       R9 K22 [PROTO_0]
       85 DUPCLOSURE                       R10 K23 [PROTO_1]
       86 CAPTURE                          VAL R4
       87 DUPCLOSURE                       R11 K24 [PROTO_2]
       88 CAPTURE                          VAL R4
       89 DUPCLOSURE                       R12 K25 [PROTO_3]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 DUPCLOSURE                       R13 K26 [PROTO_4]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 DUPCLOSURE                       R14 K27 [PROTO_5]
       98 CAPTURE                          VAL R4
       99 DUPCLOSURE                       R15 K28 [PROTO_6]
      100 CAPTURE                          VAL R4
      101 DUPCLOSURE                       R16 K29 [PROTO_7]
      102 CAPTURE                          VAL R4
      103 DUPCLOSURE                       R17 K30 [PROTO_8]
      104 CAPTURE                          VAL R1
      105 DUPCLOSURE                       R18 K31 [PROTO_9]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R1
      114 RETURN                           R18 1
