MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TeamCreateCollaboratorsTelemetryEventThrottleHundredthsPercent"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 DUPTABLE                         R1 K13 [{["eventName"] = "TeamCreateCollaboratorsTelemetryEvent", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports all user-facing telemetry from the TeamCreateCollaborators plugin.\nThe `telemetryType` field distinguishes event kinds (\"buttonClicked\", \"featureShown\") and\nthe `action` field identifies the specific control or view.", ["links"] = ""}]
        9 NEWTABLE                         R2 0 2
       11 LOADK                            R3 K14 ["EventIngest"]
       12 LOADK                            R4 K15 ["Points"]
       13 SETLIST                          R2 R3 2 [1]
       15 SETTABLEKS                       R2 R1 K6 ["backends"]
       17 SETTABLEKS                       R0 R1 K7 ["throttlingPercentage"]
       19 NEWTABLE                         R2 0 3
       21 LOADN                            R3 21
       22 LOADN                            R4 5
       23 LOADN                            R5 26
       24 SETLIST                          R2 R3 3 [1]
       26 SETTABLEKS                       R2 R1 K8 ["lastUpdated"]
       28 RETURN                           R1 1
