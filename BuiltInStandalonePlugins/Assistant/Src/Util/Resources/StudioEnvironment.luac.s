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
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_27:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["ScriptEditorService"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 MOVE                             R5 R0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R1
        9 NAMECALL                         R3 R2 K4 ["UpdateSourceAsync"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_28:
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
       31 GETTABLEKS                       R5 R0 K2 ["tools"]
       33 GETTABLEKS                       R4 R5 K6 ["multiEdit"]
       35 DUPCLOSURE                       R5 K8 [PROTO_27]
       36 SETTABLEKS                       R5 R4 K9 ["applyScriptSourceDirectly"]
       38 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_30:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_31:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["InternalGenerateMeshAsync"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_52:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_53:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_58:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Guest"]
        3 GETTABLEKS                       R3 R4 K1 ["Environment"]
        5 GETTABLEKS                       R2 R3 K2 ["new"]
        7 CALL                             R2 0 1
        8 DUPCLOSURE                       R3 K3 [PROTO_29]
        9 SETTABLEKS                       R3 R2 K4 ["isDevFrameworkAvailable"]
       11 DUPCLOSURE                       R3 K5 [PROTO_30]
       12 SETTABLEKS                       R3 R2 K6 ["isRobloxScriptSecurity"]
       14 DUPCLOSURE                       R3 K7 [PROTO_31]
       15 SETTABLEKS                       R3 R2 K8 ["getEngineFeature"]
       17 GETTABLEKS                       R3 R2 K9 ["http"]
       19 DUPCLOSURE                       R4 K10 [PROTO_32]
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R4 R3 K11 ["createWebStreamClient"]
       23 GETTABLEKS                       R3 R2 K9 ["http"]
       25 DUPCLOSURE                       R4 K12 [PROTO_35]
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R4 R3 K13 ["requestAsync"]
       30 GETTABLEKS                       R3 R2 K9 ["http"]
       32 DUPCLOSURE                       R4 K14 [PROTO_37]
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R4 R3 K15 ["openUrl"]
       36 GETTABLEKS                       R3 R2 K16 ["selection"]
       38 DUPCLOSURE                       R4 K17 [PROTO_38]
       39 CAPTURE                          UPVAL U4
       40 SETTABLEKS                       R4 R3 K18 ["get"]
       42 GETTABLEKS                       R3 R2 K16 ["selection"]
       44 DUPCLOSURE                       R4 K19 [PROTO_39]
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
       70 DUPCLOSURE                       R4 K29 [PROTO_40]
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
       88 DUPCLOSURE                       R4 K35 [PROTO_43]
       89 CAPTURE                          UPVAL U6
       90 SETTABLEKS                       R4 R3 K36 ["generateMeshAsync"]
       92 GETTABLEKS                       R4 R2 K21 ["tools"]
       94 GETTABLEKS                       R3 R4 K37 ["uploadImage"]
       96 DUPCLOSURE                       R4 K38 [PROTO_44]
       97 CAPTURE                          UPVAL U7
       98 SETTABLEKS                       R4 R3 K39 ["publishAssetAsync"]
      100 DUPCLOSURE                       R4 K40 [PROTO_45]
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U9
      103 SETTABLEKS                       R4 R3 K41 ["searchAssetAsync"]
      105 GETUPVAL                         R3 10
      106 MOVE                             R4 R2
      107 MOVE                             R5 R0
      108 CALL                             R3 2 0
      109 GETUPVAL                         R3 11
      110 MOVE                             R4 R2
      111 MOVE                             R5 R0
      112 CALL                             R3 2 0
      113 DUPCLOSURE                       R3 K42 [PROTO_46]
      114 CAPTURE                          UPVAL U12
      115 SETTABLEKS                       R3 R2 K43 ["copyToClipboard"]
      117 DUPCLOSURE                       R3 K44 [PROTO_47]
      118 CAPTURE                          UPVAL U12
      119 SETTABLEKS                       R3 R2 K45 ["getClassIcon"]
      121 GETUPVAL                         R6 0
      122 GETTABLEKS                       R5 R6 K0 ["Guest"]
      124 GETTABLEKS                       R4 R5 K46 ["RecordingHandlers"]
      126 GETTABLEKS                       R3 R4 K47 ["getPluginHandlers"]
      128 GETUPVAL                         R4 13
      129 CALL                             R3 1 1
      130 GETTABLEKS                       R4 R3 K48 ["startRecording"]
      132 SETTABLEKS                       R4 R2 K48 ["startRecording"]
      134 GETTABLEKS                       R4 R3 K49 ["endRecording"]
      136 SETTABLEKS                       R4 R2 K49 ["endRecording"]
      138 NEWCLOSURE                       R4 P16
      139 CAPTURE                          VAL R1
      140 SETTABLEKS                       R4 R2 K50 ["getNetworking"]
      142 GETIMPORT                        R4 K32 [pcall]
      144 NEWCLOSURE                       R5 P17
      145 CAPTURE                          VAL R0
      146 CALL                             R4 1 2
      147 GETUPVAL                         R6 14
      148 JUMPIFNOT                        R4 ; [+2]
      149 MOVE                             R7 R5
      150 JUMPIF                           R7 ; [+1]
      151 LOADNIL                          R7
      152 CALL                             R6 1 1
      153 SETTABLEKS                       R6 R2 K51 ["EventLogger"]
      155 DUPCLOSURE                       R6 K52 [PROTO_50]
      156 CAPTURE                          UPVAL U15
      157 SETTABLEKS                       R6 R2 K53 ["getScriptSource"]
      159 DUPCLOSURE                       R6 K54 [PROTO_52]
      160 CAPTURE                          UPVAL U12
      161 SETTABLEKS                       R6 R2 K55 ["getUserId"]
      163 DUPCLOSURE                       R6 K56 [PROTO_53]
      164 CAPTURE                          UPVAL U16
      165 SETTABLEKS                       R6 R2 K57 ["startStopPlayAsync"]
      167 DUPCLOSURE                       R6 K58 [PROTO_55]
      168 CAPTURE                          UPVAL U17
      169 SETTABLEKS                       R6 R2 K59 ["subscribeOutput"]
      171 DUPCLOSURE                       R6 K60 [PROTO_56]
      172 CAPTURE                          UPVAL U18
      173 SETTABLEKS                       R6 R2 K61 ["subscribeGameLoaded"]
      175 DUPCLOSURE                       R6 K62 [PROTO_57]
      176 CAPTURE                          UPVAL U19
      177 SETTABLEKS                       R6 R2 K63 ["subscribeGameStopped"]
      179 RETURN                           R2 1

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
       27 LOADK                            R6 K11 ["MaterialGenerationService"]
       28 CALL                             R3 3 2
       29 GETIMPORT                        R5 K5 [game]
       31 LOADK                            R7 K12 ["GenerationService"]
       32 NAMECALL                         R5 R5 K7 ["GetService"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K5 [game]
       37 LOADK                            R8 K13 ["HttpService"]
       38 NAMECALL                         R6 R6 K7 ["GetService"]
       40 CALL                             R6 2 1
       41 GETIMPORT                        R7 K5 [game]
       43 LOADK                            R9 K14 ["LogService"]
       44 NAMECALL                         R7 R7 K7 ["GetService"]
       46 CALL                             R7 2 1
       47 GETIMPORT                        R8 K5 [game]
       49 LOADK                            R10 K15 ["PlacesService"]
       50 NAMECALL                         R8 R8 K7 ["GetService"]
       52 CALL                             R8 2 1
       53 GETIMPORT                        R9 K5 [game]
       55 LOADK                            R11 K16 ["PublishService"]
       56 NAMECALL                         R9 R9 K7 ["GetService"]
       58 CALL                             R9 2 1
       59 GETIMPORT                        R10 K5 [game]
       61 LOADK                            R12 K17 ["ScriptEditorService"]
       62 NAMECALL                         R10 R10 K7 ["GetService"]
       64 CALL                             R10 2 1
       65 GETIMPORT                        R11 K5 [game]
       67 LOADK                            R13 K18 ["Selection"]
       68 NAMECALL                         R11 R11 K7 ["GetService"]
       70 CALL                             R11 2 1
       71 GETIMPORT                        R12 K5 [game]
       73 LOADK                            R14 K19 ["StudioService"]
       74 NAMECALL                         R12 R12 K7 ["GetService"]
       76 CALL                             R12 2 1
       77 GETIMPORT                        R13 K21 [require]
       79 GETTABLEKS                       R15 R0 K22 ["Packages"]
       81 GETTABLEKS                       R14 R15 K23 ["AssistantUI"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K21 [require]
       86 GETTABLEKS                       R16 R0 K22 ["Packages"]
       88 GETTABLEKS                       R15 R16 K24 ["DMNetworking"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K21 [require]
       93 GETTABLEKS                       R17 R0 K22 ["Packages"]
       95 GETTABLEKS                       R16 R17 K25 ["Framework"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K21 [require]
      100 GETTABLEKS                       R19 R0 K26 ["Src"]
      102 GETTABLEKS                       R18 R19 K27 ["Util"]
      104 GETTABLEKS                       R17 R18 K28 ["GameLoadedNotifier"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K21 [require]
      109 GETTABLEKS                       R20 R0 K26 ["Src"]
      111 GETTABLEKS                       R19 R20 K27 ["Util"]
      113 GETTABLEKS                       R18 R19 K29 ["GameStoppedNotifier"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K21 [require]
      118 GETTABLEKS                       R20 R0 K22 ["Packages"]
      120 GETTABLEKS                       R19 R20 K30 ["Promise"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K21 [require]
      125 GETTABLEKS                       R22 R0 K26 ["Src"]
      127 GETTABLEKS                       R21 R22 K27 ["Util"]
      129 GETTABLEKS                       R20 R21 K31 ["StudioNetworking"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K21 [require]
      134 GETTABLEKS                       R24 R0 K26 ["Src"]
      136 GETTABLEKS                       R23 R24 K32 ["Host"]
      138 GETTABLEKS                       R22 R23 K33 ["Resources"]
      140 GETTABLEKS                       R21 R22 K34 ["StudioEventLogger"]
      142 CALL                             R20 1 1
      143 GETIMPORT                        R21 K21 [require]
      145 GETTABLEKS                       R24 R0 K26 ["Src"]
      147 GETTABLEKS                       R23 R24 K35 ["Flags"]
      149 GETTABLEKS                       R22 R23 K36 ["FFlagPrettyJsonAssistant"]
      151 CALL                             R21 1 1
      152 GETTABLEKS                       R24 R13 K35 ["Flags"]
      154 GETTABLEKS                       R23 R24 K37 ["Shared"]
      156 GETTABLEKS                       R22 R23 K38 ["FFlagDebugLogAssistantUI"]
      158 GETTABLEKS                       R24 R15 K39 ["Http"]
      160 GETTABLEKS                       R23 R24 K40 ["Networking"]
      162 GETTABLEKS                       R24 R23 K41 ["new"]
      164 DUPTABLE                         R25 K44 [{"isInternal", "loggingLevel"}]
      165 LOADB                            R26 1
      166 SETTABLEKS                       R26 R25 K42 ["isInternal"]
      168 MOVE                             R27 R22
      169 CALL                             R27 0 1
      170 JUMPIFNOT                        R27 ; [+2]
      171 LOADN                            R26 4
      172 JUMP                             ; [+1]
      173 LOADN                            R26 0
      174 SETTABLEKS                       R26 R25 K43 ["loggingLevel"]
      176 CALL                             R24 1 1
      177 GETTABLEKS                       R25 R15 K45 ["Url"]
      179 GETTABLEKS                       R26 R25 K41 ["new"]
      181 LOADNIL                          R27
      182 CALL                             R26 1 1
      183 DUPCLOSURE                       R27 K46 [PROTO_20]
      184 CAPTURE                          VAL R21
      185 DUPCLOSURE                       R28 K47 [PROTO_28]
      186 DUPCLOSURE                       R29 K48 [PROTO_58]
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R1
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R28
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R17
      207 RETURN                           R29 1
