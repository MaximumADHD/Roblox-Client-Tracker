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
        1 JUMPIFNOT                        R0 ; [+40]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K5 [{"eventName", "description", "backends", "throttlingPercentage", "lastUpdated"}]
        4 LOADK                            R3 K6 ["LuaExplorerDoubleLoad"]
        5 SETTABLEKS                       R3 R2 K0 ["eventName"]
        7 LOADK                            R3 K7 ["Fired when load() is called twice"]
        8 SETTABLEKS                       R3 R2 K1 ["description"]
       10 NEWTABLE                         R3 0 1
       12 LOADK                            R4 K8 ["Points"]
       13 SETLIST                          R3 R4 1 [1]
       15 SETTABLEKS                       R3 R2 K2 ["backends"]
       17 GETIMPORT                        R3 K10 [game]
       19 LOADK                            R5 K11 ["LuaExplorerDoubleLoadThrottlingHundredthsPercent"]
       20 LOADN                            R6 16
       21 NAMECALL                         R3 R3 K12 ["DefineFastInt"]
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K3 ["throttlingPercentage"]
       26 NEWTABLE                         R3 0 3
       28 LOADN                            R4 25
       29 LOADN                            R5 4
       30 LOADN                            R6 3
       31 SETLIST                          R3 R4 3 [1]
       33 SETTABLEKS                       R3 R2 K4 ["lastUpdated"]
       35 NEWTABLE                         R3 0 0
       37 LOADN                            R4 1
       38 NAMECALL                         R0 R0 K13 ["LogCounter"]
       40 CALL                             R0 4 0
       41 RETURN                           R0 0
       42 LOADB                            R0 1
       43 SETUPVAL                         R0 0
       44 GETUPVAL                         R1 2
       45 GETTABLEKS                       R0 R1 K14 ["build"]
       47 GETUPVAL                         R1 3
       48 CALL                             R0 1 1
       49 GETTABLEKS                       R1 R0 K15 ["pluginLoader"]
       51 NAMECALL                         R1 R1 K16 ["waitForUserInteraction"]
       53 CALL                             R1 1 1
       54 JUMPIF                           R1 ; [+1]
       55 RETURN                           R0 0
       56 GETUPVAL                         R2 4
       57 NAMECALL                         R2 R2 K17 ["Disconnect"]
       59 CALL                             R2 1 0
       60 GETUPVAL                         R2 5
       61 GETUPVAL                         R3 6
       62 MOVE                             R4 R0
       63 CALL                             R2 2 0
       64 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
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
       24 LOADK                            R4 K17 ["ExplorerPlugin"]
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
       41 DUPTABLE                         R4 K23 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       42 LOADK                            R5 K17 ["ExplorerPlugin"]
       43 SETTABLEKS                       R5 R4 K19 ["id"]
       45 GETIMPORT                        R5 K26 [DockWidgetPluginGuiInfo.new]
       47 GETIMPORT                        R6 K30 [Enum.InitialDockState.Right]
       49 LOADB                            R7 1
       50 LOADB                            R8 0
       51 LOADN                            R9 128
       52 LOADN                            R10 224
       53 LOADN                            R11 250
       54 LOADN                            R12 200
       55 CALL                             R5 7 1
       56 SETTABLEKS                       R5 R4 K20 ["dockWidgetPluginGuiInfo"]
       58 DUPCLOSURE                       R5 K31 [PROTO_3]
       59 SETTABLEKS                       R5 R4 K21 ["getDockTitle"]
       61 GETIMPORT                        R5 K34 [Enum.ZIndexBehavior.Sibling]
       63 SETTABLEKS                       R5 R4 K22 ["zIndexBehavior"]
       65 SETTABLEKS                       R4 R3 K35 ["dockWidgetInfo"]
       67 LOADNIL                          R4
       68 LOADB                            R5 0
       69 NEWCLOSURE                       R6 P4
       70 CAPTURE                          REF R5
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          REF R4
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R0
       77 LOADK                            R9 K36 ["PlaceManager"]
       78 NAMECALL                         R7 R0 K37 ["GetPluginComponent"]
       80 CALL                             R7 2 1
       81 GETTABLEKS                       R8 R7 K38 ["PlaceDocPanelShown"]
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R8 K39 ["Connect"]
       86 CALL                             R8 2 1
       87 MOVE                             R4 R8
       88 GETIMPORT                        R8 K41 [pcall]
       90 NEWCLOSURE                       R9 P5
       91 CAPTURE                          VAL R7
       92 CALL                             R8 1 2
       93 JUMPIFNOT                        R8 ; [+3]
       94 JUMPIFNOT                        R9 ; [+2]
       95 MOVE                             R10 R6
       96 CALL                             R10 0 0
       97 CLOSEUPVALS                      R4
       98 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["PluginLoader"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["PluginLoaderBuilder"]
       22 GETTABLEKS                       R7 R1 K13 ["Src"]
       24 GETTABLEKS                       R6 R7 K14 ["Resources"]
       26 GETTABLEKS                       R5 R6 K15 ["Localization"]
       28 GETTABLEKS                       R4 R5 K16 ["SourceStrings"]
       30 GETTABLEKS                       R8 R1 K13 ["Src"]
       32 GETTABLEKS                       R7 R8 K14 ["Resources"]
       34 GETTABLEKS                       R6 R7 K15 ["Localization"]
       36 GETTABLEKS                       R5 R6 K17 ["LocalizedStrings"]
       38 DUPCLOSURE                       R6 K18 [PROTO_6]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
