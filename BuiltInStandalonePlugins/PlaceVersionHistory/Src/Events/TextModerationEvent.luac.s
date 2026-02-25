MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PlaceVersionHistoryTextModerationEventThrottling"]
        4 LOADN                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R1 K11 ["PlaceVersionHistoryTextModeration"]
       10 SETTABLEKS                       R1 R0 K4 ["eventName"]
       12 NEWTABLE                         R1 0 2
       14 LOADK                            R2 K12 ["EventIngest"]
       15 LOADK                            R3 K13 ["Points"]
       16 SETLIST                          R1 R2 2 [1]
       18 SETTABLEKS                       R1 R0 K5 ["backends"]
       20 GETIMPORT                        R1 K1 [game]
       22 LOADK                            R3 K2 ["PlaceVersionHistoryTextModerationEventThrottling"]
       23 NAMECALL                         R1 R1 K14 ["GetFastInt"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K6 ["throttlingPercentage"]
       28 NEWTABLE                         R1 0 3
       30 LOADN                            R2 26
       31 LOADN                            R3 1
       32 LOADN                            R4 12
       33 SETLIST                          R1 R2 3 [1]
       35 SETTABLEKS                       R1 R0 K7 ["lastUpdated"]
       37 LOADK                            R1 K15 ["Fired when the user attempts to pass text moderation"]
       38 SETTABLEKS                       R1 R0 K8 ["description"]
       40 LOADK                            R1 K16 ["https://roblox.atlassian.net/wiki/x/yIHT-/"]
       41 SETTABLEKS                       R1 R0 K9 ["links"]
       43 RETURN                           R0 1
