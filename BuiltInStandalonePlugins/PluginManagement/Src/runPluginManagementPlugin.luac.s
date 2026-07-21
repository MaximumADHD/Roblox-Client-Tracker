PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R5 3
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+5]
        6 GETUPVAL                         R4 4
        7 NAMECALL                         R4 R4 K0 ["get"]
        9 CALL                             R4 1 1
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R4 4
       12 CALL                             R2 2 -1
       13 NAMECALL                         R0 R0 K1 ["dispatch"]
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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
       29 GETTABLEKS                       R12 R6 K9 ["InstalledPluginsChanged"]
       31 NEWCLOSURE                       R14 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R10
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R4
       37 NAMECALL                         R12 R12 K10 ["Connect"]
       39 CALL                             R12 2 1
       40 GETTABLEKS                       R13 R0 K11 ["Unloading"]
       42 NEWCLOSURE                       R15 P1
       43 CAPTURE                          REF R12
       44 CAPTURE                          REF R11
       45 CAPTURE                          VAL R8
       46 NAMECALL                         R13 R13 K10 ["Connect"]
       48 CALL                             R13 2 0
       49 GETTABLEKS                       R13 R8 K12 ["createElement"]
       51 MOVE                             R14 R9
       52 DUPTABLE                         R15 K21 [{"plugin", "store", "theme", "localization", "api", "analytics", "pluginManagementApi", "PluginLoaderContext"}]
       53 SETTABLEKS                       R0 R15 K13 ["plugin"]
       55 SETTABLEKS                       R1 R15 K14 ["store"]
       57 SETTABLEKS                       R2 R15 K15 ["theme"]
       59 SETTABLEKS                       R3 R15 K16 ["localization"]
       61 SETTABLEKS                       R4 R15 K17 ["api"]
       63 SETTABLEKS                       R5 R15 K18 ["analytics"]
       65 SETTABLEKS                       R6 R15 K19 ["pluginManagementApi"]
       67 SETTABLEKS                       R7 R15 K20 ["PluginLoaderContext"]
       69 CALL                             R13 2 1
       70 GETTABLEKS                       R14 R8 K22 ["mount"]
       72 MOVE                             R15 R13
       73 CALL                             R14 1 1
       74 MOVE                             R11 R14
       75 CLOSEUPVALS                      R11
       76 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioPluginManagementUpgradeHttp"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_2]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1
