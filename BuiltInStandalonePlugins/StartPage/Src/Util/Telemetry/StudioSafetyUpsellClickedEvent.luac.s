MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TelemetryProtocol"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K15 [{["eventName"] = "StudioSafetyUpsellClicked", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports user interactions/clicks with Studio FAE Upsells.", ["links"] = "https://docs.google.com/document/d/1sDNiPKI0zmFHNPDG66qsa3gsmsNdQvADz_kBsfyVGgw"}]
       11 NEWTABLE                         R2 0 1
       13 GETTABLEKS                       R3 R0 K16 ["TelemetryBackends"]
       15 GETTABLEKS                       R3 R3 K17 ["EventIngest"]
       17 SETLIST                          R2 R3 1 [1]
       19 SETTABLEKS                       R2 R1 K8 ["backends"]
       21 GETTABLEKS                       R2 R0 K18 ["ONE_HUNDRED_PERCENT"]
       23 SETTABLEKS                       R2 R1 K9 ["throttlingPercentage"]
       25 NEWTABLE                         R2 0 3
       27 LOADN                            R3 25
       28 LOADN                            R4 11
       29 LOADN                            R5 19
       30 SETLIST                          R2 R3 3 [1]
       32 SETTABLEKS                       R2 R1 K10 ["lastUpdated"]
       34 RETURN                           R1 1
