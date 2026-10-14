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
       23 NEWTABLE                         R3 0 7
       25 DUPTABLE                         R4 K16 [{["Id"] = "ManagePlugins", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       26 DUPTABLE                         R5 K25 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "ManageCloudPlugins", ["Category"] = "Actions"}]
       27 SETTABLEKS                       R5 R4 K13 ["Action"]
       29 DUPTABLE                         R5 K27 [{["Id"] = "OpenPluginsFolder", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       30 DUPTABLE                         R6 K29 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLocalPluginsFolder", ["Category"] = "Actions"}]
       31 SETTABLEKS                       R6 R5 K13 ["Action"]
       33 DUPTABLE                         R6 K31 [{["Type"] = "Separator"}]
       34 DUPTABLE                         R7 K33 [{["Id"] = "SelectionSaveAsPlugin", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       35 DUPTABLE                         R8 K35 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "SaveAsLocalPlugin", ["Category"] = "Actions"}]
       36 SETTABLEKS                       R8 R7 K13 ["Action"]
       38 DUPTABLE                         R8 K37 [{["Id"] = "PublishAsPlugin", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       39 DUPTABLE                         R9 K39 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "PublishToRoblox", ["Category"] = "Actions"}]
       40 SETTABLEKS                       R9 R8 K13 ["Action"]
       42 DUPTABLE                         R9 K31 [{["Type"] = "Separator"}]
       43 DUPTABLE                         R10 K42 [{["Id"] = "tools", ["Type"] = "Extension"}]
       44 SETLIST                          R3 R4 7 [1]
       46 MOVE                             R4 R1
       47 MOVE                             R5 R3
       48 CALL                             R4 1 -1
       49 RETURN                           R4 -1
