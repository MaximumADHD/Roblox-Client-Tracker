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
       26 NEWTABLE                         R5 0 5
       28 DUPTABLE                         R6 K20 [{["Id"] = "ManagePlugins", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       29 DUPTABLE                         R7 K29 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "ManageCloudPlugins", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R7 R6 K17 ["Action"]
       32 DUPTABLE                         R7 K31 [{["Id"] = "OpenPluginsFolder", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       33 DUPTABLE                         R8 K33 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLocalPluginsFolder", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R8 R7 K17 ["Action"]
       36 DUPTABLE                         R8 K35 [{["Type"] = "Separator"}]
       37 DUPTABLE                         R9 K37 [{["Id"] = "SelectionSaveAsPlugin", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       38 DUPTABLE                         R10 K39 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "SaveAsLocalPlugin", ["Category"] = "Actions"}]
       39 SETTABLEKS                       R10 R9 K17 ["Action"]
       41 DUPTABLE                         R10 K41 [{["Id"] = "PublishAsPlugin", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       42 DUPTABLE                         R11 K43 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "PublishToRoblox", ["Category"] = "Actions"}]
       43 SETTABLEKS                       R11 R10 K17 ["Action"]
       45 SETLIST                          R5 R6 5 [1]
       47 SETTABLEKS                       R5 R4 K12 ["Children"]
       49 SETLIST                          R3 R4 1 [1]
       51 MOVE                             R4 R1
       52 MOVE                             R5 R3
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1
