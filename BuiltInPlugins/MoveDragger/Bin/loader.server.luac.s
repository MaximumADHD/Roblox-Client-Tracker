PROTO_0:
        0 LOADK                            R3 K0 ["Home"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Move"]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["Move an Object"]
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R0 K3 ["Packages"]
       15 GETTABLEKS                       R3 R3 K7 ["PluginLoader"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K8 ["PluginLoaderBuilder"]
       20 GETTABLEKS                       R4 R1 K9 ["Resources"]
       22 GETTABLEKS                       R4 R4 K10 ["SourceStrings"]
       24 GETTABLEKS                       R5 R1 K9 ["Resources"]
       26 GETTABLEKS                       R5 R5 K11 ["LocalizedStrings"]
       28 DUPTABLE                         R6 K22 [{["plugin"], ["pluginName"] = "MoveDragger", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"]}]
       29 GETIMPORT                        R7 K23 [plugin]
       31 SETTABLEKS                       R7 R6 K12 ["plugin"]
       33 SETTABLEKS                       R5 R6 K15 ["translationResourceTable"]
       35 SETTABLEKS                       R4 R6 K16 ["fallbackResourceTable"]
       37 DUPCLOSURE                       R7 K24 [PROTO_0]
       38 SETTABLEKS                       R7 R6 K20 ["getToolbarName"]
       40 DUPTABLE                         R7 K30 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
       41 DUPCLOSURE                       R8 K31 [PROTO_1]
       42 SETTABLEKS                       R8 R7 K25 ["getName"]
       44 DUPCLOSURE                       R8 K32 [PROTO_2]
       45 SETTABLEKS                       R8 R7 K26 ["getDescription"]
       47 SETTABLEKS                       R7 R6 K21 ["buttonInfo"]
       49 GETTABLEKS                       R7 R3 K33 ["build"]
       51 MOVE                             R8 R6
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K34 ["pluginLoader"]
       55 NAMECALL                         R8 R8 K35 ["waitForUserInteraction"]
       57 CALL                             R8 1 1
       58 JUMPIF                           R8 ; [+1]
       59 RETURN                           R0 0
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K2 ["Parent"]
       66 GETTABLEKS                       R10 R10 K36 ["main"]
       68 CALL                             R9 1 1
       69 MOVE                             R10 R9
       70 GETIMPORT                        R11 K23 [plugin]
       72 MOVE                             R12 R7
       73 CALL                             R10 2 0
       74 RETURN                           R0 0
