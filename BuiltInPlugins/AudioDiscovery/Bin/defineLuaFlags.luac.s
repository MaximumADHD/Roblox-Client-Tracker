PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AudioDiscoveryMigrateToActions"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["RegisterActionsPluginLoader"]
       10 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RetireAudioDiscoveryPlugin"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["StudioAudioDiscoveryMaxAssetIdsPerRequest"]
       11 LOADN                            R3 30
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K6 ["AudioDiscoveryMigrateToRoact17"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K7 ["StudioAudioDiscoveryPerRequestCooldown"]
       25 LOADN                            R3 60
       26 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K8 ["StudioAudioDiscoveryCooldownAfterHttp429"]
       32 LOADN                            R3 120
       33 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K9 ["StudioAudioDiscoveryMaxRecentRequests"]
       39 LOADN                            R3 20
       40 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K10 ["SoundEffectMaxDuration"]
       46 LOADN                            R3 6
       47 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K11 ["StudioAudioDiscoveryOpenAnalyticThrottle"]
       53 LOADN                            R3 16
       54 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       56 CALL                             R0 3 0
       57 GETIMPORT                        R0 K1 [game]
       59 LOADK                            R2 K12 ["StudioAudioDiscoverySelectAnalyticsThrottle"]
       60 LOADN                            R3 16
       61 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       63 CALL                             R0 3 0
       64 GETIMPORT                        R0 K1 [game]
       66 LOADK                            R2 K13 ["StudioAudioDiscoveryBreakdownAnalyticsThrottle"]
       67 LOADN                            R3 16
       68 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       70 CALL                             R0 3 0
       71 GETIMPORT                        R0 K1 [game]
       73 LOADK                            R2 K14 ["StudioAudioDiscoveryPermissionCheckAnalyticsThrottle"]
       74 LOADN                            R3 232
       75 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       77 CALL                             R0 3 0
       78 GETIMPORT                        R0 K1 [game]
       80 LOADK                            R2 K15 ["DEBUG_StudioAudioDiscoveryPermissionCheckErrors"]
       81 LOADB                            R3 0
       82 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       84 CALL                             R0 3 0
       85 GETIMPORT                        R0 K1 [game]
       87 LOADK                            R2 K16 ["AudioDiscoveryMigrateToActions"]
       88 LOADB                            R3 0
       89 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       91 CALL                             R0 3 0
       92 DUPTABLE                         R0 K18 [{"shouldMigrateToActions"}]
       93 DUPCLOSURE                       R1 K19 [PROTO_0]
       94 SETTABLEKS                       R1 R0 K17 ["shouldMigrateToActions"]
       96 RETURN                           R0 1
