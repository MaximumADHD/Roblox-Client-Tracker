PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+9]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+6]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R0 4
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+54]
       15 DUPTABLE                         R0 K14 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       16 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       18 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       20 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       22 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       24 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       26 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       28 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       30 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       32 GETUPVAL                         R1 3
       33 CALL                             R1 0 1
       34 JUMPIFNOT                        R1 ; [+3]
       35 LOADB                            R1 1
       36 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
       38 GETUPVAL                         R1 4
       39 CALL                             R1 0 1
       40 JUMPIFNOT                        R1 ; [+3]
       41 LOADK                            R1 K4 [{0, 0, 0}]
       42 SETTABLEKS                       R1 R0 K29 ["collisionHitboxSizeSetting"]
       44 GETUPVAL                         R1 1
       45 CALL                             R1 0 1
       46 JUMPIFNOT                        R1 ; [+6]
       47 LOADB                            R1 1
       48 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableCrouchingSetting"]
       50 LOADB                            R1 1
       51 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableSprintingSetting"]
       53 GETUPVAL                         R1 2
       54 CALL                             R1 0 1
       55 JUMPIFNOT                        R1 ; [+3]
       56 LOADB                            R1 1
       57 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableTurningSetting"]
       59 GETUPVAL                         R1 0
       60 CALL                             R1 0 1
       61 JUMPIFNOT                        R1 ; [+6]
       62 LOADB                            R1 1
       63 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableHoldingSetting"]
       65 LOADB                            R1 1
       66 SETTABLEKS                       R1 R0 K34 ["defaultAbilitiesEnableReachingSetting"]
       68 RETURN                           R0 1
       69 DUPTABLE                         R0 K35 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       70 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       72 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       74 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       76 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       78 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       80 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       82 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       84 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       86 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["PublishProvider"]
       17 GETTABLEKS                       R2 R2 K10 ["PublishedSettingsTypes"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K11 ["Flags"]
       26 GETTABLEKS                       R3 R3 K12 ["getEngineFeatureAvatarSettingsBodyPartsCollidableOnDeath"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Flags"]
       35 GETTABLEKS                       R4 R4 K13 ["getEngineFeatureAvatarSettingsHitbox"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Flags"]
       44 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K11 ["Flags"]
       53 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsReachHold"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Src"]
       60 GETTABLEKS                       R7 R7 K11 ["Flags"]
       62 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsTurning"]
       64 CALL                             R6 1 1
       65 NEWTABLE                         R7 1 0
       67 DUPCLOSURE                       R8 K17 [PROTO_0]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R8 R7 K18 ["primaryPreset"]
       75 RETURN                           R7 1
