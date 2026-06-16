MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TeamCreateCollaboratorsTelemetryEventThrottleHundredthsPercent"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 DUPTABLE                         R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R2 K11 ["TeamCreateCollaboratorsTelemetryEvent"]
       10 SETTABLEKS                       R2 R1 K4 ["eventName"]
       12 NEWTABLE                         R2 0 2
       14 LOADK                            R3 K12 ["EventIngest"]
       15 LOADK                            R4 K13 ["Points"]
       16 SETLIST                          R2 R3 2 [1]
       18 SETTABLEKS                       R2 R1 K5 ["backends"]
       20 SETTABLEKS                       R0 R1 K6 ["throttlingPercentage"]
       22 NEWTABLE                         R2 0 3
       24 LOADN                            R3 21
       25 LOADN                            R4 5
       26 LOADN                            R5 26
       27 SETLIST                          R2 R3 3 [1]
       29 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       31 LOADK                            R2 K14 ["Reports all user-facing telemetry from the TeamCreateCollaborators plugin.\nThe `telemetryType` field distinguishes event kinds (\"buttonClicked\", \"featureShown\") and\nthe `action` field identifies the specific control or view."]
       32 SETTABLEKS                       R2 R1 K8 ["description"]
       34 LOADK                            R2 K15 [""]
       35 SETTABLEKS                       R2 R1 K9 ["links"]
       37 RETURN                           R1 1
