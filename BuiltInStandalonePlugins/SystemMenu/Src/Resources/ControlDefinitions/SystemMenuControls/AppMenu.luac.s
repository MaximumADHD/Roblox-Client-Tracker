MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SystemMenu"]
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
       23 NEWTABLE                         R3 0 5
       25 DUPTABLE                         R4 K16 [{["Id"] = "AboutRoblox", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       26 DUPTABLE                         R5 K25 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/AboutStudio", ["Category"] = "Actions"}]
       27 SETTABLEKS                       R5 R4 K13 ["Action"]
       29 DUPTABLE                         R5 K27 [{["Type"] = "Separator"}]
       30 DUPTABLE                         R6 K29 [{["Id"] = "Settings", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       31 DUPTABLE                         R7 K31 [{["PluginId"] = "AppConfiguration", ["DataModel"] = "Standalone", ["ItemId"] = "Settings", ["Category"] = "Actions"}]
       32 SETTABLEKS                       R7 R6 K13 ["Action"]
       34 DUPTABLE                         R7 K27 [{["Type"] = "Separator"}]
       35 DUPTABLE                         R8 K33 [{["Id"] = "FileExit", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       36 DUPTABLE                         R9 K35 [{["PluginId"] = "Common", ["DataModel"] = "Standalone", ["ItemId"] = "FileExit", ["Category"] = "Actions"}]
       37 SETTABLEKS                       R9 R8 K13 ["Action"]
       39 SETLIST                          R3 R4 5 [1]
       41 MOVE                             R4 R1
       42 MOVE                             R5 R3
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1
