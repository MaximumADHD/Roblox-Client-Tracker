PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        4 GETTABLEKS                       R2 R2 K1 ["join"]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["refreshState"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWCLOSURE                       R1 P1
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R0 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["assetDMListener"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 NAMECALL                         R3 R1 K2 ["getCurrentState"]
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 2
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 NAMECALL                         R4 R1 K3 ["setContextProviderFunction"]
       15 CALL                             R4 2 0
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K4 ["createElement"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K5 ["Provider"]
       25 DUPTABLE                         R7 K7 [{"useAssetDMContext"}]
       26 SETTABLEKS                       R4 R7 K6 ["useAssetDMContext"]
       28 GETTABLEKS                       R8 R0 K8 ["children"]
       30 CALL                             R5 3 -1
       31 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K12 ["AssetDMDataManagerContext"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_4]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
