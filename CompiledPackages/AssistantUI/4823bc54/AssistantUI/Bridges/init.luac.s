PROTO_0:
        0 DUPTABLE                         R1 K6 [{"AssetInsert", "CreatorStore", "ExecuteLuau", "Instance", "MaterialGen", "ReadFile"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["AssetInsert"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["CreatorStore"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["ExecuteLuau"]
       16 GETUPVAL                         R2 3
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K3 ["Instance"]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["MaterialGen"]
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K5 ["ReadFile"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["BridgeMetaTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["createAssetInsertBridge"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["createCreatorStoreBridge"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["createExecuteLuauBridge"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["createInstanceBridge"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["createMaterialGenBridge"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["createReadFileBridge"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K11 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 DUPTABLE                         R8 K13 [{"createBridges"}]
       58 SETTABLEKS                       R7 R8 K12 ["createBridges"]
       60 RETURN                           R8 1
