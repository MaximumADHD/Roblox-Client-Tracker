PROTO_0:
        0 DUPTABLE                         R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
        4 GETIMPORT                        R2 K9 [Enum.AvatarSettingsCollisionMode.Default]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       12 GETIMPORT                        R2 K12 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       20 GETIMPORT                        R2 K15 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       28 LOADK                            R2 K16 [{0, 0, 0}]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       32 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
        4 GETIMPORT                        R2 K9 [Enum.AvatarSettingsCollisionMode.SingleCollider]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       12 GETIMPORT                        R2 K12 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseParts]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       20 GETIMPORT                        R2 K15 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K5 ["mockUseSetting"]
       28 LOADK                            R2 K16 [{2, 2, 2}]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       32 RETURN                           R0 1

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
