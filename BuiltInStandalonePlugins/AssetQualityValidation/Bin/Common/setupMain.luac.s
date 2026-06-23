PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R2 K1 ["connect"]
        7 CALL                             R3 2 0
        8 GETIMPORT                        R3 K3 [require]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["Packages"]
       13 GETTABLEKS                       R4 R4 K5 ["React"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K3 [require]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["Packages"]
       21 GETTABLEKS                       R5 R5 K6 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K3 [require]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["Src"]
       29 GETTABLEKS                       R6 R6 K8 ["MainPlugin"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K9 ["createElement"]
       34 MOVE                             R7 R5
       35 DUPTABLE                         R8 K13 [{"Plugin", "PluginLoaderContext", "AssetDMListener"}]
       36 SETTABLEKS                       R0 R8 K10 ["Plugin"]
       38 SETTABLEKS                       R1 R8 K11 ["PluginLoaderContext"]
       40 SETTABLEKS                       R2 R8 K12 ["AssetDMListener"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K15 [Instance.new]
       45 LOADK                            R8 K16 ["Frame"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R4 K17 ["createRoot"]
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 MOVE                             R11 R6
       52 NAMECALL                         R9 R8 K18 ["render"]
       54 CALL                             R9 2 0
       55 GETTABLEKS                       R9 R0 K19 ["Unloading"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R8
       59 NAMECALL                         R9 R9 K20 ["Connect"]
       61 CALL                             R9 2 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetDMListener"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 RETURN                           R2 1
