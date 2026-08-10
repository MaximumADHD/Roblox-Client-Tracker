PROTO_0:
        0 DUPTABLE                         R1 K10 [{"AnimationGen", "AssetInsert", "Channel", "CreatorStore", "ExecuteLuau", "Instance", "MaterialGen", "MeshGen", "PrimitiveGen", "ReadFile"}]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["AnimationGen"]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["AssetInsert"]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["Channel"]
       16 GETUPVAL                         R2 3
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K3 ["CreatorStore"]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["ExecuteLuau"]
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K5 ["Instance"]
       31 GETUPVAL                         R2 6
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K6 ["MaterialGen"]
       36 GETUPVAL                         R2 7
       37 MOVE                             R3 R0
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K7 ["MeshGen"]
       41 GETUPVAL                         R2 8
       42 MOVE                             R3 R0
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R1 K8 ["PrimitiveGen"]
       46 GETUPVAL                         R2 9
       47 MOVE                             R3 R0
       48 CALL                             R2 1 1
       49 SETTABLEKS                       R2 R1 K9 ["ReadFile"]
       51 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["BridgeMetaTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["createAnimationGenBridge"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["createAssetInsertBridge"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["createChannelBridge"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["createCreatorStoreBridge"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["createExecuteLuauBridge"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["createInstanceBridge"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R8 K3 [script]
       54 GETTABLEKS                       R8 R8 K11 ["createMaterialGenBridge"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R9 R9 K12 ["createMeshGenBridge"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R10 R10 K13 ["createPrimitiveGenBridge"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R11 K3 [script]
       75 GETTABLEKS                       R11 R11 K14 ["createReadFileBridge"]
       77 CALL                             R10 1 1
       78 DUPCLOSURE                       R11 K15 [PROTO_0]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 DUPTABLE                         R12 K17 [{"createBridges"}]
       90 SETTABLEKS                       R11 R12 K16 ["createBridges"]
       92 RETURN                           R12 1
