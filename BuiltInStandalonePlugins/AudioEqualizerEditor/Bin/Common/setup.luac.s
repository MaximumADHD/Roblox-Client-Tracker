PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K9 [{["plugin"], ["pluginName"] = "AudioEqualizerEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["noToolbar"] = True}]
        6 SETTABLEKS                       R0 R2 K1 ["plugin"]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K4 ["translationResourceTable"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K5 ["fallbackResourceTable"]
       14 DUPCLOSURE                       R3 K10 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K6 ["getToolbarName"]
       17 GETIMPORT                        R3 K12 [game]
       19 LOADK                            R5 K13 ["RunService"]
       20 NAMECALL                         R3 R3 K14 ["GetService"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K15 ["get"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K16 ["Standalone"]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 NAMECALL                         R5 R3 K17 ["IsEdit"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K18 ["build"]
       40 MOVE                             R7 R2
       41 CALL                             R6 1 1
       42 JUMPIF                           R4 ; [+1]
       43 JUMPIFNOT                        R5 ; [+4]
       44 MOVE                             R7 R1
       45 MOVE                             R8 R0
       46 MOVE                             R9 R6
       47 CALL                             R7 2 0
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioEqualizerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_1]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
