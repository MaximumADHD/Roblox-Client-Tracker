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
       43 LOADK                            R1 K21 ["AssetManager_"]
       44 SETTABLEKS                       R1 R0 K22 ["ASSETMANAGER_PREFIX"]
       46 RETURN                           R0 1
