PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AmrUseAssetAccessController2"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+2]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagDebugTestAssetDependencyGrantEventEnabled"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["AmrUseAssetAccessController2"]
       19 LOADB                            R5 0
       20 NAMECALL                         R2 R2 K12 ["DefineFastFlag"]
       22 CALL                             R2 3 0
       23 DUPCLOSURE                       R2 K13 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1
