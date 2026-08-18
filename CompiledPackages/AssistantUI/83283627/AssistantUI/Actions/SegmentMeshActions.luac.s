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
        5 DUPTABLE                         R3 K5 [{["requestId"], ["replaceInPlace"] = True}]
        6 GETTABLEKS                       R4 R0 K2 ["requestId"]
        8 SETTABLEKS                       R4 R3 K2 ["requestId"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["buildServices"]
       13 DUPTABLE                         R5 K8 [{"environment"}]
       14 GETTABLEKS                       R6 R1 K9 ["initArgs"]
       16 GETTABLEKS                       R6 R6 K7 ["environment"]
       18 SETTABLEKS                       R6 R5 K7 ["environment"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 2
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Selection"]
        3 GETTABLEKS                       R1 R1 K1 ["getSelectedMeshRef"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Features"]
       18 GETTABLEKS                       R3 R3 K9 ["Gen3dUtils"]
       20 GETTABLEKS                       R3 R3 K10 ["Gen3dServicesBuilder"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Bridges"]
       32 GETTABLEKS                       R5 R5 K13 ["createSegmentMeshBridge"]
       34 GETTABLEKS                       R5 R5 K14 ["SegmentMeshBridgeTypes"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K15 ["createGenerationSessions"]
       39 CALL                             R5 0 1
       40 DUPCLOSURE                       R6 K16 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 DUPCLOSURE                       R7 K17 [PROTO_1]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 DUPCLOSURE                       R8 K18 [PROTO_2]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R9 K19 [PROTO_3]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R10 K20 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 DUPTABLE                         R11 K25 [{"generateSegmentMeshAsync", "cancelSegmentationAsync", "insertSegmentedModelAsync", "getSelectedMeshRef"}]
       57 SETTABLEKS                       R7 R11 K21 ["generateSegmentMeshAsync"]
       59 SETTABLEKS                       R8 R11 K22 ["cancelSegmentationAsync"]
       61 SETTABLEKS                       R9 R11 K23 ["insertSegmentedModelAsync"]
       63 SETTABLEKS                       R10 R11 K24 ["getSelectedMeshRef"]
       65 DUPTABLE                         R12 K27 [{"bridge"}]
       66 SETTABLEKS                       R11 R12 K26 ["bridge"]
       68 RETURN                           R12 1
