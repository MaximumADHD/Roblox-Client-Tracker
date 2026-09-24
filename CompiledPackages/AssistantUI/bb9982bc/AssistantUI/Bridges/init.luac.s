PROTO_0:
        0 DUPTABLE                         R1 K13 [{"AnimationGen", "AssetInsert", "Channel", "CreatorStore", "ExecuteLuau", "Instance", "LayoutGen", "MaterialGen", "MeshGen", "PrimitiveGen", "ReadFile", "SegmentMesh", "TextureGen"}]
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
       34 SETTABLEKS                       R2 R1 K6 ["LayoutGen"]
       36 GETUPVAL                         R2 7
       37 MOVE                             R3 R0
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K7 ["MaterialGen"]
       41 GETUPVAL                         R2 8
       42 MOVE                             R3 R0
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R1 K8 ["MeshGen"]
       46 GETUPVAL                         R2 9
       47 MOVE                             R3 R0
       48 CALL                             R2 1 1
       49 SETTABLEKS                       R2 R1 K9 ["PrimitiveGen"]
       51 GETUPVAL                         R2 10
       52 MOVE                             R3 R0
       53 CALL                             R2 1 1
       54 SETTABLEKS                       R2 R1 K10 ["ReadFile"]
       56 GETUPVAL                         R2 11
       57 MOVE                             R3 R0
       58 CALL                             R2 1 1
       59 SETTABLEKS                       R2 R1 K11 ["SegmentMesh"]
       61 GETUPVAL                         R2 12
       62 MOVE                             R3 R0
       63 CALL                             R2 1 1
       64 SETTABLEKS                       R2 R1 K12 ["TextureGen"]
       66 RETURN                           R1 1

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
       54 GETTABLEKS                       R8 R8 K11 ["createLayoutGenBridge"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R9 K3 [script]
       61 GETTABLEKS                       R9 R9 K12 ["createMaterialGenBridge"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R10 K3 [script]
       68 GETTABLEKS                       R10 R10 K13 ["createMeshGenBridge"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R11 K3 [script]
       75 GETTABLEKS                       R11 R11 K14 ["createPrimitiveGenBridge"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R12 K3 [script]
       82 GETTABLEKS                       R12 R12 K15 ["createReadFileBridge"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R13 K3 [script]
       89 GETTABLEKS                       R13 R13 K16 ["createSegmentMeshBridge"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R14 K3 [script]
       96 GETTABLEKS                       R14 R14 K17 ["createTextureGenBridge"]
       98 CALL                             R13 1 1
       99 DUPCLOSURE                       R14 K18 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R13
      113 DUPTABLE                         R15 K20 [{"createBridges"}]
      114 SETTABLEKS                       R14 R15 K19 ["createBridges"]
      116 RETURN                           R15 1
