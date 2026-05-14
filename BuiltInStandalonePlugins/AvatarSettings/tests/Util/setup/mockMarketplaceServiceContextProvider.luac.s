PROTO_0:
        0 DUPTABLE                         R1 K1 [{"AssetTypeId"}]
        1 GETTABLEKS                       R2 R0 K2 ["Value"]
        3 SETTABLEKS                       R2 R1 K0 ["AssetTypeId"]
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K1 [error]
        9 LOADK                            R2 K2 ["Asset does not exist"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 0
        7 CALL                             R1 2 1
        8 DUPTABLE                         R2 K4 [{"default", "getProductInfo"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["default"]
       12 SETTABLEKS                       R1 R2 K3 ["getProductInfo"]
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["MarketplaceServiceContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["tests"]
       31 GETTABLEKS                       R4 R4 K13 ["Util"]
       33 GETTABLEKS                       R4 R4 K14 ["TestConstants"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K15 ["AssetIds"]
       38 GETTABLEKS                       R5 R2 K16 ["createElement"]
       40 DUPCLOSURE                       R6 K17 [PROTO_0]
       41 NEWTABLE                         R7 0 0
       43 MOVE                             R8 R4
       44 LOADNIL                          R9
       45 LOADNIL                          R10
       46 FORGPREP                         R8
       47 GETTABLEKS                       R13 R12 K18 ["assetId"]
       49 GETTABLEKS                       R15 R12 K19 ["assetType"]
       51 DUPTABLE                         R14 K21 [{"AssetTypeId"}]
       52 GETTABLEKS                       R16 R15 K22 ["Value"]
       54 SETTABLEKS                       R16 R14 K20 ["AssetTypeId"]
       56 SETTABLE                         R14 R7 R13
       57 FORGLOOP                         R8 2 ; [-11]
       59 DUPCLOSURE                       R8 K23 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 RETURN                           R8 1
