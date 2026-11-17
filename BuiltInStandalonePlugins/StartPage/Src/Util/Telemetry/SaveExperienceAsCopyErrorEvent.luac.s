MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["TelemetryProtocol"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["SharedFlags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFIntStartPageSaveAsCopyErrorThrottlingPercentage"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K20 [{["eventName"] = "StartPageSaveAsCopyError", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports failures during the Start Page \"Save As\" experience-copy flow.", ["links"] = ""}]
       26 NEWTABLE                         R4 0 1
       28 GETTABLEKS                       R5 R1 K21 ["TelemetryBackends"]
       30 GETTABLEKS                       R5 R5 K22 ["Points"]
       32 SETLIST                          R4 R5 1 [1]
       34 SETTABLEKS                       R4 R3 K13 ["backends"]
       36 MOVE                             R4 R2
       37 CALL                             R4 0 1
       38 SETTABLEKS                       R4 R3 K14 ["throttlingPercentage"]
       40 NEWTABLE                         R4 0 3
       42 LOADN                            R5 26
       43 LOADN                            R6 6
       44 LOADN                            R7 24
       45 SETLIST                          R4 R5 3 [1]
       47 SETTABLEKS                       R4 R3 K15 ["lastUpdated"]
       49 RETURN                           R3 1
