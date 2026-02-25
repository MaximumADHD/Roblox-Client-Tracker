PROTO_0:
        0 LOADK                            R3 K0 ["Home"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Scale"]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["Scale an Object"]
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K3 ["Packages"]
        9 GETTABLEKS                       R1 R2 K4 ["DraggerFramework"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R0 K3 ["Packages"]
       15 GETTABLEKS                       R3 R4 K7 ["PluginLoader"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K8 ["PluginLoaderBuilder"]
       20 GETTABLEKS                       R5 R1 K9 ["Resources"]
       22 GETTABLEKS                       R4 R5 K10 ["SourceStrings"]
       24 GETTABLEKS                       R6 R1 K9 ["Resources"]
       26 GETTABLEKS                       R5 R6 K11 ["LocalizedStrings"]
       28 DUPTABLE                         R6 K20 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo"}]
       29 GETIMPORT                        R7 K21 [plugin]
       31 SETTABLEKS                       R7 R6 K12 ["plugin"]
       33 LOADK                            R7 K22 ["ScaleDragger"]
       34 SETTABLEKS                       R7 R6 K13 ["pluginName"]
       36 SETTABLEKS                       R5 R6 K14 ["translationResourceTable"]
       38 SETTABLEKS                       R4 R6 K15 ["fallbackResourceTable"]
       40 LOADNIL                          R7
       41 SETTABLEKS                       R7 R6 K16 ["overrideLocaleId"]
       43 LOADNIL                          R7
       44 SETTABLEKS                       R7 R6 K17 ["localizationNamespace"]
       46 DUPCLOSURE                       R7 K23 [PROTO_0]
       47 SETTABLEKS                       R7 R6 K18 ["getToolbarName"]
       49 DUPTABLE                         R7 K28 [{"getName", "getDescription", "icon", "text"}]
       50 DUPCLOSURE                       R8 K29 [PROTO_1]
       51 SETTABLEKS                       R8 R7 K24 ["getName"]
       53 DUPCLOSURE                       R8 K30 [PROTO_2]
       54 SETTABLEKS                       R8 R7 K25 ["getDescription"]
       56 LOADK                            R8 K31 [""]
       57 SETTABLEKS                       R8 R7 K26 ["icon"]
       59 LOADNIL                          R8
       60 SETTABLEKS                       R8 R7 K27 ["text"]
       62 SETTABLEKS                       R7 R6 K19 ["buttonInfo"]
       64 GETTABLEKS                       R7 R3 K32 ["build"]
       66 MOVE                             R8 R6
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R7 K33 ["pluginLoader"]
       70 NAMECALL                         R8 R8 K34 ["waitForUserInteraction"]
       72 CALL                             R8 1 1
       73 JUMPIF                           R8 ; [+1]
       74 RETURN                           R0 0
       75 GETIMPORT                        R9 K6 [require]
       77 GETIMPORT                        R12 K1 [script]
       79 GETTABLEKS                       R11 R12 K2 ["Parent"]
       81 GETTABLEKS                       R10 R11 K35 ["main"]
       83 CALL                             R9 1 1
       84 MOVE                             R10 R9
       85 GETIMPORT                        R11 K21 [plugin]
       87 MOVE                             R12 R7
       88 CALL                             R10 2 0
       89 RETURN                           R0 0
