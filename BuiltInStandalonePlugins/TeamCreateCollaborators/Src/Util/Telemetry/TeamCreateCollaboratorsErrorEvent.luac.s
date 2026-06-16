MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TeamCreateCollaboratorsErrorThrottleHundredthsPercent"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 DUPTABLE                         R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R2 K11 ["TeamCreateCollaboratorsError"]
       10 SETTABLEKS                       R2 R1 K4 ["eventName"]
       12 NEWTABLE                         R2 0 1
       14 LOADK                            R3 K12 ["Points"]
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K5 ["backends"]
       19 SETTABLEKS                       R0 R1 K6 ["throttlingPercentage"]
       21 NEWTABLE                         R2 0 3
       23 LOADN                            R3 21
       24 LOADN                            R4 5
       25 LOADN                            R5 26
       26 SETLIST                          R2 R3 3 [1]
       28 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       30 LOADK                            R2 K13 ["Reports failures from network calls made by the TeamCreateCollaborators plugin, including:\n- the source enum identifying which backend call failed (postProfileInsights,\n  postGetTrustedFriendsLink, postSendRequestToNewParent, postSendRequestToAllParents)\n- error details (HTTP error message, decode error, or exception string)\n- optional HTTP status code"]
       31 SETTABLEKS                       R2 R1 K8 ["description"]
       33 LOADK                            R2 K14 [""]
       34 SETTABLEKS                       R2 R1 K9 ["links"]
       36 RETURN                           R1 1
