PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["CreatorType"]
        4 GETIMPORT                        R1 K5 [Enum.CreatorType.Group]
        6 JUMPIFNOTEQ                      R0 R1 ; [+15]
        8 GETIMPORT                        R0 K1 [game]
       10 GETTABLEKS                       R0 R0 K6 ["CreatorId"]
       12 LOADN                            R1 0
       13 JUMPIFNOTLT                      R1 R0 ; [+8]
       15 GETIMPORT                        R0 K8 [Enum.AssetCreatorType.Group]
       17 GETIMPORT                        R1 K1 [game]
       19 GETTABLEKS                       R1 R1 K6 ["CreatorId"]
       21 RETURN                           R0 2
       22 GETIMPORT                        R0 K10 [Enum.AssetCreatorType.User]
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K11 ["GetUserId"]
       27 CALL                             R1 1 -1
       28 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["CreatorType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFNOTEQ                      R3 R4 ; [+15]
        8 GETIMPORT                        R3 K1 [game]
       10 GETTABLEKS                       R3 R3 K6 ["CreatorId"]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R3 ; [+8]
       15 GETIMPORT                        R1 K8 [Enum.AssetCreatorType.Group]
       17 GETIMPORT                        R2 K1 [game]
       19 GETTABLEKS                       R2 R2 K6 ["CreatorId"]
       21 JUMP                             ; [+6]
       22 GETIMPORT                        R1 K10 [Enum.AssetCreatorType.User]
       24 GETUPVAL                         R2 0
       25 NAMECALL                         R2 R2 K11 ["GetUserId"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K12 ["GenerationUtils"]
       31 GETTABLEKS                       R3 R3 K13 ["cloneAsArchivable"]
       33 MOVE                             R4 R0
       34 CALL                             R3 1 1
       35 FASTCALL2K                       ASSERT R3 K14 ; [+5]
       37 MOVE                             R5 R3
       38 LOADK                            R6 K14 ["Failed to clone instance for asset publish"]
       39 GETIMPORT                        R4 K16 [assert]
       41 CALL                             R4 2 0
       42 GETUPVAL                         R4 2
       43 NEWTABLE                         R6 0 1
       45 MOVE                             R7 R3
       46 SETLIST                          R6 R7 1 [1]
       48 NAMECALL                         R4 R4 K17 ["SerializeInstances"]
       50 CALL                             R4 2 1
       51 NAMECALL                         R5 R3 K18 ["Destroy"]
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 3
       55 MOVE                             R7 R4
       56 DUPTABLE                         R8 K31 [{["AssetType"] = "Model", ["AssetName"] = "Gen3d texture source", ["Description"] = "Gen3d texture source", ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       57 SETTABLEKS                       R2 R8 K6 ["CreatorId"]
       59 SETTABLEKS                       R1 R8 K2 ["CreatorType"]
       61 DUPTABLE                         R9 K34 [{["PublishAsPackage"] = False}]
       62 SETTABLEKS                       R9 R8 K30 ["AdditionalParameters"]
       64 NAMECALL                         R5 R5 K35 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       66 CALL                             R5 3 1
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K36 ["getFFlagTextureGenDebugLog"]
       70 CALL                             R6 0 1
       71 JUMPIFNOT                        R6 ; [+6]
       72 GETIMPORT                        R6 K38 [print]
       74 LOADK                            R7 K39 ["[Gen3d] publishInstanceAsAssetAsync AssetId:"]
       75 GETTABLEKS                       R8 R5 K24 ["AssetId"]
       77 CALL                             R6 2 0
       78 GETTABLEKS                       R6 R5 K24 ["AssetId"]
       80 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"exportInstanceToGlbAsync", "exportMeshToGlbAsync", "loadModelFromUrlAsync", "publishInstanceAsAssetAsync"}]
        1 DUPCLOSURE                       R1 K5 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["exportInstanceToGlbAsync"]
        6 DUPCLOSURE                       R1 K6 [PROTO_2]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["exportMeshToGlbAsync"]
       10 DUPCLOSURE                       R1 K7 [PROTO_3]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["loadModelFromUrlAsync"]
       14 DUPCLOSURE                       R1 K8 [PROTO_4]
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 SETTABLEKS                       R1 R0 K3 ["publishInstanceAsAssetAsync"]
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GenerationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["PublishService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["StudioAssetService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["Gen3d"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["Gen3dCore"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Bin"]
       42 GETTABLEKS                       R7 R7 K16 ["Common"]
       44 GETTABLEKS                       R7 R7 K17 ["defineLuaFlags"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K18 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R8 K19 [PROTO_5]
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 RETURN                           R8 1
