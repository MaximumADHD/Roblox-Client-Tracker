PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetBundleDetailsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K4 [{"default", "getBundleDetailsAsync"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["default"]
       12 SETTABLEKS                       R1 R2 K3 ["getBundleDetailsAsync"]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K5 ["Provider"]
       18 DUPTABLE                         R5 K7 [{"value"}]
       19 SETTABLEKS                       R2 R5 K6 ["value"]
       21 GETTABLEKS                       R6 R0 K8 ["children"]
       23 CALL                             R3 3 -1
       24 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["Contexts"]
       21 GETTABLEKS                       R3 R3 K13 ["AssetServiceContext"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Packages"]
       28 GETTABLEKS                       R4 R4 K15 ["React"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K16 ["createElement"]
       33 DUPCLOSURE                       R5 K17 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 RETURN                           R5 1
