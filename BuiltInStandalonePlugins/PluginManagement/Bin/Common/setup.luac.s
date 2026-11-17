PROTO_0:
        0 LOADK                            R3 K0 ["luaManagePluginsButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 [""]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["luaManagePluginsToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Manage"]
        4 LOADK                            R7 K1 ["WindowTitle"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K9 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
        6 DUPCLOSURE                       R3 K10 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K11 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       13 SETTABLEKS                       R0 R3 K12 ["plugin"]
       15 GETUPVAL                         R5 1
       16 CALL                             R5 0 1
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADK                            R4 K19 ["PluginInstallation"]
       19 JUMP                             ; [+1]
       20 LOADK                            R4 K20 ["PluginManagement"]
       21 SETTABLEKS                       R4 R3 K13 ["pluginName"]
       23 GETUPVAL                         R4 2
       24 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       26 GETUPVAL                         R4 3
       27 SETTABLEKS                       R4 R3 K15 ["fallbackResourceTable"]
       29 DUPCLOSURE                       R4 K21 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K16 ["getToolbarName"]
       32 SETTABLEKS                       R2 R3 K17 ["buttonInfo"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R2 K5 ["enabled"]
       37 DUPTABLE                         R4 K27 [{["id"] = "PluginManagement", ["name"] = "PluginManagement", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       38 GETIMPORT                        R5 K30 [DockWidgetPluginGuiInfo.new]
       40 GETIMPORT                        R6 K34 [Enum.InitialDockState.Float]
       42 LOADB                            R7 0
       43 LOADB                            R8 0
       44 LOADN                            R9 600
       45 LOADN                            R10 560
       46 LOADN                            R11 600
       47 LOADN                            R12 180
       48 CALL                             R5 7 1
       49 SETTABLEKS                       R5 R4 K24 ["dockWidgetPluginGuiInfo"]
       51 DUPCLOSURE                       R5 K35 [PROTO_3]
       52 SETTABLEKS                       R5 R4 K25 ["getDockTitle"]
       54 GETIMPORT                        R5 K38 [Enum.ZIndexBehavior.Sibling]
       56 SETTABLEKS                       R5 R4 K26 ["zIndexBehavior"]
       58 SETTABLEKS                       R4 R3 K39 ["dockWidgetInfo"]
       60 GETUPVAL                         R4 4
       61 GETTABLEKS                       R4 R4 K40 ["build"]
       63 MOVE                             R5 R3
       64 CALL                             R4 1 1
       65 GETTABLEKS                       R5 R4 K41 ["pluginLoader"]
       67 NAMECALL                         R5 R5 K42 ["waitForUserInteraction"]
       69 CALL                             R5 1 1
       70 JUMPIF                           R5 ; [+1]
       71 RETURN                           R0 0
       72 MOVE                             R6 R1
       73 MOVE                             R7 R0
       74 MOVE                             R8 R4
       75 CALL                             R6 2 0
       76 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioFixPluginManagementTitle"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["PluginLoader"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["PluginLoaderBuilder"]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K12 ["Resources"]
       29 GETTABLEKS                       R4 R4 K13 ["SourceStrings"]
       31 GETTABLEKS                       R5 R0 K6 ["Src"]
       33 GETTABLEKS                       R5 R5 K12 ["Resources"]
       35 GETTABLEKS                       R5 R5 K14 ["LocalizedStrings"]
       37 DUPCLOSURE                       R6 K15 [PROTO_4]
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R6 1
