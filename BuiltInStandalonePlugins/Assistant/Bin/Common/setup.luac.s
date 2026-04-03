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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["DataModelSessionStarted"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Name"]
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
       40 GETUPVAL                         R7 3
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+1]
       43 JUMPIFNOT                        R2 ; [+6]
       44 DUPTABLE                         R6 K22 [{"SessionStarted"}]
       45 NEWCLOSURE                       R7 P3
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R7 R6 K21 ["SessionStarted"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K17 ["extraTriggers"]
       53 LOADB                            R6 1
       54 SETTABLEKS                       R6 R4 K5 ["enabled"]
       56 DUPTABLE                         R6 K27 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       57 LOADK                            R7 K19 ["Assistant"]
       58 SETTABLEKS                       R7 R6 K23 ["id"]
       60 GETIMPORT                        R7 K30 [DockWidgetPluginGuiInfo.new]
       62 GETIMPORT                        R8 K34 [Enum.InitialDockState.Right]
       64 LOADB                            R9 0
       65 LOADB                            R10 0
       66 LOADN                            R11 128
       67 LOADN                            R12 224
       68 LOADN                            R13 250
       69 LOADN                            R14 200
       70 CALL                             R7 7 1
       71 SETTABLEKS                       R7 R6 K24 ["dockWidgetPluginGuiInfo"]
       73 DUPCLOSURE                       R7 K35 [PROTO_4]
       74 SETTABLEKS                       R7 R6 K25 ["getDockTitle"]
       76 GETIMPORT                        R7 K38 [Enum.ZIndexBehavior.Sibling]
       78 SETTABLEKS                       R7 R6 K26 ["zIndexBehavior"]
       80 SETTABLEKS                       R6 R5 K39 ["dockWidgetInfo"]
       82 GETUPVAL                         R7 4
       83 GETTABLEKS                       R6 R7 K40 ["build"]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 1
       87 GETTABLEKS                       R7 R6 K41 ["pluginLoader"]
       89 NAMECALL                         R7 R7 K42 ["waitForUserInteraction"]
       91 CALL                             R7 1 1
       92 JUMPIF                           R7 ; [+1]
       93 RETURN                           R0 0
       94 MOVE                             R8 R1
       95 MOVE                             R9 R0
       96 MOVE                             R10 R6
       97 CALL                             R8 2 0
       98 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Flags"]
       38 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantExtraTriggersStandaloneOnly"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K16 [PROTO_5]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
