PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetImageDataBase64Async"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LoadImageAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSettingsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSettingsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetUserSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetUserSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSecureSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSecureSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Base64EncodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GeneratePKCEAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["StartMCPAuthAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JsonDecodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["SetUpMCPServerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 DUPTABLE                         R2 K3 [{"error"}]
        9 LOADK                            R3 K4 ["MCP Server not supported"]
       10 SETTABLEKS                       R3 R2 K2 ["error"]
       12 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_20:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R3
        9 SETTABLEKS                       R4 R0 K2 ["convertImageDataToTempIdAsync"]
       11 NEWCLOSURE                       R4 P2
       12 CAPTURE                          VAL R3
       13 SETTABLEKS                       R4 R0 K3 ["releaseTempIdAsync"]
       15 GETTABLEKS                       R5 R0 K4 ["tools"]
       17 GETTABLEKS                       R4 R5 K5 ["screenCapture"]
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R5 R4 K6 ["getImageDataBase64Async"]
       23 GETTABLEKS                       R5 R0 K4 ["tools"]
       25 GETTABLEKS                       R4 R5 K7 ["uploadImage"]
       27 NEWCLOSURE                       R5 P4
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K8 ["loadImageAsync"]
       31 NEWCLOSURE                       R4 P5
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R4 R0 K9 ["getSettingsAsync"]
       35 NEWCLOSURE                       R4 P6
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R0 K10 ["setSettingsAsync"]
       39 NEWCLOSURE                       R4 P7
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R4 R0 K11 ["getUserSettingsAsync"]
       43 NEWCLOSURE                       R4 P8
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R4 R0 K12 ["setUserSettingsAsync"]
       47 NEWCLOSURE                       R4 P9
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R4 R0 K13 ["getSecureSettingsAsync"]
       51 NEWCLOSURE                       R4 P10
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R4 R0 K14 ["setSecureSettingsAsync"]
       55 NEWCLOSURE                       R4 P11
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R4 R0 K15 ["base64EncodeAsync"]
       59 NEWCLOSURE                       R4 P12
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R4 R0 K16 ["generatePKCEAsync"]
       63 NEWCLOSURE                       R4 P13
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R4 R0 K17 ["startMCPAuthAsync"]
       67 GETTABLEKS                       R4 R0 K18 ["json"]
       69 NEWCLOSURE                       R5 P14
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R5 R4 K19 ["encodeAsync"]
       74 GETTABLEKS                       R4 R0 K18 ["json"]
       76 NEWCLOSURE                       R5 P15
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R5 R4 K20 ["decodeAsync"]
       80 NEWCLOSURE                       R4 P16
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R4 R0 K21 ["setupMCPServerAsync"]
       84 NEWCLOSURE                       R4 P17
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R4 R0 K22 ["openFileDialogAsync"]
       88 NEWCLOSURE                       R4 P18
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R4 R0 K23 ["importFileBinaryAsync"]
       92 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K2 ["tools"]
        9 GETTABLEKS                       R4 R5 K3 ["executeLuau"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 SETTABLEKS                       R5 R4 K4 ["loadCode"]
       15 GETTABLEKS                       R5 R0 K2 ["tools"]
       17 GETTABLEKS                       R4 R5 K3 ["executeLuau"]
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R5 R4 K5 ["stopCode"]
       23 GETTABLEKS                       R5 R0 K2 ["tools"]
       25 GETTABLEKS                       R4 R5 K6 ["multiEdit"]
       27 NEWCLOSURE                       R5 P3
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K7 ["updateScriptSourceAsync"]
       31 RETURN                           R0 0

PROTO_27:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_28:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_29:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_31:
        0 DUPTABLE                         R2 K4 [{"Success", "StatusCode", "Headers", "Body"}]
        1 MOVE                             R3 R0
        2 JUMPIFNOT                        R3 ; [+13]
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
        6 LOADN                            R5 200
        7 JUMPIFNOTLE                      R5 R4 ; [+8]
        9 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
       11 LOADN                            R5 44
       12 JUMPIFLT                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K0 ["Success"]
       18 GETTABLEKS                       R3 R1 K1 ["StatusCode"]
       20 SETTABLEKS                       R3 R2 K1 ["StatusCode"]
       22 GETTABLEKS                       R3 R1 K2 ["Headers"]
       24 SETTABLEKS                       R3 R2 K2 ["Headers"]
       26 GETTABLEKS                       R3 R1 K3 ["Body"]
       28 SETTABLEKS                       R3 R2 K3 ["Body"]
       30 GETUPVAL                         R3 0
       31 MOVE                             R4 R2
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestInternal"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["new"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 1
       11 NAMECALL                         R2 R2 K2 ["await"]
       13 CALL                             R2 1 2
       14 RETURN                           R3 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["InternalGenerateMeshAsync"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        5 LOADK                            R2 K0 ["Use EventLogger.logMeshGenActivated instead"]
        6 GETIMPORT                        R0 K2 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K3 ["SendMeshGenActivatedTelemetry"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R7 0
        1 CALL                             R7 0 1
        2 NOT                              R6 R7
        3 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        5 LOADK                            R7 K0 ["Use EventLogger.logMeshGenCompleted instead"]
        6 GETIMPORT                        R5 K2 [assert]
        8 CALL                             R5 2 0
        9 GETUPVAL                         R5 1
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 MOVE                             R10 R3
       14 MOVE                             R11 R4
       15 NAMECALL                         R5 R5 K3 ["SendMeshGenCompletedTelemetry"]
       17 CALL                             R5 6 0
       18 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R8 0
        1 CALL                             R8 0 1
        2 NOT                              R7 R8
        3 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        5 LOADK                            R8 K0 ["Use EventLogger.logMeshGenPublishedAssets instead"]
        6 GETIMPORT                        R6 K2 [assert]
        8 CALL                             R6 2 0
        9 GETUPVAL                         R6 1
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 MOVE                             R11 R3
       14 MOVE                             R12 R4
       15 MOVE                             R13 R5
       16 NAMECALL                         R6 R6 K3 ["SendMeshGenPublishedAssetsTelemetry"]
       18 CALL                             R6 7 0
       19 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 NOT                              R5 R6
        3 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        5 LOADK                            R6 K0 ["Use EventLogger.logMeshGenMeshInserted instead"]
        6 GETIMPORT                        R4 K2 [assert]
        8 CALL                             R4 2 0
        9 GETUPVAL                         R4 1
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 NAMECALL                         R4 R4 K3 ["SendMeshGenMeshInsertedTelemetry"]
       16 CALL                             R4 5 0
       17 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_47:
        0 LOADK                            R5 K0 ["%*/creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;userids=%*&maxPageSize=%*"]
        1 GETUPVAL                         R8 0
        2 GETTABLEKS                       R7 R8 K1 ["APIS_URL"]
        4 MOVE                             R8 R0
        5 MOVE                             R9 R1
        6 MOVE                             R10 R2
        7 MOVE                             R11 R3
        8 NAMECALL                         R5 R5 K2 ["format"]
       10 CALL                             R5 6 1
       11 MOVE                             R4 R5
       12 GETUPVAL                         R5 1
       13 MOVE                             R7 R4
       14 LOADNIL                          R8
       15 NAMECALL                         R5 R5 K3 ["get"]
       17 CALL                             R5 3 1
       18 GETUPVAL                         R6 1
       19 MOVE                             R8 R5
       20 LOADN                            R9 3
       21 LOADB                            R10 0
       22 NAMECALL                         R6 R6 K4 ["handleRetry"]
       24 CALL                             R6 4 1
       25 GETUPVAL                         R7 1
       26 MOVE                             R9 R6
       27 NAMECALL                         R7 R7 K5 ["parseJson"]
       29 CALL                             R7 2 1
       30 NAMECALL                         R7 R7 K6 ["await"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K7 ["responseBody"]
       35 RETURN                           R8 1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_53:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_54:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_55:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_59:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_60:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Guest"]
        3 GETTABLEKS                       R3 R4 K1 ["Environment"]
        5 GETTABLEKS                       R2 R3 K2 ["new"]
        7 CALL                             R2 0 1
        8 DUPCLOSURE                       R3 K3 [PROTO_27]
        9 SETTABLEKS                       R3 R2 K4 ["isDevFrameworkAvailable"]
       11 DUPCLOSURE                       R3 K5 [PROTO_28]
       12 SETTABLEKS                       R3 R2 K6 ["isRobloxScriptSecurity"]
       14 DUPCLOSURE                       R3 K7 [PROTO_29]
       15 SETTABLEKS                       R3 R2 K8 ["getEngineFeature"]
       17 GETTABLEKS                       R3 R2 K9 ["http"]
       19 DUPCLOSURE                       R4 K10 [PROTO_30]
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R4 R3 K11 ["createWebStreamClient"]
       23 GETTABLEKS                       R3 R2 K9 ["http"]
       25 DUPCLOSURE                       R4 K12 [PROTO_33]
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R4 R3 K13 ["requestAsync"]
       30 GETTABLEKS                       R3 R2 K9 ["http"]
       32 DUPCLOSURE                       R4 K14 [PROTO_35]
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R4 R3 K15 ["openUrl"]
       36 GETTABLEKS                       R3 R2 K16 ["selection"]
       38 DUPCLOSURE                       R4 K17 [PROTO_36]
       39 CAPTURE                          UPVAL U4
       40 SETTABLEKS                       R4 R3 K18 ["get"]
       42 GETTABLEKS                       R3 R2 K16 ["selection"]
       44 DUPCLOSURE                       R4 K19 [PROTO_37]
       45 CAPTURE                          UPVAL U4
       46 SETTABLEKS                       R4 R3 K20 ["set"]
       48 GETTABLEKS                       R4 R2 K21 ["tools"]
       50 GETTABLEKS                       R3 R4 K22 ["marketplaceInsertion"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K0 ["Guest"]
       55 GETTABLEKS                       R5 R6 K23 ["LoadAssetHandlers"]
       57 GETTABLEKS                       R4 R5 K24 ["getRobloxScriptHandler"]
       59 GETIMPORT                        R5 K26 [game]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K27 ["loadAssetAsync"]
       64 GETTABLEKS                       R4 R2 K21 ["tools"]
       66 GETTABLEKS                       R3 R4 K28 ["materialGen"]
       68 GETUPVAL                         R4 5
       69 JUMPIFNOT                        R4 ; [+4]
       70 DUPCLOSURE                       R4 K29 [PROTO_38]
       71 CAPTURE                          UPVAL U5
       72 SETTABLEKS                       R4 R3 K30 ["generateMaterialVariantsAsync"]
       74 GETIMPORT                        R4 K32 [pcall]
       76 NEWCLOSURE                       R5 P9
       77 CAPTURE                          VAL R0
       78 CALL                             R4 1 2
       79 JUMPIFNOT                        R4 ; [+4]
       80 NEWCLOSURE                       R6 P10
       81 CAPTURE                          VAL R5
       82 SETTABLEKS                       R6 R3 K33 ["uploadMaterialsAsync"]
       84 GETTABLEKS                       R4 R2 K21 ["tools"]
       86 GETTABLEKS                       R3 R4 K34 ["meshGen"]
       88 DUPCLOSURE                       R4 K35 [PROTO_41]
       89 CAPTURE                          UPVAL U6
       90 SETTABLEKS                       R4 R3 K36 ["generateMeshAsync"]
       92 GETTABLEKS                       R4 R3 K37 ["telemetry"]
       94 DUPCLOSURE                       R5 K38 [PROTO_42]
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U8
       97 SETTABLEKS                       R5 R4 K39 ["sendMeshGenActivatedTelemetry"]
       99 GETTABLEKS                       R4 R3 K37 ["telemetry"]
      101 DUPCLOSURE                       R5 K40 [PROTO_43]
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          UPVAL U8
      104 SETTABLEKS                       R5 R4 K41 ["sendMeshGenCompletedTelemetry"]
      106 GETTABLEKS                       R4 R3 K37 ["telemetry"]
      108 DUPCLOSURE                       R5 K42 [PROTO_44]
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U8
      111 SETTABLEKS                       R5 R4 K43 ["sendMeshGenPublishedAssetsTelemetry"]
      113 GETTABLEKS                       R4 R3 K37 ["telemetry"]
      115 DUPCLOSURE                       R5 K44 [PROTO_45]
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U8
      118 SETTABLEKS                       R5 R4 K45 ["sendMeshGenMeshInsertedTelemetry"]
      120 GETTABLEKS                       R4 R2 K21 ["tools"]
      122 GETTABLEKS                       R3 R4 K46 ["uploadImage"]
      124 DUPCLOSURE                       R4 K47 [PROTO_46]
      125 CAPTURE                          UPVAL U9
      126 SETTABLEKS                       R4 R3 K48 ["publishAssetAsync"]
      128 DUPCLOSURE                       R4 K49 [PROTO_47]
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          UPVAL U11
      131 SETTABLEKS                       R4 R3 K50 ["searchAssetAsync"]
      133 GETUPVAL                         R3 12
      134 MOVE                             R4 R2
      135 MOVE                             R5 R0
      136 CALL                             R3 2 0
      137 GETUPVAL                         R3 13
      138 MOVE                             R4 R2
      139 MOVE                             R5 R0
      140 CALL                             R3 2 0
      141 DUPCLOSURE                       R3 K51 [PROTO_48]
      142 CAPTURE                          UPVAL U14
      143 SETTABLEKS                       R3 R2 K52 ["copyToClipboard"]
      145 DUPCLOSURE                       R3 K53 [PROTO_49]
      146 CAPTURE                          UPVAL U14
      147 SETTABLEKS                       R3 R2 K54 ["getClassIcon"]
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R5 R6 K0 ["Guest"]
      152 GETTABLEKS                       R4 R5 K55 ["RecordingHandlers"]
      154 GETTABLEKS                       R3 R4 K56 ["getPluginHandlers"]
      156 GETUPVAL                         R4 15
      157 CALL                             R3 1 1
      158 GETTABLEKS                       R4 R3 K57 ["startRecording"]
      160 SETTABLEKS                       R4 R2 K57 ["startRecording"]
      162 GETTABLEKS                       R4 R3 K58 ["endRecording"]
      164 SETTABLEKS                       R4 R2 K58 ["endRecording"]
      166 NEWCLOSURE                       R4 P20
      167 CAPTURE                          VAL R1
      168 SETTABLEKS                       R4 R2 K59 ["getNetworking"]
      170 GETIMPORT                        R4 K32 [pcall]
      172 NEWCLOSURE                       R5 P21
      173 CAPTURE                          VAL R0
      174 CALL                             R4 1 2
      175 GETUPVAL                         R6 16
      176 JUMPIFNOT                        R4 ; [+2]
      177 MOVE                             R7 R5
      178 JUMPIF                           R7 ; [+1]
      179 LOADNIL                          R7
      180 CALL                             R6 1 1
      181 SETTABLEKS                       R6 R2 K60 ["EventLogger"]
      183 DUPCLOSURE                       R6 K61 [PROTO_52]
      184 CAPTURE                          UPVAL U17
      185 SETTABLEKS                       R6 R2 K62 ["getScriptSource"]
      187 DUPCLOSURE                       R6 K63 [PROTO_54]
      188 CAPTURE                          UPVAL U14
      189 SETTABLEKS                       R6 R2 K64 ["getUserId"]
      191 DUPCLOSURE                       R6 K65 [PROTO_55]
      192 CAPTURE                          UPVAL U18
      193 SETTABLEKS                       R6 R2 K66 ["startStopPlayAsync"]
      195 DUPCLOSURE                       R6 K67 [PROTO_57]
      196 CAPTURE                          UPVAL U19
      197 SETTABLEKS                       R6 R2 K68 ["subscribeOutput"]
      199 DUPCLOSURE                       R6 K69 [PROTO_58]
      200 CAPTURE                          UPVAL U20
      201 SETTABLEKS                       R6 R2 K70 ["subscribeGameLoaded"]
      203 DUPCLOSURE                       R6 K71 [PROTO_59]
      204 CAPTURE                          UPVAL U21
      205 SETTABLEKS                       R6 R2 K72 ["subscribeGameStopped"]
      207 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["BrowserService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [pcall]
       21 GETIMPORT                        R5 K5 [game]
       23 GETTABLEKS                       R4 R5 K7 ["GetService"]
       25 GETIMPORT                        R5 K5 [game]
       27 LOADK                            R6 K11 ["ConversationalAIAcceptanceService"]
       28 CALL                             R3 3 2
       29 GETIMPORT                        R5 K10 [pcall]
       31 GETIMPORT                        R7 K5 [game]
       33 GETTABLEKS                       R6 R7 K7 ["GetService"]
       35 GETIMPORT                        R7 K5 [game]
       37 LOADK                            R8 K12 ["MaterialGenerationService"]
       38 CALL                             R5 3 2
       39 GETIMPORT                        R7 K5 [game]
       41 LOADK                            R9 K13 ["GenerationService"]
       42 NAMECALL                         R7 R7 K7 ["GetService"]
       44 CALL                             R7 2 1
       45 GETIMPORT                        R8 K5 [game]
       47 LOADK                            R10 K14 ["HttpService"]
       48 NAMECALL                         R8 R8 K7 ["GetService"]
       50 CALL                             R8 2 1
       51 GETIMPORT                        R9 K5 [game]
       53 LOADK                            R11 K15 ["LogService"]
       54 NAMECALL                         R9 R9 K7 ["GetService"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K5 [game]
       59 LOADK                            R12 K16 ["PlacesService"]
       60 NAMECALL                         R10 R10 K7 ["GetService"]
       62 CALL                             R10 2 1
       63 GETIMPORT                        R11 K5 [game]
       65 LOADK                            R13 K17 ["PublishService"]
       66 NAMECALL                         R11 R11 K7 ["GetService"]
       68 CALL                             R11 2 1
       69 GETIMPORT                        R12 K5 [game]
       71 LOADK                            R14 K18 ["ScriptEditorService"]
       72 NAMECALL                         R12 R12 K7 ["GetService"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K5 [game]
       77 LOADK                            R15 K19 ["Selection"]
       78 NAMECALL                         R13 R13 K7 ["GetService"]
       80 CALL                             R13 2 1
       81 GETIMPORT                        R14 K5 [game]
       83 LOADK                            R16 K20 ["StudioService"]
       84 NAMECALL                         R14 R14 K7 ["GetService"]
       86 CALL                             R14 2 1
       87 GETIMPORT                        R15 K22 [require]
       89 GETTABLEKS                       R17 R0 K23 ["Packages"]
       91 GETTABLEKS                       R16 R17 K24 ["AssistantUI"]
       93 CALL                             R15 1 1
       94 GETIMPORT                        R16 K22 [require]
       96 GETTABLEKS                       R18 R0 K23 ["Packages"]
       98 GETTABLEKS                       R17 R18 K25 ["DMNetworking"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K22 [require]
      103 GETTABLEKS                       R19 R0 K23 ["Packages"]
      105 GETTABLEKS                       R18 R19 K26 ["Framework"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K22 [require]
      110 GETTABLEKS                       R21 R0 K27 ["Src"]
      112 GETTABLEKS                       R20 R21 K28 ["Util"]
      114 GETTABLEKS                       R19 R20 K29 ["GameLoadedNotifier"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K22 [require]
      119 GETTABLEKS                       R22 R0 K27 ["Src"]
      121 GETTABLEKS                       R21 R22 K28 ["Util"]
      123 GETTABLEKS                       R20 R21 K30 ["GameStoppedNotifier"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K22 [require]
      128 GETTABLEKS                       R22 R0 K23 ["Packages"]
      130 GETTABLEKS                       R21 R22 K31 ["Promise"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K22 [require]
      135 GETTABLEKS                       R24 R0 K27 ["Src"]
      137 GETTABLEKS                       R23 R24 K28 ["Util"]
      139 GETTABLEKS                       R22 R23 K32 ["StudioNetworking"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K22 [require]
      144 GETTABLEKS                       R26 R0 K27 ["Src"]
      146 GETTABLEKS                       R25 R26 K33 ["Host"]
      148 GETTABLEKS                       R24 R25 K34 ["Resources"]
      150 GETTABLEKS                       R23 R24 K35 ["StudioEventLogger"]
      152 CALL                             R22 1 1
      153 GETIMPORT                        R23 K22 [require]
      155 GETTABLEKS                       R26 R0 K27 ["Src"]
      157 GETTABLEKS                       R25 R26 K36 ["Flags"]
      159 GETTABLEKS                       R24 R25 K37 ["FFlagPrettyJsonAssistant"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K22 [require]
      164 GETTABLEKS                       R27 R0 K27 ["Src"]
      166 GETTABLEKS                       R26 R27 K36 ["Flags"]
      168 GETTABLEKS                       R25 R26 K38 ["FFlagStudioAssistantMeshGenTelemetryInLua"]
      170 CALL                             R24 1 1
      171 GETTABLEKS                       R27 R15 K36 ["Flags"]
      173 GETTABLEKS                       R26 R27 K39 ["Shared"]
      175 GETTABLEKS                       R25 R26 K40 ["FFlagDebugLogAssistantUI"]
      177 GETTABLEKS                       R27 R17 K41 ["Http"]
      179 GETTABLEKS                       R26 R27 K42 ["Networking"]
      181 GETTABLEKS                       R27 R26 K43 ["new"]
      183 DUPTABLE                         R28 K46 [{"isInternal", "loggingLevel"}]
      184 LOADB                            R29 1
      185 SETTABLEKS                       R29 R28 K44 ["isInternal"]
      187 MOVE                             R30 R25
      188 CALL                             R30 0 1
      189 JUMPIFNOT                        R30 ; [+2]
      190 LOADN                            R29 4
      191 JUMP                             ; [+1]
      192 LOADN                            R29 0
      193 SETTABLEKS                       R29 R28 K45 ["loggingLevel"]
      195 CALL                             R27 1 1
      196 GETTABLEKS                       R28 R17 K47 ["Url"]
      198 GETTABLEKS                       R29 R28 K43 ["new"]
      200 LOADNIL                          R30
      201 CALL                             R29 1 1
      202 DUPCLOSURE                       R30 K48 [PROTO_20]
      203 CAPTURE                          VAL R23
      204 DUPCLOSURE                       R31 K49 [PROTO_26]
      205 DUPCLOSURE                       R32 K50 [PROTO_60]
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R29
      217 CAPTURE                          VAL R27
      218 CAPTURE                          VAL R30
      219 CAPTURE                          VAL R31
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R22
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R18
      227 CAPTURE                          VAL R19
      228 RETURN                           R32 1
