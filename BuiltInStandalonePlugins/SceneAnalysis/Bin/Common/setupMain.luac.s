PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R0 R0 K1 ["disconnect"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["Src"]
        5 GETTABLEKS                       R4 R5 K3 ["Util"]
        7 GETTABLEKS                       R3 R4 K4 ["AssetDMBridge"]
        9 CALL                             R2 1 1
       10 MOVE                             R5 R0
       11 NAMECALL                         R3 R2 K5 ["connect"]
       13 CALL                             R3 2 0
       14 GETIMPORT                        R3 K1 [require]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K6 ["Packages"]
       19 GETTABLEKS                       R4 R5 K7 ["React"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K1 [require]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["ReactRoblox"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K1 [require]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K2 ["Src"]
       35 GETTABLEKS                       R6 R7 K9 ["MainPlugin"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R3 K10 ["createElement"]
       40 MOVE                             R7 R5
       41 DUPTABLE                         R8 K13 [{"Plugin", "PluginLoaderContext"}]
       42 SETTABLEKS                       R0 R8 K11 ["Plugin"]
       44 SETTABLEKS                       R1 R8 K12 ["PluginLoaderContext"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K16 [Instance.new]
       49 LOADK                            R8 K17 ["Frame"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R4 K18 ["createRoot"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 MOVE                             R11 R6
       56 NAMECALL                         R9 R8 K19 ["render"]
       58 CALL                             R9 2 0
       59 GETTABLEKS                       R9 R0 K20 ["Unloading"]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R0
       65 NAMECALL                         R9 R9 K21 ["Connect"]
       67 CALL                             R9 2 0
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
