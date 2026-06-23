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
       25 DUPTABLE                         R4 K12 [{"Type", "Children"}]
       26 LOADK                            R5 K13 ["Column"]
       27 SETTABLEKS                       R5 R4 K10 ["Type"]
       29 NEWTABLE                         R5 0 2
       31 DUPTABLE                         R6 K17 [{"Id", "Type", "Action", "TextOnly"}]
       32 LOADK                            R7 K18 ["ManagePlugins"]
       33 SETTABLEKS                       R7 R6 K14 ["Id"]
       35 LOADK                            R7 K19 ["Option"]
       36 SETTABLEKS                       R7 R6 K10 ["Type"]
       38 DUPTABLE                         R7 K24 [{"PluginId", "DataModel", "ItemId", "Category"}]
       39 LOADK                            R8 K25 ["PluginManagement"]
       40 SETTABLEKS                       R8 R7 K20 ["PluginId"]
       42 LOADK                            R8 K26 ["Standalone"]
       43 SETTABLEKS                       R8 R7 K21 ["DataModel"]
       45 LOADK                            R8 K27 ["ManageCloudPlugins"]
       46 SETTABLEKS                       R8 R7 K22 ["ItemId"]
       48 LOADK                            R8 K28 ["Actions"]
       49 SETTABLEKS                       R8 R7 K23 ["Category"]
       51 SETTABLEKS                       R7 R6 K15 ["Action"]
       53 LOADB                            R7 1
       54 SETTABLEKS                       R7 R6 K16 ["TextOnly"]
       56 DUPTABLE                         R7 K17 [{"Id", "Type", "Action", "TextOnly"}]
       57 LOADK                            R8 K29 ["OpenPluginsFolder"]
       58 SETTABLEKS                       R8 R7 K14 ["Id"]
       60 LOADK                            R8 K19 ["Option"]
       61 SETTABLEKS                       R8 R7 K10 ["Type"]
       63 DUPTABLE                         R8 K24 [{"PluginId", "DataModel", "ItemId", "Category"}]
       64 LOADK                            R9 K25 ["PluginManagement"]
       65 SETTABLEKS                       R9 R8 K20 ["PluginId"]
       67 LOADK                            R9 K26 ["Standalone"]
       68 SETTABLEKS                       R9 R8 K21 ["DataModel"]
       70 LOADK                            R9 K30 ["OpenLocalPluginsFolder"]
       71 SETTABLEKS                       R9 R8 K22 ["ItemId"]
       73 LOADK                            R9 K28 ["Actions"]
       74 SETTABLEKS                       R9 R8 K23 ["Category"]
       76 SETTABLEKS                       R8 R7 K15 ["Action"]
       78 LOADB                            R8 1
       79 SETTABLEKS                       R8 R7 K16 ["TextOnly"]
       81 SETLIST                          R5 R6 2 [1]
       83 SETTABLEKS                       R5 R4 K11 ["Children"]
       85 SETLIST                          R3 R4 1 [1]
       87 MOVE                             R4 R1
       88 MOVE                             R5 R3
       89 CALL                             R4 1 -1
       90 RETURN                           R4 -1
