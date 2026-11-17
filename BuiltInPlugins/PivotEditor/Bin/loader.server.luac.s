PROTO_0:
        0 LOADK                            R3 K0 ["Pivot"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["EditPivot"]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 [""]
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Flags"]
       22 GETTABLEKS                       R2 R2 K8 ["getFFlagImprovePluginSpeedPivotEditor"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [require]
       31 GETTABLEKS                       R3 R0 K6 ["Src"]
       33 GETTABLEKS                       R3 R3 K9 ["Utility"]
       35 GETTABLEKS                       R3 R3 K10 ["DebugFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K11 ["RunningUnderCLI"]
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K1 [require]
       45 GETTABLEKS                       R4 R0 K12 ["Packages"]
       47 GETTABLEKS                       R4 R4 K13 ["PluginLoader"]
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R4 R3 K14 ["PluginLoaderBuilder"]
       52 GETTABLEKS                       R5 R0 K6 ["Src"]
       54 GETTABLEKS                       R5 R5 K15 ["Resources"]
       56 GETTABLEKS                       R5 R5 K16 ["Localization"]
       58 GETTABLEKS                       R5 R5 K17 ["SourceStrings"]
       60 GETTABLEKS                       R6 R0 K6 ["Src"]
       62 GETTABLEKS                       R6 R6 K15 ["Resources"]
       64 GETTABLEKS                       R6 R6 K16 ["Localization"]
       66 GETTABLEKS                       R6 R6 K18 ["LocalizedStrings"]
       68 DUPTABLE                         R7 K29 [{["plugin"], ["pluginName"] = "EditPivotPlugin", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"]}]
       69 GETIMPORT                        R8 K30 [plugin]
       71 SETTABLEKS                       R8 R7 K19 ["plugin"]
       73 SETTABLEKS                       R6 R7 K22 ["translationResourceTable"]
       75 SETTABLEKS                       R5 R7 K23 ["fallbackResourceTable"]
       77 DUPCLOSURE                       R8 K31 [PROTO_0]
       78 SETTABLEKS                       R8 R7 K27 ["getToolbarName"]
       80 DUPTABLE                         R8 K37 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
       81 DUPCLOSURE                       R9 K38 [PROTO_1]
       82 SETTABLEKS                       R9 R8 K32 ["getName"]
       84 DUPCLOSURE                       R9 K39 [PROTO_2]
       85 SETTABLEKS                       R9 R8 K33 ["getDescription"]
       87 SETTABLEKS                       R8 R7 K28 ["buttonInfo"]
       89 GETTABLEKS                       R8 R4 K40 ["build"]
       91 MOVE                             R9 R7
       92 CALL                             R8 1 1
       93 GETTABLEKS                       R9 R8 K41 ["pluginLoader"]
       95 NAMECALL                         R9 R9 K42 ["waitForUserInteraction"]
       97 CALL                             R9 1 1
       98 JUMPIF                           R9 ; [+1]
       99 RETURN                           R0 0
      100 GETIMPORT                        R10 K1 [require]
      102 GETIMPORT                        R11 K3 [script]
      104 GETTABLEKS                       R11 R11 K4 ["Parent"]
      106 GETTABLEKS                       R11 R11 K43 ["main"]
      108 CALL                             R10 1 1
      109 MOVE                             R11 R10
      110 GETIMPORT                        R12 K30 [plugin]
      112 MOVE                             R13 R8
      113 CALL                             R11 2 0
      114 RETURN                           R0 0
