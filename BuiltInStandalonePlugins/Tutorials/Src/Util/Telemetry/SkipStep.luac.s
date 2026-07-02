MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TelemetryProtocol"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K15 [{["eventName"] = "StudioTutorialSkipStep", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Skip a step in a Studio Tutorial.", ["links"] = "https://roblox.atlassian.net/wiki/spaces/developer/pages/2076443597/Onboarding+API+Discussion"}]
       11 NEWTABLE                         R2 0 1
       13 GETTABLEKS                       R3 R0 K16 ["TelemetryBackends"]
       15 GETTABLEKS                       R3 R3 K17 ["EventIngest"]
       17 SETLIST                          R2 R3 1 [1]
       19 SETTABLEKS                       R2 R1 K8 ["backends"]
       21 GETTABLEKS                       R2 R0 K18 ["ONE_HUNDRED_PERCENT"]
       23 SETTABLEKS                       R2 R1 K9 ["throttlingPercentage"]
       25 NEWTABLE                         R2 0 3
       27 LOADN                            R3 23
       28 LOADN                            R4 6
       29 LOADN                            R5 14
       30 SETLIST                          R2 R3 3 [1]
       32 SETTABLEKS                       R2 R1 K10 ["lastUpdated"]
       34 RETURN                           R1 1
