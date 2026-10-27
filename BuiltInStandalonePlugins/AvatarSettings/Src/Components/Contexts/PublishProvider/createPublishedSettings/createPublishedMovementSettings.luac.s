PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+3]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+48]
       12 DUPTABLE                         R0 K14 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       13 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       15 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       17 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       19 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       21 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       23 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       25 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       27 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       29 GETUPVAL                         R1 3
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+3]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K28 ["collisionBodyPartsCollidableOnDeathSetting"]
       35 GETUPVAL                         R1 1
       36 CALL                             R1 0 1
       37 JUMPIFNOT                        R1 ; [+6]
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableCrouchingSetting"]
       41 LOADB                            R1 1
       42 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableSprintingSetting"]
       44 GETUPVAL                         R1 2
       45 CALL                             R1 0 1
       46 JUMPIFNOT                        R1 ; [+3]
       47 LOADB                            R1 1
       48 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableTurningSetting"]
       50 GETUPVAL                         R1 0
       51 CALL                             R1 0 1
       52 JUMPIFNOT                        R1 ; [+6]
       53 LOADB                            R1 1
       54 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableHoldingSetting"]
       56 LOADB                            R1 1
       57 SETTABLEKS                       R1 R0 K33 ["defaultAbilitiesEnableReachingSetting"]
       59 RETURN                           R0 1
       60 DUPTABLE                         R0 K34 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       61 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       63 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       65 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       67 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       69 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       71 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       73 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       75 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       77 RETURN                           R0 1

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
       35 GETTABLEKS                       R4 R4 K13 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Flags"]
       44 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsReachHold"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K11 ["Flags"]
       53 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarSettingsTurning"]
       55 CALL                             R5 1 1
       56 NEWTABLE                         R6 1 0
       58 DUPCLOSURE                       R7 K16 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R7 R6 K17 ["primaryPreset"]
       65 RETURN                           R6 1
