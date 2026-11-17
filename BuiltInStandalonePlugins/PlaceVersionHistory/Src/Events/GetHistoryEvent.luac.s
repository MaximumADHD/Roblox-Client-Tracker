MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlaceVersionHistoryGetHistoryEventThrottling"]
        4 LOADN                            R3 10000
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K13 [{["eventName"] = "PlaceVersionHistoryGetHistory", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Fired when the user gets the first page of history", ["links"] = "https://roblox.atlassian.net/wiki/x/yIHT-/"}]
        9 NEWTABLE                         R1 0 2
       11 LOADK                            R2 K14 ["EventIngest"]
       12 LOADK                            R3 K15 ["Points"]
       13 SETLIST                          R1 R2 2 [1]
       15 SETTABLEKS                       R1 R0 K6 ["backends"]
       17 GETIMPORT                        R1 K1 [game]
       19 LOADK                            R3 K2 ["PlaceVersionHistoryGetHistoryEventThrottling"]
       20 NAMECALL                         R1 R1 K16 ["GetFastInt"]
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K7 ["throttlingPercentage"]
       25 NEWTABLE                         R1 0 3
       27 LOADN                            R2 26
       28 LOADN                            R3 1
       29 LOADN                            R4 12
       30 SETLIST                          R1 R2 3 [1]
       32 SETTABLEKS                       R1 R0 K8 ["lastUpdated"]
       34 RETURN                           R0 1
