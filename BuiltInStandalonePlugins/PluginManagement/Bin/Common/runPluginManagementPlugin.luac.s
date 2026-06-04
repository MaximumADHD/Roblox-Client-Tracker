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
        0 GETUPVAL                         R9 0
        1 CALL                             R9 0 1
        2 FASTCALL2K                       ASSERT R9 K0 ; [+4]
        4 LOADK                            R10 K0 ["runPluginManagementPlugin requires FFlagStudioLazyPluginManagement"]
        5 GETIMPORT                        R8 K2 [assert]
        7 CALL                             R8 2 0
        8 GETIMPORT                        R8 K4 [require]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R9 R9 K5 ["Packages"]
       13 GETTABLEKS                       R9 R9 K6 ["Roact"]
       15 CALL                             R8 1 1
       16 GETIMPORT                        R9 K4 [require]
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K7 ["Src"]
       21 GETTABLEKS                       R10 R10 K8 ["Components"]
       23 GETTABLEKS                       R10 R10 K9 ["ManagementApp"]
       25 CALL                             R9 1 1
       26 GETIMPORT                        R10 K4 [require]
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R11 R11 K7 ["Src"]
       31 GETTABLEKS                       R11 R11 K10 ["Thunks"]
       33 GETTABLEKS                       R11 R11 K11 ["RefreshPlugins"]
       35 CALL                             R10 1 1
       36 LOADNIL                          R11
       37 LOADK                            R14 K12 ["InstalledPluginData"]
       38 NAMECALL                         R12 R6 K13 ["GetPropertyChangedSignal"]
       40 CALL                             R12 2 1
       41 NEWCLOSURE                       R14 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R10
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 NAMECALL                         R12 R12 K14 ["Connect"]
       48 CALL                             R12 2 1
       49 GETTABLEKS                       R13 R0 K15 ["Unloading"]
       51 NEWCLOSURE                       R15 P1
       52 CAPTURE                          REF R12
       53 CAPTURE                          REF R11
       54 CAPTURE                          VAL R8
       55 NAMECALL                         R13 R13 K14 ["Connect"]
       57 CALL                             R13 2 0
       58 GETTABLEKS                       R13 R8 K16 ["createElement"]
       60 MOVE                             R14 R9
       61 DUPTABLE                         R15 K25 [{"plugin", "store", "theme", "localization", "api", "analytics", "pluginManagementApi", "PluginLoaderContext"}]
       62 SETTABLEKS                       R0 R15 K17 ["plugin"]
       64 SETTABLEKS                       R1 R15 K18 ["store"]
       66 SETTABLEKS                       R2 R15 K19 ["theme"]
       68 SETTABLEKS                       R3 R15 K20 ["localization"]
       70 SETTABLEKS                       R4 R15 K21 ["api"]
       72 SETTABLEKS                       R5 R15 K22 ["analytics"]
       74 SETTABLEKS                       R6 R15 K23 ["pluginManagementApi"]
       76 SETTABLEKS                       R7 R15 K24 ["PluginLoaderContext"]
       78 CALL                             R13 2 1
       79 GETTABLEKS                       R14 R8 K26 ["mount"]
       81 MOVE                             R15 R13
       82 CALL                             R14 1 1
       83 MOVE                             R11 R14
       84 CLOSEUPVALS                      R11
       85 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PluginManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioLazyPluginManagement"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 RETURN                           R2 1
