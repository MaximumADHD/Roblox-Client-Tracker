MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TelemetryProtocol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["PathEditorToolUsageEventsThrottleHundredthsPercent"]
       13 LOADN                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastInt"]
       16 CALL                             R1 3 1
       17 DUPTABLE                         R2 K19 [{["eventName"] = "Path2DToolUsage", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports aggregate counts of our main interactions with the PathEditor tool", ["links"] = "https://roblox.atlassian.net/wiki/x/jwG0gw"}]
       18 NEWTABLE                         R3 0 1
       20 GETTABLEKS                       R4 R0 K20 ["TelemetryBackends"]
       22 GETTABLEKS                       R4 R4 K21 ["EventIngest"]
       24 SETLIST                          R3 R4 1 [1]
       26 SETTABLEKS                       R3 R2 K12 ["backends"]
       28 SETTABLEKS                       R1 R2 K13 ["throttlingPercentage"]
       30 NEWTABLE                         R3 0 3
       32 LOADN                            R4 24
       33 LOADN                            R5 3
       34 LOADN                            R6 15
       35 SETLIST                          R3 R4 3 [1]
       37 SETTABLEKS                       R3 R2 K14 ["lastUpdated"]
       39 RETURN                           R2 1
