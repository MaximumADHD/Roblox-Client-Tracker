PROTO_0:
        0 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        1 GETIMPORT                        R1 K16 [Enum.AvatarSettingsCollisionMode.Default]
        3 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        5 GETIMPORT                        R1 K19 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
        7 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
        9 GETIMPORT                        R1 K22 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       11 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       13 LOADK                            R1 K23 [{0, 0, 0}]
       14 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       16 GETIMPORT                        R1 K26 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       18 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       20 LOADB                            R1 1
       21 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableRunningSetting"]
       23 LOADB                            R1 1
       24 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableJumpingSetting"]
       26 LOADB                            R1 1
       27 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableSittingSetting"]
       29 LOADB                            R1 1
       30 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableFallingDownSetting"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableGettingUpSetting"]
       35 LOADB                            R1 1
       36 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableClimbingSetting"]
       38 LOADB                            R1 1
       39 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
       41 RETURN                           R0 1

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
       20 NEWTABLE                         R2 1 0
       22 DUPCLOSURE                       R3 K11 [PROTO_0]
       23 SETTABLEKS                       R3 R2 K12 ["primaryPreset"]
       25 RETURN                           R2 1
