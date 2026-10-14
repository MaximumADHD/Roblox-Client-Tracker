PROTO_0:
        0 LOADK                            R3 K0 ["Home"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Scale"]
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
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K7 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["Localization"]
       22 GETTABLEKS                       R3 R3 K11 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K8 ["Src"]
       26 GETTABLEKS                       R4 R4 K9 ["Resources"]
       28 GETTABLEKS                       R4 R4 K10 ["Localization"]
       30 GETTABLEKS                       R4 R4 K12 ["LocalizedStrings"]
       32 DUPTABLE                         R5 K23 [{["plugin"], ["pluginName"] = "ScaleDragger", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"]}]
       33 GETIMPORT                        R6 K24 [plugin]
       35 SETTABLEKS                       R6 R5 K13 ["plugin"]
       37 SETTABLEKS                       R4 R5 K16 ["translationResourceTable"]
       39 SETTABLEKS                       R3 R5 K17 ["fallbackResourceTable"]
       41 DUPCLOSURE                       R6 K25 [PROTO_0]
       42 SETTABLEKS                       R6 R5 K21 ["getToolbarName"]
       44 DUPTABLE                         R6 K31 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
       45 DUPCLOSURE                       R7 K32 [PROTO_1]
       46 SETTABLEKS                       R7 R6 K26 ["getName"]
       48 DUPCLOSURE                       R7 K33 [PROTO_2]
       49 SETTABLEKS                       R7 R6 K27 ["getDescription"]
       51 SETTABLEKS                       R6 R5 K22 ["buttonInfo"]
       53 GETTABLEKS                       R6 R2 K34 ["build"]
       55 MOVE                             R7 R5
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K35 ["pluginLoader"]
       59 NAMECALL                         R7 R7 K36 ["waitForUserInteraction"]
       61 CALL                             R7 1 1
       62 JUMPIF                           R7 ; [+1]
       63 RETURN                           R0 0
       64 GETIMPORT                        R8 K4 [require]
       66 GETIMPORT                        R9 K1 [script]
       68 GETTABLEKS                       R9 R9 K2 ["Parent"]
       70 GETTABLEKS                       R9 R9 K37 ["main"]
       72 CALL                             R8 1 1
       73 MOVE                             R9 R8
       74 GETIMPORT                        R10 K24 [plugin]
       76 MOVE                             R11 R6
       77 CALL                             R9 2 0
       78 RETURN                           R0 0
