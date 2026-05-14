PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"default", "getBundleDetailsAsync"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["default"]
        4 DUPCLOSURE                       R2 K3 [PROTO_0]
        5 SETTABLEKS                       R2 R1 K1 ["getBundleDetailsAsync"]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["Provider"]
       11 DUPTABLE                         R4 K6 [{"value"}]
       12 SETTABLEKS                       R1 R4 K5 ["value"]
       14 GETTABLEKS                       R5 R0 K7 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetServiceContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K12 ["createElement"]
       27 DUPCLOSURE                       R4 K13 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
