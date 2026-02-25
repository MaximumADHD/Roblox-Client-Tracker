MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+36]
        8 DUPTABLE                         R1 K10 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
        9 LOADK                            R2 K11 ["CollaboratorSearchItemClicked"]
       10 SETTABLEKS                       R2 R1 K4 ["eventName"]
       12 NEWTABLE                         R2 0 2
       14 LOADK                            R3 K12 ["EventIngest"]
       15 LOADK                            R4 K13 ["Points"]
       16 SETLIST                          R2 R3 2 [1]
       18 SETTABLEKS                       R2 R1 K5 ["backends"]
       20 GETIMPORT                        R2 K1 [game]
       22 LOADK                            R4 K14 ["CollaboratorSearchItemClickedEventThrottleHundrethsPercent"]
       23 NAMECALL                         R2 R2 K15 ["GetFastInt"]
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K6 ["throttlingPercentage"]
       28 NEWTABLE                         R2 0 3
       30 LOADN                            R3 25
       31 LOADN                            R4 7
       32 LOADN                            R5 1
       33 SETLIST                          R2 R3 3 [1]
       35 SETTABLEKS                       R2 R1 K7 ["lastUpdated"]
       37 LOADK                            R2 K16 ["Reports when an item in the collaborator search dropdown is clicked, including: \n\t- details about the user or group added\n\t- if the user was a friend\n\t- and the time/keystrokes required to search for the item."]
       38 SETTABLEKS                       R2 R1 K8 ["description"]
       40 LOADK                            R2 K17 ["https://roblox.atlassian.net/wiki/x/BwNG3Q"]
       41 SETTABLEKS                       R2 R1 K9 ["links"]
       43 RETURN                           R1 1
       44 RETURN                           R0 0
