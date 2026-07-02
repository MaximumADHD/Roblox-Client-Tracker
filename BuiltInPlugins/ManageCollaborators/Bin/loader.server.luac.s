MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K5 [require]
       11 GETIMPORT                        R1 K7 [script]
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETTABLEKS                       R1 R1 K9 ["defineLuaFlags"]
       17 CALL                             R0 1 0
       18 GETIMPORT                        R0 K7 [script]
       20 GETTABLEKS                       R0 R0 K8 ["Parent"]
       22 GETTABLEKS                       R0 R0 K8 ["Parent"]
       24 GETIMPORT                        R1 K5 [require]
       26 GETTABLEKS                       R2 R0 K10 ["Src"]
       28 GETTABLEKS                       R2 R2 K11 ["Util"]
       30 GETTABLEKS                       R2 R2 K12 ["DebugFlags"]
       32 CALL                             R1 1 1
       33 GETTABLEKS                       R2 R1 K13 ["RunningUnderCLI"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K5 [require]
       40 GETTABLEKS                       R3 R0 K14 ["Packages"]
       42 GETTABLEKS                       R3 R3 K15 ["PluginLoader"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R2 K16 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R4 R0 K10 ["Src"]
       49 GETTABLEKS                       R4 R4 K17 ["Resources"]
       51 GETTABLEKS                       R4 R4 K18 ["Localization"]
       53 GETTABLEKS                       R4 R4 K19 ["SourceStrings"]
       55 GETTABLEKS                       R5 R0 K10 ["Src"]
       57 GETTABLEKS                       R5 R5 K17 ["Resources"]
       59 GETTABLEKS                       R5 R5 K18 ["Localization"]
       61 GETTABLEKS                       R5 R5 K20 ["LocalizedStrings"]
       63 DUPTABLE                         R6 K34 [{["plugin"], ["pluginName"] = "ManageCollaborators", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["getToolbarName"] = , ["buttonInfo"] = , ["dockWidgetInfo"] = }]
       64 GETIMPORT                        R7 K35 [plugin]
       66 SETTABLEKS                       R7 R6 K21 ["plugin"]
       68 SETTABLEKS                       R5 R6 K24 ["translationResourceTable"]
       70 SETTABLEKS                       R4 R6 K25 ["fallbackResourceTable"]
       72 GETTABLEKS                       R7 R3 K36 ["build"]
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R7 K37 ["pluginLoader"]
       78 NAMECALL                         R8 R8 K38 ["waitForUserInteraction"]
       80 CALL                             R8 1 0
       81 GETIMPORT                        R8 K5 [require]
       83 GETIMPORT                        R9 K7 [script]
       85 GETTABLEKS                       R9 R9 K8 ["Parent"]
       87 GETTABLEKS                       R9 R9 K39 ["main"]
       89 CALL                             R8 1 1
       90 MOVE                             R9 R8
       91 GETIMPORT                        R10 K35 [plugin]
       93 MOVE                             R11 R7
       94 CALL                             R9 2 0
       95 RETURN                           R0 0
