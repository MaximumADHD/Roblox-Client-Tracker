PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildServices"]
        3 DUPTABLE                         R2 K2 [{"environment"}]
        4 GETTABLEKS                       R3 R0 K3 ["initArgs"]
        6 GETTABLEKS                       R3 R3 K1 ["environment"]
        8 SETTABLEKS                       R3 R2 K1 ["environment"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R2 R2 K1 ["generateSegmentMeshAsync"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["buildServices"]
        9 DUPTABLE                         R5 K4 [{"environment"}]
       10 GETTABLEKS                       R6 R1 K5 ["initArgs"]
       12 GETTABLEKS                       R6 R6 K3 ["environment"]
       14 SETTABLEKS                       R6 R5 K3 ["environment"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R2 R2 K1 ["cancelSegmentationAsync"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SegmentMeshOps"]
        3 GETTABLEKS                       R2 R2 K1 ["insertSegmentedModelAsync"]
        5 DUPTABLE                         R3 K7 [{["requestId"], ["replaceInPlace"] = True, ["cleanupWorldWrapper"], ["useSourceMeshCFrameForPivot"]}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantSegmentMeshCleanupWorldWrapper"]
       13 SETTABLEKS                       R4 R3 K5 ["cleanupWorldWrapper"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantSegmentMeshUseSourceMeshCFrame"]
       18 SETTABLEKS                       R4 R3 K6 ["useSourceMeshCFrameForPivot"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K10 ["buildServices"]
       23 DUPTABLE                         R5 K12 [{"environment"}]
       24 GETTABLEKS                       R6 R1 K13 ["initArgs"]
       26 GETTABLEKS                       R6 R6 K11 ["environment"]
       28 SETTABLEKS                       R6 R5 K11 ["environment"]
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 3
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Selection"]
        3 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildServices"]
        3 DUPTABLE                         R3 K2 [{"environment"}]
        4 GETTABLEKS                       R4 R1 K3 ["initArgs"]
        6 GETTABLEKS                       R4 R4 K1 ["environment"]
        8 SETTABLEKS                       R4 R3 K1 ["environment"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R2 K4 ["instances"]
       13 GETTABLEKS                       R3 R3 K5 ["getInstanceFromUniqueId"]
       15 GETTABLEKS                       R4 R0 K6 ["uniqueId"]
       17 CALL                             R3 1 1
       18 LOADB                            R4 0
       19 JUMPIFEQKNIL                     R3 ; [+8]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K7 ["Selection"]
       24 GETTABLEKS                       R4 R4 K8 ["isSegmentableInstance"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 RETURN                           R4 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["Gen3dUtils"]
       25 GETTABLEKS                       R4 R4 K11 ["Gen3dServicesBuilder"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Bridges"]
       32 GETTABLEKS                       R5 R5 K13 ["createSegmentMeshBridge"]
       34 GETTABLEKS                       R5 R5 K14 ["SegmentMeshBridgeTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["SegmentMesh"]
       43 GETTABLEKS                       R6 R6 K16 ["SegmentMeshTypes"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K17 ["createGenerationSessions"]
       48 CALL                             R6 0 1
       49 DUPCLOSURE                       R7 K18 [PROTO_0]
       50 CAPTURE                          VAL R3
       51 DUPCLOSURE                       R8 K19 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R9 K20 [PROTO_2]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 DUPCLOSURE                       R10 K21 [PROTO_3]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 DUPCLOSURE                       R11 K22 [PROTO_4]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 DUPCLOSURE                       R12 K23 [PROTO_5]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 DUPTABLE                         R13 K29 [{"generateSegmentMeshAsync", "cancelSegmentationAsync", "insertSegmentedModelAsync", "getSelectedMeshRef", "isSegmentableInstance"}]
       70 SETTABLEKS                       R8 R13 K24 ["generateSegmentMeshAsync"]
       72 SETTABLEKS                       R9 R13 K25 ["cancelSegmentationAsync"]
       74 SETTABLEKS                       R10 R13 K26 ["insertSegmentedModelAsync"]
       76 SETTABLEKS                       R11 R13 K27 ["getSelectedMeshRef"]
       78 SETTABLEKS                       R12 R13 K28 ["isSegmentableInstance"]
       80 DUPTABLE                         R14 K31 [{"bridge"}]
       81 SETTABLEKS                       R13 R14 K30 ["bridge"]
       83 RETURN                           R14 1
