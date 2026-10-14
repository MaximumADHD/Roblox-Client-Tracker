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
       37 JUMP                             ; [+30]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K11 ["FileType"]
       41 GETTABLEKS                       R8 R8 K16 ["Audio"]
       43 JUMPIFNOTEQ                      R2 R8 ; [+4]
       45 GETIMPORT                        R7 K17 [Enum.AssetType.Audio]
       47 JUMP                             ; [+20]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K11 ["FileType"]
       51 GETTABLEKS                       R8 R8 K18 ["Image"]
       53 JUMPIFNOTEQ                      R2 R8 ; [+4]
       55 GETIMPORT                        R7 K19 [Enum.AssetType.Image]
       57 JUMP                             ; [+10]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K11 ["FileType"]
       61 GETTABLEKS                       R8 R8 K20 ["Text"]
       63 JUMPIFNOTEQ                      R2 R8 ; [+4]
       65 LOADK                            R6 K21 ["application/octet-stream"]
       66 GETIMPORT                        R7 K23 [Enum.AssetType.TextDocument]
       68 FASTCALL2K                       ASSERT R7 K24 ; [+5]
       70 MOVE                             R9 R7
       71 LOADK                            R10 K24 ["Must be given an asset targettype"]
       72 GETIMPORT                        R8 K26 [assert]
       74 CALL                             R8 2 0
       75 DUPTABLE                         R8 K37 [{["creatorId"], ["creatorType"], ["targetType"], ["assetDescription"] = "", ["assetId"] = 0, ["assetName"], ["contentType"], ["expectedPrice"], ["token"] = ""}]
       76 SETTABLEKS                       R3 R8 K27 ["creatorId"]
       78 SETTABLEKS                       R4 R8 K28 ["creatorType"]
       80 SETTABLEKS                       R7 R8 K29 ["targetType"]
       82 SETTABLEKS                       R1 R8 K33 ["assetName"]
       84 SETTABLEKS                       R6 R8 K34 ["contentType"]
       86 SETTABLEKS                       R5 R8 K35 ["expectedPrice"]
       88 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 NAMECALL                         R0 R0 K0 ["UploadAssetFromPathAsync"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 NAMECALL                         R0 R0 K0 ["UploadAssetFromPathAsync"]
       16 CALL                             R0 3 -1
       17 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R2 1 3
        9 JUMPIF                           R2 ; [+8]
       10 MOVE                             R5 R1
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R7 R3
       13 GETIMPORT                        R6 K3 [tostring]
       15 CALL                             R6 1 1
       16 CALL                             R5 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOT                        R3 ; [+4]
       19 MOVE                             R5 R0
       20 MOVE                             R6 R3
       21 CALL                             R5 1 0
       22 RETURN                           R0 0
       23 MOVE                             R5 R1
       24 MOVE                             R6 R4
       25 CALL                             R5 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["UploadVersionedAssetFromPathAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 3
        8 JUMPIF                           R2 ; [+8]
        9 MOVE                             R5 R1
       10 FASTCALL1                        TOSTRING R3 ; [+3]
       11 MOVE                             R7 R3
       12 GETIMPORT                        R6 K3 [tostring]
       14 CALL                             R6 1 1
       15 CALL                             R5 1 0
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R3 ; [+4]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R3
       20 CALL                             R5 1 0
       21 RETURN                           R0 0
       22 MOVE                             R5 R1
       23 MOVE                             R6 R4
       24 CALL                             R5 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 NAMECALL                         R0 R0 K1 ["Cancel"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R4 R1 K0 ["assetName"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["FileType"]
        5 GETTABLEKS                       R5 R5 K2 ["Text"]
        7 GETTABLEKS                       R6 R1 K3 ["creatorId"]
        9 NAMECALL                         R2 R0 K4 ["_createAssetRequestParams"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K5 ["_createPromiseHelper"]
       14 GETTABLEKS                       R4 R1 K6 ["filepath"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_15:
        0 GETTABLEKS                       R5 R1 K0 ["assetName"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["FileType"]
        5 GETTABLEKS                       R6 R6 K2 ["Video"]
        7 GETTABLEKS                       R7 R1 K3 ["creatorId"]
        9 NAMECALL                         R3 R0 K4 ["_createAssetRequestParams"]
       11 CALL                             R3 4 1
       12 GETTABLEKS                       R4 R0 K5 ["_createPromiseHelper"]
       14 GETTABLEKS                       R5 R1 K6 ["filepath"]
       16 MOVE                             R6 R3
       17 MOVE                             R7 R2
       18 CALL                             R4 3 -1
       19 RETURN                           R4 -1

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
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R9 R9 K17 ["Flags"]
       60 GETTABLEKS                       R9 R9 K18 ["getFFlagTempAssetImporterLegacyVideoProgress"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 16 0
       65 SETTABLEKS                       R9 R9 K19 ["__index"]
       67 DUPCLOSURE                       R10 K20 [PROTO_0]
       68 CAPTURE                          VAL R9
       69 SETTABLEKS                       R10 R9 K21 ["new"]
       71 DUPCLOSURE                       R10 K22 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R10 R9 K23 ["_createAssetRequestParams"]
       76 DUPCLOSURE                       R10 K24 [PROTO_4]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R10 R9 K25 ["_createPromiseHelper"]
       82 DUPCLOSURE                       R10 K26 [PROTO_7]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R10 R9 K27 ["_createVersionedPromiseHelper"]
       87 DUPCLOSURE                       R10 K28 [PROTO_10]
       88 CAPTURE                          VAL R4
       89 SETTABLEKS                       R10 R9 K29 ["createScenePromise"]
       91 DUPCLOSURE                       R10 K30 [PROTO_11]
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R10 R9 K31 ["createImagePromise"]
       95 DUPCLOSURE                       R10 K32 [PROTO_12]
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R10 R9 K33 ["createVersionedImagePromise"]
       99 DUPCLOSURE                       R10 K34 [PROTO_13]
      100 CAPTURE                          VAL R6
      101 SETTABLEKS                       R10 R9 K35 ["createAudioPromise"]
      103 DUPCLOSURE                       R10 K36 [PROTO_14]
      104 CAPTURE                          VAL R6
      105 SETTABLEKS                       R10 R9 K37 ["createTextPromise"]
      107 DUPCLOSURE                       R10 K38 [PROTO_15]
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R10 R9 K39 ["createVideoPromise"]
      111 RETURN                           R9 1
