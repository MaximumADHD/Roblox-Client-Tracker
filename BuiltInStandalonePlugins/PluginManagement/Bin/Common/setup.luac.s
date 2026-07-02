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
       12 DUPTABLE                         R3 K19 [{["plugin"], ["pluginName"] = "PluginManagement", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
       13 SETTABLEKS                       R0 R3 K12 ["plugin"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K16 ["fallbackResourceTable"]
       21 DUPCLOSURE                       R4 K20 [PROTO_2]
       22 SETTABLEKS                       R4 R3 K17 ["getToolbarName"]
       24 SETTABLEKS                       R2 R3 K18 ["buttonInfo"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R2 K5 ["enabled"]
       29 DUPTABLE                         R4 K26 [{["id"] = "PluginManagement", ["name"] = "PluginManagement", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       30 GETIMPORT                        R5 K29 [DockWidgetPluginGuiInfo.new]
       32 GETIMPORT                        R6 K33 [Enum.InitialDockState.Float]
       34 LOADB                            R7 0
       35 LOADB                            R8 0
       36 LOADN                            R9 600
       37 LOADN                            R10 560
       38 LOADN                            R11 600
       39 LOADN                            R12 180
       40 CALL                             R5 7 1
       41 SETTABLEKS                       R5 R4 K23 ["dockWidgetPluginGuiInfo"]
       43 DUPCLOSURE                       R5 K34 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K24 ["getDockTitle"]
       46 GETIMPORT                        R5 K37 [Enum.ZIndexBehavior.Sibling]
       48 SETTABLEKS                       R5 R4 K25 ["zIndexBehavior"]
       50 SETTABLEKS                       R4 R3 K38 ["dockWidgetInfo"]
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K39 ["build"]
       55 MOVE                             R5 R3
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R4 K40 ["pluginLoader"]
       59 NAMECALL                         R5 R5 K41 ["waitForUserInteraction"]
       61 CALL                             R5 1 1
       62 JUMPIF                           R5 ; [+1]
       63 RETURN                           R0 0
       64 MOVE                             R6 R1
       65 MOVE                             R7 R0
       66 MOVE                             R8 R4
       67 CALL                             R6 2 0
       68 RETURN                           R0 0

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
