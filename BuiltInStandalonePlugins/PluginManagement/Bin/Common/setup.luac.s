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
        5 DUPTABLE                         R2 K6 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
        6 DUPCLOSURE                       R3 K7 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K8 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K9 [""]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K4 ["enabled"]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K5 ["clickableWhenViewportHidden"]
       21 DUPTABLE                         R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       22 SETTABLEKS                       R0 R3 K10 ["plugin"]
       24 LOADK                            R4 K17 ["PluginManagement"]
       25 SETTABLEKS                       R4 R3 K11 ["pluginName"]
       27 GETUPVAL                         R4 1
       28 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       30 GETUPVAL                         R4 2
       31 SETTABLEKS                       R4 R3 K13 ["fallbackResourceTable"]
       33 DUPCLOSURE                       R4 K18 [PROTO_2]
       34 SETTABLEKS                       R4 R3 K14 ["getToolbarName"]
       36 SETTABLEKS                       R2 R3 K15 ["buttonInfo"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R2 K4 ["enabled"]
       41 DUPTABLE                         R4 K24 [{"id", "name", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       42 LOADK                            R5 K17 ["PluginManagement"]
       43 SETTABLEKS                       R5 R4 K19 ["id"]
       45 LOADK                            R5 K17 ["PluginManagement"]
       46 SETTABLEKS                       R5 R4 K20 ["name"]
       48 GETIMPORT                        R5 K27 [DockWidgetPluginGuiInfo.new]
       50 GETIMPORT                        R6 K31 [Enum.InitialDockState.Float]
       52 LOADB                            R7 0
       53 LOADB                            R8 0
       54 LOADN                            R9 88
       55 LOADN                            R10 48
       56 LOADN                            R11 88
       57 LOADN                            R12 180
       58 CALL                             R5 7 1
       59 SETTABLEKS                       R5 R4 K21 ["dockWidgetPluginGuiInfo"]
       61 DUPCLOSURE                       R5 K32 [PROTO_3]
       62 SETTABLEKS                       R5 R4 K22 ["getDockTitle"]
       64 GETIMPORT                        R5 K35 [Enum.ZIndexBehavior.Sibling]
       66 SETTABLEKS                       R5 R4 K23 ["zIndexBehavior"]
       68 SETTABLEKS                       R4 R3 K36 ["dockWidgetInfo"]
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R4 R4 K37 ["build"]
       73 MOVE                             R5 R3
       74 CALL                             R4 1 1
       75 GETTABLEKS                       R5 R4 K38 ["pluginLoader"]
       77 NAMECALL                         R5 R5 K39 ["waitForUserInteraction"]
       79 CALL                             R5 1 1
       80 JUMPIF                           R5 ; [+1]
       81 RETURN                           R0 0
       82 MOVE                             R6 R1
       83 MOVE                             R7 R0
       84 MOVE                             R8 R4
       85 CALL                             R6 2 0
       86 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["SourceStrings"]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Resources"]
       26 GETTABLEKS                       R4 R4 K12 ["LocalizedStrings"]
       28 DUPCLOSURE                       R5 K13 [PROTO_4]
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 RETURN                           R5 1
