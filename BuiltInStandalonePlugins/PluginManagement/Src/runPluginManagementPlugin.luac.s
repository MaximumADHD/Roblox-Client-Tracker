PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R4 R4 K0 ["get"]
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 -1
        8 NAMECALL                         R0 R0 K1 ["dispatch"]
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

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
       35 CAPTURE                          VAL R4
       36 NAMECALL                         R12 R12 K10 ["Connect"]
       38 CALL                             R12 2 1
       39 GETTABLEKS                       R13 R0 K11 ["Unloading"]
       41 NEWCLOSURE                       R15 P1
       42 CAPTURE                          REF R12
       43 CAPTURE                          REF R11
       44 CAPTURE                          VAL R8
       45 NAMECALL                         R13 R13 K10 ["Connect"]
       47 CALL                             R13 2 0
       48 GETTABLEKS                       R13 R8 K12 ["createElement"]
       50 MOVE                             R14 R9
       51 DUPTABLE                         R15 K21 [{"plugin", "store", "theme", "localization", "api", "analytics", "pluginManagementApi", "PluginLoaderContext"}]
       52 SETTABLEKS                       R0 R15 K13 ["plugin"]
       54 SETTABLEKS                       R1 R15 K14 ["store"]
       56 SETTABLEKS                       R2 R15 K15 ["theme"]
       58 SETTABLEKS                       R3 R15 K16 ["localization"]
       60 SETTABLEKS                       R4 R15 K17 ["api"]
       62 SETTABLEKS                       R5 R15 K18 ["analytics"]
       64 SETTABLEKS                       R6 R15 K19 ["pluginManagementApi"]
       66 SETTABLEKS                       R7 R15 K20 ["PluginLoaderContext"]
       68 CALL                             R13 2 1
       69 GETTABLEKS                       R14 R8 K22 ["mount"]
       71 MOVE                             R15 R13
       72 CALL                             R14 1 1
       73 MOVE                             R11 R14
       74 CLOSEUPVALS                      R11
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
