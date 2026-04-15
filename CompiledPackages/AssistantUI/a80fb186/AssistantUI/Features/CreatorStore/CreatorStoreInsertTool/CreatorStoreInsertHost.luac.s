PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["tag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R6 R1 K2 ["toolArgs"]
        8 GETTABLEKS                       R5 R6 K3 ["environment"]
       10 GETTABLEKS                       R4 R5 K4 ["selection"]
       12 GETTABLEKS                       R3 R4 K5 ["set"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

PROTO_1:
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
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R5 R6 K11 ["bridge"]
       47 GETTABLEKS                       R4 R5 K12 ["updateContentHeader"]
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

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETTABLEKS                       R3 R0 K1 ["tag"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["observeLinkChanges"]
        7 GETTABLEKS                       R6 R1 K3 ["toolArgs"]
        9 GETTABLEKS                       R5 R6 K4 ["networking"]
       11 MOVE                             R6 R3
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["loadCachedAssetAsync"]
        3 GETTABLEKS                       R3 R0 K1 ["assetId"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R3 K2 ["load_failure"]
        8 RETURN                           R3 1
        9 LOADK                            R4 K3 ["Assistant:"]
       10 GETTABLEKS                       R5 R0 K4 ["insertGuid"]
       12 CONCAT                           R3 R4 R5
       13 GETUPVAL                         R4 1
       14 MOVE                             R6 R3
       15 NAMECALL                         R4 R4 K5 ["GetTagged"]
       17 CALL                             R4 2 1
       18 LENGTH                           R5 R4
       19 JUMPIFNOTEQKN                    R5 K6 [0] ; [+3]
       21 LOADK                            R5 K7 ["tag_not_found"]
       22 RETURN                           R5 1
       23 MOVE                             R5 R4
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 NAMECALL                         R10 R2 K8 ["Clone"]
       29 CALL                             R10 1 1
       30 GETTABLEKS                       R11 R9 K9 ["Name"]
       32 SETTABLEKS                       R11 R10 K9 ["Name"]
       34 LOADK                            R13 K10 ["PVInstance"]
       35 NAMECALL                         R11 R9 K11 ["IsA"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R11 ; [+18]
       39 LOADK                            R13 K10 ["PVInstance"]
       40 NAMECALL                         R11 R2 K11 ["IsA"]
       42 CALL                             R11 2 1
       43 JUMPIFNOT                        R11 ; [+13]
       44 NAMECALL                         R11 R9 K12 ["GetPivot"]
       46 CALL                             R11 1 1
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R12 R13 K13 ["setPositionOnGround"]
       50 MOVE                             R13 R10
       51 LOADB                            R14 0
       52 GETTABLEKS                       R15 R11 K14 ["Position"]
       54 GETTABLEKS                       R16 R11 K15 ["LookVector"]
       56 CALL                             R12 4 0
       57 MOVE                             R13 R3
       58 NAMECALL                         R11 R10 K16 ["AddTag"]
       60 CALL                             R11 2 0
       61 GETIMPORT                        R11 K18 [workspace]
       63 SETTABLEKS                       R11 R10 K19 ["Parent"]
       65 LOADNIL                          R11
       66 SETTABLEKS                       R11 R9 K19 ["Parent"]
       68 FORGLOOP                         R5 2 ; [-42]
       70 LOADK                            R5 K20 ["success"]
       71 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["loadCachedAssetAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to load asset"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["startRecording"]
       13 GETUPVAL                         R3 2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 LOADB                            R4 0
       17 NAMECALL                         R2 R2 K5 ["GenerateGUID"]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R1 K6 ["Name"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K7 ["setPositionOnGround"]
       26 MOVE                             R4 R1
       27 LOADB                            R5 1
       28 CALL                             R3 2 0
       29 LOADK                            R4 K8 ["Assistant:"]
       30 MOVE                             R5 R2
       31 CONCAT                           R3 R4 R5
       32 MOVE                             R6 R3
       33 NAMECALL                         R4 R1 K9 ["AddTag"]
       35 CALL                             R4 2 0
       36 GETIMPORT                        R4 K11 [workspace]
       38 SETTABLEKS                       R4 R1 K12 ["Parent"]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K13 ["endRecording"]
       43 GETUPVAL                         R5 2
       44 CALL                             R4 1 0
       45 MOVE                             R4 R3
       46 MOVE                             R5 R2
       47 GETTABLEKS                       R6 R1 K14 ["ClassName"]
       49 RETURN                           R4 3

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["loadCachedAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 JUMPIFEQKS                       R2 K1 ["Edit"] ; [+5]
        9 GETIMPORT                        R2 K3 [error]
       11 LOADK                            R3 K4 ["Unable to insert models from the marketplace in play mode"]
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R0 K5 ["assetName"]
       15 GETTABLEKS                       R3 R0 K6 ["assetIds"]
       17 LENGTH                           R6 R3
       18 LOADN                            R7 0
       19 JUMPIFLT                         R7 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       25 LOADK                            R6 K7 ["At least one assetId must be provided"]
       26 GETIMPORT                        R4 K9 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 2
       30 LOADB                            R6 0
       31 NAMECALL                         R4 R4 K10 ["GenerateGUID"]
       33 CALL                             R4 2 1
       34 GETTABLEKS                       R6 R1 K11 ["toolArgs"]
       36 GETTABLEKS                       R5 R6 K12 ["environment"]
       38 GETIMPORT                        R6 K15 [table.clone]
       40 MOVE                             R7 R3
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K15 [table.clone]
       44 MOVE                             R8 R3
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K17 [table.remove]
       48 MOVE                             R9 R7
       49 LOADN                            R10 1
       50 CALL                             R8 2 1
       51 JUMPIF                           R8 ; [+4]
       52 GETIMPORT                        R9 K3 [error]
       54 LOADK                            R10 K18 ["No assetId was provided"]
       55 CALL                             R9 1 0
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R2
       62 MOVE                             R10 R9
       63 MOVE                             R11 R8
       64 CALL                             R10 1 3
       65 MOVE                             R13 R7
       66 LOADNIL                          R14
       67 LOADNIL                          R15
       68 FORGPREP                         R13
       69 GETIMPORT                        R18 K21 [task.spawn]
       71 NEWCLOSURE                       R19 P1
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R17
       74 CALL                             R18 1 0
       75 FORGLOOP                         R13 2 ; [-7]
       77 DUPTABLE                         R13 K24 [{"result", "responseInfo"}]
       78 DUPTABLE                         R14 K27 [{"primaryResult", "secondaryResults"}]
       79 DUPTABLE                         R15 K30 [{"assetId", "insertGuid"}]
       80 SETTABLEKS                       R8 R15 K28 ["assetId"]
       82 SETTABLEKS                       R11 R15 K29 ["insertGuid"]
       84 SETTABLEKS                       R15 R14 K25 ["primaryResult"]
       86 SETTABLEKS                       R7 R14 K26 ["secondaryResults"]
       88 SETTABLEKS                       R14 R13 K22 ["result"]
       90 DUPTABLE                         R14 K34 [{"assets", "tag", "assetName", "insertGuid", "className"}]
       91 SETTABLEKS                       R6 R14 K31 ["assets"]
       93 SETTABLEKS                       R10 R14 K32 ["tag"]
       95 SETTABLEKS                       R2 R14 K5 ["assetName"]
       97 SETTABLEKS                       R11 R14 K29 ["insertGuid"]
       99 SETTABLEKS                       R12 R14 K33 ["className"]
      101 SETTABLEKS                       R14 R13 K23 ["responseInfo"]
      103 RETURN                           R13 1

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
       21 GETTABLEKS                       R5 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R5 K12 ["DataModelType"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R5 R6 K13 ["ToolUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Resources"]
       37 GETTABLEKS                       R7 R8 K15 ["Localization"]
       39 GETTABLEKS                       R6 R7 K16 ["Translator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K1 [script]
       44 LOADK                            R8 K17 ["CreatorStore"]
       45 NAMECALL                         R6 R6 K3 ["FindFirstAncestor"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R9 R6 K18 ["CreatorStoreInsertTool"]
       52 GETTABLEKS                       R8 R9 K19 ["CreatorStoreInsertBridgeTypes"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K10 [require]
       57 GETTABLEKS                       R10 R0 K20 ["Flags"]
       59 GETTABLEKS                       R9 R10 K21 ["FFlagAssistantTestAutomation"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K22 [PROTO_0]
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R10 K23 [PROTO_2]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R11 K24 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 DUPCLOSURE                       R12 K25 [PROTO_6]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 DUPTABLE                         R13 K30 [{"selectInsertedAssets", "listenToLinkChanges", "swapAssetAsync", "insertFromMarketplaceAsync"}]
       77 SETTABLEKS                       R9 R13 K26 ["selectInsertedAssets"]
       79 SETTABLEKS                       R10 R13 K27 ["listenToLinkChanges"]
       81 SETTABLEKS                       R11 R13 K28 ["swapAssetAsync"]
       83 SETTABLEKS                       R12 R13 K29 ["insertFromMarketplaceAsync"]
       85 DUPTABLE                         R14 K32 [{"bridge"}]
       86 SETTABLEKS                       R13 R14 K31 ["bridge"]
       88 RETURN                           R14 1
