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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Bin"]
       11 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K4 [require]
       16 GETTABLEKS                       R2 R0 K7 ["Packages"]
       18 GETTABLEKS                       R2 R2 K8 ["TestLoader"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R2 R1 K9 ["launch"]
       23 LOADK                            R3 K10 ["RigGenerator"]
       24 GETTABLEKS                       R4 R0 K11 ["Src"]
       26 CALL                             R2 2 0
       27 GETTABLEKS                       R2 R1 K12 ["isCli"]
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+1]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R0 K11 ["Src"]
       34 GETTABLEKS                       R2 R2 K13 ["Resources"]
       36 GETTABLEKS                       R2 R2 K14 ["Localization"]
       38 GETTABLEKS                       R2 R2 K15 ["SourceStrings"]
       40 GETTABLEKS                       R3 R0 K11 ["Src"]
       42 GETTABLEKS                       R3 R3 K13 ["Resources"]
       44 GETTABLEKS                       R3 R3 K14 ["Localization"]
       46 GETTABLEKS                       R3 R3 K16 ["LocalizedStrings"]
       48 GETIMPORT                        R4 K4 [require]
       50 GETTABLEKS                       R5 R0 K7 ["Packages"]
       52 GETTABLEKS                       R5 R5 K17 ["PluginLoader"]
       54 CALL                             R4 1 1
       55 GETTABLEKS                       R5 R4 K18 ["PluginLoaderBuilder"]
       57 DUPTABLE                         R6 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
       58 GETIMPORT                        R7 K28 [plugin]
       60 SETTABLEKS                       R7 R6 K19 ["plugin"]
       62 LOADK                            R7 K10 ["RigGenerator"]
       63 SETTABLEKS                       R7 R6 K20 ["pluginName"]
       65 SETTABLEKS                       R3 R6 K21 ["translationResourceTable"]
       67 SETTABLEKS                       R2 R6 K22 ["fallbackResourceTable"]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K23 ["overrideLocaleId"]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K24 ["localizationNamespace"]
       75 DUPCLOSURE                       R7 K29 [PROTO_0]
       76 SETTABLEKS                       R7 R6 K25 ["getToolbarName"]
       78 DUPTABLE                         R7 K34 [{"getName", "getDescription", "icon", "text"}]
       79 DUPCLOSURE                       R8 K35 [PROTO_1]
       80 SETTABLEKS                       R8 R7 K30 ["getName"]
       82 DUPCLOSURE                       R8 K36 [PROTO_2]
       83 SETTABLEKS                       R8 R7 K31 ["getDescription"]
       85 LOADK                            R8 K37 [""]
       86 SETTABLEKS                       R8 R7 K32 ["icon"]
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K33 ["text"]
       91 SETTABLEKS                       R7 R6 K26 ["buttonInfo"]
       93 GETTABLEKS                       R7 R5 K38 ["build"]
       95 MOVE                             R8 R6
       96 CALL                             R7 1 1
       97 GETTABLEKS                       R8 R7 K39 ["pluginLoader"]
       99 NAMECALL                         R8 R8 K40 ["waitForUserInteraction"]
      101 CALL                             R8 1 1
      102 JUMPIF                           R8 ; [+1]
      103 RETURN                           R0 0
      104 GETIMPORT                        R9 K4 [require]
      106 GETIMPORT                        R10 K1 [script]
      108 GETTABLEKS                       R10 R10 K2 ["Parent"]
      110 GETTABLEKS                       R10 R10 K41 ["main"]
      112 CALL                             R9 1 1
      113 MOVE                             R10 R9
      114 GETIMPORT                        R11 K28 [plugin]
      116 MOVE                             R12 R7
      117 CALL                             R10 2 0
      118 RETURN                           R0 0
