PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K2 [{"setMarketplaceImportOpen"}]
        6 SETTABLEKS                       R2 R3 K1 ["setMarketplaceImportOpen"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["Provider"]
       14 DUPTABLE                         R6 K6 [{"value"}]
       15 SETTABLEKS                       R3 R6 K5 ["value"]
       17 GETTABLEKS                       R7 R0 K7 ["children"]
       19 MOVE                             R8 R1
       20 JUMPIFNOT                        R8 ; [+8]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K3 ["createElement"]
       24 GETUPVAL                         R9 2
       25 DUPTABLE                         R10 K2 [{"setMarketplaceImportOpen"}]
       26 SETTABLEKS                       R2 R10 K1 ["setMarketplaceImportOpen"]
       28 CALL                             R8 2 1
       29 CALL                             R4 4 -1
       30 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["createUnimplemented"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K10 ["MarketplaceImportDialogContainer"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K12 [{"setMarketplaceImportOpen"}]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K11 ["setMarketplaceImportOpen"]
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K11 ["setMarketplaceImportOpen"]
       38 GETTABLEKS                       R5 R1 K13 ["createContext"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K14 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 DUPTABLE                         R7 K17 [{"Context", "Provider"}]
       47 SETTABLEKS                       R5 R7 K15 ["Context"]
       49 SETTABLEKS                       R6 R7 K16 ["Provider"]
       51 RETURN                           R7 1
