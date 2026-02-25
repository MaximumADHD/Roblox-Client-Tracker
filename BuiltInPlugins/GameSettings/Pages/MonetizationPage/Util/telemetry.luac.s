PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K4 [{"eventName", "backends", "description", "lastUpdated"}]
        2 LOADK                            R6 K5 ["StudioGameSettingsEligibleForRewardedOnDemandAdsHttpError"]
        3 SETTABLEKS                       R6 R5 K0 ["eventName"]
        5 NEWTABLE                         R6 0 1
        7 LOADK                            R7 K6 ["RobloxTelemetryCounter"]
        8 SETLIST                          R6 R7 1 [1]
       10 SETTABLEKS                       R6 R5 K1 ["backends"]
       12 SETTABLEKS                       R2 R5 K2 ["description"]
       14 NEWTABLE                         R6 0 3
       16 LOADN                            R7 233
       17 LOADN                            R8 4
       18 LOADN                            R9 28
       19 SETLIST                          R6 R7 3 [1]
       21 SETTABLEKS                       R6 R5 K3 ["lastUpdated"]
       23 DUPTABLE                         R6 K8 [{"customFields"}]
       24 DUPTABLE                         R7 K11 [{"url", "statusCode"}]
       25 SETTABLEKS                       R0 R7 K9 ["url"]
       27 GETIMPORT                        R8 K14 [string.format]
       29 LOADK                            R9 K15 ["%.0f"]
       30 MOVE                             R10 R1
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R8 R7 K10 ["statusCode"]
       34 SETTABLEKS                       R7 R6 K7 ["customFields"]
       36 NAMECALL                         R3 R3 K16 ["LogCounter"]
       38 CALL                             R3 3 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
