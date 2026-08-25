PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+42]
        9 DUPTABLE                         R0 K14 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       10 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       12 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       14 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       16 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       18 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       20 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       22 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       24 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       26 GETUPVAL                         R1 1
       27 CALL                             R1 0 1
       28 JUMPIFNOT                        R1 ; [+6]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K28 ["defaultAbilitiesEnableCrouchingSetting"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K29 ["defaultAbilitiesEnableSprintingSetting"]
       35 GETUPVAL                         R1 2
       36 CALL                             R1 0 1
       37 JUMPIFNOT                        R1 ; [+3]
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K30 ["defaultAbilitiesEnableTurningSetting"]
       41 GETUPVAL                         R1 0
       42 CALL                             R1 0 1
       43 JUMPIFNOT                        R1 ; [+6]
       44 LOADB                            R1 1
       45 SETTABLEKS                       R1 R0 K31 ["defaultAbilitiesEnableHoldingSetting"]
       47 LOADB                            R1 1
       48 SETTABLEKS                       R1 R0 K32 ["defaultAbilitiesEnableReachingSetting"]
       50 RETURN                           R0 1
       51 DUPTABLE                         R0 K33 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       52 GETIMPORT                        R1 K18 [Enum.AvatarSettingsCollisionMode.Default]
       54 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       56 GETIMPORT                        R1 K21 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       58 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       60 GETIMPORT                        R1 K24 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       62 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       64 GETIMPORT                        R1 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       66 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       68 RETURN                           R0 1

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
       26 GETTABLEKS                       R3 R3 K12 ["getFFlagAvatarSettingsCrouchSprintStrafe"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Flags"]
       35 GETTABLEKS                       R4 R4 K13 ["getFFlagAvatarSettingsReachHold"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Flags"]
       44 GETTABLEKS                       R5 R5 K14 ["getFFlagAvatarSettingsTurning"]
       46 CALL                             R4 1 1
       47 NEWTABLE                         R5 1 0
       49 DUPCLOSURE                       R6 K15 [PROTO_0]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R6 R5 K16 ["primaryPreset"]
       55 RETURN                           R5 1
