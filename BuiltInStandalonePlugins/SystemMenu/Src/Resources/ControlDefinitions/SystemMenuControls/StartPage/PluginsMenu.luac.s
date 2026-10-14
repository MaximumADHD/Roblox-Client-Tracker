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
       23 NEWTABLE                         R3 0 2
       25 DUPTABLE                         R4 K16 [{["Id"] = "ManagePlugins", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       26 DUPTABLE                         R5 K25 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "ManageCloudPlugins", ["Category"] = "Actions"}]
       27 SETTABLEKS                       R5 R4 K13 ["Action"]
       29 DUPTABLE                         R5 K27 [{["Id"] = "OpenPluginsFolder", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       30 DUPTABLE                         R6 K29 [{["PluginId"] = "PluginManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLocalPluginsFolder", ["Category"] = "Actions"}]
       31 SETTABLEKS                       R6 R5 K13 ["Action"]
       33 SETLIST                          R3 R4 2 [1]
       35 MOVE                             R4 R1
       36 MOVE                             R5 R3
       37 CALL                             R4 1 -1
       38 RETURN                           R4 -1
