PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K2 [buffer.fromstring]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R1 K3 ["Base64Encode"]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R3 K5 [buffer.len]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K6 ["FIntAssistantAvatarAutoSetupMaxSerializedModelToSendBytes"]
       15 JUMPIFLE                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [CFrame.new]
        5 NAMECALL                         R3 R1 K4 ["GetBoundingBox"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R3 R3 K5 ["Position"]
       10 CALL                             R2 1 1
       11 NEWTABLE                         R3 0 0
       13 NAMECALL                         R4 R1 K6 ["GetDescendants"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 LOADK                            R11 K7 ["BasePart"]
       18 NAMECALL                         R9 R8 K8 ["IsA"]
       20 CALL                             R9 2 1
       21 JUMPIFNOT                        R9 ; [+6]
       22 GETTABLEKS                       R11 R8 K1 ["CFrame"]
       24 NAMECALL                         R9 R2 K9 ["ToObjectSpace"]
       26 CALL                             R9 2 1
       27 SETTABLE                         R9 R3 R8
       28 FORGLOOP                         R4 2 ; [-12]
       30 MOVE                             R4 R3
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 SETTABLEKS                       R8 R7 K1 ["CFrame"]
       36 FORGLOOP                         R4 2 ; [-3]
       38 GETUPVAL                         R4 0
       39 NEWTABLE                         R6 0 1
       41 MOVE                             R7 R1
       42 SETLIST                          R6 R7 1 [1]
       44 NAMECALL                         R4 R4 K10 ["SerializeInstances"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCreatorData"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K15 [{["AssetType"] = "Model", ["AssetName"] = "Auto-setup character model", ["Description"] = "Auto-setup character model", ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
        5 GETTABLEKS                       R3 R1 K16 ["creatorId"]
        7 SETTABLEKS                       R3 R2 K8 ["CreatorId"]
        9 GETTABLEKS                       R3 R1 K17 ["creatorType"]
       11 SETTABLEKS                       R3 R2 K9 ["CreatorType"]
       13 DUPTABLE                         R3 K20 [{["PublishAsPackage"] = False}]
       14 SETTABLEKS                       R3 R2 K14 ["AdditionalParameters"]
       16 GETUPVAL                         R3 1
       17 MOVE                             R5 R0
       18 MOVE                             R6 R2
       19 NAMECALL                         R3 R3 K21 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       21 CALL                             R3 3 1
       22 LOADK                            R5 K22 ["rbxassetid://%*"]
       23 GETTABLEKS                       R7 R3 K6 ["AssetId"]
       25 NAMECALL                         R5 R5 K23 ["format"]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["getCreatorData"]
        3 CALL                             R5 0 1
        4 DUPTABLE                         R6 K3 [{"CreatorId", "CreatorType"}]
        5 GETTABLEKS                       R7 R5 K4 ["creatorId"]
        7 SETTABLEKS                       R7 R6 K1 ["CreatorId"]
        9 GETTABLEKS                       R7 R5 K5 ["creatorType"]
       11 SETTABLEKS                       R7 R6 K2 ["CreatorType"]
       13 DUPTABLE                         R7 K7 [{"AssetDataHash"}]
       14 SETTABLEKS                       R1 R7 K6 ["AssetDataHash"]
       16 GETUPVAL                         R8 1
       17 GETIMPORT                        R10 K10 [buffer.tostring]
       19 GETUPVAL                         R11 2
       20 GETIMPORT                        R13 K12 [buffer.fromstring]
       22 MOVE                             R14 R0
       23 CALL                             R13 1 -1
       24 NAMECALL                         R11 R11 K13 ["Base64Encode"]
       26 CALL                             R11 -1 -1
       27 CALL                             R10 -1 1
       28 MOVE                             R11 R6
       29 MOVE                             R12 R7
       30 MOVE                             R13 R2
       31 MOVE                             R14 R3
       32 MOVE                             R15 R4
       33 NAMECALL                         R8 R8 K14 ["AutoSetupSerializedAvatarAsync"]
       35 CALL                             R8 7 -1
       36 RETURN                           R8 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["AutoSetupAvatarAsync"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CancelAutoSetupAvatarAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K3 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["PublishService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["StudioAssetService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["AvatarAutoSetup"]
       33 GETTABLEKS                       R5 R5 K15 ["AssetCreatorUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K11 [require]
       38 GETTABLEKS                       R6 R0 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K11 [require]
       45 GETTABLEKS                       R7 R0 K12 ["Src"]
       47 GETTABLEKS                       R7 R7 K13 ["Util"]
       49 GETTABLEKS                       R7 R7 K14 ["AvatarAutoSetup"]
       51 GETTABLEKS                       R7 R7 K17 ["Types"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 8 0
       56 DUPCLOSURE                       R8 K18 [PROTO_0]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R8 R7 K19 ["canUseSerializedInstance"]
       61 DUPCLOSURE                       R8 K20 [PROTO_1]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R8 R7 K21 ["serializeModel"]
       65 DUPCLOSURE                       R8 K22 [PROTO_2]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R8 R7 K23 ["uploadModelAsync"]
       70 DUPCLOSURE                       R8 K24 [PROTO_3]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R8 R7 K25 ["startSerializedAutoSetupAsync"]
       76 DUPCLOSURE                       R8 K26 [PROTO_4]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R8 R7 K27 ["startAutoSetupAsync"]
       80 DUPCLOSURE                       R8 K28 [PROTO_7]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R8 R7 K29 ["cancelAutoSetup"]
       84 RETURN                           R7 1
