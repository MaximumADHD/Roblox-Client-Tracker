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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["kind"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K4 ["string"] ; [+3]
       15 LOADK                            R1 K5 ["Operation failed with unknown HTTP error"]
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K3 ["kind"]
       19 JUMPIFNOTEQKS                    R1 K6 ["HttpStatusCode"] ; [+11]
       21 LOADK                            R2 K7 ["Operation failed with HTTP error (status=%*, body=%*)"]
       22 GETTABLEKS                       R4 R0 K8 ["statusCode"]
       24 GETTABLEKS                       R5 R0 K9 ["body"]
       26 NAMECALL                         R2 R2 K10 ["format"]
       28 CALL                             R2 3 1
       29 MOVE                             R1 R2
       30 RETURN                           R1 1
       31 GETTABLEKS                       R1 R0 K3 ["kind"]
       33 JUMPIFNOTEQKS                    R1 K11 ["Validation"] ; [+9]
       35 LOADK                            R2 K12 ["Operation failed with validation error (%*)"]
       36 GETTABLEKS                       R4 R0 K13 ["validationError"]
       38 NAMECALL                         R2 R2 K10 ["format"]
       40 CALL                             R2 2 1
       41 MOVE                             R1 R2
       42 RETURN                           R1 1
       43 GETTABLEKS                       R1 R0 K3 ["kind"]
       45 JUMPIFNOTEQKS                    R1 K14 ["Network"] ; [+9]
       47 LOADK                            R2 K15 ["Operation failed with network error (%*)"]
       48 GETTABLEKS                       R4 R0 K16 ["networkError"]
       50 NAMECALL                         R2 R2 K10 ["format"]
       52 CALL                             R2 2 1
       53 MOVE                             R1 R2
       54 RETURN                           R1 1
       55 LOADK                            R1 K5 ["Operation failed with unknown HTTP error"]
       56 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R3 K4 [game]
       10 GETTABLEKS                       R2 R3 K5 ["GameId"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K6 ["AssetUpload"]
       15 GETTABLEKS                       R3 R4 K7 ["postUploadAssetAsync"]
       17 MOVE                             R4 R1
       18 MOVE                             R5 R0
       19 LOADN                            R7 0
       20 JUMPIFNOTLT                      R7 R2 ; [+5]
       22 DUPTABLE                         R6 K9 [{"universeId"}]
       23 SETTABLEKS                       R2 R6 K8 ["universeId"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 CALL                             R3 3 1
       28 GETTABLEKS                       R4 R3 K10 ["success"]
       30 JUMPIF                           R4 ; [+8]
       31 GETIMPORT                        R4 K12 [error]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R6 R3 K13 ["errorDetails"]
       36 CALL                             R5 1 1
       37 LOADN                            R6 0
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R5 R3 K14 ["data"]
       41 GETTABLEKS                       R4 R5 K15 ["assetId"]
       43 FASTCALL2K                       ASSERT R4 K16 ; [+5]
       45 MOVE                             R6 R4
       46 LOADK                            R7 K16 ["Expected assetId in response from postUploadAssetAsync"]
       47 GETIMPORT                        R5 K18 [assert]
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R6 R3 K14 ["data"]
       52 GETTABLEKS                       R5 R6 K19 ["generationId"]
       54 FASTCALL2K                       ASSERT R5 K20 ; [+5]
       56 MOVE                             R7 R5
       57 LOADK                            R8 K20 ["Expected generationId in response from postUploadAssetAsync"]
       58 GETIMPORT                        R6 K18 [assert]
       60 CALL                             R6 2 0
       61 DUPTABLE                         R6 K21 [{"assetId", "generationId"}]
       62 SETTABLEKS                       R4 R6 K15 ["assetId"]
       64 SETTABLEKS                       R5 R6 K19 ["generationId"]
       66 RETURN                           R6 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R2 K1 ["meshGen"]
        4 DUPCLOSURE                       R2 K2 [PROTO_29]
        5 DUPCLOSURE                       R3 K3 [PROTO_30]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R3 R1 K4 ["publishModelAsync"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K5 ["Guest"]
       14 GETTABLEKS                       R4 R5 K6 ["LoadAssetHandlers"]
       16 GETTABLEKS                       R3 R4 K7 ["getRobloxScriptHandler"]
       18 GETIMPORT                        R4 K9 [game]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R1 K10 ["loadAssetAsync"]
       23 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETTABLEKS                       R1 R0 K1 ["UniqueId"]
       11 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isA"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R9 R6
        9 NAMECALL                         R7 R0 K1 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADB                            R7 1
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-8]
       17 LOADB                            R2 0
       18 RETURN                           R2 1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_36:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Instance picker component not found. Cannot pick instance."]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["pickInstanceAsync"]
       10 DUPTABLE                         R3 K5 [{"filter"}]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R4 R3 K4 ["filter"]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K6 ["instances"]
       21 GETTABLEKS                       R3 R4 K7 ["getUniqueId"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K11 [{"uniqueId", "name", "className"}]
       26 SETTABLEKS                       R3 R4 K8 ["uniqueId"]
       28 GETTABLEKS                       R5 R2 K12 ["Name"]
       30 SETTABLEKS                       R5 R4 K9 ["name"]
       32 GETTABLEKS                       R5 R2 K13 ["ClassName"]
       34 SETTABLEKS                       R5 R4 K10 ["className"]
       36 RETURN                           R4 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_33]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_34]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 LOADK                            R8 K7 ["InstancePicker_pickInstanceAsync"]
       20 NEWCLOSURE                       R9 P3
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R2
       23 NAMECALL                         R6 R1 K8 ["OnHostInvokeAsync"]
       25 CALL                             R6 3 2
       26 GETTABLEKS                       R8 R2 K2 ["instances"]
       28 NEWCLOSURE                       R9 P4
       29 CAPTURE                          VAL R6
       30 SETTABLEKS                       R9 R8 K9 ["pickInstanceAsync"]
       32 GETTABLEKS                       R8 R1 K10 ["Destroying"]
       34 NEWCLOSURE                       R10 P5
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R7
       37 NAMECALL                         R8 R8 K11 ["Once"]
       39 CALL                             R8 2 0
       40 RETURN                           R0 0

PROTO_40:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_41:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_42:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_45:
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

PROTO_46:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["OpenScriptDocumentAsync"]
        4 CALL                             R3 2 0
        5 JUMPIFNOT                        R1 ; [+20]
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K1 ["FindScriptDocument"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+14]
       12 OR                               R4 R2 R1
       13 MOVE                             R8 R4
       14 NAMECALL                         R6 R3 K3 ["GetLine"]
       16 CALL                             R6 2 1
       17 ORK                              R5 R6 K2 [""]
       18 MOVE                             R8 R1
       19 LOADN                            R9 1
       20 MOVE                             R10 R4
       21 LENGTH                           R12 R5
       22 ADDK                             R11 R12 K4 [1]
       23 NAMECALL                         R6 R3 K5 ["ForceSetSelectionAsync"]
       25 CALL                             R6 5 0
       26 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["InternalGenerateMeshAsync"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_58:
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

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_64:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_65:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_68:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_69:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_71:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Guest"]
        3 GETTABLEKS                       R3 R4 K1 ["Environment"]
        5 GETTABLEKS                       R2 R3 K2 ["new"]
        7 CALL                             R2 0 1
        8 DUPCLOSURE                       R3 K3 [PROTO_40]
        9 SETTABLEKS                       R3 R2 K4 ["isDevFrameworkAvailable"]
       11 DUPCLOSURE                       R3 K5 [PROTO_41]
       12 SETTABLEKS                       R3 R2 K6 ["isRobloxScriptSecurity"]
       14 DUPCLOSURE                       R3 K7 [PROTO_42]
       15 SETTABLEKS                       R3 R2 K8 ["getEngineFeature"]
       17 GETIMPORT                        R3 K10 [pcall]
       19 NEWCLOSURE                       R4 P3
       20 CAPTURE                          VAL R0
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R3 ; [+2]
       23 MOVE                             R5 R4
       24 JUMPIF                           R5 ; [+1]
       25 LOADNIL                          R5
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K11 ["createStudioEventLogger"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R2 K12 ["EventLogger"]
       33 GETTABLEKS                       R6 R2 K13 ["http"]
       35 DUPCLOSURE                       R7 K14 [PROTO_44]
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R7 R6 K15 ["createWebStreamClient"]
       39 GETTABLEKS                       R6 R2 K13 ["http"]
       41 DUPCLOSURE                       R7 K16 [PROTO_47]
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R7 R6 K17 ["requestAsync"]
       46 GETTABLEKS                       R6 R2 K13 ["http"]
       48 DUPCLOSURE                       R7 K18 [PROTO_49]
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R7 R6 K19 ["openUrl"]
       52 GETTABLEKS                       R6 R2 K20 ["selection"]
       54 DUPCLOSURE                       R7 K21 [PROTO_50]
       55 CAPTURE                          UPVAL U5
       56 SETTABLEKS                       R7 R6 K22 ["get"]
       58 GETTABLEKS                       R6 R2 K20 ["selection"]
       60 DUPCLOSURE                       R7 K23 [PROTO_51]
       61 CAPTURE                          UPVAL U5
       62 SETTABLEKS                       R7 R6 K24 ["set"]
       64 DUPCLOSURE                       R6 K25 [PROTO_52]
       65 CAPTURE                          UPVAL U6
       66 SETTABLEKS                       R6 R2 K26 ["openScriptAsync"]
       68 GETTABLEKS                       R7 R2 K27 ["tools"]
       70 GETTABLEKS                       R6 R7 K28 ["marketplaceInsertion"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K0 ["Guest"]
       75 GETTABLEKS                       R8 R9 K29 ["LoadAssetHandlers"]
       77 GETTABLEKS                       R7 R8 K30 ["getRobloxScriptHandler"]
       79 GETIMPORT                        R8 K32 [game]
       81 CALL                             R7 1 1
       82 SETTABLEKS                       R7 R6 K33 ["loadAssetAsync"]
       84 GETUPVAL                         R6 7
       85 CALL                             R6 0 1
       86 JUMPIFNOT                        R6 ; [+25]
       87 GETTABLEKS                       R7 R2 K27 ["tools"]
       89 GETTABLEKS                       R6 R7 K34 ["materialGen"]
       91 GETUPVAL                         R8 8
       92 GETTABLEKS                       R7 R8 K35 ["create"]
       94 DUPTABLE                         R8 K37 [{"telemetry"}]
       95 GETUPVAL                         R10 1
       96 GETTABLEKS                       R9 R10 K38 ["makeStudioTelemetryEvents"]
       98 MOVE                             R10 R5
       99 CALL                             R9 1 1
      100 SETTABLEKS                       R9 R8 K36 ["telemetry"]
      102 CALL                             R7 1 1
      103 GETTABLEKS                       R8 R7 K39 ["generateMaterialVariantsAsync"]
      105 SETTABLEKS                       R8 R6 K39 ["generateMaterialVariantsAsync"]
      107 GETTABLEKS                       R8 R7 K40 ["uploadMaterialsAsync"]
      109 SETTABLEKS                       R8 R6 K40 ["uploadMaterialsAsync"]
      111 JUMP                             ; [+20]
      112 GETTABLEKS                       R7 R2 K27 ["tools"]
      114 GETTABLEKS                       R6 R7 K34 ["materialGen"]
      116 GETUPVAL                         R7 9
      117 JUMPIFNOT                        R7 ; [+4]
      118 DUPCLOSURE                       R7 K41 [PROTO_53]
      119 CAPTURE                          UPVAL U9
      120 SETTABLEKS                       R7 R6 K39 ["generateMaterialVariantsAsync"]
      122 GETIMPORT                        R7 K10 [pcall]
      124 NEWCLOSURE                       R8 P11
      125 CAPTURE                          VAL R0
      126 CALL                             R7 1 2
      127 JUMPIFNOT                        R7 ; [+4]
      128 NEWCLOSURE                       R9 P12
      129 CAPTURE                          VAL R8
      130 SETTABLEKS                       R9 R6 K40 ["uploadMaterialsAsync"]
      132 GETUPVAL                         R6 10
      133 CALL                             R6 0 1
      134 JUMPIFNOT                        R6 ; [+4]
      135 GETUPVAL                         R6 11
      136 MOVE                             R7 R2
      137 CALL                             R6 1 0
      138 JUMP                             ; [+8]
      139 GETTABLEKS                       R7 R2 K27 ["tools"]
      141 GETTABLEKS                       R6 R7 K42 ["DEPRECATED_meshGen"]
      143 DUPCLOSURE                       R7 K43 [PROTO_56]
      144 CAPTURE                          UPVAL U12
      145 SETTABLEKS                       R7 R6 K44 ["generateMeshAsync"]
      147 GETTABLEKS                       R7 R2 K27 ["tools"]
      149 GETTABLEKS                       R6 R7 K45 ["uploadImage"]
      151 DUPCLOSURE                       R7 K46 [PROTO_57]
      152 CAPTURE                          UPVAL U13
      153 SETTABLEKS                       R7 R6 K47 ["publishAssetAsync"]
      155 DUPCLOSURE                       R7 K48 [PROTO_58]
      156 CAPTURE                          UPVAL U14
      157 CAPTURE                          UPVAL U15
      158 SETTABLEKS                       R7 R6 K49 ["searchAssetAsync"]
      160 GETUPVAL                         R6 16
      161 MOVE                             R7 R2
      162 MOVE                             R8 R0
      163 CALL                             R6 2 0
      164 GETUPVAL                         R6 17
      165 MOVE                             R7 R2
      166 MOVE                             R8 R0
      167 CALL                             R6 2 0
      168 DUPCLOSURE                       R6 K50 [PROTO_59]
      169 CAPTURE                          UPVAL U18
      170 SETTABLEKS                       R6 R2 K51 ["copyToClipboard"]
      172 DUPCLOSURE                       R6 K52 [PROTO_60]
      173 CAPTURE                          UPVAL U18
      174 SETTABLEKS                       R6 R2 K53 ["getClassIcon"]
      176 GETUPVAL                         R9 0
      177 GETTABLEKS                       R8 R9 K0 ["Guest"]
      179 GETTABLEKS                       R7 R8 K54 ["RecordingHandlers"]
      181 GETTABLEKS                       R6 R7 K55 ["getPluginHandlers"]
      183 GETUPVAL                         R7 19
      184 CALL                             R6 1 1
      185 GETTABLEKS                       R7 R6 K56 ["startRecording"]
      187 SETTABLEKS                       R7 R2 K56 ["startRecording"]
      189 GETTABLEKS                       R7 R6 K57 ["endRecording"]
      191 SETTABLEKS                       R7 R2 K57 ["endRecording"]
      193 NEWCLOSURE                       R7 P18
      194 CAPTURE                          VAL R1
      195 SETTABLEKS                       R7 R2 K58 ["getNetworking"]
      197 DUPCLOSURE                       R7 K59 [PROTO_62]
      198 CAPTURE                          UPVAL U6
      199 SETTABLEKS                       R7 R2 K60 ["getScriptSource"]
      201 DUPCLOSURE                       R7 K61 [PROTO_64]
      202 CAPTURE                          UPVAL U18
      203 SETTABLEKS                       R7 R2 K62 ["getUserId"]
      205 DUPCLOSURE                       R7 K63 [PROTO_65]
      206 CAPTURE                          UPVAL U20
      207 SETTABLEKS                       R7 R2 K64 ["startStopPlayAsync"]
      209 DUPCLOSURE                       R7 K65 [PROTO_67]
      210 CAPTURE                          UPVAL U21
      211 SETTABLEKS                       R7 R2 K66 ["subscribeOutput"]
      213 DUPCLOSURE                       R7 K67 [PROTO_68]
      214 CAPTURE                          UPVAL U22
      215 SETTABLEKS                       R7 R2 K68 ["subscribeGameLoaded"]
      217 DUPCLOSURE                       R7 K69 [PROTO_69]
      218 CAPTURE                          UPVAL U23
      219 SETTABLEKS                       R7 R2 K70 ["subscribeGameStopped"]
      221 DUPCLOSURE                       R7 K71 [PROTO_70]
      222 CAPTURE                          UPVAL U24
      223 SETTABLEKS                       R7 R2 K72 ["getStudioPlayState"]
      225 GETUPVAL                         R7 10
      226 CALL                             R7 0 1
      227 JUMPIFNOT                        R7 ; [+5]
      228 GETUPVAL                         R7 25
      229 MOVE                             R8 R0
      230 MOVE                             R9 R1
      231 MOVE                             R10 R2
      232 CALL                             R7 3 0
      233 RETURN                           R2 1

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
       77 GETIMPORT                        R13 K5 [game]
       79 LOADK                            R15 K20 ["UniqueIdLookupService"]
       80 NAMECALL                         R13 R13 K7 ["GetService"]
       82 CALL                             R13 2 1
       83 GETIMPORT                        R14 K22 [require]
       85 GETTABLEKS                       R16 R0 K23 ["Packages"]
       87 GETTABLEKS                       R15 R16 K24 ["AssistantUI"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K22 [require]
       92 GETTABLEKS                       R18 R0 K25 ["Generated"]
       94 GETTABLEKS                       R17 R18 K26 ["OpenAPI"]
       96 GETTABLEKS                       R16 R17 K27 ["CubeGenerationGateway"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K22 [require]
      101 GETTABLEKS                       R18 R0 K23 ["Packages"]
      103 GETTABLEKS                       R17 R18 K28 ["DMNetworking"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K22 [require]
      108 GETTABLEKS                       R19 R0 K23 ["Packages"]
      110 GETTABLEKS                       R18 R19 K29 ["Framework"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K22 [require]
      115 GETTABLEKS                       R21 R0 K30 ["Src"]
      117 GETTABLEKS                       R20 R21 K31 ["Util"]
      119 GETTABLEKS                       R19 R20 K32 ["GameLoadedNotifier"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K22 [require]
      124 GETTABLEKS                       R22 R0 K30 ["Src"]
      126 GETTABLEKS                       R21 R22 K31 ["Util"]
      128 GETTABLEKS                       R20 R21 K33 ["GameStoppedNotifier"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K22 [require]
      133 GETTABLEKS                       R22 R0 K23 ["Packages"]
      135 GETTABLEKS                       R21 R22 K34 ["Promise"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K22 [require]
      140 GETTABLEKS                       R25 R0 K30 ["Src"]
      142 GETTABLEKS                       R24 R25 K35 ["Host"]
      144 GETTABLEKS                       R23 R24 K36 ["Resources"]
      146 GETTABLEKS                       R22 R23 K37 ["StudioEventLogger"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K22 [require]
      151 GETTABLEKS                       R25 R0 K30 ["Src"]
      153 GETTABLEKS                       R24 R25 K31 ["Util"]
      155 GETTABLEKS                       R23 R24 K38 ["StudioMaterialGenerator"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K22 [require]
      160 GETTABLEKS                       R26 R0 K30 ["Src"]
      162 GETTABLEKS                       R25 R26 K31 ["Util"]
      164 GETTABLEKS                       R24 R25 K39 ["StudioNetworking"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K22 [require]
      169 GETTABLEKS                       R27 R0 K30 ["Src"]
      171 GETTABLEKS                       R26 R27 K31 ["Util"]
      173 GETTABLEKS                       R25 R26 K40 ["StudioState"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K22 [require]
      178 GETTABLEKS                       R28 R0 K30 ["Src"]
      180 GETTABLEKS                       R27 R28 K31 ["Util"]
      182 GETTABLEKS                       R26 R27 K41 ["createStudioInstancePicker"]
      184 CALL                             R25 1 1
      185 GETIMPORT                        R26 K22 [require]
      187 GETTABLEKS                       R29 R0 K30 ["Src"]
      189 GETTABLEKS                       R28 R29 K42 ["Flags"]
      191 GETTABLEKS                       R27 R28 K43 ["FFlagAssistantLuaMaterialGenerator"]
      193 CALL                             R26 1 1
      194 GETIMPORT                        R27 K22 [require]
      196 GETTABLEKS                       R30 R0 K30 ["Src"]
      198 GETTABLEKS                       R29 R30 K42 ["Flags"]
      200 GETTABLEKS                       R28 R29 K44 ["FFlagGetOrCreateUniqueIdMethod"]
      202 CALL                             R27 1 1
      203 GETIMPORT                        R28 K22 [require]
      205 GETTABLEKS                       R31 R0 K30 ["Src"]
      207 GETTABLEKS                       R30 R31 K42 ["Flags"]
      209 GETTABLEKS                       R29 R30 K45 ["FFlagPrettyJsonAssistant"]
      211 CALL                             R28 1 1
      212 GETTABLEKS                       R31 R14 K42 ["Flags"]
      214 GETTABLEKS                       R30 R31 K46 ["Shared"]
      216 GETTABLEKS                       R29 R30 K47 ["FFlagAssistantUseNewMeshGenTool"]
      218 GETTABLEKS                       R32 R14 K42 ["Flags"]
      220 GETTABLEKS                       R31 R32 K46 ["Shared"]
      222 GETTABLEKS                       R30 R31 K48 ["FFlagDebugLogAssistantUI"]
      224 GETTABLEKS                       R32 R17 K49 ["Http"]
      226 GETTABLEKS                       R31 R32 K50 ["Networking"]
      228 GETTABLEKS                       R32 R31 K51 ["new"]
      230 DUPTABLE                         R33 K54 [{"isInternal", "loggingLevel"}]
      231 LOADB                            R34 1
      232 SETTABLEKS                       R34 R33 K52 ["isInternal"]
      234 MOVE                             R35 R30
      235 CALL                             R35 0 1
      236 JUMPIFNOT                        R35 ; [+2]
      237 LOADN                            R34 4
      238 JUMP                             ; [+1]
      239 LOADN                            R34 0
      240 SETTABLEKS                       R34 R33 K53 ["loggingLevel"]
      242 CALL                             R32 1 1
      243 GETTABLEKS                       R33 R17 K55 ["Url"]
      245 GETTABLEKS                       R34 R33 K51 ["new"]
      247 LOADNIL                          R35
      248 CALL                             R34 1 1
      249 DUPCLOSURE                       R35 K56 [PROTO_20]
      250 CAPTURE                          VAL R28
      251 DUPCLOSURE                       R36 K57 [PROTO_28]
      252 DUPCLOSURE                       R37 K58 [PROTO_31]
      253 CAPTURE                          VAL R12
      254 CAPTURE                          VAL R15
      255 CAPTURE                          VAL R14
      256 DUPCLOSURE                       R38 K59 [PROTO_39]
      257 CAPTURE                          VAL R25
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R13
      260 DUPCLOSURE                       R39 K60 [PROTO_71]
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R1
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R26
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R4
      271 CAPTURE                          VAL R29
      272 CAPTURE                          VAL R37
      273 CAPTURE                          VAL R5
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R34
      276 CAPTURE                          VAL R32
      277 CAPTURE                          VAL R35
      278 CAPTURE                          VAL R36
      279 CAPTURE                          VAL R12
      280 CAPTURE                          VAL R2
      281 CAPTURE                          VAL R8
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R18
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R24
      286 CAPTURE                          VAL R38
      287 RETURN                           R39 1
