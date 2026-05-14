PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["Provider"]
       14 DUPTABLE                         R4 K4 [{"value"}]
       15 NEWTABLE                         R5 0 0
       17 SETTABLEKS                       R5 R4 K3 ["value"]
       19 GETTABLEKS                       R5 R0 K5 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["tests"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["setup"]
       31 GETTABLEKS                       R4 R4 K13 ["mockAssetDmInvokeContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Util"]
       40 GETTABLEKS                       R5 R5 K14 ["BridgingFiles"]
       42 GETTABLEKS                       R5 R5 K15 ["AssetDmFiles"]
       44 GETTABLEKS                       R5 R5 K16 ["assetDmSetup"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R1 K17 ["ContextServices"]
       49 GETTABLEKS                       R6 R5 K18 ["Plugin"]
       51 GETTABLEKS                       R7 R2 K19 ["createElement"]
       53 DUPCLOSURE                       R8 K20 [PROTO_0]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 RETURN                           R8 1
