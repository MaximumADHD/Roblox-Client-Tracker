PROTO_0:
        0 DUPTABLE                         R0 K1 [{"assetType"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["assetType"]
        4 SETTABLEKS                       R1 R0 K0 ["assetType"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["assetType"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["Provider"]
       18 DUPTABLE                         R4 K5 [{"value"}]
       19 SETTABLEKS                       R1 R4 K4 ["value"]
       21 GETTABLEKS                       R5 R0 K6 ["children"]
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["OpenableAssetTypeContext"]
       13 GETTABLEKS                       R2 R2 K8 ["OpenableAssetTypeUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K13 [{"assetType"}]
       29 GETTABLEKS                       R5 R1 K14 ["DEFAULT"]
       31 SETTABLEKS                       R5 R4 K12 ["assetType"]
       33 GETTABLEKS                       R5 R2 K15 ["createContext"]
       35 MOVE                             R6 R4
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K16 [PROTO_1]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       41 SETTABLEKS                       R5 R7 K17 ["Context"]
       43 SETTABLEKS                       R6 R7 K18 ["Provider"]
       45 RETURN                           R7 1
