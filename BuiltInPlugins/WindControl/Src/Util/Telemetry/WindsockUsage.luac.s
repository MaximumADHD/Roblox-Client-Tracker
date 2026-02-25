MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TelemetryProtocol"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K12 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
       11 LOADK                            R2 K13 ["windsockUsage"]
       12 SETTABLEKS                       R2 R1 K6 ["eventName"]
       14 NEWTABLE                         R2 0 1
       16 GETTABLEKS                       R4 R0 K14 ["TelemetryBackends"]
       18 GETTABLEKS                       R3 R4 K15 ["EventIngest"]
       20 SETLIST                          R2 R3 1 [1]
       22 SETTABLEKS                       R2 R1 K7 ["backends"]
       24 GETTABLEKS                       R2 R0 K16 ["ONE_HUNDRED_PERCENT"]
       26 SETTABLEKS                       R2 R1 K8 ["throttlingPercentage"]
       28 NEWTABLE                         R2 0 3
       30 LOADN                            R3 23
       31 LOADN                            R4 8
       32 LOADN                            R5 7
       33 SETLIST                          R2 R3 3 [1]
       35 SETTABLEKS                       R2 R1 K9 ["lastUpdated"]
       37 LOADK                            R2 K17 ["Reports aggregate counts of the three main interaction types in the windsock widget"]
       38 SETTABLEKS                       R2 R1 K10 ["description"]
       40 LOADK                            R2 K18 ["https://roblox.atlassian.net/l/cp/ysYjQfcq"]
       41 SETTABLEKS                       R2 R1 K11 ["links"]
       43 RETURN                           R1 1
