PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K6 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
        6 SETTABLEKS                       R0 R2 K1 ["plugin"]
        8 LOADK                            R3 K7 ["ModerationDialog"]
        9 SETTABLEKS                       R3 R2 K2 ["pluginName"]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K4 ["fallbackResourceTable"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K5 ["noToolbar"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K8 ["get"]
       23 CALL                             R4 0 1
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K9 ["Standalone"]
       27 JUMPIFEQ                         R4 R5 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 JUMPIFNOT                        R3 ; [+9]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R4 R5 K10 ["build"]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 MOVE                             R5 R1
       38 MOVE                             R6 R0
       39 MOVE                             R7 R4
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K14 ["Bin"]
       36 GETTABLEKS                       R7 R8 K15 ["Common"]
       38 GETTABLEKS                       R6 R7 K16 ["pluginType"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K17 [PROTO_0]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
