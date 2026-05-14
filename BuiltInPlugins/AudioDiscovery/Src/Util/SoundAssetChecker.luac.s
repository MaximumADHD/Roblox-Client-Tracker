PROTO_0:
        0 DUPTABLE                         R2 K21 [{"soundsFound", "_soundAssets", "_nonSoundAssetIds", "_currentBatch", "_pendingAssetIds", "_batchesToSend", "_batchRequestsInFlight", "_maxAssetsPerRequest", "_perRequestCooldown", "_cooldownAfterHttp429", "_maxRecentRequests", "_lastSentRequests", "_hit429", "_started", "_dead", "_httpTask", "_renderSteppedConnection", "_goodAssets", "_badAssets", "_resolvedAssets", "_networking"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K22 ["new"]
        4 CALL                             R3 0 1
        5 SETTABLEKS                       R3 R2 K0 ["soundsFound"]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K1 ["_soundAssets"]
       11 NEWTABLE                         R3 0 0
       13 SETTABLEKS                       R3 R2 K2 ["_nonSoundAssetIds"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["_currentBatch"]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K4 ["_pendingAssetIds"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K5 ["_batchesToSend"]
       27 LOADN                            R3 0
       28 SETTABLEKS                       R3 R2 K6 ["_batchRequestsInFlight"]
       30 JUMPIFNOT                        R1 ; [+3]
       31 GETTABLEKS                       R3 R1 K23 ["maxAssetsPerRequest"]
       33 JUMPIF                           R3 ; [+1]
       34 GETUPVAL                         R3 1
       35 SETTABLEKS                       R3 R2 K7 ["_maxAssetsPerRequest"]
       37 JUMPIFNOT                        R1 ; [+3]
       38 GETTABLEKS                       R3 R1 K24 ["perRequestCooldown"]
       40 JUMPIF                           R3 ; [+1]
       41 GETUPVAL                         R3 2
       42 SETTABLEKS                       R3 R2 K8 ["_perRequestCooldown"]
       44 JUMPIFNOT                        R1 ; [+3]
       45 GETTABLEKS                       R3 R1 K25 ["cooldownAfterHttp429"]
       47 JUMPIF                           R3 ; [+1]
       48 GETUPVAL                         R3 3
       49 SETTABLEKS                       R3 R2 K9 ["_cooldownAfterHttp429"]
       51 JUMPIFNOT                        R1 ; [+3]
       52 GETTABLEKS                       R3 R1 K26 ["maxRecentRequests"]
       54 JUMPIF                           R3 ; [+1]
       55 GETUPVAL                         R3 4
       56 SETTABLEKS                       R3 R2 K10 ["_maxRecentRequests"]
       58 NEWTABLE                         R3 0 0
       60 SETTABLEKS                       R3 R2 K11 ["_lastSentRequests"]
       62 LOADN                            R3 0
       63 SETTABLEKS                       R3 R2 K12 ["_hit429"]
       65 LOADB                            R3 0
       66 SETTABLEKS                       R3 R2 K13 ["_started"]
       68 LOADB                            R3 0
       69 SETTABLEKS                       R3 R2 K14 ["_dead"]
       71 LOADNIL                          R3
       72 SETTABLEKS                       R3 R2 K15 ["_httpTask"]
       74 LOADNIL                          R3
       75 SETTABLEKS                       R3 R2 K16 ["_renderSteppedConnection"]
       77 LOADN                            R3 0
       78 SETTABLEKS                       R3 R2 K17 ["_goodAssets"]
       80 LOADN                            R3 0
       81 SETTABLEKS                       R3 R2 K18 ["_badAssets"]
       83 NEWTABLE                         R3 0 0
       85 SETTABLEKS                       R3 R2 K19 ["_resolvedAssets"]
       87 SETTABLEKS                       R0 R2 K20 ["_networking"]
       89 GETUPVAL                         R5 5
       90 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       92 MOVE                             R4 R2
       93 GETIMPORT                        R3 K28 [setmetatable]
       95 CALL                             R3 2 0
       96 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_renderStepped"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_dead"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["_stepHttpTask"]
        7 CALL                             R0 1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_started"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["_dead"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["_started"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["RenderStepped"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K3 ["Connect"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K4 ["_renderSteppedConnection"]
       20 GETIMPORT                        R1 K7 [coroutine.create]
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 1
       25 SETTABLEKS                       R1 R0 K8 ["_httpTask"]
       27 NAMECALL                         R1 R0 K9 ["_wakeUpHttpTask"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_dead"]
        3 GETTABLEKS                       R1 R0 K1 ["_renderSteppedConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["_renderSteppedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["_renderSteppedConnection"]
       14 GETTABLEKS                       R1 R0 K3 ["_httpTask"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETIMPORT                        R1 K6 [coroutine.close]
       19 GETTABLEKS                       R2 R0 K3 ["_httpTask"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K3 ["_httpTask"]
       25 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_dead"]
        2 JUMPIF                           R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K1 ["_httpTask"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETIMPORT                        R1 K4 [coroutine.status]
        8 GETTABLEKS                       R2 R0 K1 ["_httpTask"]
       10 CALL                             R1 1 1
       11 JUMPIFEQKS                       R1 K5 ["suspended"] ; [+2]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K7 [coroutine.resume]
       16 GETTABLEKS                       R2 R0 K1 ["_httpTask"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 JUMPIFEQKS                       R1 K5 [""] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K6 ["0"] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R0 K7 ["_soundAssets"]
       20 GETTABLE                         R2 R3 R1
       21 JUMPIF                           R2 ; [+8]
       22 GETTABLEKS                       R3 R0 K8 ["_nonSoundAssetIds"]
       24 GETTABLE                         R2 R3 R1
       25 JUMPIF                           R2 ; [+4]
       26 GETTABLEKS                       R3 R0 K9 ["_pendingAssetIds"]
       28 GETTABLE                         R2 R3 R1
       29 JUMPIFNOT                        R2 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R3 R0 K10 ["_currentBatch"]
       33 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       35 MOVE                             R4 R1
       36 GETIMPORT                        R2 K13 [table.insert]
       38 CALL                             R2 2 0
       39 GETTABLEKS                       R2 R0 K9 ["_pendingAssetIds"]
       41 LOADB                            R3 1
       42 SETTABLE                         R3 R2 R1
       43 GETTABLEKS                       R3 R0 K10 ["_currentBatch"]
       45 LENGTH                           R2 R3
       46 GETTABLEKS                       R3 R0 K14 ["_maxAssetsPerRequest"]
       48 JUMPIFNOTLE                      R3 R2 ; [+4]
       50 NAMECALL                         R2 R0 K15 ["flush"]
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_currentBatch"]
        2 NEWTABLE                         R2 0 0
        4 SETTABLEKS                       R2 R0 K0 ["_currentBatch"]
        6 LENGTH                           R2 R1
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+12]
       10 GETTABLEKS                       R3 R0 K1 ["_batchesToSend"]
       12 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K4 [table.insert]
       17 CALL                             R2 2 0
       18 NAMECALL                         R2 R0 K5 ["_wakeUpHttpTask"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_resolvedAssets"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["_resolvedAssets"]
        6 LOADB                            R3 1
        7 SETTABLE                         R3 R2 R1
        8 GETTABLEKS                       R2 R0 K1 ["_badAssets"]
       10 SUBK                             R2 R2 K2 [1]
       11 SETTABLEKS                       R2 R0 K1 ["_badAssets"]
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_batchesToSend"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFLT                         R3 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_dead"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K1 ["_hasBatchesToSend"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+3]
        8 GETIMPORT                        R1 K4 [coroutine.yield]
       10 CALL                             R1 0 0
       11 GETTABLEKS                       R1 R0 K5 ["_hit429"]
       13 LOADN                            R2 0
       14 JUMPIFLT                         R2 R1 ; [+8]
       16 GETTABLEKS                       R2 R0 K6 ["_lastSentRequests"]
       18 LENGTH                           R1 R2
       19 GETTABLEKS                       R2 R0 K7 ["_maxRecentRequests"]
       21 JUMPIFNOTLE                      R2 R1 ; [+4]
       23 GETIMPORT                        R1 K4 [coroutine.yield]
       25 CALL                             R1 0 0
       26 GETIMPORT                        R1 K10 [table.remove]
       28 GETTABLEKS                       R2 R0 K11 ["_batchesToSend"]
       30 LOADN                            R3 1
       31 CALL                             R1 2 1
       32 MOVE                             R4 R1
       33 NAMECALL                         R2 R0 K12 ["_sendBatch"]
       35 CALL                             R2 2 0
       36 GETIMPORT                        R2 K4 [coroutine.yield]
       38 CALL                             R2 0 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_dead"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADN                            R2 1
        5 GETTABLEKS                       R4 R0 K1 ["_lastSentRequests"]
        7 LENGTH                           R3 R4
        8 JUMPIFNOTLE                      R2 R3 ; [+21]
       10 GETTABLEKS                       R3 R0 K1 ["_lastSentRequests"]
       12 GETTABLE                         R4 R3 R2
       13 SUB                              R4 R4 R1
       14 SETTABLE                         R4 R3 R2
       15 GETTABLEKS                       R4 R0 K1 ["_lastSentRequests"]
       17 GETTABLE                         R3 R4 R2
       18 LOADN                            R4 0
       19 JUMPIFNOTLE                      R3 R4 ; [+8]
       21 GETIMPORT                        R3 K4 [table.remove]
       23 GETTABLEKS                       R4 R0 K1 ["_lastSentRequests"]
       25 MOVE                             R5 R2
       26 CALL                             R3 2 0
       27 JUMP                             ; [+1]
       28 ADDK                             R2 R2 K5 [1]
       29 JUMPBACK                         ; [-25]
       30 GETTABLEKS                       R3 R0 K6 ["_hit429"]
       32 SUB                              R3 R3 R1
       33 SETTABLEKS                       R3 R0 K6 ["_hit429"]
       35 GETTABLEKS                       R3 R0 K6 ["_hit429"]
       37 LOADN                            R4 0
       38 JUMPIFNOTLE                      R3 R4 ; [+4]
       40 LOADN                            R3 0
       41 SETTABLEKS                       R3 R0 K6 ["_hit429"]
       43 NAMECALL                         R3 R0 K7 ["_hasBatchesToSend"]
       45 CALL                             R3 1 1
       46 JUMPIFNOT                        R3 ; [+15]
       47 GETTABLEKS                       R3 R0 K6 ["_hit429"]
       49 LOADN                            R4 0
       50 JUMPIFNOTLE                      R3 R4 ; [+11]
       52 GETTABLEKS                       R4 R0 K1 ["_lastSentRequests"]
       54 LENGTH                           R3 R4
       55 GETTABLEKS                       R4 R0 K8 ["_maxRecentRequests"]
       57 JUMPIFNOTLT                      R3 R4 ; [+4]
       59 NAMECALL                         R3 R0 K9 ["_wakeUpHttpTask"]
       61 CALL                             R3 1 0
       62 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["_batchRequestsInFlight"]
        3 SUBK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["_batchRequestsInFlight"]
        6 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R0 K0 ["responseBody"]
        4 NAMECALL                         R1 R1 K1 ["_onBatchResponse"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 JUMPIFNOTEQKN                    R1 K1 [429] ; [+17]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_cooldownAfterHttp429"]
        8 SETTABLEKS                       R2 R1 K3 ["_hit429"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["_batchesToSend"]
       13 GETUPVAL                         R3 1
       14 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K7 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K0 ["responseCode"]
       22 LOADN                            R2 144
       23 JUMPIFNOTLE                      R2 R1 ; [+6]
       25 GETTABLEKS                       R1 R0 K0 ["responseCode"]
       27 LOADN                            R2 244
       28 JUMPIFLT                         R1 R2 ; [+11]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K4 ["_batchesToSend"]
       33 GETUPVAL                         R3 1
       34 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       36 GETIMPORT                        R1 K7 [table.insert]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0
       40 GETIMPORT                        R1 K9 [warn]
       42 LOADK                            R2 K10 ["Fetching sound asset details failed: %d %s"]
       43 GETTABLEKS                       R4 R0 K0 ["responseCode"]
       45 GETTABLEKS                       R5 R0 K11 ["responseBody"]
       47 GETTABLEKS                       R5 R5 K12 ["message"]
       49 NAMECALL                         R2 R2 K13 ["format"]
       51 CALL                             R2 3 -1
       52 CALL                             R1 -1 0
       53 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 [","]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["composeUrl"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["APIS_URL"]
       11 LOADK                            R5 K6 ["toolbox-service/v1/items/details"]
       12 DUPTABLE                         R6 K8 [{"assetIds"}]
       13 SETTABLEKS                       R2 R6 K7 ["assetIds"]
       15 CALL                             R3 3 1
       16 GETTABLEKS                       R5 R0 K9 ["_lastSentRequests"]
       18 GETTABLEKS                       R6 R0 K10 ["_perRequestCooldown"]
       20 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       22 GETIMPORT                        R4 K12 [table.insert]
       24 CALL                             R4 2 0
       25 GETTABLEKS                       R4 R0 K13 ["_batchRequestsInFlight"]
       27 ADDK                             R4 R4 K14 [1]
       28 SETTABLEKS                       R4 R0 K13 ["_batchRequestsInFlight"]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R0
       32 GETTABLEKS                       R5 R0 K15 ["_networking"]
       34 MOVE                             R7 R3
       35 NAMECALL                         R5 R5 K16 ["get"]
       37 CALL                             R5 2 1
       38 MOVE                             R7 R4
       39 MOVE                             R8 R4
       40 NAMECALL                         R5 R5 K17 ["andThen"]
       42 CALL                             R5 3 1
       43 GETTABLEKS                       R6 R0 K15 ["_networking"]
       45 MOVE                             R8 R5
       46 NAMECALL                         R6 R6 K18 ["parseJson"]
       48 CALL                             R6 2 1
       49 NEWCLOSURE                       R9 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 NEWCLOSURE                       R10 P2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R7 R6 K17 ["andThen"]
       57 CALL                             R7 3 0
       58 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R4 K3 [Enum.CreatorType.User]
        2 JUMPIFNOTEQ                      R2 R4 ; [+7]
        4 LOADB                            R3 1
        5 JUMPIFEQKN                       R1 K4 [1] ; [+13]
        7 LOADB                            R3 1
        8 JUMPIFEQKN                       R1 K5 [1750384777] ; [+10]
       10 LOADB                            R3 0
       11 GETUPVAL                         R4 0
       12 JUMPIFNOTEQ                      R4 R1 ; [+6]
       14 GETUPVAL                         R4 1
       15 JUMPIFEQ                         R4 R2 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K0 ["reportPermissionCheck"]
        4 CALL                             R4 2 0
        5 NEWTABLE                         R4 0 0
        7 GETTABLEKS                       R5 R1 K1 ["responseBody"]
        9 GETTABLEKS                       R5 R5 K2 ["results"]
       11 GETIMPORT                        R6 K4 [pairs]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 3
       15 FORGPREP_NEXT                    R6
       16 GETTABLE                         R11 R5 R9
       17 GETTABLEKS                       R11 R11 K5 ["value"]
       19 GETTABLEKS                       R11 R11 K6 ["status"]
       21 JUMPIFNOTEQKS                    R11 K7 ["HasPermission"] ; [+11]
       23 GETTABLE                         R11 R2 R10
       24 LOADK                            R12 K8 ["ok"]
       25 SETTABLEKS                       R12 R11 K9 ["OK"]
       27 GETTABLEKS                       R11 R0 K10 ["_goodAssets"]
       29 ADDK                             R11 R11 K11 [1]
       30 SETTABLEKS                       R11 R0 K10 ["_goodAssets"]
       32 JUMP                             ; [+32]
       33 GETTABLE                         R11 R5 R9
       34 GETTABLEKS                       R11 R11 K12 ["error"]
       36 GETTABLEKS                       R11 R11 K13 ["message"]
       38 JUMPIFEQKNIL                     R11 ; [+21]
       40 GETUPVAL                         R11 1
       41 JUMPIFNOT                        R11 ; [+12]
       42 GETIMPORT                        R11 K15 [warn]
       44 LOADK                            R12 K16 ["Fetching sound asset universe permissions failed: %s"]
       45 GETTABLE                         R14 R5 R9
       46 GETTABLEKS                       R14 R14 K12 ["error"]
       48 GETTABLEKS                       R14 R14 K17 ["code"]
       50 NAMECALL                         R12 R12 K18 ["format"]
       52 CALL                             R12 2 -1
       53 CALL                             R11 -1 0
       54 GETTABLEKS                       R11 R0 K19 ["_badAssets"]
       56 ADDK                             R11 R11 K11 [1]
       57 SETTABLEKS                       R11 R0 K19 ["_badAssets"]
       59 JUMP                             ; [+5]
       60 GETTABLEKS                       R11 R0 K19 ["_badAssets"]
       62 ADDK                             R11 R11 K11 [1]
       63 SETTABLEKS                       R11 R0 K19 ["_badAssets"]
       65 GETTABLEKS                       R11 R0 K20 ["_soundAssets"]
       67 GETTABLE                         R12 R2 R10
       68 SETTABLE                         R12 R11 R10
       69 GETTABLE                         R13 R2 R10
       70 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       72 MOVE                             R12 R4
       73 GETIMPORT                        R11 K23 [table.insert]
       75 CALL                             R11 2 0
       76 FORGLOOP                         R6 2 ; [-61]
       78 LENGTH                           R6 R4
       79 LOADN                            R7 0
       80 JUMPIFNOTLT                      R7 R6 ; [+7]
       82 GETTABLEKS                       R6 R0 K24 ["soundsFound"]
       84 MOVE                             R8 R4
       85 NAMECALL                         R6 R6 K25 ["Fire"]
       87 CALL                             R6 2 0
       88 NAMECALL                         R6 R0 K26 ["_hasBatchesToSend"]
       90 CALL                             R6 1 1
       91 JUMPIF                           R6 ; [+12]
       92 GETTABLEKS                       R6 R0 K27 ["_batchRequestsInFlight"]
       94 JUMPIFNOTEQKN                    R6 K28 [0] ; [+9]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R8 R0 K10 ["_goodAssets"]
       99 GETTABLEKS                       R9 R0 K19 ["_badAssets"]
      101 NAMECALL                         R6 R6 K29 ["reportBreakdown"]
      103 CALL                             R6 3 0
      104 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["_onBatchCheckUniversePermissionResponse"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Fetching sound asset permissions failed: %d %s"]
        3 GETTABLEKS                       R4 R0 K3 ["responseCode"]
        5 GETTABLEKS                       R5 R0 K4 ["responseBody"]
        7 GETTABLEKS                       R5 R5 K5 ["message"]
        9 NAMECALL                         R2 R2 K6 ["format"]
       11 CALL                             R2 3 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R1 R1 K0 ["_onBatchCheckUniversePermissionResponse"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Fetching sound asset permissions failed: %d %s"]
        3 GETTABLEKS                       R4 R0 K3 ["responseCode"]
        5 GETTABLEKS                       R5 R0 K4 ["responseBody"]
        7 GETTABLEKS                       R5 R5 K5 ["message"]
        9 NAMECALL                         R2 R2 K6 ["format"]
       11 CALL                             R2 3 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R2 1 0
        2 LOADK                            R3 K0 ["application/json"]
        3 SETTABLEKS                       R3 R2 K1 ["Content-Type"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["composeUrl"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["APIS_URL"]
       11 LOADK                            R5 K4 ["asset-permissions-api/v1/assets/check-permissions"]
       12 CALL                             R3 2 1
       13 GETIMPORT                        R4 K6 [game]
       15 LOADK                            R6 K7 ["AudioDiscoveryPermCheckMaxAssetIdsPerRequest"]
       16 NAMECALL                         R4 R4 K8 ["GetFastInt"]
       18 CALL                             R4 2 1
       19 LOADN                            R5 0
       20 NEWTABLE                         R6 0 0
       22 NEWTABLE                         R7 0 0
       24 GETIMPORT                        R8 K10 [pairs]
       26 MOVE                             R9 R1
       27 CALL                             R8 1 3
       28 FORGPREP_NEXT                    R8
       29 JUMPIFNOTEQ                      R5 R4 ; [+36]
       31 GETUPVAL                         R13 1
       32 DUPTABLE                         R15 K12 [{"requests"}]
       33 SETTABLEKS                       R6 R15 K11 ["requests"]
       35 NAMECALL                         R13 R13 K13 ["JSONEncode"]
       37 CALL                             R13 2 1
       38 GETTABLEKS                       R14 R0 K14 ["_networking"]
       40 MOVE                             R16 R3
       41 MOVE                             R17 R13
       42 MOVE                             R18 R2
       43 NAMECALL                         R14 R14 K15 ["post"]
       45 CALL                             R14 4 1
       46 GETTABLEKS                       R15 R0 K14 ["_networking"]
       48 MOVE                             R17 R14
       49 NAMECALL                         R15 R15 K16 ["parseJson"]
       51 CALL                             R15 2 1
       52 NEWCLOSURE                       R18 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          REF R7
       56 DUPCLOSURE                       R19 K17 [PROTO_19]
       57 NAMECALL                         R16 R15 K18 ["andThen"]
       59 CALL                             R16 3 0
       60 NEWTABLE                         R6 0 0
       62 NEWTABLE                         R7 0 0
       64 LOADN                            R5 0
       65 JUMP                             ; [+42]
       66 DUPTABLE                         R13 K22 [{"subject", "action", "assetId"}]
       67 DUPTABLE                         R14 K25 [{"subjectType", "subjectId"}]
       68 LOADK                            R15 K26 ["Universe"]
       69 SETTABLEKS                       R15 R14 K23 ["subjectType"]
       71 GETIMPORT                        R16 K6 [game]
       73 GETTABLEKS                       R16 R16 K27 ["GameId"]
       75 FASTCALL1                        TOSTRING R16 ; [+2]
       76 GETIMPORT                        R15 K29 [tostring]
       78 CALL                             R15 1 1
       79 SETTABLEKS                       R15 R14 K24 ["subjectId"]
       81 SETTABLEKS                       R14 R13 K19 ["subject"]
       83 LOADK                            R14 K30 ["use"]
       84 SETTABLEKS                       R14 R13 K20 ["action"]
       86 FASTCALL1                        TOSTRING R11 ; [+3]
       87 MOVE                             R15 R11
       88 GETIMPORT                        R14 K29 [tostring]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K21 ["assetId"]
       93 FASTCALL2                        TABLE_INSERT R6 R13 ; [+5]
       95 MOVE                             R15 R6
       96 MOVE                             R16 R13
       97 GETIMPORT                        R14 K33 [table.insert]
       99 CALL                             R14 2 0
      100 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      102 MOVE                             R15 R7
      103 MOVE                             R16 R11
      104 GETIMPORT                        R14 K33 [table.insert]
      106 CALL                             R14 2 0
      107 ADDK                             R5 R5 K34 [1]
      108 FORGLOOP                         R8 2 ; [-80]
      110 GETUPVAL                         R8 1
      111 DUPTABLE                         R10 K12 [{"requests"}]
      112 SETTABLEKS                       R6 R10 K11 ["requests"]
      114 NAMECALL                         R8 R8 K13 ["JSONEncode"]
      116 CALL                             R8 2 1
      117 GETTABLEKS                       R9 R0 K14 ["_networking"]
      119 MOVE                             R11 R3
      120 MOVE                             R12 R8
      121 MOVE                             R13 R2
      122 NAMECALL                         R9 R9 K15 ["post"]
      124 CALL                             R9 4 1
      125 GETTABLEKS                       R10 R0 K14 ["_networking"]
      127 MOVE                             R12 R9
      128 NAMECALL                         R10 R10 K16 ["parseJson"]
      130 CALL                             R10 2 1
      131 NEWCLOSURE                       R13 P2
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R1
      134 CAPTURE                          REF R7
      135 DUPCLOSURE                       R14 K35 [PROTO_21]
      136 NAMECALL                         R11 R10 K18 ["andThen"]
      138 CALL                             R11 3 0
      139 CLOSEUPVALS                      R7
      140 RETURN                           R0 0

PROTO_23:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 LOADB                            R9 1
        8 SETTABLE                         R9 R3 R8
        9 FORGLOOP                         R4 2 [inext] ; [-3]
       11 NEWTABLE                         R4 0 0
       13 NEWTABLE                         R5 0 0
       15 GETIMPORT                        R6 K1 [ipairs]
       17 GETTABLEKS                       R7 R2 K2 ["data"]
       19 CALL                             R6 1 3
       20 FORGPREP_INEXT                   R6
       21 GETTABLEKS                       R11 R10 K3 ["asset"]
       23 GETTABLEKS                       R11 R11 K4 ["id"]
       25 GETTABLEKS                       R12 R0 K5 ["_pendingAssetIds"]
       27 LOADNIL                          R13
       28 SETTABLE                         R13 R12 R11
       29 LOADNIL                          R12
       30 SETTABLE                         R12 R3 R11
       31 GETTABLEKS                       R12 R10 K3 ["asset"]
       33 GETTABLEKS                       R12 R12 K6 ["typeId"]
       35 JUMPIFEQKN                       R12 K7 [3] ; [+6]
       37 GETTABLEKS                       R12 R0 K8 ["_nonSoundAssetIds"]
       39 LOADB                            R13 1
       40 SETTABLE                         R13 R12 R11
       41 JUMP                             ; [+97]
       42 GETTABLEKS                       R13 R10 K9 ["creator"]
       44 GETTABLEKS                       R13 R13 K10 ["type"]
       46 JUMPIFNOTEQKN                    R13 K11 [1] ; [+4]
       48 GETIMPORT                        R12 K15 [Enum.CreatorType.User]
       50 JUMP                             ; [+2]
       51 GETIMPORT                        R12 K17 [Enum.CreatorType.Group]
       53 GETTABLEKS                       R15 R10 K9 ["creator"]
       55 GETTABLEKS                       R15 R15 K4 ["id"]
       57 MOVE                             R16 R12
       58 NAMECALL                         R13 R0 K18 ["_checkSound"]
       60 CALL                             R13 3 1
       61 JUMPIFNOT                        R13 ; [+2]
       62 LOADK                            R14 K19 ["ok"]
       63 JUMP                             ; [+1]
       64 LOADK                            R14 K20 ["error"]
       65 DUPTABLE                         R15 K27 [{"OK", "Id", "Name", "CreatorId", "CreatorType", "Creator", "Time"}]
       66 SETTABLEKS                       R14 R15 K21 ["OK"]
       68 FASTCALL1                        TOSTRING R11 ; [+3]
       69 MOVE                             R17 R11
       70 GETIMPORT                        R16 K29 [tostring]
       72 CALL                             R16 1 1
       73 SETTABLEKS                       R16 R15 K22 ["Id"]
       75 GETTABLEKS                       R16 R10 K3 ["asset"]
       77 GETTABLEKS                       R16 R16 K30 ["name"]
       79 SETTABLEKS                       R16 R15 K23 ["Name"]
       81 GETTABLEKS                       R16 R10 K9 ["creator"]
       83 GETTABLEKS                       R16 R16 K4 ["id"]
       85 SETTABLEKS                       R16 R15 K24 ["CreatorId"]
       87 GETTABLEKS                       R17 R10 K9 ["creator"]
       89 GETTABLEKS                       R17 R17 K10 ["type"]
       91 JUMPIFNOTEQKN                    R17 K11 [1] ; [+3]
       93 LOADK                            R16 K14 ["User"]
       94 JUMP                             ; [+1]
       95 LOADK                            R16 K16 ["Group"]
       96 SETTABLEKS                       R16 R15 K13 ["CreatorType"]
       98 GETTABLEKS                       R16 R10 K9 ["creator"]
      100 GETTABLEKS                       R16 R16 K30 ["name"]
      102 SETTABLEKS                       R16 R15 K25 ["Creator"]
      104 GETTABLEKS                       R16 R10 K3 ["asset"]
      106 GETTABLEKS                       R16 R16 K31 ["duration"]
      108 SETTABLEKS                       R16 R15 K26 ["Time"]
      110 SETTABLE                         R15 R5 R11
      111 GETIMPORT                        R16 K33 [game]
      113 GETTABLEKS                       R16 R16 K34 ["GameId"]
      115 JUMPIFNOTEQKN                    R16 K35 [0] ; [+23]
      117 JUMPIFNOT                        R13 ; [+6]
      118 GETTABLEKS                       R16 R0 K36 ["_goodAssets"]
      120 ADDK                             R16 R16 K11 [1]
      121 SETTABLEKS                       R16 R0 K36 ["_goodAssets"]
      123 JUMP                             ; [+5]
      124 GETTABLEKS                       R16 R0 K37 ["_badAssets"]
      126 ADDK                             R16 R16 K11 [1]
      127 SETTABLEKS                       R16 R0 K37 ["_badAssets"]
      129 GETTABLEKS                       R16 R0 K38 ["_soundAssets"]
      131 SETTABLE                         R15 R16 R11
      132 FASTCALL2                        TABLE_INSERT R4 R15 ; [+5]
      134 MOVE                             R17 R4
      135 MOVE                             R18 R15
      136 GETIMPORT                        R16 K41 [table.insert]
      138 CALL                             R16 2 0
      139 FORGLOOP                         R6 2 [inext] ; [-119]
      141 GETIMPORT                        R6 K43 [pairs]
      143 MOVE                             R7 R3
      144 CALL                             R6 1 3
      145 FORGPREP_NEXT                    R6
      146 GETTABLEKS                       R11 R0 K5 ["_pendingAssetIds"]
      148 LOADNIL                          R12
      149 SETTABLE                         R12 R11 R9
      150 GETTABLEKS                       R11 R0 K8 ["_nonSoundAssetIds"]
      152 LOADB                            R12 1
      153 SETTABLE                         R12 R11 R9
      154 FORGLOOP                         R6 1 ; [-9]
      156 GETIMPORT                        R6 K33 [game]
      158 GETTABLEKS                       R6 R6 K34 ["GameId"]
      160 JUMPIFEQKN                       R6 K35 [0] ; [+6]
      162 MOVE                             R8 R5
      163 NAMECALL                         R6 R0 K44 ["_sendBatchCheckUniversePermission"]
      165 CALL                             R6 2 0
      166 RETURN                           R0 0
      167 LENGTH                           R6 R4
      168 LOADN                            R7 0
      169 JUMPIFNOTLT                      R7 R6 ; [+7]
      171 GETTABLEKS                       R6 R0 K45 ["soundsFound"]
      173 MOVE                             R8 R4
      174 NAMECALL                         R6 R6 K46 ["Fire"]
      176 CALL                             R6 2 0
      177 NAMECALL                         R6 R0 K47 ["_hasBatchesToSend"]
      179 CALL                             R6 1 1
      180 JUMPIF                           R6 ; [+12]
      181 GETTABLEKS                       R6 R0 K48 ["_batchRequestsInFlight"]
      183 JUMPIFNOTEQKN                    R6 K35 [0] ; [+9]
      185 GETUPVAL                         R6 0
      186 GETTABLEKS                       R8 R0 K36 ["_goodAssets"]
      188 GETTABLEKS                       R9 R0 K37 ["_badAssets"]
      190 NAMECALL                         R6 R6 K49 ["reportBreakdown"]
      192 CALL                             R6 3 0
      193 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioAudioDiscoveryMaxAssetIdsPerRequest"]
        4 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioAudioDiscoveryPerRequestCooldown"]
       10 NAMECALL                         R1 R1 K3 ["GetFastInt"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioAudioDiscoveryCooldownAfterHttp429"]
       16 NAMECALL                         R2 R2 K3 ["GetFastInt"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["StudioAudioDiscoveryMaxRecentRequests"]
       22 NAMECALL                         R3 R3 K3 ["GetFastInt"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["DEBUG_StudioAudioDiscoveryPermissionCheckErrors"]
       28 NAMECALL                         R4 R4 K8 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K10 [script]
       33 GETTABLEKS                       R5 R5 K11 ["Parent"]
       35 GETTABLEKS                       R5 R5 K11 ["Parent"]
       37 GETTABLEKS                       R5 R5 K11 ["Parent"]
       39 GETIMPORT                        R6 K13 [require]
       41 GETTABLEKS                       R7 R5 K14 ["Packages"]
       43 GETTABLEKS                       R7 R7 K15 ["Framework"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K16 ["RobloxAPI"]
       48 GETTABLEKS                       R7 R7 K17 ["Url"]
       50 GETTABLEKS                       R8 R7 K18 ["new"]
       52 CALL                             R8 0 1
       53 GETTABLEKS                       R9 R6 K19 ["Util"]
       55 GETTABLEKS                       R9 R9 K20 ["Signal"]
       57 GETIMPORT                        R10 K13 [require]
       59 GETTABLEKS                       R11 R5 K21 ["Src"]
       61 GETTABLEKS                       R11 R11 K22 ["Types"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K1 [game]
       66 LOADK                            R13 K23 ["RunService"]
       67 NAMECALL                         R11 R11 K24 ["GetService"]
       69 CALL                             R11 2 1
       70 GETIMPORT                        R12 K1 [game]
       72 LOADK                            R14 K25 ["HttpService"]
       73 NAMECALL                         R12 R12 K24 ["GetService"]
       75 CALL                             R12 2 1
       76 GETIMPORT                        R13 K13 [require]
       78 GETTABLEKS                       R14 R5 K21 ["Src"]
       80 GETTABLEKS                       R14 R14 K19 ["Util"]
       82 GETTABLEKS                       R14 R14 K26 ["Analytics"]
       84 CALL                             R13 1 1
       85 NEWTABLE                         R14 16 0
       87 SETTABLEKS                       R14 R14 K27 ["__index"]
       89 DUPCLOSURE                       R15 K28 [PROTO_0]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R14
       96 SETTABLEKS                       R15 R14 K18 ["new"]
       98 DUPCLOSURE                       R15 K29 [PROTO_3]
       99 CAPTURE                          VAL R11
      100 SETTABLEKS                       R15 R14 K30 ["start"]
      102 DUPCLOSURE                       R15 K31 [PROTO_4]
      103 SETTABLEKS                       R15 R14 K32 ["destroy"]
      105 DUPCLOSURE                       R15 K33 [PROTO_5]
      106 SETTABLEKS                       R15 R14 K34 ["_wakeUpHttpTask"]
      108 DUPCLOSURE                       R15 K35 [PROTO_6]
      109 SETTABLEKS                       R15 R14 K36 ["addAssetId"]
      111 DUPCLOSURE                       R15 K37 [PROTO_7]
      112 SETTABLEKS                       R15 R14 K38 ["flush"]
      114 DUPCLOSURE                       R15 K39 [PROTO_8]
      115 SETTABLEKS                       R15 R14 K40 ["resolved"]
      117 DUPCLOSURE                       R15 K41 [PROTO_9]
      118 SETTABLEKS                       R15 R14 K42 ["_hasBatchesToSend"]
      120 DUPCLOSURE                       R15 K43 [PROTO_10]
      121 SETTABLEKS                       R15 R14 K44 ["_stepHttpTask"]
      123 DUPCLOSURE                       R15 K45 [PROTO_11]
      124 SETTABLEKS                       R15 R14 K46 ["_renderStepped"]
      126 DUPCLOSURE                       R15 K47 [PROTO_15]
      127 CAPTURE                          VAL R8
      128 SETTABLEKS                       R15 R14 K48 ["_sendBatch"]
      130 GETIMPORT                        R15 K1 [game]
      132 GETTABLEKS                       R15 R15 K49 ["CreatorId"]
      134 GETIMPORT                        R16 K1 [game]
      136 GETTABLEKS                       R16 R16 K50 ["CreatorType"]
      138 DUPCLOSURE                       R17 K51 [PROTO_16]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R16
      141 SETTABLEKS                       R17 R14 K52 ["_checkSound"]
      143 DUPCLOSURE                       R17 K53 [PROTO_17]
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R17 R14 K54 ["_onBatchCheckUniversePermissionResponse"]
      148 DUPCLOSURE                       R17 K55 [PROTO_22]
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R12
      151 SETTABLEKS                       R17 R14 K56 ["_sendBatchCheckUniversePermission"]
      153 DUPCLOSURE                       R17 K57 [PROTO_23]
      154 CAPTURE                          VAL R13
      155 SETTABLEKS                       R17 R14 K58 ["_onBatchResponse"]
      157 RETURN                           R14 1
