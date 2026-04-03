PROTO_0:
        0 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
        4 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.Default]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       12 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       20 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       28 LOADK                            R2 K24 [{0, 0, 0}]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       35 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LegacyHumanoid]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       43 LOADB                            R2 1
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableRunningSetting"]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       50 LOADB                            R2 1
       51 CALL                             R1 1 1
       52 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableJumpingSetting"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       57 LOADB                            R2 1
       58 CALL                             R1 1 1
       59 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableSittingSetting"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       64 LOADB                            R2 1
       65 CALL                             R1 1 1
       66 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableFallingDownSetting"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       71 LOADB                            R2 1
       72 CALL                             R1 1 1
       73 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableGettingUpSetting"]
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       78 LOADB                            R2 1
       79 CALL                             R1 1 1
       80 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableClimbingSetting"]
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       85 LOADB                            R2 1
       86 CALL                             R1 1 1
       87 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
       89 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K12 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting", "characterControllerModeSetting", "defaultAbilitiesEnableRunningSetting", "defaultAbilitiesEnableJumpingSetting", "defaultAbilitiesEnableSittingSetting", "defaultAbilitiesEnableFallingDownSetting", "defaultAbilitiesEnableGettingUpSetting", "defaultAbilitiesEnableClimbingSetting", "defaultAbilitiesEnableSwimmingSetting"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
        4 GETIMPORT                        R2 K17 [Enum.AvatarSettingsCollisionMode.SingleCollider]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       12 GETIMPORT                        R2 K20 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       20 GETIMPORT                        R2 K23 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       28 LOADK                            R2 K24 [{2, 2, 2}]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       35 GETIMPORT                        R2 K27 [Enum.AvatarSettingsCharacterControllerMode.LuaCharacterController]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K4 ["characterControllerModeSetting"]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       43 LOADB                            R2 0
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K5 ["defaultAbilitiesEnableRunningSetting"]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       50 LOADB                            R2 0
       51 CALL                             R1 1 1
       52 SETTABLEKS                       R1 R0 K6 ["defaultAbilitiesEnableJumpingSetting"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       57 LOADB                            R2 0
       58 CALL                             R1 1 1
       59 SETTABLEKS                       R1 R0 K7 ["defaultAbilitiesEnableSittingSetting"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       64 LOADB                            R2 0
       65 CALL                             R1 1 1
       66 SETTABLEKS                       R1 R0 K8 ["defaultAbilitiesEnableFallingDownSetting"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       71 LOADB                            R2 0
       72 CALL                             R1 1 1
       73 SETTABLEKS                       R1 R0 K9 ["defaultAbilitiesEnableGettingUpSetting"]
       75 GETUPVAL                         R2 0
       76 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       78 LOADB                            R2 0
       79 CALL                             R1 1 1
       80 SETTABLEKS                       R1 R0 K10 ["defaultAbilitiesEnableClimbingSetting"]
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R1 R2 K13 ["mockUseSetting"]
       85 LOADB                            R2 0
       86 CALL                             R1 1 1
       87 SETTABLEKS                       R1 R0 K11 ["defaultAbilitiesEnableSwimmingSetting"]
       89 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["tests"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETTABLEKS                       R3 R4 K10 ["mockUseSetting"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 2 0
       29 DUPCLOSURE                       R4 K11 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K12 ["primaryPreset"]
       33 DUPCLOSURE                       R4 K13 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K14 ["secondaryPreset"]
       37 RETURN                           R3 1
