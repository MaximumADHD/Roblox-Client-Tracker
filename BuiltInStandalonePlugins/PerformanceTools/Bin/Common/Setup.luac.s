PROTO_0:
        0 LOADK                            R3 K0 ["performanceToolsButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["SceneBudgetThermometer"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R3 K0 ["performanceToolsToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["SceneMonitor"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K8 [{["getName"], ["getDescription"], ["clickableWhenViewportHidden"] = True, ["icon"] = "rbxlocaltheme://GameSettings", ["enabled"] = True}]
        6 DUPCLOSURE                       R3 K9 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K10 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K18 [{["plugin"], ["pluginName"] = "PerformanceTools", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
       13 SETTABLEKS                       R0 R3 K11 ["plugin"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K15 ["fallbackResourceTable"]
       21 DUPCLOSURE                       R4 K19 [PROTO_2]
       22 SETTABLEKS                       R4 R3 K16 ["getToolbarName"]
       24 SETTABLEKS                       R2 R3 K17 ["buttonInfo"]
       26 DUPTABLE                         R4 K24 [{["id"] = "PerformanceTools", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       27 GETIMPORT                        R5 K27 [DockWidgetPluginGuiInfo.new]
       29 GETIMPORT                        R6 K31 [Enum.InitialDockState.Bottom]
       31 LOADB                            R7 0
       32 LOADB                            R8 0
       33 LOADN                            R9 640
       34 LOADN                            R10 480
       35 LOADN                            R11 250
       36 LOADN                            R12 200
       37 CALL                             R5 7 1
       38 SETTABLEKS                       R5 R4 K21 ["dockWidgetPluginGuiInfo"]
       40 DUPCLOSURE                       R5 K32 [PROTO_3]
       41 SETTABLEKS                       R5 R4 K22 ["getDockTitle"]
       43 GETIMPORT                        R5 K35 [Enum.ZIndexBehavior.Sibling]
       45 SETTABLEKS                       R5 R4 K23 ["zIndexBehavior"]
       47 SETTABLEKS                       R4 R3 K36 ["dockWidgetInfo"]
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K37 ["build"]
       52 MOVE                             R5 R3
       53 CALL                             R4 1 1
       54 MOVE                             R5 R1
       55 MOVE                             R6 R0
       56 MOVE                             R7 R4
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
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
