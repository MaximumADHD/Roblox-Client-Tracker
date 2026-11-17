MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "ManageCollaboratorsEarlyTestersTabOpened", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when the Early testers tab in Manage Collaborators is opened", ["links"] = "https://github.rbx.com/Roblox/proto-schemas/tree/master/production/eventstream/collaboration"}]
        2 NEWTABLE                         R1 0 2
        4 GETIMPORT                        R2 K13 [Enum.TelemetryBackend.EventIngest]
        6 GETIMPORT                        R3 K15 [Enum.TelemetryBackend.Points]
        8 SETLIST                          R1 R2 2 [1]
       10 SETTABLEKS                       R1 R0 K2 ["backends"]
       12 GETIMPORT                        R1 K17 [game]
       14 LOADK                            R3 K18 ["ManageCollaboratorsEarlyTestersTabOpenedThrottleHundrethsPercent"]
       15 NAMECALL                         R1 R1 K19 ["GetFastInt"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K3 ["throttlingPercentage"]
       20 NEWTABLE                         R1 0 3
       22 LOADN                            R2 2026
       23 LOADN                            R3 9
       24 LOADN                            R4 25
       25 SETLIST                          R1 R2 3 [1]
       27 SETTABLEKS                       R1 R0 K4 ["lastUpdated"]
       29 RETURN                           R0 1
