MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K10 [{[1] = "UnifiedEvent", ["eventContext"] = "AssetManager", ["backends"], ["lastUpdated"], ["description"] = "Asset Manager plugin events", ["throttlingPercentage"] = 10000}]
        4 NEWTABLE                         R2 0 2
        6 LOADK                            R3 K11 ["EventIngest"]
        7 LOADK                            R4 K12 ["Points"]
        8 SETLIST                          R2 R3 2 [1]
       10 SETTABLEKS                       R2 R1 K4 ["backends"]
       12 NEWTABLE                         R2 0 3
       14 LOADN                            R3 2026
       15 LOADN                            R4 7
       16 LOADN                            R5 6
       17 SETLIST                          R2 R3 3 [1]
       19 SETTABLEKS                       R2 R1 K5 ["lastUpdated"]
       21 SETTABLEKS                       R1 R0 K13 ["ASSETMANAGER_UNIFIED_EVENT_CONFIG"]
       23 DUPTABLE                         R1 K15 [{["backends"], ["lastUpdated"], ["description"] = "AssetManager event counters"}]
       24 NEWTABLE                         R2 0 1
       26 GETIMPORT                        R3 K19 [Enum.TelemetryBackend.Counter]
       28 SETLIST                          R2 R3 1 [1]
       30 SETTABLEKS                       R2 R1 K4 ["backends"]
       32 NEWTABLE                         R2 0 3
       34 LOADN                            R3 2026
       35 LOADN                            R4 7
       36 LOADN                            R5 30
       37 SETLIST                          R2 R3 3 [1]
       39 SETTABLEKS                       R2 R1 K5 ["lastUpdated"]
       41 SETTABLEKS                       R1 R0 K20 ["ASSETMANAGER_COUNTER_CONFIG"]
       43 DUPTABLE                         R1 K22 [{["backends"], ["lastUpdated"], ["description"] = "AssetManager benchmarking"}]
       44 NEWTABLE                         R2 0 1
       46 GETIMPORT                        R3 K24 [Enum.TelemetryBackend.Stat]
       48 SETLIST                          R2 R3 1 [1]
       50 SETTABLEKS                       R2 R1 K4 ["backends"]
       52 NEWTABLE                         R2 0 3
       54 LOADN                            R3 2026
       55 LOADN                            R4 8
       56 LOADN                            R5 5
       57 SETLIST                          R2 R3 3 [1]
       59 SETTABLEKS                       R2 R1 K5 ["lastUpdated"]
       61 SETTABLEKS                       R1 R0 K25 ["ASSETMANAGER_STAT_CONFIG"]
       63 LOADK                            R1 K26 ["AssetManager_"]
       64 SETTABLEKS                       R1 R0 K27 ["ASSETMANAGER_PREFIX"]
       66 RETURN                           R0 1
