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
       68 DUPTABLE                         R7 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
       69 GETIMPORT                        R8 K28 [plugin]
       71 SETTABLEKS                       R8 R7 K19 ["plugin"]
       73 LOADK                            R8 K29 ["EditPivotPlugin"]
       74 SETTABLEKS                       R8 R7 K20 ["pluginName"]
       76 SETTABLEKS                       R6 R7 K21 ["translationResourceTable"]
       78 SETTABLEKS                       R5 R7 K22 ["fallbackResourceTable"]
       80 LOADNIL                          R8
       81 SETTABLEKS                       R8 R7 K23 ["overrideLocaleId"]
       83 LOADNIL                          R8
       84 SETTABLEKS                       R8 R7 K24 ["localizationNamespace"]
       86 DUPCLOSURE                       R8 K30 [PROTO_0]
       87 SETTABLEKS                       R8 R7 K25 ["getToolbarName"]
       89 DUPTABLE                         R8 K35 [{"getName", "getDescription", "icon", "text"}]
       90 DUPCLOSURE                       R9 K36 [PROTO_1]
       91 SETTABLEKS                       R9 R8 K31 ["getName"]
       93 DUPCLOSURE                       R9 K37 [PROTO_2]
       94 SETTABLEKS                       R9 R8 K32 ["getDescription"]
       96 LOADK                            R9 K38 [""]
       97 SETTABLEKS                       R9 R8 K33 ["icon"]
       99 LOADNIL                          R9
      100 SETTABLEKS                       R9 R8 K34 ["text"]
      102 SETTABLEKS                       R8 R7 K26 ["buttonInfo"]
      104 GETTABLEKS                       R8 R4 K39 ["build"]
      106 MOVE                             R9 R7
      107 CALL                             R8 1 1
      108 GETTABLEKS                       R9 R8 K40 ["pluginLoader"]
      110 NAMECALL                         R9 R9 K41 ["waitForUserInteraction"]
      112 CALL                             R9 1 1
      113 JUMPIF                           R9 ; [+1]
      114 RETURN                           R0 0
      115 GETIMPORT                        R10 K1 [require]
      117 GETIMPORT                        R11 K3 [script]
      119 GETTABLEKS                       R11 R11 K4 ["Parent"]
      121 GETTABLEKS                       R11 R11 K42 ["main"]
      123 CALL                             R10 1 1
      124 MOVE                             R11 R10
      125 GETIMPORT                        R12 K28 [plugin]
      127 MOVE                             R13 R8
      128 CALL                             R11 2 0
      129 RETURN                           R0 0
