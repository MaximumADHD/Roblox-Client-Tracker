PROTO_0:
        0 LOADK                            R0 K0 ["draftsToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["draftsButton"]
        1 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Meta"]
        4 LOADK                            R7 K1 ["PluginButtonTooltip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["main"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["RunService"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 NAMECALL                         R2 R1 K10 ["IsEdit"]
       18 CALL                             R2 1 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R3 K12 [plugin]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K3 [script]
       27 GETTABLEKS                       R2 R2 K4 ["Parent"]
       29 GETTABLEKS                       R2 R2 K4 ["Parent"]
       31 GETIMPORT                        R3 K1 [require]
       33 GETTABLEKS                       R4 R2 K13 ["Packages"]
       35 GETTABLEKS                       R4 R4 K14 ["PluginLoader"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R3 K15 ["PluginLoaderBuilder"]
       40 GETTABLEKS                       R5 R2 K16 ["Src"]
       42 GETTABLEKS                       R5 R5 K17 ["Resources"]
       44 GETTABLEKS                       R5 R5 K18 ["SourceStrings"]
       46 GETTABLEKS                       R6 R2 K16 ["Src"]
       48 GETTABLEKS                       R6 R6 K17 ["Resources"]
       50 GETTABLEKS                       R6 R6 K19 ["LocalizedStrings"]
       52 DUPTABLE                         R7 K30 [{["plugin"], ["pluginName"] = "Drafts", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = }]
       53 GETIMPORT                        R8 K12 [plugin]
       55 SETTABLEKS                       R8 R7 K11 ["plugin"]
       57 SETTABLEKS                       R6 R7 K22 ["translationResourceTable"]
       59 SETTABLEKS                       R5 R7 K23 ["fallbackResourceTable"]
       61 DUPCLOSURE                       R8 K31 [PROTO_0]
       62 SETTABLEKS                       R8 R7 K27 ["getToolbarName"]
       64 DUPTABLE                         R8 K39 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["enabled"] = False}]
       65 DUPCLOSURE                       R9 K40 [PROTO_1]
       66 SETTABLEKS                       R9 R8 K32 ["getName"]
       68 DUPCLOSURE                       R9 K41 [PROTO_2]
       69 SETTABLEKS                       R9 R8 K33 ["getDescription"]
       71 SETTABLEKS                       R8 R7 K28 ["buttonInfo"]
       73 GETTABLEKS                       R8 R4 K42 ["build"]
       75 MOVE                             R9 R7
       76 CALL                             R8 1 0
       77 RETURN                           R0 0
