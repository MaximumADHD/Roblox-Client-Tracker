PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+18]
        3 DUPTABLE                         R0 K19 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableCrouchingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableHoldingSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableReachingSetting"] = True, ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableSprintingSetting"] = True, ["defaultAbilitiesEnableStrafingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
        4 GETIMPORT                        R1 K23 [Enum.AvatarSettingsCollisionMode.Default]
        6 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        8 GETIMPORT                        R1 K26 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       10 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       12 GETIMPORT                        R1 K29 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       14 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       16 GETIMPORT                        R1 K32 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       18 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       20 RETURN                           R0 1
       21 DUPTABLE                         R0 K33 [{[1], ["collisionHitAndTouchDetectionSetting"], ["collisionMethodSetting"], ["collisionSizeSetting"] = {0, 0, 0}, ["characterControllerModeSetting"], ["defaultAbilitiesEnableRunningSetting"] = True, ["defaultAbilitiesEnableJumpingSetting"] = True, ["defaultAbilitiesEnableSittingSetting"] = True, ["defaultAbilitiesEnableFallingDownSetting"] = True, ["defaultAbilitiesEnableGettingUpSetting"] = True, ["defaultAbilitiesEnableClimbingSetting"] = True, ["defaultAbilitiesEnableSwimmingSetting"] = True}]
       22 GETIMPORT                        R1 K23 [Enum.AvatarSettingsCollisionMode.Default]
       24 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       26 GETIMPORT                        R1 K26 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       28 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       30 GETIMPORT                        R1 K29 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       32 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       34 GETIMPORT                        R1 K32 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       36 SETTABLEKS                       R1 R0 K5 ["characterControllerModeSetting"]
       38 RETURN                           R0 1

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
       29 NEWTABLE                         R3 1 0
       31 DUPCLOSURE                       R4 K13 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K14 ["primaryPreset"]
       35 RETURN                           R3 1
