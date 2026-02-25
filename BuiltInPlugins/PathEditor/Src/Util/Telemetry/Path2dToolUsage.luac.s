MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TelemetryProtocol"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["PathEditorToolUsageEventsThrottleHundredthsPercent"]
       13 LOADN                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastInt"]
       16 CALL                             R1 3 1
       17 DUPTABLE                         R2 K16 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       18 LOADK                            R3 K17 ["Path2DToolUsage"]
       19 SETTABLEKS                       R3 R2 K10 ["eventName"]
       21 NEWTABLE                         R3 0 1
       23 GETTABLEKS                       R5 R0 K18 ["TelemetryBackends"]
       25 GETTABLEKS                       R4 R5 K19 ["EventIngest"]
       27 SETLIST                          R3 R4 1 [1]
       29 SETTABLEKS                       R3 R2 K11 ["backends"]
       31 SETTABLEKS                       R1 R2 K12 ["throttlingPercentage"]
       33 NEWTABLE                         R3 0 3
       35 LOADN                            R4 24
       36 LOADN                            R5 3
       37 LOADN                            R6 15
       38 SETLIST                          R3 R4 3 [1]
       40 SETTABLEKS                       R3 R2 K13 ["lastUpdated"]
       42 LOADK                            R3 K20 ["Reports aggregate counts of our main interactions with the PathEditor tool"]
       43 SETTABLEKS                       R3 R2 K14 ["description"]
       45 LOADK                            R3 K21 ["https://roblox.atlassian.net/wiki/x/jwG0gw"]
       46 SETTABLEKS                       R3 R2 K15 ["links"]
       48 RETURN                           R2 1
