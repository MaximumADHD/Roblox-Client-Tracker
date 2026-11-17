PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K5 [{[1] = "StudioGameSettingsEligibleForRewardedOnDemandAdsHttpError", ["backends"], ["description"], ["lastUpdated"]}]
        2 NEWTABLE                         R6 0 1
        4 LOADK                            R7 K6 ["RobloxTelemetryCounter"]
        5 SETLIST                          R6 R7 1 [1]
        7 SETTABLEKS                       R6 R5 K2 ["backends"]
        9 SETTABLEKS                       R2 R5 K3 ["description"]
       11 NEWTABLE                         R6 0 3
       13 LOADN                            R7 2025
       14 LOADN                            R8 4
       15 LOADN                            R9 28
       16 SETLIST                          R6 R7 3 [1]
       18 SETTABLEKS                       R6 R5 K4 ["lastUpdated"]
       20 DUPTABLE                         R6 K8 [{"customFields"}]
       21 DUPTABLE                         R7 K11 [{"url", "statusCode"}]
       22 SETTABLEKS                       R0 R7 K9 ["url"]
       24 GETIMPORT                        R8 K14 [string.format]
       26 LOADK                            R9 K15 ["%.0f"]
       27 MOVE                             R10 R1
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K10 ["statusCode"]
       31 SETTABLEKS                       R7 R6 K7 ["customFields"]
       33 NAMECALL                         R3 R3 K16 ["LogCounter"]
       35 CALL                             R3 3 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
