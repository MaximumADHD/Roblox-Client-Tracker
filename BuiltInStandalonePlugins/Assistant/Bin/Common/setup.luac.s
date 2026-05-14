PROTO_0:
        0 LOADK                            R3 K0 ["AssistantButton"]
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
        0 LOADK                            R3 K0 ["AssistantToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Name"]
        3 SETTABLEKS                       R3 R0 K0 ["Name"]
        5 GETTABLEKS                       R3 R0 K1 ["MultipleDocumentInterfaceInstance"]
        7 DUPTABLE                         R4 K7 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
        8 DUPCLOSURE                       R5 K8 [PROTO_0]
        9 SETTABLEKS                       R5 R4 K2 ["getName"]
       11 DUPCLOSURE                       R5 K9 [PROTO_1]
       12 SETTABLEKS                       R5 R4 K3 ["getDescription"]
       14 LOADK                            R5 K10 [""]
       15 SETTABLEKS                       R5 R4 K4 ["icon"]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K5 ["enabled"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K6 ["clickableWhenViewportHidden"]
       23 DUPTABLE                         R5 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
       24 SETTABLEKS                       R0 R5 K11 ["plugin"]
       26 LOADK                            R6 K19 ["Assistant"]
       27 SETTABLEKS                       R6 R5 K12 ["pluginName"]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K13 ["translationResourceTable"]
       32 GETUPVAL                         R6 2
       33 SETTABLEKS                       R6 R5 K14 ["fallbackResourceTable"]
       35 DUPCLOSURE                       R6 K20 [PROTO_2]
       36 SETTABLEKS                       R6 R5 K15 ["getToolbarName"]
       38 SETTABLEKS                       R4 R5 K16 ["buttonInfo"]
       40 JUMPIFNOT                        R2 ; [+6]
       41 DUPTABLE                         R6 K22 [{"SessionStarted"}]
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R7 R6 K21 ["SessionStarted"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K17 ["extraTriggers"]
       50 LOADB                            R6 1
       51 SETTABLEKS                       R6 R4 K5 ["enabled"]
       53 DUPTABLE                         R6 K27 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       54 LOADK                            R7 K19 ["Assistant"]
       55 SETTABLEKS                       R7 R6 K23 ["id"]
       57 GETIMPORT                        R7 K30 [DockWidgetPluginGuiInfo.new]
       59 GETIMPORT                        R8 K34 [Enum.InitialDockState.Right]
       61 LOADB                            R9 0
       62 LOADB                            R10 0
       63 LOADN                            R11 128
       64 LOADN                            R12 224
       65 LOADN                            R13 250
       66 LOADN                            R14 200
       67 CALL                             R7 7 1
       68 SETTABLEKS                       R7 R6 K24 ["dockWidgetPluginGuiInfo"]
       70 DUPCLOSURE                       R7 K35 [PROTO_4]
       71 SETTABLEKS                       R7 R6 K25 ["getDockTitle"]
       73 GETIMPORT                        R7 K38 [Enum.ZIndexBehavior.Sibling]
       75 SETTABLEKS                       R7 R6 K26 ["zIndexBehavior"]
       77 SETTABLEKS                       R6 R5 K39 ["dockWidgetInfo"]
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R6 R6 K40 ["build"]
       82 MOVE                             R7 R5
       83 CALL                             R6 1 1
       84 GETTABLEKS                       R7 R6 K41 ["pluginLoader"]
       86 NAMECALL                         R7 R7 K42 ["waitForUserInteraction"]
       88 CALL                             R7 1 1
       89 JUMPIF                           R7 ; [+1]
       90 RETURN                           R0 0
       91 MOVE                             R8 R1
       92 MOVE                             R9 R0
       93 MOVE                             R10 R6
       94 CALL                             R8 2 0
       95 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
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
       32 DUPCLOSURE                       R5 K14 [PROTO_5]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
