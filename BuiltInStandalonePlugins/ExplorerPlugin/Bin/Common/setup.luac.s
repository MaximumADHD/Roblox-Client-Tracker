PROTO_0:
        0 LOADK                            R3 K0 ["ExplorerPluginButton"]
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
        0 LOADK                            R3 K0 ["ExplorerPluginToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Title"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+34]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K7 [{[1] = "LuaExplorerDoubleLoad", ["description"] = "Fired when load() is called twice", ["backends"], ["throttlingPercentage"], ["lastUpdated"]}]
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K8 ["Points"]
        7 SETLIST                          R3 R4 1 [1]
        9 SETTABLEKS                       R3 R2 K4 ["backends"]
       11 GETIMPORT                        R3 K10 [game]
       13 LOADK                            R5 K11 ["LuaExplorerDoubleLoadThrottlingHundredthsPercent"]
       14 LOADN                            R6 10000
       15 NAMECALL                         R3 R3 K12 ["DefineFastInt"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K5 ["throttlingPercentage"]
       20 NEWTABLE                         R3 0 3
       22 LOADN                            R4 25
       23 LOADN                            R5 4
       24 LOADN                            R6 3
       25 SETLIST                          R3 R4 3 [1]
       27 SETTABLEKS                       R3 R2 K6 ["lastUpdated"]
       29 NEWTABLE                         R3 0 0
       31 LOADN                            R4 1
       32 NAMECALL                         R0 R0 K13 ["LogCounter"]
       34 CALL                             R0 4 0
       35 RETURN                           R0 0
       36 LOADB                            R0 1
       37 SETUPVAL                         R0 0
       38 GETUPVAL                         R0 2
       39 GETTABLEKS                       R0 R0 K14 ["build"]
       41 GETUPVAL                         R1 3
       42 CALL                             R0 1 1
       43 GETTABLEKS                       R1 R0 K15 ["pluginLoader"]
       45 NAMECALL                         R1 R1 K16 ["waitForUserInteraction"]
       47 CALL                             R1 1 1
       48 JUMPIF                           R1 ; [+1]
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 4
       51 NAMECALL                         R2 R2 K17 ["Disconnect"]
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 5
       55 GETUPVAL                         R3 6
       56 MOVE                             R4 R0
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K9 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
        6 DUPCLOSURE                       R3 K10 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K11 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K19 [{["plugin"], ["pluginName"] = "ExplorerPlugin", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
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
       29 DUPTABLE                         R4 K25 [{["id"] = "ExplorerPlugin", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       30 GETIMPORT                        R5 K28 [DockWidgetPluginGuiInfo.new]
       32 GETIMPORT                        R6 K32 [Enum.InitialDockState.Right]
       34 LOADB                            R7 1
       35 LOADB                            R8 0
       36 LOADN                            R9 640
       37 LOADN                            R10 480
       38 LOADN                            R11 250
       39 LOADN                            R12 200
       40 CALL                             R5 7 1
       41 SETTABLEKS                       R5 R4 K22 ["dockWidgetPluginGuiInfo"]
       43 DUPCLOSURE                       R5 K33 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K23 ["getDockTitle"]
       46 GETIMPORT                        R5 K36 [Enum.ZIndexBehavior.Sibling]
       48 SETTABLEKS                       R5 R4 K24 ["zIndexBehavior"]
       50 SETTABLEKS                       R4 R3 K37 ["dockWidgetInfo"]
       52 LOADNIL                          R4
       53 LOADB                            R5 0
       54 NEWCLOSURE                       R6 P4
       55 CAPTURE                          REF R5
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          REF R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 LOADK                            R9 K38 ["PlaceManager"]
       63 NAMECALL                         R7 R0 K39 ["GetPluginComponent"]
       65 CALL                             R7 2 1
       66 GETTABLEKS                       R8 R7 K40 ["PlaceDocPanelShown"]
       68 MOVE                             R10 R6
       69 NAMECALL                         R8 R8 K41 ["Connect"]
       71 CALL                             R8 2 1
       72 MOVE                             R4 R8
       73 GETIMPORT                        R8 K43 [pcall]
       75 NEWCLOSURE                       R9 P5
       76 CAPTURE                          VAL R7
       77 CALL                             R8 1 2
       78 JUMPIFNOT                        R8 ; [+3]
       79 JUMPIFNOT                        R9 ; [+2]
       80 MOVE                             R10 R6
       81 CALL                             R10 0 0
       82 CLOSEUPVALS                      R4
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["PluginLoader"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["PluginLoaderBuilder"]
       22 GETTABLEKS                       R4 R1 K13 ["Src"]
       24 GETTABLEKS                       R4 R4 K14 ["Resources"]
       26 GETTABLEKS                       R4 R4 K15 ["Localization"]
       28 GETTABLEKS                       R4 R4 K16 ["SourceStrings"]
       30 GETTABLEKS                       R5 R1 K13 ["Src"]
       32 GETTABLEKS                       R5 R5 K14 ["Resources"]
       34 GETTABLEKS                       R5 R5 K15 ["Localization"]
       36 GETTABLEKS                       R5 R5 K17 ["LocalizedStrings"]
       38 DUPCLOSURE                       R6 K18 [PROTO_6]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
