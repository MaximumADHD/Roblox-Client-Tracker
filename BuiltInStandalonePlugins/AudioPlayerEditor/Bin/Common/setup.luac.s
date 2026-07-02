PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K8 [{["plugin"], ["pluginName"] = "AudioPlayerEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True}]
        6 SETTABLEKS                       R0 R2 K1 ["plugin"]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K4 ["translationResourceTable"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K5 ["fallbackResourceTable"]
       14 GETIMPORT                        R3 K10 [game]
       16 LOADK                            R5 K11 ["RunService"]
       17 NAMECALL                         R3 R3 K12 ["GetService"]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K13 ["get"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K14 ["Standalone"]
       27 JUMPIFEQ                         R5 R6 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 NAMECALL                         R5 R3 K15 ["IsEdit"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K16 ["build"]
       37 MOVE                             R7 R2
       38 CALL                             R6 1 1
       39 JUMPIF                           R4 ; [+1]
       40 JUMPIFNOT                        R5 ; [+4]
       41 MOVE                             R7 R1
       42 MOVE                             R8 R0
       43 MOVE                             R9 R6
       44 CALL                             R7 2 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
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
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K6 ["Packages"]
       28 GETTABLEKS                       R5 R5 K13 ["StudioFoundation"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R0 K9 ["Src"]
       33 GETTABLEKS                       R5 R5 K10 ["Resources"]
       35 GETTABLEKS                       R5 R5 K11 ["Localization"]
       37 GETTABLEKS                       R5 R5 K14 ["LocalizedStrings"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Bin"]
       43 GETTABLEKS                       R7 R7 K16 ["Common"]
       45 GETTABLEKS                       R7 R7 K17 ["pluginType"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K15 ["Bin"]
       52 GETTABLEKS                       R8 R8 K16 ["Common"]
       54 GETTABLEKS                       R8 R8 K18 ["defineLuaFlags"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R4 K19 ["Util"]
       59 GETTABLEKS                       R8 R8 K20 ["StudioUri"]
       61 GETTABLEKS                       R9 R7 K21 ["getFFlagEnableRibbonPlugin"]
       63 CALL                             R9 0 1
       64 DUPCLOSURE                       R10 K22 [PROTO_0]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 RETURN                           R10 1
