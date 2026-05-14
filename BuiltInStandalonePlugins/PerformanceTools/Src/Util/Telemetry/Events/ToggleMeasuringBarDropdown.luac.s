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
       14 DUPTABLE                         R2 K11 [{"description", "links", "lastUpdated"}]
       15 LOADK                            R3 K12 ["Telemetry for a user toggling child measurement visibility in the Scene Budget Thermometer"]
       16 SETTABLEKS                       R3 R2 K8 ["description"]
       18 LOADK                            R3 K13 ["https://roblox.atlassian.net/wiki/spaces/PAO/pages/3324281060/Performance+Tooling?atlOrigin=eyJpIjoiNzMyNTY2ODU0ZTdjNDIwMDkzYWQ2MWFhYTQ3NmY1YzEiLCJwIjoiYyJ9"]
       19 SETTABLEKS                       R3 R2 K9 ["links"]
       21 NEWTABLE                         R3 0 3
       23 LOADN                            R4 14
       24 LOADN                            R5 4
       25 LOADN                            R6 21
       26 SETLIST                          R3 R4 3 [1]
       28 SETTABLEKS                       R3 R2 K10 ["lastUpdated"]
       30 NEWTABLE                         R3 2 0
       32 DUPTABLE                         R4 K16 [{"config", "data"}]
       33 DUPTABLE                         R5 K19 [{"eventName", "backends"}]
       34 LOADK                            R6 K20 ["StudioPerfToolsToggleMeasuringBarDropdown"]
       35 SETTABLEKS                       R6 R5 K17 ["eventName"]
       37 NEWTABLE                         R6 0 1
       39 LOADK                            R7 K21 ["RobloxTelemetryCounter"]
       40 SETLIST                          R6 R7 1 [1]
       42 SETTABLEKS                       R6 R5 K18 ["backends"]
       44 SETTABLEKS                       R5 R4 K14 ["config"]
       46 SETTABLEKS                       R2 R4 K15 ["data"]
       48 SETTABLEKS                       R4 R3 K21 ["RobloxTelemetryCounter"]
       50 DUPTABLE                         R4 K23 [{"config", "data", "standardizedFields"}]
       51 DUPTABLE                         R5 K19 [{"eventName", "backends"}]
       52 LOADK                            R6 K20 ["StudioPerfToolsToggleMeasuringBarDropdown"]
       53 SETTABLEKS                       R6 R5 K17 ["eventName"]
       55 NEWTABLE                         R6 0 1
       57 LOADK                            R7 K24 ["EventIngest"]
       58 SETLIST                          R6 R7 1 [1]
       60 SETTABLEKS                       R6 R5 K18 ["backends"]
       62 SETTABLEKS                       R5 R4 K14 ["config"]
       64 SETTABLEKS                       R2 R4 K15 ["data"]
       66 GETTABLEKS                       R5 R1 K25 ["StandardizedFields"]
       68 SETTABLEKS                       R5 R4 K22 ["standardizedFields"]
       70 SETTABLEKS                       R4 R3 K26 ["RobloxTelemetry"]
       72 RETURN                           R3 1
