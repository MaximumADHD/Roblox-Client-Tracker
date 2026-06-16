PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K0 ["dispatch"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["unmount"]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R8 K1 [require]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K2 ["Packages"]
        5 GETTABLEKS                       R9 R9 K3 ["Roact"]
        7 CALL                             R8 1 1
        8 GETIMPORT                        R9 K1 [require]
       10 GETUPVAL                         R10 0
       11 GETTABLEKS                       R10 R10 K4 ["Src"]
       13 GETTABLEKS                       R10 R10 K5 ["Components"]
       15 GETTABLEKS                       R10 R10 K6 ["ManagementApp"]
       17 CALL                             R9 1 1
       18 GETIMPORT                        R10 K1 [require]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K4 ["Src"]
       23 GETTABLEKS                       R11 R11 K7 ["Thunks"]
       25 GETTABLEKS                       R11 R11 K8 ["RefreshPlugins"]
       27 CALL                             R10 1 1
       28 LOADNIL                          R11
       29 LOADNIL                          R12
       30 GETUPVAL                         R13 1
       31 CALL                             R13 0 1
       32 JUMPIFNOT                        R13 ; [+12]
       33 GETTABLEKS                       R13 R6 K9 ["InstalledPluginsChanged"]
       35 NEWCLOSURE                       R15 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R10
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 NAMECALL                         R13 R13 K10 ["Connect"]
       42 CALL                             R13 2 1
       43 MOVE                             R12 R13
       44 JUMP                             ; [+13]
       45 LOADK                            R15 K11 ["InstalledPluginData"]
       46 NAMECALL                         R13 R6 K12 ["DEPRECATED_GetPropertyChangedSignal"]
       48 CALL                             R13 2 1
       49 NEWCLOSURE                       R15 P1
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R4
       54 NAMECALL                         R13 R13 K10 ["Connect"]
       56 CALL                             R13 2 1
       57 MOVE                             R12 R13
       58 GETTABLEKS                       R13 R0 K13 ["Unloading"]
       60 NEWCLOSURE                       R15 P2
       61 CAPTURE                          REF R12
       62 CAPTURE                          REF R11
       63 CAPTURE                          VAL R8
       64 NAMECALL                         R13 R13 K10 ["Connect"]
       66 CALL                             R13 2 0
       67 GETTABLEKS                       R13 R8 K14 ["createElement"]
       69 MOVE                             R14 R9
       70 DUPTABLE                         R15 K23 [{"plugin", "store", "theme", "localization", "api", "analytics", "pluginManagementApi", "PluginLoaderContext"}]
       71 SETTABLEKS                       R0 R15 K15 ["plugin"]
       73 SETTABLEKS                       R1 R15 K16 ["store"]
       75 SETTABLEKS                       R2 R15 K17 ["theme"]
       77 SETTABLEKS                       R3 R15 K18 ["localization"]
       79 SETTABLEKS                       R4 R15 K19 ["api"]
       81 SETTABLEKS                       R5 R15 K20 ["analytics"]
       83 SETTABLEKS                       R6 R15 K21 ["pluginManagementApi"]
       85 SETTABLEKS                       R7 R15 K22 ["PluginLoaderContext"]
       87 CALL                             R13 2 1
       88 GETTABLEKS                       R14 R8 K24 ["mount"]
       90 MOVE                             R15 R13
       91 CALL                             R14 1 1
       92 MOVE                             R11 R14
       93 CLOSEUPVALS                      R11
       94 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioCacheExtractedInstalledPlugins"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_3]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1
