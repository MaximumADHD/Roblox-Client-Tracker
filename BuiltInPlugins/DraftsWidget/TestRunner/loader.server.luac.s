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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 LOADK                            R2 K4 ["DraftsWidgetFlags"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 MOVE                             R1 R0
       12 JUMPIFNOT                        R1 ; [+4]
       13 LOADK                            R3 K6 ["RunningUnderCLI"]
       14 NAMECALL                         R1 R0 K5 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETTABLEKS                       R2 R1 K7 ["Value"]
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K9 [require]
       24 GETIMPORT                        R3 K11 [script]
       26 GETTABLEKS                       R3 R3 K12 ["Parent"]
       28 GETTABLEKS                       R3 R3 K13 ["main"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K1 [game]
       33 LOADK                            R5 K14 ["RunService"]
       34 NAMECALL                         R3 R3 K3 ["GetService"]
       36 CALL                             R3 2 1
       37 NAMECALL                         R4 R3 K15 ["IsEdit"]
       39 CALL                             R4 1 1
       40 JUMPIFNOT                        R4 ; [+5]
       41 MOVE                             R4 R2
       42 GETIMPORT                        R5 K17 [plugin]
       44 CALL                             R4 1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R4 K11 [script]
       48 GETTABLEKS                       R4 R4 K12 ["Parent"]
       50 GETTABLEKS                       R4 R4 K12 ["Parent"]
       52 GETIMPORT                        R5 K9 [require]
       54 GETTABLEKS                       R6 R4 K18 ["Packages"]
       56 GETTABLEKS                       R6 R6 K19 ["PluginLoader"]
       58 CALL                             R5 1 1
       59 GETTABLEKS                       R6 R5 K20 ["PluginLoaderBuilder"]
       61 GETTABLEKS                       R7 R4 K21 ["Src"]
       63 GETTABLEKS                       R7 R7 K22 ["Resources"]
       65 GETTABLEKS                       R7 R7 K23 ["SourceStrings"]
       67 GETTABLEKS                       R8 R4 K21 ["Src"]
       69 GETTABLEKS                       R8 R8 K22 ["Resources"]
       71 GETTABLEKS                       R8 R8 K24 ["LocalizedStrings"]
       73 DUPTABLE                         R9 K35 [{["plugin"], ["pluginName"] = "Drafts", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = }]
       74 GETIMPORT                        R10 K17 [plugin]
       76 SETTABLEKS                       R10 R9 K16 ["plugin"]
       78 SETTABLEKS                       R8 R9 K27 ["translationResourceTable"]
       80 SETTABLEKS                       R7 R9 K28 ["fallbackResourceTable"]
       82 DUPCLOSURE                       R10 K36 [PROTO_0]
       83 SETTABLEKS                       R10 R9 K32 ["getToolbarName"]
       85 DUPTABLE                         R10 K44 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["enabled"] = False}]
       86 DUPCLOSURE                       R11 K45 [PROTO_1]
       87 SETTABLEKS                       R11 R10 K37 ["getName"]
       89 DUPCLOSURE                       R11 K46 [PROTO_2]
       90 SETTABLEKS                       R11 R10 K38 ["getDescription"]
       92 SETTABLEKS                       R10 R9 K33 ["buttonInfo"]
       94 GETTABLEKS                       R10 R6 K47 ["build"]
       96 MOVE                             R11 R9
       97 CALL                             R10 1 0
       98 RETURN                           R0 0
