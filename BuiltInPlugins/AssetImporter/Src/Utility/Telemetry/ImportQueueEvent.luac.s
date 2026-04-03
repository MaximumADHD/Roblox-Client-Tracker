MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntImportQueueEventDefaultThrottle"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       17 LOADK                            R3 K16 ["ImportQueueEvent"]
       18 SETTABLEKS                       R3 R2 K9 ["eventName"]
       20 NEWTABLE                         R3 0 2
       22 LOADK                            R4 K17 ["EventIngest"]
       23 LOADK                            R5 K18 ["Points"]
       24 SETLIST                          R3 R4 2 [1]
       26 SETTABLEKS                       R3 R2 K10 ["backends"]
       28 MOVE                             R3 R1
       29 CALL                             R3 0 1
       30 SETTABLEKS                       R3 R2 K11 ["throttlingPercentage"]
       32 NEWTABLE                         R3 0 3
       34 LOADN                            R4 26
       35 LOADN                            R5 3
       36 LOADN                            R6 9
       37 SETLIST                          R3 R4 3 [1]
       39 SETTABLEKS                       R3 R2 K12 ["lastUpdated"]
       41 LOADK                            R3 K19 ["The base event configuration for all RobloxTelemetryEvents sent from the Import Queue plugin"]
       42 SETTABLEKS                       R3 R2 K13 ["description"]
       44 LOADK                            R3 K20 [""]
       45 SETTABLEKS                       R3 R2 K14 ["links"]
       47 RETURN                           R2 1
