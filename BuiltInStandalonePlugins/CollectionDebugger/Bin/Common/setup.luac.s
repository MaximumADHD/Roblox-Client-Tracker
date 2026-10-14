PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K3 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CALL                             R2 1 1
       10 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 NEWTABLE                         R2 0 1
        7 DUPTABLE                         R3 K13 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K1 ["uri"]
       11 LOADK                            R7 K14 ["Actions"]
       12 NAMECALL                         R5 R0 K15 ["GetPluginComponent"]
       14 CALL                             R5 2 1
       15 GETIMPORT                        R6 K17 [pcall]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U1
       20 CALL                             R6 1 1
       21 MOVE                             R4 R6
       22 SETTABLEKS                       R4 R3 K2 ["isPreexistingAction"]
       24 DUPCLOSURE                       R4 K18 [PROTO_2]
       25 SETTABLEKS                       R4 R3 K3 ["getText"]
       27 DUPCLOSURE                       R4 K19 [PROTO_3]
       28 SETTABLEKS                       R4 R3 K4 ["getTooltip"]
       30 SETLIST                          R2 R3 1 [1]
       32 DUPTABLE                         R3 K27 [{["plugin"], ["pluginName"] = "CollectionDebugger", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       33 SETTABLEKS                       R0 R3 K20 ["plugin"]
       35 GETUPVAL                         R4 2
       36 SETTABLEKS                       R4 R3 K23 ["translationResourceTable"]
       38 GETUPVAL                         R4 3
       39 SETTABLEKS                       R4 R3 K24 ["fallbackResourceTable"]
       41 SETTABLEKS                       R2 R3 K26 ["actionInfos"]
       43 DUPTABLE                         R4 K32 [{["id"] = "CollectionDebugger", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       44 GETIMPORT                        R5 K35 [DockWidgetPluginGuiInfo.new]
       46 GETIMPORT                        R6 K39 [Enum.InitialDockState.Right]
       48 LOADB                            R7 1
       49 LOADB                            R8 0
       50 LOADN                            R9 1200
       51 LOADN                            R10 250
       52 LOADN                            R11 200
       53 LOADN                            R12 100
       54 CALL                             R5 7 1
       55 SETTABLEKS                       R5 R4 K29 ["dockWidgetPluginGuiInfo"]
       57 DUPCLOSURE                       R5 K40 [PROTO_4]
       58 SETTABLEKS                       R5 R4 K30 ["getDockTitle"]
       60 GETIMPORT                        R5 K43 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R5 R4 K31 ["zIndexBehavior"]
       64 SETTABLEKS                       R4 R3 K44 ["dockWidgetInfo"]
       66 GETUPVAL                         R4 4
       67 GETTABLEKS                       R4 R4 K45 ["build"]
       69 MOVE                             R5 R3
       70 CALL                             R4 1 1
       71 GETTABLEKS                       R5 R4 K46 ["pluginLoader"]
       73 NAMECALL                         R5 R5 K47 ["waitForUserInteraction"]
       75 CALL                             R5 1 1
       76 JUMPIF                           R5 ; [+1]
       77 RETURN                           R0 0
       78 MOVE                             R6 R1
       79 MOVE                             R7 R0
       80 MOVE                             R8 R4
       81 CALL                             R6 2 0
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
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
       32 DUPTABLE                         R5 K21 [{["DataModel"] = "Standalone", ["PluginId"] = "CollectionDebugger", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       33 DUPCLOSURE                       R6 K22 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R7 K23 [PROTO_5]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 RETURN                           R7 1
