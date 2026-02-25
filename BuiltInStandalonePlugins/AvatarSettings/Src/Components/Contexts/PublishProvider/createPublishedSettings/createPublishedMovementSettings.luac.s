PROTO_0:
        0 DUPTABLE                         R0 K4 [{"collisionSetting", "collisionHitAndTouchDetectionSetting", "collisionMethodSetting", "collisionSizeSetting"}]
        1 GETIMPORT                        R1 K8 [Enum.AvatarSettingsCollisionMode.Default]
        3 SETTABLEKS                       R1 R0 K0 ["collisionSetting"]
        5 GETIMPORT                        R1 K11 [Enum.AvatarSettingsHitAndTouchDetectionMode.UseCollider]
        7 SETTABLEKS                       R1 R0 K1 ["collisionHitAndTouchDetectionSetting"]
        9 GETIMPORT                        R1 K14 [Enum.AvatarSettingsLegacyCollisionMode.InnerBoxColliders]
       11 SETTABLEKS                       R1 R0 K2 ["collisionMethodSetting"]
       13 LOADK                            R1 K15 [{0, 0, 0}]
       14 SETTABLEKS                       R1 R0 K3 ["collisionSizeSetting"]
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R4 K9 ["PublishProvider"]
       17 GETTABLEKS                       R2 R3 K10 ["PublishedSettingsTypes"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 1 0
       22 DUPCLOSURE                       R3 K11 [PROTO_0]
       23 SETTABLEKS                       R3 R2 K12 ["primaryPreset"]
       25 RETURN                           R2 1
