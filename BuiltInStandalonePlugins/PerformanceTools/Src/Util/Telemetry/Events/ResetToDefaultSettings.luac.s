MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TelemetryProtocol"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K13 [{["description"] = "Telemetry for resetting settings to the defaults in the Scene Budget Thermometer", ["links"] = "https://roblox.atlassian.net/wiki/spaces/PAO/pages/3324281060/Performance+Tooling?atlOrigin=eyJpIjoiNzMyNTY2ODU0ZTdjNDIwMDkzYWQ2MWFhYTQ3NmY1YzEiLCJwIjoiYyJ9", ["lastUpdated"]}]
       15 NEWTABLE                         R3 0 3
       17 LOADN                            R4 14
       18 LOADN                            R5 4
       19 LOADN                            R6 21
       20 SETLIST                          R3 R4 3 [1]
       22 SETTABLEKS                       R3 R2 K12 ["lastUpdated"]
       24 NEWTABLE                         R3 2 0
       26 DUPTABLE                         R4 K16 [{"config", "data"}]
       27 DUPTABLE                         R5 K20 [{["eventName"] = "StudioPerfToolsResetToDefaultSettings", ["backends"]}]
       28 NEWTABLE                         R6 0 1
       30 LOADK                            R7 K21 ["RobloxTelemetryCounter"]
       31 SETLIST                          R6 R7 1 [1]
       33 SETTABLEKS                       R6 R5 K19 ["backends"]
       35 SETTABLEKS                       R5 R4 K14 ["config"]
       37 SETTABLEKS                       R2 R4 K15 ["data"]
       39 SETTABLEKS                       R4 R3 K21 ["RobloxTelemetryCounter"]
       41 DUPTABLE                         R4 K23 [{"config", "data", "standardizedFields"}]
       42 DUPTABLE                         R5 K20 [{["eventName"] = "StudioPerfToolsResetToDefaultSettings", ["backends"]}]
       43 NEWTABLE                         R6 0 1
       45 LOADK                            R7 K24 ["EventIngest"]
       46 SETLIST                          R6 R7 1 [1]
       48 SETTABLEKS                       R6 R5 K19 ["backends"]
       50 SETTABLEKS                       R5 R4 K14 ["config"]
       52 SETTABLEKS                       R2 R4 K15 ["data"]
       54 GETTABLEKS                       R5 R1 K25 ["StandardizedFields"]
       56 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
       58 SETTABLEKS                       R4 R3 K26 ["RobloxTelemetry"]
       60 RETURN                           R3 1
