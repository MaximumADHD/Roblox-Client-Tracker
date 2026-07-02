MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntImportQueueEventDefaultThrottle"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K18 [{["eventName"] = "ImportQueueEvent", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "The base event configuration for all RobloxTelemetryEvents sent from the Import Queue plugin", ["links"] = ""}]
       17 NEWTABLE                         R3 0 2
       19 LOADK                            R4 K19 ["EventIngest"]
       20 LOADK                            R5 K20 ["Points"]
       21 SETLIST                          R3 R4 2 [1]
       23 SETTABLEKS                       R3 R2 K11 ["backends"]
       25 MOVE                             R3 R1
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K12 ["throttlingPercentage"]
       29 NEWTABLE                         R3 0 3
       31 LOADN                            R4 26
       32 LOADN                            R5 3
       33 LOADN                            R6 9
       34 SETLIST                          R3 R4 3 [1]
       36 SETTABLEKS                       R3 R2 K13 ["lastUpdated"]
       38 RETURN                           R2 1
