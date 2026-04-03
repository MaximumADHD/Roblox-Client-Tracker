PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K6 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
        6 SETTABLEKS                       R0 R2 K1 ["plugin"]
        8 LOADK                            R3 K7 ["AudioPlayerEditor"]
        9 SETTABLEKS                       R3 R2 K2 ["pluginName"]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K3 ["translationResourceTable"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K4 ["fallbackResourceTable"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K5 ["noToolbar"]
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K10 ["RunService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K12 ["get"]
       29 CALL                             R5 0 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K13 ["Standalone"]
       33 JUMPIFEQ                         R5 R6 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 NAMECALL                         R5 R3 K14 ["IsEdit"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R6 R7 K15 ["build"]
       43 MOVE                             R7 R2
       44 CALL                             R6 1 1
       45 JUMPIF                           R4 ; [+1]
       46 JUMPIFNOT                        R5 ; [+4]
       47 MOVE                             R7 R1
       48 MOVE                             R8 R0
       49 MOVE                             R9 R6
       50 CALL                             R7 2 0
       51 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
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
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R6 R0 K6 ["Packages"]
       28 GETTABLEKS                       R5 R6 K13 ["StudioFoundation"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R8 R0 K9 ["Src"]
       33 GETTABLEKS                       R7 R8 K10 ["Resources"]
       35 GETTABLEKS                       R6 R7 K11 ["Localization"]
       37 GETTABLEKS                       R5 R6 K14 ["LocalizedStrings"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K15 ["Bin"]
       43 GETTABLEKS                       R8 R9 K16 ["Common"]
       45 GETTABLEKS                       R7 R8 K17 ["pluginType"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K15 ["Bin"]
       52 GETTABLEKS                       R9 R10 K16 ["Common"]
       54 GETTABLEKS                       R8 R9 K18 ["defineLuaFlags"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R9 R4 K19 ["Util"]
       59 GETTABLEKS                       R8 R9 K20 ["StudioUri"]
       61 GETTABLEKS                       R9 R7 K21 ["getFFlagEnableRibbonPlugin"]
       63 CALL                             R9 0 1
       64 GETTABLEKS                       R10 R7 K22 ["getFFlagRegisterActionsPluginLoader"]
       66 CALL                             R10 0 1
       67 AND                              R11 R10 R9
       68 DUPCLOSURE                       R12 K23 [PROTO_0]
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 RETURN                           R12 1
