PROTO_0:
        0 DUPTABLE                         R1 K9 [{[1] = "TerrainEditor_MaterialProperties", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-09-28", ["description"] = "Material identity used by a Terrain Editor operation."}]
        1 NEWTABLE                         R2 0 1
        3 MOVE                             R3 R0
        4 SETLIST                          R2 R3 1 [1]
        6 SETTABLEKS                       R2 R1 K2 ["backends"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 GETIMPORT                        R3 K11 [table.freeze]
       17 DUPTABLE                         R4 K14 [{"RobloxTelemetryCounter", "RobloxTelemetry"}]
       18 GETIMPORT                        R5 K11 [table.freeze]
       20 DUPTABLE                         R6 K24 [{["eventName"] = "TerrainEditor_MaterialProperties", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-09-28", ["description"] = "Material identity used by a Terrain Editor operation."}]
       21 NEWTABLE                         R7 0 1
       23 LOADK                            R8 K12 ["RobloxTelemetryCounter"]
       24 SETLIST                          R7 R8 1 [1]
       26 SETTABLEKS                       R7 R6 K17 ["backends"]
       28 CALL                             R5 1 1
       29 SETTABLEKS                       R5 R4 K12 ["RobloxTelemetryCounter"]
       31 GETIMPORT                        R5 K11 [table.freeze]
       33 DUPTABLE                         R6 K24 [{["eventName"] = "TerrainEditor_MaterialProperties", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-09-28", ["description"] = "Material identity used by a Terrain Editor operation."}]
       34 NEWTABLE                         R7 0 1
       36 LOADK                            R8 K25 ["EventIngest"]
       37 SETLIST                          R7 R8 1 [1]
       39 SETTABLEKS                       R7 R6 K17 ["backends"]
       41 CALL                             R5 1 1
       42 SETTABLEKS                       R5 R4 K13 ["RobloxTelemetry"]
       44 CALL                             R3 1 -1
       45 RETURN                           R3 -1
