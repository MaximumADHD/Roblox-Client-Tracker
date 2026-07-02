MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+27]
        8 DUPTABLE                         R1 K13 [{["eventName"] = "CollaboratorSearchItemClicked", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when an item in the collaborator search dropdown is clicked, including: \n\t- details about the user or group added\n\t- if the user was a friend\n\t- and the time/keystrokes required to search for the item.", ["links"] = "https://roblox.atlassian.net/wiki/x/BwNG3Q"}]
        9 NEWTABLE                         R2 0 2
       11 LOADK                            R3 K14 ["EventIngest"]
       12 LOADK                            R4 K15 ["Points"]
       13 SETLIST                          R2 R3 2 [1]
       15 SETTABLEKS                       R2 R1 K6 ["backends"]
       17 GETIMPORT                        R2 K1 [game]
       19 LOADK                            R4 K16 ["CollaboratorSearchItemClickedEventThrottleHundrethsPercent"]
       20 NAMECALL                         R2 R2 K17 ["GetFastInt"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K7 ["throttlingPercentage"]
       25 NEWTABLE                         R2 0 3
       27 LOADN                            R3 25
       28 LOADN                            R4 7
       29 LOADN                            R5 1
       30 SETLIST                          R2 R3 3 [1]
       32 SETTABLEKS                       R2 R1 K8 ["lastUpdated"]
       34 RETURN                           R1 1
       35 RETURN                           R0 0
