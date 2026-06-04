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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["setup requires FFlagStudioLazyPluginManagement"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Name"]
       11 SETTABLEKS                       R2 R0 K3 ["Name"]
       13 DUPTABLE                         R2 K9 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
       14 DUPCLOSURE                       R3 K10 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K4 ["getName"]
       17 DUPCLOSURE                       R3 K11 [PROTO_1]
       18 SETTABLEKS                       R3 R2 K5 ["getDescription"]
       20 LOADK                            R3 K12 [""]
       21 SETTABLEKS                       R3 R2 K6 ["icon"]
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K7 ["enabled"]
       26 LOADB                            R3 1
       27 SETTABLEKS                       R3 R2 K8 ["clickableWhenViewportHidden"]
       29 DUPTABLE                         R3 K19 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       30 SETTABLEKS                       R0 R3 K13 ["plugin"]
       32 LOADK                            R4 K20 ["PluginManagement"]
       33 SETTABLEKS                       R4 R3 K14 ["pluginName"]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       38 GETUPVAL                         R4 3
       39 SETTABLEKS                       R4 R3 K16 ["fallbackResourceTable"]
       41 DUPCLOSURE                       R4 K21 [PROTO_2]
       42 SETTABLEKS                       R4 R3 K17 ["getToolbarName"]
       44 SETTABLEKS                       R2 R3 K18 ["buttonInfo"]
       46 LOADB                            R4 1
       47 SETTABLEKS                       R4 R2 K7 ["enabled"]
       49 DUPTABLE                         R4 K27 [{"id", "name", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       50 LOADK                            R5 K20 ["PluginManagement"]
       51 SETTABLEKS                       R5 R4 K22 ["id"]
       53 LOADK                            R5 K20 ["PluginManagement"]
       54 SETTABLEKS                       R5 R4 K23 ["name"]
       56 GETIMPORT                        R5 K30 [DockWidgetPluginGuiInfo.new]
       58 GETIMPORT                        R6 K34 [Enum.InitialDockState.Float]
       60 LOADB                            R7 0
       61 LOADB                            R8 0
       62 LOADN                            R9 88
       63 LOADN                            R10 48
       64 LOADN                            R11 88
       65 LOADN                            R12 180
       66 CALL                             R5 7 1
       67 SETTABLEKS                       R5 R4 K24 ["dockWidgetPluginGuiInfo"]
       69 DUPCLOSURE                       R5 K35 [PROTO_3]
       70 SETTABLEKS                       R5 R4 K25 ["getDockTitle"]
       72 GETIMPORT                        R5 K38 [Enum.ZIndexBehavior.Sibling]
       74 SETTABLEKS                       R5 R4 K26 ["zIndexBehavior"]
       76 SETTABLEKS                       R4 R3 K39 ["dockWidgetInfo"]
       78 GETUPVAL                         R4 4
       79 GETTABLEKS                       R4 R4 K40 ["build"]
       81 MOVE                             R5 R3
       82 CALL                             R4 1 1
       83 GETTABLEKS                       R5 R4 K41 ["pluginLoader"]
       85 NAMECALL                         R5 R5 K42 ["waitForUserInteraction"]
       87 CALL                             R5 1 1
       88 JUMPIF                           R5 ; [+1]
       89 RETURN                           R0 0
       90 MOVE                             R6 R1
       91 MOVE                             R7 R0
       92 MOVE                             R8 R4
       93 CALL                             R6 2 0
       94 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioLazyPluginManagement"]
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
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R6 1
