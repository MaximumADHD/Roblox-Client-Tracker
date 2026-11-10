PROTO_0:
        0 DUPTABLE                         R1 K13 [{"AnimationGen", "AssetInsert", "Channel", "ExecuteLuau", "Instance", "LayoutGen", "MaterialGen", "MeshGen", "PlaceSave", "PrimitiveGen", "ReadFile", "SegmentMesh", "TextureGen"}]
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
       19 SETTABLEKS                       R2 R1 K3 ["ExecuteLuau"]
       21 GETUPVAL                         R2 4
       22 MOVE                             R3 R0
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["Instance"]
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K5 ["LayoutGen"]
       31 GETUPVAL                         R2 6
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K6 ["MaterialGen"]
       36 GETUPVAL                         R2 7
       37 MOVE                             R3 R0
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K7 ["MeshGen"]
       41 GETUPVAL                         R3 8
       42 GETTABLEKS                       R3 R3 K14 ["FFlagAssistantSavePlaceTool"]
       44 JUMPIFNOT                        R3 ; [+4]
       45 GETUPVAL                         R2 9
       46 MOVE                             R3 R0
       47 CALL                             R2 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K8 ["PlaceSave"]
       52 GETUPVAL                         R2 10
       53 MOVE                             R3 R0
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R1 K9 ["PrimitiveGen"]
       57 GETUPVAL                         R2 11
       58 MOVE                             R3 R0
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R1 K10 ["ReadFile"]
       62 GETUPVAL                         R2 12
       63 MOVE                             R3 R0
       64 CALL                             R2 1 1
       65 SETTABLEKS                       R2 R1 K11 ["SegmentMesh"]
       67 GETUPVAL                         R2 13
       68 MOVE                             R3 R0
       69 CALL                             R2 1 1
       70 SETTABLEKS                       R2 R1 K12 ["TextureGen"]
       72 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["BridgeMetaTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K8 ["createAnimationGenBridge"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R5 R5 K9 ["createAssetInsertBridge"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K10 ["createChannelBridge"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K11 ["createExecuteLuauBridge"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K12 ["createInstanceBridge"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K13 ["createLayoutGenBridge"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETIMPORT                        R10 K1 [script]
       65 GETTABLEKS                       R10 R10 K14 ["createMaterialGenBridge"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K15 ["createMeshGenBridge"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETIMPORT                        R12 K1 [script]
       79 GETTABLEKS                       R12 R12 K16 ["createPlaceSaveBridge"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETIMPORT                        R13 K1 [script]
       86 GETTABLEKS                       R13 R13 K17 ["createPrimitiveGenBridge"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETIMPORT                        R14 K1 [script]
       93 GETTABLEKS                       R14 R14 K18 ["createReadFileBridge"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETIMPORT                        R15 K1 [script]
      100 GETTABLEKS                       R15 R15 K19 ["createSegmentMeshBridge"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETIMPORT                        R16 K1 [script]
      107 GETTABLEKS                       R16 R16 K20 ["createTextureGenBridge"]
      109 CALL                             R15 1 1
      110 DUPCLOSURE                       R16 K21 [PROTO_0]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R15
      125 DUPTABLE                         R17 K23 [{"createBridges"}]
      126 SETTABLEKS                       R16 R17 K22 ["createBridges"]
      128 RETURN                           R17 1
