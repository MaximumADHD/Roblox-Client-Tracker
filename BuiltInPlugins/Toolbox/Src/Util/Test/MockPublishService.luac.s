PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1], ["lastAdditionalParameters"] = , ["lastCreateAssetOrAssetVersionArgs"] = }]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["taggedEmoteAnimations"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K6 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["taggedEmoteAnimations"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R10 0
        1 SETTABLEKS                       R2 R10 K0 ["lastOperationId"]
        3 SETTABLEKS                       R9 R0 K1 ["lastAdditionalParameters"]
        5 GETTABLEKS                       R10 R0 K2 ["mockAssetId"]
        7 RETURN                           R10 1

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"serializedInstance", "publishInfo"}]
        1 SETTABLEKS                       R1 R3 K0 ["serializedInstance"]
        3 SETTABLEKS                       R2 R3 K1 ["publishInfo"]
        5 SETTABLEKS                       R3 R0 K3 ["lastCreateAssetOrAssetVersionArgs"]
        7 DUPTABLE                         R3 K5 [{"AssetId"}]
        8 GETTABLEKS                       R4 R0 K6 ["mockAssetId"]
       10 SETTABLEKS                       R4 R3 K4 ["AssetId"]
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 LOADN                            R1 12345
        6 SETTABLEKS                       R1 R0 K1 ["mockAssetId"]
        8 DUPCLOSURE                       R1 K2 [PROTO_0]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K3 ["new"]
       12 DUPCLOSURE                       R1 K4 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K5 ["TagEmoteAnimation"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K6 ["lastOperationId"]
       18 DUPCLOSURE                       R1 K7 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K8 ["CreateAssetAndWaitForAssetId"]
       22 DUPCLOSURE                       R1 K9 [PROTO_3]
       23 SETTABLEKS                       R1 R0 K10 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       25 RETURN                           R0 1
