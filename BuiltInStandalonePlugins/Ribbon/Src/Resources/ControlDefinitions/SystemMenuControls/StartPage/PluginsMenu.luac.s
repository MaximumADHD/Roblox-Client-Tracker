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
       23 NEWTABLE                         R3 0 1
       25 DUPTABLE                         R4 K13 [{["Type"] = "Column", ["Children"]}]
       26 NEWTABLE                         R5 0 2
       28 DUPTABLE                         R6 K20 [{["Id"] = "ManagePlugins", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       29 DUPTABLE                         R7 K29 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "ManageCloudPlugins", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R7 R6 K17 ["Action"]
       32 DUPTABLE                         R7 K31 [{["Id"] = "OpenPluginsFolder", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       33 DUPTABLE                         R8 K33 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLocalPluginsFolder", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R8 R7 K17 ["Action"]
       36 SETLIST                          R5 R6 2 [1]
       38 SETTABLEKS                       R5 R4 K12 ["Children"]
       40 SETLIST                          R3 R4 1 [1]
       42 MOVE                             R4 R1
       43 MOVE                             R5 R3
       44 CALL                             R4 1 -1
       45 RETURN                           R4 -1
