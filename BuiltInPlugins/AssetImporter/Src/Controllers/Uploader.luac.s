PROTO_0:
        0 DUPTABLE                         R0 K1 [{"managedGroups"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["managedGroups"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R4 K3 [Enum.AssetCreatorType.User]
        2 JUMPIFNOTEQKN                    R3 K4 [-1] ; [+7]
        4 GETUPVAL                         R5 0
        5 NAMECALL                         R5 R5 K5 ["GetUserId"]
        7 CALL                             R5 1 1
        8 MOVE                             R3 R5
        9 JUMP                             ; [+13]
       10 GETTABLEKS                       R5 R0 K6 ["managedGroups"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K7 ["id"]
       17 JUMPIFNOTEQ                      R3 R10 ; [+3]
       19 GETIMPORT                        R4 K9 [Enum.AssetCreatorType.Group]
       21 FORGLOOP                         R5 2 ; [-7]
       23 LOADN                            R5 0
       24 LOADK                            R6 K10 [""]
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K11 ["FileType"]
       29 GETTABLEKS                       R8 R8 K12 ["Video"]
       31 JUMPIFNOTEQ                      R2 R8 ; [+6]
       33 LOADN                            R5 2000
       34 LOADK                            R6 K13 ["application/json"]
       35 GETIMPORT                        R7 K15 [Enum.AssetType.Video]
       37 JUMP                             ; [+19]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K11 ["FileType"]
       41 GETTABLEKS                       R8 R8 K16 ["Audio"]
       43 JUMPIFNOTEQ                      R2 R8 ; [+4]
       45 GETIMPORT                        R7 K17 [Enum.AssetType.Audio]
       47 JUMP                             ; [+9]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K11 ["FileType"]
       51 GETTABLEKS                       R8 R8 K18 ["Image"]
       53 JUMPIFNOTEQ                      R2 R8 ; [+3]
       55 GETIMPORT                        R7 K19 [Enum.AssetType.Image]
       57 FASTCALL2K                       ASSERT R7 K20 ; [+5]
       59 MOVE                             R9 R7
       60 LOADK                            R10 K20 ["Must be given an asset targettype"]
       61 GETIMPORT                        R8 K22 [assert]
       63 CALL                             R8 2 0
       64 DUPTABLE                         R8 K33 [{["creatorId"], ["creatorType"], ["targetType"], ["assetDescription"] = "", ["assetId"] = 0, ["assetName"], ["contentType"], ["expectedPrice"], ["token"] = ""}]
       65 SETTABLEKS                       R3 R8 K23 ["creatorId"]
       67 SETTABLEKS                       R4 R8 K24 ["creatorType"]
       69 SETTABLEKS                       R7 R8 K25 ["targetType"]
       71 SETTABLEKS                       R1 R8 K29 ["assetName"]
       73 SETTABLEKS                       R6 R8 K30 ["contentType"]
       75 SETTABLEKS                       R5 R8 K31 ["expectedPrice"]
       77 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 NAMECALL                         R2 R2 K0 ["UploadAssetFromPathAsync"]
        5 CALL                             R2 3 2
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 CALL                             R4 1 0
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R3 ; [+3]
       12 MOVE                             R4 R1
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R6 3
        4 NAMECALL                         R2 R2 K0 ["UploadVersionedAssetFromPathAsync"]
        6 CALL                             R2 4 2
        7 JUMPIFNOT                        R2 ; [+4]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R2
       10 CALL                             R4 1 0
       11 RETURN                           R0 0
       12 MOVE                             R4 R1
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 NAMECALL                         R0 R0 K1 ["Cancel"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["session"]
        3 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        5 LOADK                            R5 K1 ["Scene QueueItem missing AssetImportSession"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 MOVE                             R3 R2
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U0
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["session"]
       16 GETTABLEKS                       R3 R3 K4 ["UploadComplete"]
       18 MOVE                             R5 R0
       19 NAMECALL                         R3 R3 K5 ["Connect"]
       21 CALL                             R3 2 1
       22 SETUPVAL                         R3 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["session"]
       26 NAMECALL                         R3 R3 K6 ["Upload"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["new"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          REF R1
        7 CALL                             R2 1 1
        8 MOVE                             R3 R2
        9 MOVE                             R4 R1
       10 CLOSEUPVALS                      R1
       11 RETURN                           R3 2

PROTO_9:
        0 GETTABLEKS                       R4 R1 K0 ["assetName"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["FileType"]
        5 GETTABLEKS                       R5 R5 K2 ["Image"]
        7 GETTABLEKS                       R6 R1 K3 ["creatorId"]
        9 NAMECALL                         R2 R0 K4 ["_createAssetRequestParams"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K5 ["_createPromiseHelper"]
       14 GETTABLEKS                       R4 R1 K6 ["filepath"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_10:
        0 MOVE                             R7 R2
        1 GETUPVAL                         R8 0
        2 GETTABLEKS                       R8 R8 K0 ["FileType"]
        4 GETTABLEKS                       R8 R8 K1 ["Image"]
        6 MOVE                             R9 R3
        7 NAMECALL                         R5 R0 K2 ["_createAssetRequestParams"]
        9 CALL                             R5 4 1
       10 GETTABLEKS                       R6 R0 K3 ["_createVersionedPromiseHelper"]
       12 MOVE                             R7 R1
       13 MOVE                             R8 R5
       14 MOVE                             R9 R4
       15 CALL                             R6 3 -1
       16 RETURN                           R6 -1

PROTO_11:
        0 GETTABLEKS                       R4 R1 K0 ["assetName"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["FileType"]
        5 GETTABLEKS                       R5 R5 K2 ["Audio"]
        7 GETTABLEKS                       R6 R1 K3 ["creatorId"]
        9 NAMECALL                         R2 R0 K4 ["_createAssetRequestParams"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K5 ["_createPromiseHelper"]
       14 GETTABLEKS                       R4 R1 K6 ["filepath"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R4 R1 K0 ["assetName"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["FileType"]
        5 GETTABLEKS                       R5 R5 K2 ["Video"]
        7 GETTABLEKS                       R6 R1 K3 ["creatorId"]
        9 NAMECALL                         R2 R0 K4 ["_createAssetRequestParams"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K5 ["_createPromiseHelper"]
       14 GETTABLEKS                       R4 R1 K6 ["filepath"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["StudioService"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K13 ["Promise"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["LuauPolyfill"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Src"]
       42 GETTABLEKS                       R7 R7 K15 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Types"]
       51 GETTABLEKS                       R8 R8 K16 ["QueuedSession"]
       53 CALL                             R7 1 1
       54 NEWTABLE                         R8 16 0
       56 SETTABLEKS                       R8 R8 K17 ["__index"]
       58 DUPCLOSURE                       R9 K18 [PROTO_0]
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R9 R8 K19 ["new"]
       62 DUPCLOSURE                       R9 K20 [PROTO_1]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R9 R8 K21 ["_createAssetRequestParams"]
       67 DUPCLOSURE                       R9 K22 [PROTO_3]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R9 R8 K23 ["_createPromiseHelper"]
       72 DUPCLOSURE                       R9 K24 [PROTO_5]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R9 R8 K25 ["_createVersionedPromiseHelper"]
       77 DUPCLOSURE                       R9 K26 [PROTO_8]
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R9 R8 K27 ["createScenePromise"]
       81 DUPCLOSURE                       R9 K28 [PROTO_9]
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R9 R8 K29 ["createImagePromise"]
       85 DUPCLOSURE                       R9 K30 [PROTO_10]
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R9 R8 K31 ["createVersionedImagePromise"]
       89 DUPCLOSURE                       R9 K32 [PROTO_11]
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R9 R8 K33 ["createAudioPromise"]
       93 DUPCLOSURE                       R9 K34 [PROTO_12]
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R9 R8 K35 ["createVideoPromise"]
       97 RETURN                           R8 1
