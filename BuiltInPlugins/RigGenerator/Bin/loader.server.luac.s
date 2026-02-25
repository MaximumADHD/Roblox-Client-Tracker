PROTO_0:
        0 LOADK                            R3 K0 ["Rig Generator"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Generate Rig"]
        1 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K7 ["launch"]
       16 LOADK                            R3 K8 ["RigGenerator"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R5 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Resources"]
       29 GETTABLEKS                       R3 R4 K12 ["Localization"]
       31 GETTABLEKS                       R2 R3 K13 ["SourceStrings"]
       33 GETTABLEKS                       R6 R0 K9 ["Src"]
       35 GETTABLEKS                       R5 R6 K11 ["Resources"]
       37 GETTABLEKS                       R4 R5 K12 ["Localization"]
       39 GETTABLEKS                       R3 R4 K14 ["LocalizedStrings"]
       41 GETIMPORT                        R4 K4 [require]
       43 GETTABLEKS                       R6 R0 K5 ["Packages"]
       45 GETTABLEKS                       R5 R6 K15 ["PluginLoader"]
       47 CALL                             R4 1 1
       48 GETTABLEKS                       R5 R4 K16 ["PluginLoaderBuilder"]
       50 DUPTABLE                         R6 K25 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
       51 GETIMPORT                        R7 K26 [plugin]
       53 SETTABLEKS                       R7 R6 K17 ["plugin"]
       55 LOADK                            R7 K8 ["RigGenerator"]
       56 SETTABLEKS                       R7 R6 K18 ["pluginName"]
       58 SETTABLEKS                       R3 R6 K19 ["translationResourceTable"]
       60 SETTABLEKS                       R2 R6 K20 ["fallbackResourceTable"]
       62 LOADNIL                          R7
       63 SETTABLEKS                       R7 R6 K21 ["overrideLocaleId"]
       65 LOADNIL                          R7
       66 SETTABLEKS                       R7 R6 K22 ["localizationNamespace"]
       68 DUPCLOSURE                       R7 K27 [PROTO_0]
       69 SETTABLEKS                       R7 R6 K23 ["getToolbarName"]
       71 DUPTABLE                         R7 K32 [{"getName", "getDescription", "icon", "text"}]
       72 DUPCLOSURE                       R8 K33 [PROTO_1]
       73 SETTABLEKS                       R8 R7 K28 ["getName"]
       75 DUPCLOSURE                       R8 K34 [PROTO_2]
       76 SETTABLEKS                       R8 R7 K29 ["getDescription"]
       78 LOADK                            R8 K35 [""]
       79 SETTABLEKS                       R8 R7 K30 ["icon"]
       81 LOADNIL                          R8
       82 SETTABLEKS                       R8 R7 K31 ["text"]
       84 SETTABLEKS                       R7 R6 K24 ["buttonInfo"]
       86 GETTABLEKS                       R7 R5 K36 ["build"]
       88 MOVE                             R8 R6
       89 CALL                             R7 1 1
       90 GETTABLEKS                       R8 R7 K37 ["pluginLoader"]
       92 NAMECALL                         R8 R8 K38 ["waitForUserInteraction"]
       94 CALL                             R8 1 1
       95 JUMPIF                           R8 ; [+1]
       96 RETURN                           R0 0
       97 GETIMPORT                        R9 K4 [require]
       99 GETIMPORT                        R12 K1 [script]
      101 GETTABLEKS                       R11 R12 K2 ["Parent"]
      103 GETTABLEKS                       R10 R11 K39 ["main"]
      105 CALL                             R9 1 1
      106 MOVE                             R10 R9
      107 GETIMPORT                        R11 K26 [plugin]
      109 MOVE                             R12 R7
      110 CALL                             R10 2 0
      111 RETURN                           R0 0
