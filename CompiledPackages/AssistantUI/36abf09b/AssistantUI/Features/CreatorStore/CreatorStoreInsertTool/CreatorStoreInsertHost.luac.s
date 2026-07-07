PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        7 LOADK                            R2 K2 ["Store"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 LOADK                            R2 K3 ["Assistant:"]
       12 MOVE                             R3 R0
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["tag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K2 ["initArgs"]
        8 GETTABLEKS                       R3 R3 K3 ["environment"]
       10 GETTABLEKS                       R3 R3 K4 ["selection"]
       12 GETTABLEKS                       R3 R3 K5 ["set"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R3 R1 ; [+15]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K1 ["InstanceChip"]
       12 LOADK                            R6 K2 ["Multiple"]
       13 DUPTABLE                         R7 K5 [{"name", "count"}]
       14 GETUPVAL                         R8 2
       15 SETTABLEKS                       R8 R7 K3 ["name"]
       17 SETTABLEKS                       R1 R7 K4 ["count"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 JUMP                             ; [+13]
       24 JUMPIFNOTEQKN                    R1 K7 [0] ; [+12]
       26 GETUPVAL                         R3 3
       27 LOADK                            R5 K1 ["InstanceChip"]
       28 LOADK                            R6 K8 ["Deleted"]
       29 DUPTABLE                         R7 K9 [{"name"}]
       30 GETUPVAL                         R8 2
       31 SETTABLEKS                       R8 R7 K3 ["name"]
       33 NAMECALL                         R3 R3 K6 ["getText"]
       35 CALL                             R3 4 1
       36 MOVE                             R2 R3
       37 LOADNIL                          R3
       38 LOADN                            R4 0
       39 JUMPIFNOTLT                      R4 R1 ; [+4]
       41 GETTABLEN                        R4 R0 1
       42 GETTABLEKS                       R3 R4 K10 ["ClassName"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K11 ["bridge"]
       47 GETTABLEKS                       R4 R4 K12 ["updateContentHeader"]
       49 DUPTABLE                         R5 K16 [{"newDisplayName", "newClassName", "showChip"}]
       50 SETTABLEKS                       R2 R5 K13 ["newDisplayName"]
       52 SETTABLEKS                       R3 R5 K14 ["newClassName"]
       54 LOADN                            R7 0
       55 JUMPIFLT                         R7 R1 ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 SETTABLEKS                       R6 R5 K15 ["showChip"]
       61 CALL                             R4 1 0
       62 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R3 R0 K1 ["tag"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["observeTagChanges"]
        7 MOVE                             R5 R3
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadCachedAssetAsync"]
        3 GETTABLEKS                       R3 R0 K1 ["assetId"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R3 K2 ["load_failure"]
        8 RETURN                           R3 1
        9 GETTABLEKS                       R3 R0 K3 ["tag"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K4 ["GetTagged"]
       15 CALL                             R4 2 1
       16 LENGTH                           R5 R4
       17 JUMPIFNOTEQKN                    R5 K5 [0] ; [+3]
       19 LOADK                            R5 K6 ["tag_not_found"]
       20 RETURN                           R5 1
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 NAMECALL                         R10 R2 K7 ["Clone"]
       27 CALL                             R10 1 1
       28 GETTABLEKS                       R11 R9 K8 ["Name"]
       30 SETTABLEKS                       R11 R10 K8 ["Name"]
       32 LOADK                            R13 K9 ["PVInstance"]
       33 NAMECALL                         R11 R9 K10 ["IsA"]
       35 CALL                             R11 2 1
       36 JUMPIFNOT                        R11 ; [+18]
       37 LOADK                            R13 K9 ["PVInstance"]
       38 NAMECALL                         R11 R2 K10 ["IsA"]
       40 CALL                             R11 2 1
       41 JUMPIFNOT                        R11 ; [+13]
       42 NAMECALL                         R11 R9 K11 ["GetPivot"]
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K12 ["setPositionOnGround"]
       48 MOVE                             R13 R10
       49 LOADB                            R14 0
       50 GETTABLEKS                       R15 R11 K13 ["Position"]
       52 GETTABLEKS                       R16 R11 K14 ["LookVector"]
       54 CALL                             R12 4 0
       55 MOVE                             R13 R3
       56 NAMECALL                         R11 R10 K15 ["AddTag"]
       58 CALL                             R11 2 0
       59 GETIMPORT                        R11 K17 [workspace]
       61 SETTABLEKS                       R11 R10 K18 ["Parent"]
       63 LOADNIL                          R11
       64 SETTABLEKS                       R11 R9 K18 ["Parent"]
       66 FORGLOOP                         R5 2 ; [-42]
       68 LOADK                            R5 K19 ["success"]
       69 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadCachedAssetAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to load asset"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["startRecording"]
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 LOADB                            R4 0
       17 NAMECALL                         R2 R2 K5 ["GenerateGUID"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R1 K6 ["Name"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K7 ["setPositionOnGround"]
       26 MOVE                             R4 R1
       27 LOADB                            R5 1
       28 CALL                             R3 2 0
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantUseNewTags"]
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETUPVAL                         R3 6
       34 GETTABLEKS                       R3 R3 K9 ["getUniqueTag"]
       36 LOADK                            R4 K10 ["Store"]
       37 MOVE                             R5 R2
       38 CALL                             R3 2 1
       39 JUMP                             ; [+3]
       40 LOADK                            R4 K11 ["Assistant:"]
       41 MOVE                             R5 R2
       42 CONCAT                           R3 R4 R5
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R1 K12 ["AddTag"]
       46 CALL                             R4 2 0
       47 GETIMPORT                        R4 K14 [workspace]
       49 SETTABLEKS                       R4 R1 K15 ["Parent"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K16 ["endRecording"]
       54 GETUPVAL                         R5 2
       55 CALL                             R4 1 0
       56 MOVE                             R4 R3
       57 MOVE                             R5 R2
       58 GETTABLEKS                       R6 R1 K17 ["ClassName"]
       60 RETURN                           R4 3

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Edit"]
        9 JUMPIFEQ                         R2 R3 ; [+5]
       11 GETIMPORT                        R2 K4 [error]
       13 LOADK                            R3 K5 ["Unable to insert models from the marketplace in play mode"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K6 ["assetName"]
       17 GETTABLEKS                       R3 R0 K7 ["assetIds"]
       19 LENGTH                           R6 R3
       20 LOADN                            R7 0
       21 JUMPIFLT                         R7 R6 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       27 LOADK                            R6 K8 ["At least one assetId must be provided"]
       28 GETIMPORT                        R4 K10 [assert]
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 1
       32 LOADB                            R6 0
       33 NAMECALL                         R4 R4 K11 ["GenerateGUID"]
       35 CALL                             R4 2 1
       36 GETTABLEKS                       R5 R1 K12 ["initArgs"]
       38 GETTABLEKS                       R5 R5 K13 ["environment"]
       40 GETIMPORT                        R6 K16 [table.clone]
       42 MOVE                             R7 R3
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K16 [table.clone]
       46 MOVE                             R8 R3
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K18 [table.remove]
       50 MOVE                             R9 R7
       51 LOADN                            R10 1
       52 CALL                             R8 2 1
       53 JUMPIF                           R8 ; [+4]
       54 GETIMPORT                        R9 K4 [error]
       56 LOADK                            R10 K19 ["No assetId was provided"]
       57 CALL                             R9 1 0
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 MOVE                             R10 R9
       67 MOVE                             R11 R8
       68 CALL                             R10 1 3
       69 MOVE                             R13 R7
       70 LOADNIL                          R14
       71 LOADNIL                          R15
       72 FORGPREP                         R13
       73 GETIMPORT                        R18 K22 [task.spawn]
       75 NEWCLOSURE                       R19 P1
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R17
       78 CALL                             R18 1 0
       79 FORGLOOP                         R13 2 ; [-7]
       81 DUPTABLE                         R13 K25 [{"result", "responseInfo"}]
       82 DUPTABLE                         R14 K28 [{"primaryResult", "secondaryResults"}]
       83 DUPTABLE                         R15 K31 [{"assetId", "insertGuid"}]
       84 SETTABLEKS                       R8 R15 K29 ["assetId"]
       86 SETTABLEKS                       R11 R15 K30 ["insertGuid"]
       88 SETTABLEKS                       R15 R14 K26 ["primaryResult"]
       90 SETTABLEKS                       R7 R14 K27 ["secondaryResults"]
       92 SETTABLEKS                       R14 R13 K23 ["result"]
       94 DUPTABLE                         R14 K35 [{"assets", "tag", "assetName", "insertGuid", "className"}]
       95 SETTABLEKS                       R6 R14 K32 ["assets"]
       97 SETTABLEKS                       R10 R14 K33 ["tag"]
       99 SETTABLEKS                       R2 R14 K6 ["assetName"]
      101 SETTABLEKS                       R11 R14 K30 ["insertGuid"]
      103 SETTABLEKS                       R12 R14 K34 ["className"]
      105 SETTABLEKS                       R14 R13 K24 ["responseInfo"]
      107 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["DataModelType"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K10 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Tagging"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Util"]
       42 GETTABLEKS                       R7 R7 K15 ["ToolUtils"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R8 R0 K16 ["Resources"]
       49 GETTABLEKS                       R8 R8 K17 ["Localization"]
       51 GETTABLEKS                       R8 R8 K18 ["Translator"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K1 [script]
       56 LOADK                            R10 K19 ["CreatorStore"]
       57 NAMECALL                         R8 R8 K3 ["FindFirstAncestor"]
       59 CALL                             R8 2 1
       60 GETIMPORT                        R9 K10 [require]
       62 GETTABLEKS                       R10 R8 K20 ["CreatorStoreInsertTool"]
       64 GETTABLEKS                       R10 R10 K21 ["CreatorStoreInsertBridgeTypes"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K22 [PROTO_0]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 DUPCLOSURE                       R11 K23 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R12 K24 [PROTO_3]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R13 K25 [PROTO_4]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R14 K26 [PROTO_7]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 DUPTABLE                         R15 K31 [{"selectInsertedAssets", "listenToLinkChanges", "swapAssetAsync", "insertFromMarketplaceAsync"}]
       86 SETTABLEKS                       R11 R15 K27 ["selectInsertedAssets"]
       88 SETTABLEKS                       R12 R15 K28 ["listenToLinkChanges"]
       90 SETTABLEKS                       R13 R15 K29 ["swapAssetAsync"]
       92 SETTABLEKS                       R14 R15 K30 ["insertFromMarketplaceAsync"]
       94 DUPTABLE                         R16 K33 [{"bridge"}]
       95 SETTABLEKS                       R15 R16 K32 ["bridge"]
       97 RETURN                           R16 1
