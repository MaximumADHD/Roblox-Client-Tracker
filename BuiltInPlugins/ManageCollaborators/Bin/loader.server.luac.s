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
       63 DUPTABLE                         R6 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       64 GETIMPORT                        R7 K32 [plugin]
       66 SETTABLEKS                       R7 R6 K21 ["plugin"]
       68 LOADK                            R7 K33 ["ManageCollaborators"]
       69 SETTABLEKS                       R7 R6 K22 ["pluginName"]
       71 SETTABLEKS                       R5 R6 K23 ["translationResourceTable"]
       73 SETTABLEKS                       R4 R6 K24 ["fallbackResourceTable"]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K25 ["overrideLocaleId"]
       78 LOADNIL                          R7
       79 SETTABLEKS                       R7 R6 K26 ["localizationNamespace"]
       81 LOADB                            R7 1
       82 SETTABLEKS                       R7 R6 K27 ["noToolbar"]
       84 LOADNIL                          R7
       85 SETTABLEKS                       R7 R6 K28 ["getToolbarName"]
       87 LOADNIL                          R7
       88 SETTABLEKS                       R7 R6 K29 ["buttonInfo"]
       90 LOADNIL                          R7
       91 SETTABLEKS                       R7 R6 K30 ["dockWidgetInfo"]
       93 GETTABLEKS                       R7 R3 K34 ["build"]
       95 MOVE                             R8 R6
       96 CALL                             R7 1 1
       97 GETTABLEKS                       R8 R7 K35 ["pluginLoader"]
       99 NAMECALL                         R8 R8 K36 ["waitForUserInteraction"]
      101 CALL                             R8 1 0
      102 GETIMPORT                        R8 K5 [require]
      104 GETIMPORT                        R9 K7 [script]
      106 GETTABLEKS                       R9 R9 K8 ["Parent"]
      108 GETTABLEKS                       R9 R9 K37 ["main"]
      110 CALL                             R8 1 1
      111 MOVE                             R9 R8
      112 GETIMPORT                        R10 K32 [plugin]
      114 MOVE                             R11 R7
      115 CALL                             R9 2 0
      116 RETURN                           R0 0
