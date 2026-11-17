PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["unmount"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Src"]
        5 GETTABLEKS                       R3 R3 K3 ["Util"]
        7 GETTABLEKS                       R3 R3 K4 ["AssetDMListener"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K5 ["new"]
       12 CALL                             R3 0 1
       13 MOVE                             R6 R0
       14 GETTABLEKS                       R7 R1 K6 ["mainButton"]
       16 NAMECALL                         R4 R3 K7 ["connect"]
       18 CALL                             R4 3 0
       19 GETTABLEKS                       R4 R1 K8 ["pluginLoader"]
       21 NAMECALL                         R4 R4 K9 ["waitForUserInteraction"]
       23 CALL                             R4 1 1
       24 JUMPIF                           R4 ; [+4]
       25 NAMECALL                         R5 R3 K10 ["disconnect"]
       27 CALL                             R5 1 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R5 K1 [require]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K11 ["Packages"]
       34 GETTABLEKS                       R6 R6 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K1 [require]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K11 ["Packages"]
       42 GETTABLEKS                       R7 R7 K13 ["ReactRoblox"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K1 [require]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K2 ["Src"]
       50 GETTABLEKS                       R8 R8 K14 ["MainPlugin"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R5 K15 ["createElement"]
       55 MOVE                             R9 R7
       56 DUPTABLE                         R10 K18 [{"Plugin", "PluginLoaderContext", "AssetDMListener"}]
       57 SETTABLEKS                       R0 R10 K16 ["Plugin"]
       59 SETTABLEKS                       R1 R10 K17 ["PluginLoaderContext"]
       61 SETTABLEKS                       R3 R10 K4 ["AssetDMListener"]
       63 CALL                             R8 2 1
       64 GETIMPORT                        R9 K20 [Instance.new]
       66 LOADK                            R10 K21 ["Frame"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R6 K22 ["createRoot"]
       70 MOVE                             R11 R9
       71 CALL                             R10 1 1
       72 MOVE                             R13 R8
       73 NAMECALL                         R11 R10 K23 ["render"]
       75 CALL                             R11 2 0
       76 GETTABLEKS                       R11 R0 K24 ["Unloading"]
       78 NEWCLOSURE                       R13 P0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 NAMECALL                         R11 R11 K25 ["Connect"]
       83 CALL                             R11 2 0
       84 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
