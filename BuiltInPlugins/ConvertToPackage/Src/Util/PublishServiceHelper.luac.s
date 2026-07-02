PROTO_0:
        0 DUPTABLE                         R6 K14 [{[1] = "Model", ["ContentType"] = "model/x-rbxm", ["CreatorId"], ["CreatorType"], ["AssetName"], ["Description"], ["AssetId"] = 0, ["ExpectedPrice"] = 0, ["Token"] = "", ["AdditionalParameters"]}]
        1 SETTABLEKS                       R1 R6 K4 ["CreatorId"]
        3 SETTABLEKS                       R2 R6 K5 ["CreatorType"]
        5 SETTABLEKS                       R3 R6 K6 ["AssetName"]
        7 SETTABLEKS                       R4 R6 K7 ["Description"]
        9 NEWTABLE                         R7 0 0
       11 SETTABLEKS                       R7 R6 K13 ["AdditionalParameters"]
       13 MOVE                             R9 R0
       14 MOVE                             R10 R6
       15 NAMECALL                         R7 R5 K15 ["createAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       17 CALL                             R7 3 -1
       18 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"createAssetWithAddParamErrorJson"}]
        3 SETTABLEKS                       R0 R1 K1 ["createAssetWithAddParamErrorJson"]
        5 RETURN                           R1 1
