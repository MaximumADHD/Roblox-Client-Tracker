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
       54 DUPTABLE                         R3 K17 [{"ruleInstance", "property"}]
       55 SETTABLEKS                       R0 R3 K15 ["ruleInstance"]
       57 LOADK                            R4 K18 ["CustomFace"]
       58 SETTABLEKS                       R4 R3 K16 ["property"]
       60 DUPTABLE                         R4 K17 [{"ruleInstance", "property"}]
       61 SETTABLEKS                       R0 R4 K15 ["ruleInstance"]
       63 LOADK                            R5 K19 ["CustomHead"]
       64 SETTABLEKS                       R5 R4 K16 ["property"]
       66 DUPTABLE                         R5 K17 [{"ruleInstance", "property"}]
       67 SETTABLEKS                       R0 R5 K15 ["ruleInstance"]
       69 LOADK                            R6 K20 ["CustomMood"]
       70 SETTABLEKS                       R6 R5 K16 ["property"]
       72 DUPTABLE                         R6 K17 [{"ruleInstance", "property"}]
       73 SETTABLEKS                       R0 R6 K15 ["ruleInstance"]
       75 LOADK                            R7 K21 ["CustomEyelash"]
       76 SETTABLEKS                       R7 R6 K16 ["property"]
       78 DUPTABLE                         R7 K17 [{"ruleInstance", "property"}]
       79 SETTABLEKS                       R0 R7 K15 ["ruleInstance"]
       81 LOADK                            R8 K22 ["CustomEyebrow"]
       82 SETTABLEKS                       R8 R7 K16 ["property"]
       84 DUPTABLE                         R8 K17 [{"ruleInstance", "property"}]
       85 SETTABLEKS                       R0 R8 K15 ["ruleInstance"]
       87 LOADK                            R9 K23 ["CustomTorso"]
       88 SETTABLEKS                       R9 R8 K16 ["property"]
       90 DUPTABLE                         R9 K17 [{"ruleInstance", "property"}]
       91 SETTABLEKS                       R0 R9 K15 ["ruleInstance"]
       93 LOADK                            R10 K24 ["CustomLeftArm"]
       94 SETTABLEKS                       R10 R9 K16 ["property"]
       96 DUPTABLE                         R10 K17 [{"ruleInstance", "property"}]
       97 SETTABLEKS                       R0 R10 K15 ["ruleInstance"]
       99 LOADK                            R11 K25 ["CustomRightArm"]
      100 SETTABLEKS                       R11 R10 K16 ["property"]
      102 DUPTABLE                         R11 K17 [{"ruleInstance", "property"}]
      103 SETTABLEKS                       R0 R11 K15 ["ruleInstance"]
      105 LOADK                            R12 K26 ["CustomLeftLeg"]
      106 SETTABLEKS                       R12 R11 K16 ["property"]
      108 DUPTABLE                         R12 K17 [{"ruleInstance", "property"}]
      109 SETTABLEKS                       R0 R12 K15 ["ruleInstance"]
      111 LOADK                            R13 K27 ["CustomRightLeg"]
      112 SETTABLEKS                       R13 R12 K16 ["property"]
      114 SETLIST                          R2 R3 10 [1]
      116 MOVE                             R3 R2
      117 LOADNIL                          R4
      118 LOADNIL                          R5
      119 FORGPREP                         R3
      120 GETTABLEKS                       R8 R7 K16 ["property"]
      122 GETTABLEKS                       R10 R7 K15 ["ruleInstance"]
      124 GETTABLEKS                       R12 R7 K16 ["property"]
      126 LOADK                            R13 K28 ["Id"]
      127 CONCAT                           R11 R12 R13
      128 GETTABLEKS                       R13 R7 K16 ["property"]
      130 LOADK                            R14 K29 ["Enabled"]
      131 CONCAT                           R12 R13 R14
      132 DUPTABLE                         R9 K31 [{"AssetId", "Enabled"}]
      133 GETTABLE                         R13 R10 R11
      134 SETTABLEKS                       R13 R9 K30 ["AssetId"]
      136 GETTABLE                         R13 R10 R12
      137 SETTABLEKS                       R13 R9 K29 ["Enabled"]
      139 SETTABLE                         R9 R1 R8
      140 FORGLOOP                         R3 2 ; [-21]
      142 RETURN                           R1 1

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
       28 RETURN                           R1 1

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
       13 JUMPIFNOT                        R1 ; [+54]
       14 DUPTABLE                         R1 K17 [{"CharacterControllerMode", "EnableClimbing", "EnableCrouching", "EnableFallingDown", "EnableGettingUp", "EnableHolding", "EnableJumping", "EnableReaching", "EnableRunning", "EnableSitting", "EnableSprinting", "EnableStrafing", "EnableSwimming"}]
       15 GETTABLEKS                       R2 R0 K4 ["CharacterControllerMode"]
       17 SETTABLEKS                       R2 R1 K4 ["CharacterControllerMode"]
       19 GETTABLEKS                       R2 R0 K5 ["EnableClimbing"]
       21 SETTABLEKS                       R2 R1 K5 ["EnableClimbing"]
       23 GETTABLEKS                       R2 R0 K6 ["EnableCrouching"]
       25 SETTABLEKS                       R2 R1 K6 ["EnableCrouching"]
       27 GETTABLEKS                       R2 R0 K7 ["EnableFallingDown"]
       29 SETTABLEKS                       R2 R1 K7 ["EnableFallingDown"]
       31 GETTABLEKS                       R2 R0 K8 ["EnableGettingUp"]
       33 SETTABLEKS                       R2 R1 K8 ["EnableGettingUp"]
       35 GETTABLEKS                       R2 R0 K9 ["EnableHolding"]
       37 SETTABLEKS                       R2 R1 K9 ["EnableHolding"]
       39 GETTABLEKS                       R2 R0 K10 ["EnableJumping"]
       41 SETTABLEKS                       R2 R1 K10 ["EnableJumping"]
       43 GETTABLEKS                       R2 R0 K11 ["EnableReaching"]
       45 SETTABLEKS                       R2 R1 K11 ["EnableReaching"]
       47 GETTABLEKS                       R2 R0 K12 ["EnableRunning"]
       49 SETTABLEKS                       R2 R1 K12 ["EnableRunning"]
       51 GETTABLEKS                       R2 R0 K13 ["EnableSitting"]
       53 SETTABLEKS                       R2 R1 K13 ["EnableSitting"]
       55 GETTABLEKS                       R2 R0 K14 ["EnableSprinting"]
       57 SETTABLEKS                       R2 R1 K14 ["EnableSprinting"]
       59 GETTABLEKS                       R2 R0 K15 ["EnableStrafing"]
       61 SETTABLEKS                       R2 R1 K15 ["EnableStrafing"]
       63 GETTABLEKS                       R2 R0 K16 ["EnableSwimming"]
       65 SETTABLEKS                       R2 R1 K16 ["EnableSwimming"]
       67 RETURN                           R1 1
       68 DUPTABLE                         R1 K18 [{"CharacterControllerMode", "EnableRunning", "EnableJumping", "EnableSitting", "EnableFallingDown", "EnableGettingUp", "EnableClimbing", "EnableSwimming"}]
       69 GETTABLEKS                       R2 R0 K4 ["CharacterControllerMode"]
       71 SETTABLEKS                       R2 R1 K4 ["CharacterControllerMode"]
       73 GETTABLEKS                       R2 R0 K12 ["EnableRunning"]
       75 SETTABLEKS                       R2 R1 K12 ["EnableRunning"]
       77 GETTABLEKS                       R2 R0 K10 ["EnableJumping"]
       79 SETTABLEKS                       R2 R1 K10 ["EnableJumping"]
       81 GETTABLEKS                       R2 R0 K13 ["EnableSitting"]
       83 SETTABLEKS                       R2 R1 K13 ["EnableSitting"]
       85 GETTABLEKS                       R2 R0 K7 ["EnableFallingDown"]
       87 SETTABLEKS                       R2 R1 K7 ["EnableFallingDown"]
       89 GETTABLEKS                       R2 R0 K8 ["EnableGettingUp"]
       91 SETTABLEKS                       R2 R1 K8 ["EnableGettingUp"]
       93 GETTABLEKS                       R2 R0 K5 ["EnableClimbing"]
       95 SETTABLEKS                       R2 R1 K5 ["EnableClimbing"]
       97 GETTABLEKS                       R2 R0 K16 ["EnableSwimming"]
       99 SETTABLEKS                       R2 R1 K16 ["EnableSwimming"]
      101 RETURN                           R1 1

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
       22 DUPTABLE                         R3 K9 [{"ruleInstance", "property"}]
       23 SETTABLEKS                       R0 R3 K7 ["ruleInstance"]
       25 LOADK                            R4 K10 ["CustomRunAnimation"]
       26 SETTABLEKS                       R4 R3 K8 ["property"]
       28 DUPTABLE                         R4 K9 [{"ruleInstance", "property"}]
       29 SETTABLEKS                       R0 R4 K7 ["ruleInstance"]
       31 LOADK                            R5 K11 ["CustomWalkAnimation"]
       32 SETTABLEKS                       R5 R4 K8 ["property"]
       34 DUPTABLE                         R5 K9 [{"ruleInstance", "property"}]
       35 SETTABLEKS                       R0 R5 K7 ["ruleInstance"]
       37 LOADK                            R6 K12 ["CustomFallAnimation"]
       38 SETTABLEKS                       R6 R5 K8 ["property"]
       40 DUPTABLE                         R6 K9 [{"ruleInstance", "property"}]
       41 SETTABLEKS                       R0 R6 K7 ["ruleInstance"]
       43 LOADK                            R7 K13 ["CustomJumpAnimation"]
       44 SETTABLEKS                       R7 R6 K8 ["property"]
       46 DUPTABLE                         R7 K9 [{"ruleInstance", "property"}]
       47 SETTABLEKS                       R0 R7 K7 ["ruleInstance"]
       49 LOADK                            R8 K14 ["CustomIdleAnimation"]
       50 SETTABLEKS                       R8 R7 K8 ["property"]
       52 DUPTABLE                         R8 K9 [{"ruleInstance", "property"}]
       53 SETTABLEKS                       R0 R8 K7 ["ruleInstance"]
       55 LOADK                            R9 K15 ["CustomIdleAlt1Animation"]
       56 SETTABLEKS                       R9 R8 K8 ["property"]
       58 DUPTABLE                         R9 K9 [{"ruleInstance", "property"}]
       59 SETTABLEKS                       R0 R9 K7 ["ruleInstance"]
       61 LOADK                            R10 K16 ["CustomIdleAlt2Animation"]
       62 SETTABLEKS                       R10 R9 K8 ["property"]
       64 DUPTABLE                         R10 K9 [{"ruleInstance", "property"}]
       65 SETTABLEKS                       R0 R10 K7 ["ruleInstance"]
       67 LOADK                            R11 K17 ["CustomSwimAnimation"]
       68 SETTABLEKS                       R11 R10 K8 ["property"]
       70 DUPTABLE                         R11 K9 [{"ruleInstance", "property"}]
       71 SETTABLEKS                       R0 R11 K7 ["ruleInstance"]
       73 LOADK                            R12 K18 ["CustomSwimIdleAnimation"]
       74 SETTABLEKS                       R12 R11 K8 ["property"]
       76 DUPTABLE                         R12 K9 [{"ruleInstance", "property"}]
       77 SETTABLEKS                       R0 R12 K7 ["ruleInstance"]
       79 LOADK                            R13 K19 ["CustomClimbAnimation"]
       80 SETTABLEKS                       R13 R12 K8 ["property"]
       82 SETLIST                          R2 R3 10 [1]
       84 MOVE                             R3 R2
       85 LOADNIL                          R4
       86 LOADNIL                          R5
       87 FORGPREP                         R3
       88 GETTABLEKS                       R8 R7 K8 ["property"]
       90 GETTABLEKS                       R10 R7 K7 ["ruleInstance"]
       92 GETTABLEKS                       R12 R7 K8 ["property"]
       94 LOADK                            R13 K20 ["Id"]
       95 CONCAT                           R11 R12 R13
       96 GETTABLEKS                       R13 R7 K8 ["property"]
       98 LOADK                            R14 K21 ["Enabled"]
       99 CONCAT                           R12 R13 R14
      100 DUPTABLE                         R9 K23 [{"AssetId", "Enabled"}]
      101 GETTABLE                         R13 R10 R11
      102 SETTABLEKS                       R13 R9 K22 ["AssetId"]
      104 GETTABLE                         R13 R10 R12
      105 SETTABLEKS                       R13 R9 K21 ["Enabled"]
      107 SETTABLE                         R9 R1 R8
      108 FORGLOOP                         R3 2 ; [-21]
      110 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["avatarAccessoryRules"]
        3 CALL                             R0 0 1
        4 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["AvatarAccessoryRules not found"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 DUPTABLE                         R1 K10 [{"EnableSound", "EnableVFX", "AccessoryMode", "LimitMethod", "LimitBounds", "CustomAccessoryMode"}]
       12 GETTABLEKS                       R2 R0 K4 ["EnableSound"]
       14 SETTABLEKS                       R2 R1 K4 ["EnableSound"]
       16 GETTABLEKS                       R2 R0 K5 ["EnableVFX"]
       18 SETTABLEKS                       R2 R1 K5 ["EnableVFX"]
       20 GETTABLEKS                       R2 R0 K6 ["AccessoryMode"]
       22 SETTABLEKS                       R2 R1 K6 ["AccessoryMode"]
       24 GETTABLEKS                       R2 R0 K7 ["LimitMethod"]
       26 SETTABLEKS                       R2 R1 K7 ["LimitMethod"]
       28 GETTABLEKS                       R2 R0 K8 ["LimitBounds"]
       30 SETTABLEKS                       R2 R1 K8 ["LimitBounds"]
       32 GETTABLEKS                       R2 R0 K9 ["CustomAccessoryMode"]
       34 SETTABLEKS                       R2 R1 K9 ["CustomAccessoryMode"]
       36 NEWTABLE                         R2 0 8
       38 DUPTABLE                         R3 K13 [{"ruleInstance", "property"}]
       39 SETTABLEKS                       R0 R3 K11 ["ruleInstance"]
       41 LOADK                            R4 K14 ["CustomHairAccessory"]
       42 SETTABLEKS                       R4 R3 K12 ["property"]
       44 DUPTABLE                         R4 K13 [{"ruleInstance", "property"}]
       45 SETTABLEKS                       R0 R4 K11 ["ruleInstance"]
       47 LOADK                            R5 K15 ["CustomHeadAccessory"]
       48 SETTABLEKS                       R5 R4 K12 ["property"]
       50 DUPTABLE                         R5 K13 [{"ruleInstance", "property"}]
       51 SETTABLEKS                       R0 R5 K11 ["ruleInstance"]
       53 LOADK                            R6 K16 ["CustomFaceAccessory"]
       54 SETTABLEKS                       R6 R5 K12 ["property"]
       56 DUPTABLE                         R6 K13 [{"ruleInstance", "property"}]
       57 SETTABLEKS                       R0 R6 K11 ["ruleInstance"]
       59 LOADK                            R7 K17 ["CustomNeckAccessory"]
       60 SETTABLEKS                       R7 R6 K12 ["property"]
       62 DUPTABLE                         R7 K13 [{"ruleInstance", "property"}]
       63 SETTABLEKS                       R0 R7 K11 ["ruleInstance"]
       65 LOADK                            R8 K18 ["CustomShoulderAccessory"]
       66 SETTABLEKS                       R8 R7 K12 ["property"]
       68 DUPTABLE                         R8 K13 [{"ruleInstance", "property"}]
       69 SETTABLEKS                       R0 R8 K11 ["ruleInstance"]
       71 LOADK                            R9 K19 ["CustomFrontAccessory"]
       72 SETTABLEKS                       R9 R8 K12 ["property"]
       74 DUPTABLE                         R9 K13 [{"ruleInstance", "property"}]
       75 SETTABLEKS                       R0 R9 K11 ["ruleInstance"]
       77 LOADK                            R10 K20 ["CustomBackAccessory"]
       78 SETTABLEKS                       R10 R9 K12 ["property"]
       80 DUPTABLE                         R10 K13 [{"ruleInstance", "property"}]
       81 SETTABLEKS                       R0 R10 K11 ["ruleInstance"]
       83 LOADK                            R11 K21 ["CustomWaistAccessory"]
       84 SETTABLEKS                       R11 R10 K12 ["property"]
       86 SETLIST                          R2 R3 8 [1]
       88 MOVE                             R3 R2
       89 LOADNIL                          R4
       90 LOADNIL                          R5
       91 FORGPREP                         R3
       92 GETTABLEKS                       R8 R7 K12 ["property"]
       94 GETTABLEKS                       R10 R7 K11 ["ruleInstance"]
       96 GETTABLEKS                       R12 R7 K12 ["property"]
       98 LOADK                            R13 K22 ["Id"]
       99 CONCAT                           R11 R12 R13
      100 GETTABLEKS                       R13 R7 K12 ["property"]
      102 LOADK                            R14 K23 ["Enabled"]
      103 CONCAT                           R12 R13 R14
      104 DUPTABLE                         R9 K25 [{"AssetId", "Enabled"}]
      105 GETTABLE                         R13 R10 R11
      106 SETTABLEKS                       R13 R9 K24 ["AssetId"]
      108 GETTABLE                         R13 R10 R12
      109 SETTABLEKS                       R13 R9 K23 ["Enabled"]
      111 SETTABLE                         R9 R1 R8
      112 FORGLOOP                         R3 2 ; [-21]
      114 RETURN                           R1 1

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
       26 DUPTABLE                         R3 K10 [{"ruleInstance", "property"}]
       27 SETTABLEKS                       R0 R3 K8 ["ruleInstance"]
       29 LOADK                            R4 K11 ["CustomTShirtAccessory"]
       30 SETTABLEKS                       R4 R3 K9 ["property"]
       32 DUPTABLE                         R4 K10 [{"ruleInstance", "property"}]
       33 SETTABLEKS                       R0 R4 K8 ["ruleInstance"]
       35 LOADK                            R5 K12 ["CustomShirtAccessory"]
       36 SETTABLEKS                       R5 R4 K9 ["property"]
       38 DUPTABLE                         R5 K10 [{"ruleInstance", "property"}]
       39 SETTABLEKS                       R0 R5 K8 ["ruleInstance"]
       41 LOADK                            R6 K13 ["CustomJacketAccessory"]
       42 SETTABLEKS                       R6 R5 K9 ["property"]
       44 DUPTABLE                         R6 K10 [{"ruleInstance", "property"}]
       45 SETTABLEKS                       R0 R6 K8 ["ruleInstance"]
       47 LOADK                            R7 K14 ["CustomSweaterAccessory"]
       48 SETTABLEKS                       R7 R6 K9 ["property"]
       50 DUPTABLE                         R7 K10 [{"ruleInstance", "property"}]
       51 SETTABLEKS                       R0 R7 K8 ["ruleInstance"]
       53 LOADK                            R8 K15 ["CustomPantsAccessory"]
       54 SETTABLEKS                       R8 R7 K9 ["property"]
       56 DUPTABLE                         R8 K10 [{"ruleInstance", "property"}]
       57 SETTABLEKS                       R0 R8 K8 ["ruleInstance"]
       59 LOADK                            R9 K16 ["CustomShortsAccessory"]
       60 SETTABLEKS                       R9 R8 K9 ["property"]
       62 DUPTABLE                         R9 K10 [{"ruleInstance", "property"}]
       63 SETTABLEKS                       R0 R9 K8 ["ruleInstance"]
       65 LOADK                            R10 K17 ["CustomDressSkirtAccessory"]
       66 SETTABLEKS                       R10 R9 K9 ["property"]
       68 DUPTABLE                         R10 K10 [{"ruleInstance", "property"}]
       69 SETTABLEKS                       R0 R10 K8 ["ruleInstance"]
       71 LOADK                            R11 K18 ["CustomLeftShoesAccessory"]
       72 SETTABLEKS                       R11 R10 K9 ["property"]
       74 DUPTABLE                         R11 K10 [{"ruleInstance", "property"}]
       75 SETTABLEKS                       R0 R11 K8 ["ruleInstance"]
       77 LOADK                            R12 K19 ["CustomRightShoesAccessory"]
       78 SETTABLEKS                       R12 R11 K9 ["property"]
       80 DUPTABLE                         R12 K10 [{"ruleInstance", "property"}]
       81 SETTABLEKS                       R0 R12 K8 ["ruleInstance"]
       83 LOADK                            R13 K20 ["CustomClassicShirtsAccessory"]
       84 SETTABLEKS                       R13 R12 K9 ["property"]
       86 DUPTABLE                         R13 K10 [{"ruleInstance", "property"}]
       87 SETTABLEKS                       R0 R13 K8 ["ruleInstance"]
       89 LOADK                            R14 K21 ["CustomClassicTShirtsAccessory"]
       90 SETTABLEKS                       R14 R13 K9 ["property"]
       92 DUPTABLE                         R14 K10 [{"ruleInstance", "property"}]
       93 SETTABLEKS                       R0 R14 K8 ["ruleInstance"]
       95 LOADK                            R15 K22 ["CustomClassicPantsAccessory"]
       96 SETTABLEKS                       R15 R14 K9 ["property"]
       98 SETLIST                          R2 R3 12 [1]
      100 MOVE                             R3 R2
      101 LOADNIL                          R4
      102 LOADNIL                          R5
      103 FORGPREP                         R3
      104 GETTABLEKS                       R8 R7 K9 ["property"]
      106 GETTABLEKS                       R10 R7 K8 ["ruleInstance"]
      108 GETTABLEKS                       R12 R7 K9 ["property"]
      110 LOADK                            R13 K23 ["Id"]
      111 CONCAT                           R11 R12 R13
      112 GETTABLEKS                       R13 R7 K9 ["property"]
      114 LOADK                            R14 K24 ["Enabled"]
      115 CONCAT                           R12 R13 R14
      116 DUPTABLE                         R9 K26 [{"AssetId", "Enabled"}]
      117 GETTABLE                         R13 R10 R11
      118 SETTABLEKS                       R13 R9 K25 ["AssetId"]
      120 GETTABLE                         R13 R10 R12
      121 SETTABLEKS                       R13 R9 K24 ["Enabled"]
      123 SETTABLE                         R9 R1 R8
      124 FORGLOOP                         R3 2 ; [-21]
      126 RETURN                           R1 1

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
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K12 ["avatarCollisionRules"]
       19 CALL                             R2 0 1
       20 FASTCALL2K                       ASSERT R2 K13 ; [+5]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K13 ["AvatarCollisionRules not found"]
       24 GETIMPORT                        R3 K15 [assert]
       26 CALL                             R3 2 0
       27 DUPTABLE                         R1 K20 [{"CollisionMode", "HitAndTouchDetectionMode", "AvatarSettingsLegacyCollisionMode", "SingleColliderSize"}]
       28 GETTABLEKS                       R3 R2 K16 ["CollisionMode"]
       30 SETTABLEKS                       R3 R1 K16 ["CollisionMode"]
       32 GETTABLEKS                       R3 R2 K17 ["HitAndTouchDetectionMode"]
       34 SETTABLEKS                       R3 R1 K17 ["HitAndTouchDetectionMode"]
       36 GETTABLEKS                       R3 R2 K21 ["LegacyCollisionMode"]
       38 SETTABLEKS                       R3 R1 K18 ["AvatarSettingsLegacyCollisionMode"]
       40 GETTABLEKS                       R3 R2 K19 ["SingleColliderSize"]
       42 SETTABLEKS                       R3 R1 K19 ["SingleColliderSize"]
       44 SETTABLEKS                       R1 R0 K2 ["AvatarCollisionRules"]
       46 GETUPVAL                         R1 2
       47 CALL                             R1 0 1
       48 SETTABLEKS                       R1 R0 K3 ["AvatarAbilityRules"]
       50 GETUPVAL                         R1 3
       51 CALL                             R1 0 1
       52 SETTABLEKS                       R1 R0 K4 ["AvatarAnimationRules"]
       54 GETUPVAL                         R1 4
       55 CALL                             R1 0 1
       56 SETTABLEKS                       R1 R0 K5 ["AvatarAccessoryRules"]
       58 GETUPVAL                         R1 5
       59 CALL                             R1 0 1
       60 SETTABLEKS                       R1 R0 K6 ["AvatarClothingRules"]
       62 DUPTABLE                         R1 K23 [{"Gravity"}]
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R2 R2 K22 ["Gravity"]
       66 SETTABLEKS                       R2 R1 K22 ["Gravity"]
       68 SETTABLEKS                       R1 R0 K7 ["OtherProperties"]
       70 RETURN                           R0 1

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
       54 GETTABLEKS                       R6 R6 K18 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       56 CALL                             R5 1 1
       57 DUPCLOSURE                       R6 K19 [PROTO_0]
       58 DUPCLOSURE                       R7 K20 [PROTO_1]
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R8 K21 [PROTO_2]
       61 CAPTURE                          VAL R4
       62 DUPCLOSURE                       R9 K22 [PROTO_3]
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R10 K23 [PROTO_4]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R11 K24 [PROTO_5]
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R12 K25 [PROTO_6]
       70 CAPTURE                          VAL R4
       71 DUPCLOSURE                       R13 K26 [PROTO_7]
       72 CAPTURE                          VAL R4
       73 DUPCLOSURE                       R14 K27 [PROTO_8]
       74 CAPTURE                          VAL R1
       75 DUPCLOSURE                       R15 K28 [PROTO_9]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R1
       83 RETURN                           R15 1
