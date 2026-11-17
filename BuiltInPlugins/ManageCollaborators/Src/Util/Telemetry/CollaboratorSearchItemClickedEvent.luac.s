MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "CollaboratorSearchItemClicked", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Reports when an item in the collaborator search dropdown is clicked, including: \n\t- details about the user or group added\n\t- if the user was a friend\n\t- and the time/keystrokes required to search for the item.", ["links"] = "https://roblox.atlassian.net/wiki/x/BwNG3Q"}]
        2 NEWTABLE                         R1 0 2
        4 LOADK                            R2 K10 ["EventIngest"]
        5 LOADK                            R3 K11 ["Points"]
        6 SETLIST                          R1 R2 2 [1]
        8 SETTABLEKS                       R1 R0 K2 ["backends"]
       10 GETIMPORT                        R1 K13 [game]
       12 LOADK                            R3 K14 ["CollaboratorSearchItemClickedEventThrottleHundrethsPercent"]
       13 NAMECALL                         R1 R1 K15 ["GetFastInt"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K3 ["throttlingPercentage"]
       18 NEWTABLE                         R1 0 3
       20 LOADN                            R2 25
       21 LOADN                            R3 7
       22 LOADN                            R4 1
       23 SETLIST                          R1 R2 3 [1]
       25 SETTABLEKS                       R1 R0 K4 ["lastUpdated"]
       27 RETURN                           R0 1
