PROTO_0:
        0 LOADK                            R3 K0 ["CompositorDebuggerButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R3 K0 ["Animations"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K5 [{"getName", "getDescription", "icon", "enabled"}]
        6 DUPCLOSURE                       R3 K6 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K7 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K8 ["rbxlocaltheme://CompositorDebugger"]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["enabled"]
       18 DUPTABLE                         R3 K15 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       19 SETTABLEKS                       R0 R3 K9 ["plugin"]
       21 LOADK                            R4 K16 ["CompositorDebugger"]
       22 SETTABLEKS                       R4 R3 K10 ["pluginName"]
       24 GETUPVAL                         R4 1
       25 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       27 GETUPVAL                         R4 2
       28 SETTABLEKS                       R4 R3 K12 ["fallbackResourceTable"]
       30 DUPCLOSURE                       R4 K17 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K13 ["getToolbarName"]
       33 SETTABLEKS                       R2 R3 K14 ["buttonInfo"]
       35 DUPTABLE                         R4 K22 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       36 LOADK                            R5 K16 ["CompositorDebugger"]
       37 SETTABLEKS                       R5 R4 K18 ["id"]
       39 GETIMPORT                        R5 K25 [DockWidgetPluginGuiInfo.new]
       41 GETIMPORT                        R6 K29 [Enum.InitialDockState.Bottom]
       43 LOADB                            R7 0
       44 LOADB                            R8 0
       45 LOADN                            R9 128
       46 LOADN                            R10 224
       47 LOADN                            R11 250
       48 LOADN                            R12 200
       49 CALL                             R5 7 1
       50 SETTABLEKS                       R5 R4 K19 ["dockWidgetPluginGuiInfo"]
       52 DUPCLOSURE                       R5 K30 [PROTO_3]
       53 SETTABLEKS                       R5 R4 K20 ["getDockTitle"]
       55 GETIMPORT                        R5 K33 [Enum.ZIndexBehavior.Sibling]
       57 SETTABLEKS                       R5 R4 K21 ["zIndexBehavior"]
       59 SETTABLEKS                       R4 R3 K34 ["dockWidgetInfo"]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K35 ["build"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 GETTABLEKS                       R5 R4 K36 ["pluginLoader"]
       68 NAMECALL                         R5 R5 K37 ["waitForUserInteraction"]
       70 CALL                             R5 1 1
       71 JUMPIF                           R5 ; [+1]
       72 RETURN                           R0 0
       73 MOVE                             R6 R1
       74 MOVE                             R7 R0
       75 MOVE                             R8 R4
       76 CALL                             R6 2 0
       77 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 DUPCLOSURE                       R5 K14 [PROTO_4]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
