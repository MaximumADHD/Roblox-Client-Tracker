MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{["Name"] = "RightMezzanineStartPage", ["Controls"]}]
       24 NEWTABLE                         R4 0 3
       26 DUPTABLE                         R5 K19 [{["ComponentName"] = "UpdateStatus", ["Type"] = "Component", ["Id"] = "UpdateStatus"}]
       27 DUPTABLE                         R6 K29 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Icon"] = "Notification", ["Action"], ["Id"] = "Notifications", ["Size"] = "Small"}]
       28 DUPTABLE                         R7 K37 [{["PluginId"] = "Notifications", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       29 SETTABLEKS                       R7 R6 K25 ["Action"]
       31 DUPTABLE                         R7 K41 [{["Type"] = "AvatarThumbnail", ["Action"], ["Id"] = "LogoutMenu", ["Size"] = "XSmall"}]
       32 DUPTABLE                         R8 K42 [{["PluginId"] = "LogoutMenu", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       33 SETTABLEKS                       R8 R7 K25 ["Action"]
       35 SETLIST                          R4 R5 3 [1]
       37 SETTABLEKS                       R4 R3 K12 ["Controls"]
       39 MOVE                             R4 R1
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1
