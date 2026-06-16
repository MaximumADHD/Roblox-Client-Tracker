PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+57]
        3 DUPTABLE                         R0 K17 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableCrouchingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableHoldingSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableReachingSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableSprintingSetting", "defaultAbilitiesEnableStrafingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        4 GETIMPORT                        R1 K21 [Enum.AvatarSettingsCollisionMode.Default]
        6 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        8 GETIMPORT                        R1 K24 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       10 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       12 GETIMPORT                        R1 K27 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       14 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       16 LOADK                            R1 K28 [{0, 0, 0}]
       17 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       19 GETIMPORT                        R1 K31 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       21 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       23 LOADB                            R1 1
       24 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       26 LOADB                            R1 1
       27 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableCrouchingSetting"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
       35 LOADB                            R1 1
       36 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableHoldingSetting"]
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
       41 LOADB                            R1 1
       42 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableReachingSetting"]
       44 LOADB                            R1 1
       45 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
       47 LOADB                            R1 1
       48 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
       50 LOADB                            R1 1
       51 SETTABLEKS                       R1 R0 K14 ["defaultAbilitiesEnableSprintingSetting"]
       53 LOADB                            R1 1
       54 SETTABLEKS                       R1 R0 K15 ["defaultAbilitiesEnableStrafingSetting"]
       56 LOADB                            R1 1
       57 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
       59 RETURN                           R0 1
       60 DUPTABLE                         R0 K32 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
       61 GETIMPORT                        R1 K21 [Enum.AvatarSettingsCollisionMode.Default]
       63 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
       65 GETIMPORT                        R1 K24 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       67 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       69 GETIMPORT                        R1 K27 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       71 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       73 LOADK                            R1 K28 [{0, 0, 0}]
       74 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       76 GETIMPORT                        R1 K31 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       78 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       80 LOADB                            R1 1
       81 SETTABLEKS                       R1 R0 K12 ["defaultAbilitiesEnableRunningSetting"]
       83 LOADB                            R1 1
       84 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableJumpingSetting"]
       86 LOADB                            R1 1
       87 SETTABLEKS                       R1 R0 K13 ["defaultAbilitiesEnableSittingSetting"]
       89 LOADB                            R1 1
       90 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableFallingDownSetting"]
       92 LOADB                            R1 1
       93 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableGettingUpSetting"]
       95 LOADB                            R1 1
       96 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableClimbingSetting"]
       98 LOADB                            R1 1
       99 SETTABLEKS                       R1 R0 K16 ["defaultAbilitiesEnableSwimmingSetting"]
      101 RETURN                           R0 1

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
