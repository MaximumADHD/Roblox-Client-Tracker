PROTO_0:
        0 DUPTABLE                         R6 K10 [{"AssetType", "ContentType", "CreatorId", "CreatorType", "AssetName", "Description", "AssetId", "ExpectedPrice", "Token", "AdditionalParameters"}]
        1 LOADK                            R7 K11 ["Model"]
        2 SETTABLEKS                       R7 R6 K0 ["AssetType"]
        4 LOADK                            R7 K12 ["model/x-rbxm"]
        5 SETTABLEKS                       R7 R6 K1 ["ContentType"]
        7 SETTABLEKS                       R1 R6 K2 ["CreatorId"]
        9 SETTABLEKS                       R2 R6 K3 ["CreatorType"]
       11 SETTABLEKS                       R3 R6 K4 ["AssetName"]
       13 SETTABLEKS                       R4 R6 K5 ["Description"]
       15 LOADN                            R7 0
       16 SETTABLEKS                       R7 R6 K6 ["AssetId"]
       18 LOADN                            R7 0
       19 SETTABLEKS                       R7 R6 K7 ["ExpectedPrice"]
       21 LOADK                            R7 K13 [""]
       22 SETTABLEKS                       R7 R6 K8 ["Token"]
       24 NEWTABLE                         R7 0 0
       26 SETTABLEKS                       R7 R6 K9 ["AdditionalParameters"]
       28 MOVE                             R9 R0
       29 MOVE                             R10 R6
       30 NAMECALL                         R7 R5 K14 ["createAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       32 CALL                             R7 3 -1
       33 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"createAssetWithAddParamErrorJson"}]
        3 SETTABLEKS                       R0 R1 K1 ["createAssetWithAddParamErrorJson"]
        5 RETURN                           R1 1
