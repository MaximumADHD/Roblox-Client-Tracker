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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 GETTABLEKS                       R2 R0 K1 ["MultipleDocumentInterfaceInstance"]
        7 DUPTABLE                         R3 K7 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
        8 DUPCLOSURE                       R4 K8 [PROTO_0]
        9 SETTABLEKS                       R4 R3 K2 ["getName"]
       11 DUPCLOSURE                       R4 K9 [PROTO_1]
       12 SETTABLEKS                       R4 R3 K3 ["getDescription"]
       14 LOADK                            R4 K10 [""]
       15 SETTABLEKS                       R4 R3 K4 ["icon"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K5 ["enabled"]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K6 ["clickableWhenViewportHidden"]
       23 DUPTABLE                         R4 K18 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
       24 SETTABLEKS                       R0 R4 K11 ["plugin"]
       26 LOADK                            R5 K19 ["Assistant"]
       27 SETTABLEKS                       R5 R4 K12 ["pluginName"]
       29 GETUPVAL                         R5 1
       30 SETTABLEKS                       R5 R4 K13 ["translationResourceTable"]
       32 GETUPVAL                         R5 2
       33 SETTABLEKS                       R5 R4 K14 ["fallbackResourceTable"]
       35 DUPCLOSURE                       R5 K20 [PROTO_2]
       36 SETTABLEKS                       R5 R4 K15 ["getToolbarName"]
       38 SETTABLEKS                       R3 R4 K16 ["buttonInfo"]
       40 DUPTABLE                         R5 K22 [{"SessionStarted"}]
       41 NEWCLOSURE                       R6 P3
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R6 R5 K21 ["SessionStarted"]
       45 SETTABLEKS                       R5 R4 K17 ["extraTriggers"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R3 K5 ["enabled"]
       50 DUPTABLE                         R5 K27 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       51 LOADK                            R6 K19 ["Assistant"]
       52 SETTABLEKS                       R6 R5 K23 ["id"]
       54 GETIMPORT                        R6 K30 [DockWidgetPluginGuiInfo.new]
       56 GETIMPORT                        R7 K34 [Enum.InitialDockState.Right]
       58 LOADB                            R8 0
       59 LOADB                            R9 0
       60 LOADN                            R10 128
       61 LOADN                            R11 224
       62 LOADN                            R12 250
       63 LOADN                            R13 200
       64 CALL                             R6 7 1
       65 SETTABLEKS                       R6 R5 K24 ["dockWidgetPluginGuiInfo"]
       67 DUPCLOSURE                       R6 K35 [PROTO_4]
       68 SETTABLEKS                       R6 R5 K25 ["getDockTitle"]
       70 GETIMPORT                        R6 K38 [Enum.ZIndexBehavior.Sibling]
       72 SETTABLEKS                       R6 R5 K26 ["zIndexBehavior"]
       74 SETTABLEKS                       R5 R4 K39 ["dockWidgetInfo"]
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R5 R6 K40 ["build"]
       79 MOVE                             R6 R4
       80 CALL                             R5 1 1
       81 GETTABLEKS                       R6 R5 K41 ["pluginLoader"]
       83 NAMECALL                         R6 R6 K42 ["waitForUserInteraction"]
       85 CALL                             R6 1 1
       86 JUMPIF                           R6 ; [+1]
       87 RETURN                           R0 0
       88 MOVE                             R7 R1
       89 MOVE                             R8 R0
       90 MOVE                             R9 R5
       91 CALL                             R7 2 0
       92 RETURN                           R0 0

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
       32 DUPCLOSURE                       R5 K14 [PROTO_5]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
