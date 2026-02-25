PROTO_0:
        0 DUPTABLE                         R0 K12 [{"animationPacksSetting", "animationClipsSetting", "animationClipsRunSetting", "animationClipsWalkSetting", "animationClipsFallSetting", "animationClipsJumpSetting", "animationClipsIdleSetting", "animationClipsIdleAlt1Setting", "animationClipsIdleAlt2Setting", "animationClipsSwimSetting", "animationClipsSwimIdleSetting", "animationClipsClimbSetting"}]
        1 GETIMPORT                        R1 K16 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
        3 SETTABLEKS                       R1 R0 K0 ["animationPacksSetting"]
        5 GETIMPORT                        R1 K18 [Enum.AvatarSettingsAnimationClipsMode.PlayerChoice]
        7 SETTABLEKS                       R1 R0 K1 ["animationClipsSetting"]
        9 GETUPVAL                         R1 0
       10 LOADB                            R2 0
       11 LOADN                            R3 0
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["animationClipsRunSetting"]
       15 GETUPVAL                         R1 0
       16 LOADB                            R2 0
       17 LOADN                            R3 0
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K3 ["animationClipsWalkSetting"]
       21 GETUPVAL                         R1 0
       22 LOADB                            R2 0
       23 LOADN                            R3 0
       24 CALL                             R1 2 1
       25 SETTABLEKS                       R1 R0 K4 ["animationClipsFallSetting"]
       27 GETUPVAL                         R1 0
       28 LOADB                            R2 0
       29 LOADN                            R3 0
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K5 ["animationClipsJumpSetting"]
       33 GETUPVAL                         R1 0
       34 LOADB                            R2 0
       35 LOADN                            R3 0
       36 CALL                             R1 2 1
       37 SETTABLEKS                       R1 R0 K6 ["animationClipsIdleSetting"]
       39 GETUPVAL                         R1 0
       40 LOADB                            R2 0
       41 LOADN                            R3 0
       42 CALL                             R1 2 1
       43 SETTABLEKS                       R1 R0 K7 ["animationClipsIdleAlt1Setting"]
       45 GETUPVAL                         R1 0
       46 LOADB                            R2 0
       47 LOADN                            R3 0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K8 ["animationClipsIdleAlt2Setting"]
       51 GETUPVAL                         R1 0
       52 LOADB                            R2 0
       53 LOADN                            R3 0
       54 CALL                             R1 2 1
       55 SETTABLEKS                       R1 R0 K9 ["animationClipsSwimSetting"]
       57 GETUPVAL                         R1 0
       58 LOADB                            R2 0
       59 LOADN                            R3 0
       60 CALL                             R1 2 1
       61 SETTABLEKS                       R1 R0 K10 ["animationClipsSwimIdleSetting"]
       63 GETUPVAL                         R1 0
       64 LOADB                            R2 0
       65 LOADN                            R3 0
       66 CALL                             R1 2 1
       67 SETTABLEKS                       R1 R0 K11 ["animationClipsClimbSetting"]
       69 RETURN                           R0 1

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
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R8 R0 K6 ["Src"]
       24 GETTABLEKS                       R7 R8 K7 ["Components"]
       26 GETTABLEKS                       R6 R7 K8 ["Contexts"]
       28 GETTABLEKS                       R5 R6 K9 ["PublishProvider"]
       30 GETTABLEKS                       R4 R5 K11 ["createPublishedSettings"]
       32 GETTABLEKS                       R3 R4 K12 ["createAssetIdPublishedSetting"]
       34 CALL                             R2 1 1
       35 NEWTABLE                         R3 1 0
       37 DUPCLOSURE                       R4 K13 [PROTO_0]
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K14 ["primaryPreset"]
       41 RETURN                           R3 1
