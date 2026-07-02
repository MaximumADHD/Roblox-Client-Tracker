MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TeamCreateCollaboratorsErrorThrottleHundredthsPercent"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 DUPTABLE                         R1 K13 [{["eventName"] = "TeamCreateCollaboratorsError", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports failures from network calls made by the TeamCreateCollaborators plugin, including:\n- the source enum identifying which backend call failed (postProfileInsights,\n  postGetTrustedFriendsLink, postSendRequestToNewParent, postSendRequestToAllParents)\n- error details (HTTP error message, decode error, or exception string)\n- optional HTTP status code", ["links"] = ""}]
        9 NEWTABLE                         R2 0 1
       11 LOADK                            R3 K14 ["Points"]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K6 ["backends"]
       16 SETTABLEKS                       R0 R1 K7 ["throttlingPercentage"]
       18 NEWTABLE                         R2 0 3
       20 LOADN                            R3 21
       21 LOADN                            R4 5
       22 LOADN                            R5 26
       23 SETLIST                          R2 R3 3 [1]
       25 SETTABLEKS                       R2 R1 K8 ["lastUpdated"]
       27 RETURN                           R1 1
