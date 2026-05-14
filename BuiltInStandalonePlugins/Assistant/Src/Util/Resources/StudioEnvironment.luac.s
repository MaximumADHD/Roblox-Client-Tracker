PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOT                        R3 ; [+39]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 1
        6 GETTABLEKS                       R3 R1 K0 ["toRequest"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFEQKNIL                     R3 ; [+30]
       12 FASTCALL1                        TYPE R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K2 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["Json"]
       22 GETTABLEKS                       R4 R4 K5 ["encode"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R0 K6 ["body"]
       28 GETTABLEKS                       R4 R0 K7 ["headers"]
       30 LOADK                            R5 K8 ["application/json"]
       31 SETTABLEKS                       R5 R4 K9 ["Content-Type"]
       33 RETURN                           R0 1
       34 FASTCALL1                        TOSTRING R3 ; [+3]
       35 MOVE                             R5 R3
       36 GETIMPORT                        R4 K11 [tostring]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R0 K6 ["body"]
       41 RETURN                           R0 1
       42 GETUPVAL                         R3 2
       43 MOVE                             R4 R0
       44 MOVE                             R5 R1
       45 MOVE                             R6 R2
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Generated"]
        5 GETTABLEKS                       R1 R1 K3 ["OpenAPI"]
        7 GETTABLEKS                       R1 R1 K4 ["McpAssistantApi"]
        9 GETTABLEKS                       R1 R1 K5 ["Models"]
       11 GETTABLEKS                       R1 R1 K6 ["CreateConversationRequest"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["Generated"]
       19 GETTABLEKS                       R2 R2 K3 ["OpenAPI"]
       21 GETTABLEKS                       R2 R2 K4 ["McpAssistantApi"]
       23 GETTABLEKS                       R2 R2 K5 ["Models"]
       25 GETTABLEKS                       R2 R2 K7 ["SystemPromptRequest"]
       27 CALL                             R1 1 1
       28 NEWTABLE                         R2 2 0
       30 LOADB                            R3 1
       31 SETTABLE                         R3 R2 R0
       32 LOADB                            R3 1
       33 SETTABLE                         R3 R2 R1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K8 ["setBody"]
       37 GETUPVAL                         R4 1
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K8 ["setBody"]
       44 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetImageDataBase64Async"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LoadImageAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSettingsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSettingsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetUserSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetUserSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSecureSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSecureSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Base64EncodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GeneratePKCEAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["StartMCPAuthAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JsonDecodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["SetUpMCPServerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectFileExistsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectReadFileAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_23:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["QuickConnectModifyFileAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+10]
        8 GETIMPORT                        R4 K3 [warn]
       10 LOADK                            R6 K4 ["QuickConnect modifyFileAsync failed: "]
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R8 R3
       13 GETIMPORT                        R7 K6 [tostring]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["Info"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1
       10 RETURN                           R0 0

PROTO_29:
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
       15 GETTABLEKS                       R4 R0 K4 ["tools"]
       17 GETTABLEKS                       R4 R4 K5 ["screenCapture"]
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R5 R4 K6 ["getImageDataBase64Async"]
       23 GETTABLEKS                       R4 R0 K4 ["tools"]
       25 GETTABLEKS                       R4 R4 K7 ["uploadImage"]
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
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K19 ["encodeAsync"]
       73 GETTABLEKS                       R4 R0 K18 ["json"]
       75 NEWCLOSURE                       R5 P15
       76 CAPTURE                          VAL R3
       77 SETTABLEKS                       R5 R4 K20 ["decodeAsync"]
       79 NEWCLOSURE                       R4 P16
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R4 R0 K21 ["setupMCPServerAsync"]
       83 GETTABLEKS                       R4 R0 K22 ["quickConnect"]
       85 NEWCLOSURE                       R5 P17
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R5 R4 K23 ["fileExistsAsync"]
       89 GETTABLEKS                       R4 R0 K22 ["quickConnect"]
       91 NEWCLOSURE                       R5 P18
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R5 R4 K24 ["readFileAsync"]
       95 GETTABLEKS                       R4 R0 K22 ["quickConnect"]
       97 NEWCLOSURE                       R5 P19
       98 CAPTURE                          VAL R3
       99 SETTABLEKS                       R5 R4 K25 ["modifyFileAsync"]
      101 NEWCLOSURE                       R4 P20
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R4 R0 K26 ["openFileDialogAsync"]
      105 NEWCLOSURE                       R4 P21
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R4 R0 K27 ["importFileBinaryAsync"]
      109 NEWCLOSURE                       R4 P22
      110 CAPTURE                          UPVAL U0
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R4 R0 K28 ["printToStudioLogAsync"]
      114 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasInternalPermission"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETIMPORT                        R0 K2 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 2
       11 JUMPIFNOT                        R0 ; [+7]
       12 JUMPIFNOTEQKB                    R1 TRUE ; [+6]
       14 GETUPVAL                         R2 2
       15 LOADB                            R4 1
       16 NAMECALL                         R2 R2 K3 ["SetUseElevatedAssistantAsync"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_39:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R4 R0 K2 ["tools"]
        9 GETTABLEKS                       R4 R4 K3 ["executeLuau"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R3
       13 SETTABLEKS                       R5 R4 K4 ["loadCode"]
       15 GETTABLEKS                       R4 R0 K2 ["tools"]
       17 GETTABLEKS                       R4 R4 K3 ["executeLuau"]
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R5 R4 K5 ["stopCode"]
       23 GETTABLEKS                       R4 R0 K2 ["tools"]
       25 GETTABLEKS                       R4 R4 K6 ["multiEdit"]
       27 NEWCLOSURE                       R5 P3
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K7 ["updateScriptSourceAsync"]
       31 GETTABLEKS                       R4 R0 K2 ["tools"]
       33 GETTABLEKS                       R4 R4 K6 ["multiEdit"]
       35 DUPCLOSURE                       R5 K8 [PROTO_36]
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R5 R4 K9 ["applyScriptSourceDirectly"]
       39 GETUPVAL                         R4 1
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+7]
       42 GETIMPORT                        R4 K12 [task.spawn]
       44 NEWCLOSURE                       R5 P5
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R3
       48 CALL                             R4 1 0
       49 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R2 K4 [game]
       10 GETTABLEKS                       R2 R2 K5 ["GameId"]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R2 ; [+5]
       15 DUPTABLE                         R3 K7 [{"universeId"}]
       16 SETTABLEKS                       R2 R3 K6 ["universeId"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K8 ["callWithOptions"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 0
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R4 K9 ["success"]
       33 JUMPIF                           R5 ; [+6]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K10 ["throwError"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 -1
       39 RETURN                           R5 -1
       40 GETTABLEKS                       R5 R4 K11 ["data"]
       42 GETTABLEKS                       R5 R5 K12 ["assetId"]
       44 FASTCALL2K                       ASSERT R5 K13 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K13 ["Expected assetId in response from postUploadAssetAsync"]
       48 GETIMPORT                        R6 K15 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R4 K11 ["data"]
       53 GETTABLEKS                       R6 R6 K16 ["generationId"]
       55 FASTCALL2K                       ASSERT R6 K17 ; [+5]
       57 MOVE                             R8 R6
       58 LOADK                            R9 K17 ["Expected generationId in response from postUploadAssetAsync"]
       59 GETIMPORT                        R7 K15 [assert]
       61 CALL                             R7 2 0
       62 DUPTABLE                         R7 K18 [{"assetId", "generationId"}]
       63 SETTABLEKS                       R5 R7 K12 ["assetId"]
       65 SETTABLEKS                       R6 R7 K16 ["generationId"]
       67 RETURN                           R7 1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["meshGen"]
        4 DUPCLOSURE                       R2 K2 [PROTO_41]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R2 R1 K3 ["publishModelAsync"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K4 ["Guest"]
       13 GETTABLEKS                       R2 R2 K5 ["LoadAssetHandlers"]
       15 GETTABLEKS                       R2 R2 K6 ["getRobloxScriptHandler"]
       17 GETIMPORT                        R3 K8 [game]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K9 ["loadAssetAsync"]
       22 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isA"]
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

PROTO_47:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Instance picker component not found. Cannot pick instance."]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["pickInstanceAsync"]
       10 DUPTABLE                         R3 K5 [{"filter"}]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R4 R3 K4 ["filter"]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K6 ["instances"]
       21 GETTABLEKS                       R3 R3 K7 ["getUniqueId"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K11 [{"uniqueId", "name", "className"}]
       26 SETTABLEKS                       R3 R4 K8 ["uniqueId"]
       28 GETTABLEKS                       R5 R2 K12 ["Name"]
       30 SETTABLEKS                       R5 R4 K9 ["name"]
       32 GETTABLEKS                       R5 R2 K13 ["ClassName"]
       34 SETTABLEKS                       R5 R4 K10 ["className"]
       36 RETURN                           R4 1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_44]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_45]
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

PROTO_51:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_52:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 NOT                              R0 R1
        7 RETURN                           R0 1

PROTO_54:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RequestInternal"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["new"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 1
       11 NAMECALL                         R2 R2 K2 ["await"]
       13 CALL                             R2 1 2
       14 RETURN                           R3 1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_68:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Prompt"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Prompt"]
        5 GETUPVAL                         R3 2
        6 LOADNIL                          R4
        7 NAMECALL                         R0 R0 K2 ["GenerateAnimationAsync"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_70:
        0 LOADN                            R2 196
        1 JUMPIFNOT                        R1 ; [+24]
        2 GETTABLEKS                       R3 R1 K0 ["duration"]
        4 JUMPIFNOT                        R3 ; [+21]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["DEFAULT_GENERATION_FPS"]
        8 GETTABLEKS                       R7 R1 K0 ["duration"]
       10 MUL                              R6 R7 R3
       11 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       12 GETIMPORT                        R5 K4 [math.floor]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["MIN_GENERATION_FRAMES"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K6 ["MAX_GENERATION_FRAMES"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K8 [math.clamp]
       24 CALL                             R4 3 1
       25 MOVE                             R2 R4
       26 JUMPIFNOT                        R1 ; [+3]
       27 GETTABLEKS                       R3 R1 K9 ["outputPath"]
       29 JUMPIF                           R3 ; [+1]
       30 LOADK                            R3 K10 ["/tmp"]
       31 DUPTABLE                         R4 K13 [{"NumFrames", "OutputPath"}]
       32 IDIVK                            R5 R2 K14 [1]
       33 SETTABLEKS                       R5 R4 K11 ["NumFrames"]
       35 SETTABLEKS                       R3 R4 K12 ["OutputPath"]
       37 JUMPIFNOT                        R1 ; [+11]
       38 GETTABLEKS                       R5 R1 K15 ["guidanceParameter"]
       40 JUMPIFNOT                        R5 ; [+8]
       41 GETTABLEKS                       R6 R1 K15 ["guidanceParameter"]
       43 FASTCALL1                        TOSTRING R6 ; [+2]
       44 GETIMPORT                        R5 K17 [tostring]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K18 ["GuidanceParameter"]
       49 GETIMPORT                        R5 K21 [table.pack]
       51 GETIMPORT                        R6 K23 [pcall]
       53 NEWCLOSURE                       R7 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 CALL                             R6 1 -1
       58 CALL                             R5 -1 1
       59 GETTABLEN                        R6 R5 1
       60 JUMPIF                           R6 ; [+16]
       61 GETTABLEN                        R7 R5 2
       62 GETIMPORT                        R8 K25 [warn]
       64 LOADK                            R9 K26 ["[AnimationGen] GenerateAnimationAsync failed:"]
       65 MOVE                             R10 R7
       66 CALL                             R8 2 0
       67 GETIMPORT                        R8 K28 [error]
       69 LOADK                            R10 K29 ["GenerateAnimationAsync failed: "]
       70 FASTCALL1                        TOSTRING R7 ; [+3]
       71 MOVE                             R12 R7
       72 GETIMPORT                        R11 K17 [tostring]
       74 CALL                             R11 1 1
       75 CONCAT                           R9 R10 R11
       76 CALL                             R8 1 0
       77 GETTABLEN                        R7 R5 2
       78 GETTABLEN                        R8 R5 3
       79 JUMPIFNOT                        R7 ; [+2]
       80 JUMPIFNOTEQKS                    R7 K30 [""] ; [+5]
       82 GETIMPORT                        R9 K28 [error]
       84 LOADK                            R10 K31 ["Animation generation failed: no FBX file returned"]
       85 CALL                             R9 1 0
       86 GETUPVAL                         R9 2
       87 MOVE                             R11 R7
       88 NAMECALL                         R9 R9 K32 ["StartSessionWithPath"]
       90 CALL                             R9 2 1
       91 NAMECALL                         R10 R9 K33 ["GetKeyframeSequences"]
       93 CALL                             R10 1 1
       94 NAMECALL                         R11 R9 K34 ["Destroy"]
       96 CALL                             R11 1 0
       97 LENGTH                           R11 R10
       98 JUMPIFNOTEQKN                    R11 K35 [0] ; [+5]
      100 GETIMPORT                        R11 K28 [error]
      102 LOADK                            R12 K36 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
      103 CALL                             R11 1 0
      104 JUMPIFNOT                        R7 ; [+10]
      105 LOADK                            R13 K37 ["([^/\\]+)%.fbx$"]
      106 NAMECALL                         R11 R7 K38 ["match"]
      108 CALL                             R11 2 1
      109 JUMPIF                           R11 ; [+6]
      110 LOADK                            R13 K39 ["([^/\\]+)$"]
      111 NAMECALL                         R11 R7 K38 ["match"]
      113 CALL                             R11 2 1
      114 JUMP                             ; [+1]
      115 LOADK                            R11 K40 ["GeneratedAnim"]
      116 GETTABLEN                        R12 R10 1
      117 SETTABLEKS                       R11 R12 K41 ["Name"]
      119 GETUPVAL                         R12 3
      120 CALL                             R12 0 1
      121 JUMPIFNOT                        R12 ; [+10]
      122 GETIMPORT                        R12 K43 [print]
      124 LOADK                            R14 K44 ["[AnimationGen] FBX saved: "]
      125 FASTCALL1                        TOSTRING R7 ; [+3]
      126 MOVE                             R16 R7
      127 GETIMPORT                        R15 K17 [tostring]
      129 CALL                             R15 1 1
      130 CONCAT                           R13 R14 R15
      131 CALL                             R12 1 0
      132 DUPTABLE                         R12 K48 [{"animationClip", "contextId", "fbxFilePath"}]
      133 GETTABLEN                        R13 R10 1
      134 SETTABLEKS                       R13 R12 K45 ["animationClip"]
      136 SETTABLEKS                       R8 R12 K46 ["contextId"]
      138 SETTABLEKS                       R7 R12 K47 ["fbxFilePath"]
      140 RETURN                           R12 1

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["animationClip"]
        2 DUPTABLE                         R2 K4 [{"assetId", "keyframeSequence", "fbxFilePath"}]
        3 LOADN                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["assetId"]
        6 SETTABLEKS                       R1 R2 K2 ["keyframeSequence"]
        8 GETTABLEKS                       R3 R0 K3 ["fbxFilePath"]
       10 SETTABLEKS                       R3 R2 K3 ["fbxFilePath"]
       12 RETURN                           R2 1

PROTO_72:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventoryApi"]
        3 GETTABLEKS                       R0 R0 K1 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_74:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+32]
        3 LOADK                            R5 K0 ["assetTypes=%*;userids=%*"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 3 1
        9 MOVE                             R4 R5
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["callWithOptions"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R3
       18 DUPTABLE                         R7 K4 [{"retryCount"}]
       19 LOADN                            R8 3
       20 SETTABLEKS                       R8 R7 K3 ["retryCount"]
       22 CALL                             R5 2 1
       23 GETTABLEKS                       R6 R5 K5 ["success"]
       25 JUMPIF                           R6 ; [+6]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K6 ["throwError"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETTABLEKS                       R6 R5 K7 ["data"]
       34 RETURN                           R6 1
       35 LOADK                            R5 K8 ["%*/creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;userids=%*&maxPageSize=%*"]
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K9 ["APIS_URL"]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R1
       41 MOVE                             R10 R2
       42 MOVE                             R11 R3
       43 NAMECALL                         R5 R5 K1 ["format"]
       45 CALL                             R5 6 1
       46 MOVE                             R4 R5
       47 GETUPVAL                         R5 4
       48 MOVE                             R7 R4
       49 LOADNIL                          R8
       50 NAMECALL                         R5 R5 K10 ["get"]
       52 CALL                             R5 3 1
       53 GETUPVAL                         R6 4
       54 MOVE                             R8 R5
       55 LOADN                            R9 3
       56 LOADB                            R10 0
       57 NAMECALL                         R6 R6 K11 ["handleRetry"]
       59 CALL                             R6 4 1
       60 GETUPVAL                         R7 4
       61 MOVE                             R9 R6
       62 NAMECALL                         R7 R7 K12 ["parseJson"]
       64 CALL                             R7 2 1
       65 NAMECALL                         R7 R7 K13 ["await"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R7 K14 ["responseBody"]
       70 RETURN                           R8 1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_76:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_75]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K1 ["success"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["throwError"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
       18 GETTABLEKS                       R2 R1 K3 ["data"]
       20 JUMPIFEQKNIL                     R2 ; [+6]
       22 GETTABLEKS                       R3 R1 K3 ["data"]
       24 LENGTH                           R2 R3
       25 JUMPIFNOTEQKN                    R2 K4 [0] ; [+5]
       27 GETIMPORT                        R2 K6 [error]
       29 LOADK                            R3 K7 ["System prompt response contained no data"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R1 K3 ["data"]
       33 RETURN                           R2 1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_81:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_83:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_84:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_85:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_87:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_88:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_90:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_91:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_51]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_52]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 GETUPVAL                         R3 2
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+5]
       22 DUPCLOSURE                       R3 K9 [PROTO_53]
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       27 DUPCLOSURE                       R3 K11 [PROTO_54]
       28 SETTABLEKS                       R3 R2 K12 ["getEngineFeature"]
       30 GETIMPORT                        R3 K14 [pcall]
       32 NEWCLOSURE                       R4 P4
       33 CAPTURE                          VAL R0
       34 CALL                             R3 1 2
       35 JUMPIFNOT                        R3 ; [+2]
       36 MOVE                             R5 R4
       37 JUMPIF                           R5 ; [+1]
       38 LOADNIL                          R5
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K15 ["createStudioEventLogger"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R2 K16 ["EventLogger"]
       46 GETTABLEKS                       R6 R2 K17 ["http"]
       48 DUPCLOSURE                       R7 K18 [PROTO_56]
       49 CAPTURE                          UPVAL U6
       50 SETTABLEKS                       R7 R6 K19 ["createWebStreamClient"]
       52 GETTABLEKS                       R6 R2 K17 ["http"]
       54 DUPCLOSURE                       R7 K20 [PROTO_59]
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R7 R6 K21 ["requestAsync"]
       59 GETTABLEKS                       R6 R2 K17 ["http"]
       61 DUPCLOSURE                       R7 K22 [PROTO_61]
       62 CAPTURE                          UPVAL U8
       63 SETTABLEKS                       R7 R6 K23 ["openUrl"]
       65 GETTABLEKS                       R6 R2 K24 ["selection"]
       67 DUPCLOSURE                       R7 K25 [PROTO_62]
       68 CAPTURE                          UPVAL U9
       69 SETTABLEKS                       R7 R6 K26 ["get"]
       71 GETTABLEKS                       R6 R2 K24 ["selection"]
       73 DUPCLOSURE                       R7 K27 [PROTO_63]
       74 CAPTURE                          UPVAL U9
       75 SETTABLEKS                       R7 R6 K28 ["set"]
       77 DUPCLOSURE                       R6 K29 [PROTO_64]
       78 CAPTURE                          UPVAL U10
       79 SETTABLEKS                       R6 R2 K30 ["openScriptAsync"]
       81 GETTABLEKS                       R6 R2 K31 ["tools"]
       83 GETTABLEKS                       R6 R6 K32 ["marketplaceInsertion"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K0 ["Guest"]
       88 GETTABLEKS                       R7 R7 K33 ["LoadAssetHandlers"]
       90 GETTABLEKS                       R7 R7 K34 ["getRobloxScriptHandler"]
       92 GETIMPORT                        R8 K36 [game]
       94 CALL                             R7 1 1
       95 SETTABLEKS                       R7 R6 K37 ["loadAssetAsync"]
       97 GETUPVAL                         R6 11
       98 CALL                             R6 0 1
       99 JUMPIFNOT                        R6 ; [+52]
      100 GETTABLEKS                       R6 R2 K31 ["tools"]
      102 GETTABLEKS                       R6 R6 K38 ["materialGen"]
      104 GETUPVAL                         R7 12
      105 GETTABLEKS                       R7 R7 K39 ["create"]
      107 DUPTABLE                         R8 K43 [{"NotificationManager", "Networking", "Telemetry"}]
      108 GETUPVAL                         R10 13
      109 CALL                             R10 0 1
      110 JUMPIFNOT                        R10 ; [+9]
      111 NAMECALL                         R10 R1 K44 ["IsGuest"]
      113 CALL                             R10 1 1
      114 JUMPIFNOT                        R10 ; [+5]
      115 GETUPVAL                         R9 14
      116 GETTABLEKS                       R9 R9 K26 ["get"]
      118 CALL                             R9 0 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R9
      121 SETTABLEKS                       R9 R8 K40 ["NotificationManager"]
      123 SETTABLEKS                       R1 R8 K41 ["Networking"]
      125 GETUPVAL                         R9 5
      126 GETTABLEKS                       R9 R9 K45 ["makeStudioTelemetryEvents"]
      128 MOVE                             R10 R5
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R8 K42 ["Telemetry"]
      132 CALL                             R7 1 1
      133 GETTABLEKS                       R8 R7 K46 ["generateMaterialVariantsAsync"]
      135 SETTABLEKS                       R8 R6 K46 ["generateMaterialVariantsAsync"]
      137 GETTABLEKS                       R8 R7 K47 ["uploadMaterialsAsync"]
      139 SETTABLEKS                       R8 R6 K47 ["uploadMaterialsAsync"]
      141 GETUPVAL                         R8 13
      142 CALL                             R8 0 1
      143 JUMPIFNOT                        R8 ; [+28]
      144 GETTABLEKS                       R8 R1 K48 ["Destroying"]
      146 NEWCLOSURE                       R10 P11
      147 CAPTURE                          VAL R7
      148 NAMECALL                         R8 R8 K49 ["Once"]
      150 CALL                             R8 2 0
      151 JUMP                             ; [+20]
      152 GETTABLEKS                       R6 R2 K31 ["tools"]
      154 GETTABLEKS                       R6 R6 K38 ["materialGen"]
      156 GETUPVAL                         R7 15
      157 JUMPIFNOT                        R7 ; [+4]
      158 DUPCLOSURE                       R7 K50 [PROTO_66]
      159 CAPTURE                          UPVAL U15
      160 SETTABLEKS                       R7 R6 K46 ["generateMaterialVariantsAsync"]
      162 GETIMPORT                        R7 K14 [pcall]
      164 NEWCLOSURE                       R8 P13
      165 CAPTURE                          VAL R0
      166 CALL                             R7 1 2
      167 JUMPIFNOT                        R7 ; [+4]
      168 NEWCLOSURE                       R9 P14
      169 CAPTURE                          VAL R8
      170 SETTABLEKS                       R9 R6 K47 ["uploadMaterialsAsync"]
      172 GETUPVAL                         R6 16
      173 CALL                             R6 0 1
      174 JUMPIFNOT                        R6 ; [+22]
      175 GETTABLEKS                       R6 R2 K31 ["tools"]
      177 GETTABLEKS                       R6 R6 K51 ["meshGen"]
      179 DUPCLOSURE                       R7 K52 [PROTO_41]
      180 CAPTURE                          UPVAL U17
      181 CAPTURE                          UPVAL U18
      182 CAPTURE                          UPVAL U19
      183 SETTABLEKS                       R7 R6 K53 ["publishModelAsync"]
      185 GETUPVAL                         R7 0
      186 GETTABLEKS                       R7 R7 K0 ["Guest"]
      188 GETTABLEKS                       R7 R7 K33 ["LoadAssetHandlers"]
      190 GETTABLEKS                       R7 R7 K34 ["getRobloxScriptHandler"]
      192 GETIMPORT                        R8 K36 [game]
      194 CALL                             R7 1 1
      195 SETTABLEKS                       R7 R6 K37 ["loadAssetAsync"]
      197 GETUPVAL                         R6 20
      198 CALL                             R6 0 1
      199 JUMPIFNOT                        R6 ; [+25]
      200 GETUPVAL                         R6 21
      201 JUMPIFNOT                        R6 ; [+23]
      202 GETUPVAL                         R6 22
      203 JUMPIFNOT                        R6 ; [+21]
      204 GETTABLEKS                       R6 R2 K31 ["tools"]
      206 GETTABLEKS                       R6 R6 K54 ["animationGen"]
      208 GETUPVAL                         R7 0
      209 GETTABLEKS                       R7 R7 K55 ["Features"]
      211 GETTABLEKS                       R7 R7 K56 ["AnimationGen"]
      213 GETTABLEKS                       R7 R7 K57 ["AnimationGenConstants"]
      215 NEWCLOSURE                       R8 P16
      216 CAPTURE                          VAL R7
      217 CAPTURE                          UPVAL U21
      218 CAPTURE                          UPVAL U22
      219 CAPTURE                          UPVAL U23
      220 SETTABLEKS                       R8 R6 K58 ["generateAnimationAsync"]
      222 DUPCLOSURE                       R8 K59 [PROTO_71]
      223 SETTABLEKS                       R8 R6 K60 ["publishAnimationAsync"]
      225 GETTABLEKS                       R6 R2 K31 ["tools"]
      227 GETTABLEKS                       R6 R6 K61 ["uploadImage"]
      229 DUPCLOSURE                       R7 K62 [PROTO_72]
      230 CAPTURE                          UPVAL U24
      231 SETTABLEKS                       R7 R6 K63 ["publishAssetAsync"]
      233 DUPCLOSURE                       R7 K64 [PROTO_74]
      234 CAPTURE                          UPVAL U25
      235 CAPTURE                          UPVAL U18
      236 CAPTURE                          UPVAL U26
      237 CAPTURE                          UPVAL U1
      238 CAPTURE                          UPVAL U27
      239 SETTABLEKS                       R7 R6 K65 ["searchAssetAsync"]
      241 GETUPVAL                         R6 28
      242 CALL                             R6 0 1
      243 JUMPIFNOT                        R6 ; [+4]
      244 DUPCLOSURE                       R6 K66 [PROTO_76]
      245 CAPTURE                          UPVAL U17
      246 SETTABLEKS                       R6 R2 K67 ["hasInternalPermission"]
      248 DUPCLOSURE                       R6 K68 [PROTO_78]
      249 CAPTURE                          UPVAL U18
      250 CAPTURE                          UPVAL U29
      251 SETTABLEKS                       R6 R2 K69 ["fetchSystemPromptAsync"]
      253 GETUPVAL                         R6 30
      254 MOVE                             R7 R2
      255 MOVE                             R8 R0
      256 CALL                             R6 2 0
      257 GETUPVAL                         R6 31
      258 MOVE                             R7 R2
      259 MOVE                             R8 R0
      260 CALL                             R6 2 0
      261 GETUPVAL                         R6 32
      262 CALL                             R6 0 0
      263 DUPCLOSURE                       R6 K70 [PROTO_79]
      264 CAPTURE                          UPVAL U17
      265 SETTABLEKS                       R6 R2 K71 ["copyToClipboard"]
      267 DUPCLOSURE                       R6 K72 [PROTO_80]
      268 CAPTURE                          UPVAL U17
      269 SETTABLEKS                       R6 R2 K73 ["getClassIcon"]
      271 GETUPVAL                         R6 0
      272 GETTABLEKS                       R6 R6 K0 ["Guest"]
      274 GETTABLEKS                       R6 R6 K74 ["RecordingHandlers"]
      276 GETTABLEKS                       R6 R6 K75 ["getPluginHandlers"]
      278 GETUPVAL                         R7 33
      279 CALL                             R6 1 1
      280 GETTABLEKS                       R7 R6 K76 ["startRecording"]
      282 SETTABLEKS                       R7 R2 K76 ["startRecording"]
      284 GETTABLEKS                       R7 R6 K77 ["endRecording"]
      286 SETTABLEKS                       R7 R2 K77 ["endRecording"]
      288 NEWCLOSURE                       R7 P24
      289 CAPTURE                          VAL R1
      290 SETTABLEKS                       R7 R2 K78 ["getNetworking"]
      292 DUPCLOSURE                       R7 K79 [PROTO_82]
      293 CAPTURE                          UPVAL U10
      294 SETTABLEKS                       R7 R2 K80 ["getScriptSource"]
      296 DUPCLOSURE                       R7 K81 [PROTO_84]
      297 CAPTURE                          UPVAL U17
      298 SETTABLEKS                       R7 R2 K82 ["getUserId"]
      300 DUPCLOSURE                       R7 K83 [PROTO_85]
      301 CAPTURE                          UPVAL U34
      302 SETTABLEKS                       R7 R2 K84 ["startStopPlayAsync"]
      304 DUPCLOSURE                       R7 K85 [PROTO_87]
      305 CAPTURE                          UPVAL U35
      306 SETTABLEKS                       R7 R2 K86 ["subscribeOutput"]
      308 DUPCLOSURE                       R7 K87 [PROTO_88]
      309 CAPTURE                          UPVAL U36
      310 SETTABLEKS                       R7 R2 K88 ["subscribeGameLoaded"]
      312 DUPCLOSURE                       R7 K89 [PROTO_89]
      313 CAPTURE                          UPVAL U37
      314 SETTABLEKS                       R7 R2 K90 ["subscribeGameStopped"]
      316 DUPCLOSURE                       R7 K91 [PROTO_90]
      317 CAPTURE                          UPVAL U38
      318 SETTABLEKS                       R7 R2 K92 ["getStudioPlayState"]
      320 GETUPVAL                         R7 16
      321 CALL                             R7 0 1
      322 JUMPIFNOT                        R7 ; [+5]
      323 GETUPVAL                         R7 39
      324 MOVE                             R8 R0
      325 MOVE                             R9 R1
      326 MOVE                             R10 R2
      327 CALL                             R7 3 0
      328 GETIMPORT                        R7 K14 [pcall]
      330 NEWCLOSURE                       R8 P32
      331 CAPTURE                          VAL R0
      332 CALL                             R7 1 2
      333 JUMPIFNOT                        R7 ; [+3]
      334 JUMPIFNOT                        R8 ; [+2]
      335 SETTABLEKS                       R8 R2 K93 ["assetAccessController"]
      337 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 GETIMPORT                        R2 K7 [game]
       11 GETTABLEKS                       R2 R2 K8 ["GetService"]
       13 GETIMPORT                        R3 K7 [game]
       15 LOADK                            R4 K9 ["AssetImportService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K5 [pcall]
       19 GETIMPORT                        R4 K7 [game]
       21 GETTABLEKS                       R4 R4 K8 ["GetService"]
       23 GETIMPORT                        R5 K7 [game]
       25 LOADK                            R6 K10 ["GenerationService"]
       26 CALL                             R3 3 2
       27 GETIMPORT                        R5 K5 [pcall]
       29 GETIMPORT                        R6 K7 [game]
       31 GETTABLEKS                       R6 R6 K8 ["GetService"]
       33 GETIMPORT                        R7 K7 [game]
       35 LOADK                            R8 K11 ["MaterialGenerationService"]
       36 CALL                             R5 3 2
       37 GETIMPORT                        R7 K5 [pcall]
       39 GETIMPORT                        R8 K7 [game]
       41 GETTABLEKS                       R8 R8 K8 ["GetService"]
       43 GETIMPORT                        R9 K7 [game]
       45 LOADK                            R10 K12 ["ScriptEditorService"]
       46 CALL                             R7 3 2
       47 GETIMPORT                        R9 K7 [game]
       49 LOADK                            R11 K13 ["BrowserService"]
       50 NAMECALL                         R9 R9 K8 ["GetService"]
       52 CALL                             R9 2 1
       53 GETIMPORT                        R10 K7 [game]
       55 LOADK                            R12 K14 ["ChangeHistoryService"]
       56 NAMECALL                         R10 R10 K8 ["GetService"]
       58 CALL                             R10 2 1
       59 GETIMPORT                        R11 K7 [game]
       61 LOADK                            R13 K15 ["HttpService"]
       62 NAMECALL                         R11 R11 K8 ["GetService"]
       64 CALL                             R11 2 1
       65 GETIMPORT                        R12 K7 [game]
       67 LOADK                            R14 K16 ["LogService"]
       68 NAMECALL                         R12 R12 K8 ["GetService"]
       70 CALL                             R12 2 1
       71 GETIMPORT                        R13 K7 [game]
       73 LOADK                            R15 K17 ["PlacesService"]
       74 NAMECALL                         R13 R13 K8 ["GetService"]
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K7 [game]
       79 LOADK                            R16 K18 ["PublishService"]
       80 NAMECALL                         R14 R14 K8 ["GetService"]
       82 CALL                             R14 2 1
       83 GETIMPORT                        R15 K7 [game]
       85 LOADK                            R17 K19 ["Selection"]
       86 NAMECALL                         R15 R15 K8 ["GetService"]
       88 CALL                             R15 2 1
       89 GETIMPORT                        R16 K7 [game]
       91 LOADK                            R18 K20 ["StudioService"]
       92 NAMECALL                         R16 R16 K8 ["GetService"]
       94 CALL                             R16 2 1
       95 GETIMPORT                        R17 K7 [game]
       97 LOADK                            R19 K21 ["UniqueIdLookupService"]
       98 NAMECALL                         R17 R17 K8 ["GetService"]
      100 CALL                             R17 2 1
      101 GETIMPORT                        R18 K23 [require]
      103 GETTABLEKS                       R19 R0 K24 ["Packages"]
      105 GETTABLEKS                       R19 R19 K25 ["AssistantUI"]
      107 CALL                             R18 1 1
      108 GETIMPORT                        R19 K23 [require]
      110 GETTABLEKS                       R20 R0 K26 ["Generated"]
      112 GETTABLEKS                       R20 R20 K27 ["OpenAPI"]
      114 GETTABLEKS                       R20 R20 K28 ["CreatorInventoryApi"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K23 [require]
      119 GETTABLEKS                       R21 R0 K26 ["Generated"]
      121 GETTABLEKS                       R21 R21 K27 ["OpenAPI"]
      123 GETTABLEKS                       R21 R21 K29 ["CubeGenerationGateway"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K23 [require]
      128 GETTABLEKS                       R22 R0 K24 ["Packages"]
      130 GETTABLEKS                       R22 R22 K30 ["DMNetworking"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K23 [require]
      135 GETTABLEKS                       R23 R0 K24 ["Packages"]
      137 GETTABLEKS                       R23 R23 K31 ["Framework"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K23 [require]
      142 GETTABLEKS                       R24 R0 K32 ["Src"]
      144 GETTABLEKS                       R24 R24 K33 ["Util"]
      146 GETTABLEKS                       R24 R24 K34 ["GameLoadedNotifier"]
      148 CALL                             R23 1 1
      149 GETIMPORT                        R24 K23 [require]
      151 GETTABLEKS                       R25 R0 K32 ["Src"]
      153 GETTABLEKS                       R25 R25 K33 ["Util"]
      155 GETTABLEKS                       R25 R25 K35 ["GameStoppedNotifier"]
      157 CALL                             R24 1 1
      158 GETIMPORT                        R25 K23 [require]
      160 GETTABLEKS                       R26 R0 K24 ["Packages"]
      162 GETTABLEKS                       R26 R26 K36 ["HttpWrapper"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K23 [require]
      167 GETTABLEKS                       R27 R0 K24 ["Packages"]
      169 GETTABLEKS                       R27 R27 K37 ["ModelContextProtocol"]
      171 CALL                             R26 1 1
      172 GETIMPORT                        R27 K23 [require]
      174 GETTABLEKS                       R28 R0 K32 ["Src"]
      176 GETTABLEKS                       R28 R28 K33 ["Util"]
      178 GETTABLEKS                       R28 R28 K38 ["NotificationManagerStore"]
      180 CALL                             R27 1 1
      181 GETIMPORT                        R28 K23 [require]
      183 GETTABLEKS                       R29 R0 K24 ["Packages"]
      185 GETTABLEKS                       R29 R29 K39 ["Promise"]
      187 CALL                             R28 1 1
      188 GETIMPORT                        R29 K23 [require]
      190 GETTABLEKS                       R30 R0 K32 ["Src"]
      192 GETTABLEKS                       R30 R30 K33 ["Util"]
      194 GETTABLEKS                       R30 R30 K40 ["StudioEndpointUtil"]
      196 CALL                             R29 1 1
      197 GETIMPORT                        R30 K23 [require]
      199 GETTABLEKS                       R31 R0 K32 ["Src"]
      201 GETTABLEKS                       R31 R31 K41 ["Host"]
      203 GETTABLEKS                       R31 R31 K42 ["Resources"]
      205 GETTABLEKS                       R31 R31 K43 ["StudioEventLogger"]
      207 CALL                             R30 1 1
      208 GETIMPORT                        R31 K23 [require]
      210 GETTABLEKS                       R32 R0 K32 ["Src"]
      212 GETTABLEKS                       R32 R32 K33 ["Util"]
      214 GETTABLEKS                       R32 R32 K44 ["StudioMaterialGenerator"]
      216 CALL                             R31 1 1
      217 GETIMPORT                        R32 K23 [require]
      219 GETTABLEKS                       R33 R0 K32 ["Src"]
      221 GETTABLEKS                       R33 R33 K33 ["Util"]
      223 GETTABLEKS                       R33 R33 K45 ["StudioNetworking"]
      225 CALL                             R32 1 1
      226 GETIMPORT                        R33 K23 [require]
      228 GETTABLEKS                       R34 R0 K32 ["Src"]
      230 GETTABLEKS                       R34 R34 K33 ["Util"]
      232 GETTABLEKS                       R34 R34 K46 ["StudioState"]
      234 CALL                             R33 1 1
      235 GETIMPORT                        R34 K23 [require]
      237 GETTABLEKS                       R35 R0 K32 ["Src"]
      239 GETTABLEKS                       R35 R35 K33 ["Util"]
      241 GETTABLEKS                       R35 R35 K47 ["createStudioInstancePicker"]
      243 CALL                             R34 1 1
      244 GETIMPORT                        R35 K23 [require]
      246 GETTABLEKS                       R36 R0 K26 ["Generated"]
      248 GETTABLEKS                       R36 R36 K27 ["OpenAPI"]
      250 GETTABLEKS                       R36 R36 K48 ["McpAssistantApi"]
      252 CALL                             R35 1 1
      253 GETIMPORT                        R36 K23 [require]
      255 GETTABLEKS                       R37 R0 K32 ["Src"]
      257 GETTABLEKS                       R37 R37 K33 ["Util"]
      259 GETTABLEKS                       R37 R37 K49 ["ExperimentFeature"]
      261 CALL                             R36 1 1
      262 GETTABLEKS                       R37 R18 K50 ["Flags"]
      264 GETTABLEKS                       R37 R37 K51 ["Shared"]
      266 GETTABLEKS                       R37 R37 K52 ["FFlagAssistantContextCompactionExp"]
      268 GETIMPORT                        R38 K23 [require]
      270 GETTABLEKS                       R39 R0 K32 ["Src"]
      272 GETTABLEKS                       R39 R39 K50 ["Flags"]
      274 GETTABLEKS                       R39 R39 K53 ["FFlagAssistantLuaMaterialGenerator"]
      276 CALL                             R38 1 1
      277 GETIMPORT                        R39 K23 [require]
      279 GETTABLEKS                       R40 R0 K32 ["Src"]
      281 GETTABLEKS                       R40 R40 K50 ["Flags"]
      283 GETTABLEKS                       R40 R40 K54 ["FFlagAssistantNotificationManager"]
      285 CALL                             R39 1 1
      286 GETIMPORT                        R40 K23 [require]
      288 GETTABLEKS                       R41 R0 K32 ["Src"]
      290 GETTABLEKS                       R41 R41 K50 ["Flags"]
      292 GETTABLEKS                       R41 R41 K55 ["FFlagAssistantUseNewOpenAPIClients"]
      294 CALL                             R40 1 1
      295 GETIMPORT                        R41 K23 [require]
      297 GETTABLEKS                       R42 R0 K32 ["Src"]
      299 GETTABLEKS                       R42 R42 K50 ["Flags"]
      301 GETTABLEKS                       R42 R42 K56 ["FFlagGetOrCreateUniqueIdMethod"]
      303 CALL                             R41 1 1
      304 GETIMPORT                        R42 K23 [require]
      306 GETTABLEKS                       R43 R0 K32 ["Src"]
      308 GETTABLEKS                       R43 R43 K50 ["Flags"]
      310 GETTABLEKS                       R43 R43 K57 ["FStringAssistantDisableContextCompactionKey"]
      312 CALL                             R42 1 1
      313 GETTABLEKS                       R43 R18 K50 ["Flags"]
      315 GETTABLEKS                       R43 R43 K51 ["Shared"]
      317 GETTABLEKS                       R43 R43 K58 ["FFlagAssistantPrivilegedCodeExecution"]
      319 GETTABLEKS                       R44 R18 K50 ["Flags"]
      321 GETTABLEKS                       R44 R44 K51 ["Shared"]
      323 GETTABLEKS                       R44 R44 K59 ["FFlagAssistantAnimationGenTool"]
      325 GETTABLEKS                       R45 R18 K50 ["Flags"]
      327 GETTABLEKS                       R45 R45 K51 ["Shared"]
      329 GETTABLEKS                       R45 R45 K60 ["FFlagAssistantUseNewMeshGenTool"]
      331 GETTABLEKS                       R46 R18 K50 ["Flags"]
      333 GETTABLEKS                       R46 R46 K51 ["Shared"]
      335 GETTABLEKS                       R46 R46 K61 ["FFlagDebugLogAssistantUI"]
      337 GETTABLEKS                       R47 R18 K50 ["Flags"]
      339 GETTABLEKS                       R47 R47 K51 ["Shared"]
      341 GETTABLEKS                       R47 R47 K62 ["FFlagPrimGenEnableStatusLog"]
      343 GETTABLEKS                       R48 R22 K63 ["Http"]
      345 GETTABLEKS                       R48 R48 K64 ["Networking"]
      347 GETTABLEKS                       R49 R48 K65 ["new"]
      349 DUPTABLE                         R50 K68 [{"isInternal", "loggingLevel"}]
      350 LOADB                            R51 1
      351 SETTABLEKS                       R51 R50 K66 ["isInternal"]
      353 MOVE                             R52 R46
      354 CALL                             R52 0 1
      355 JUMPIFNOT                        R52 ; [+2]
      356 LOADN                            R51 4
      357 JUMP                             ; [+1]
      358 LOADN                            R51 0
      359 SETTABLEKS                       R51 R50 K67 ["loggingLevel"]
      361 CALL                             R49 1 1
      362 GETTABLEKS                       R50 R22 K69 ["Url"]
      364 GETTABLEKS                       R51 R50 K65 ["new"]
      366 LOADNIL                          R52
      367 CALL                             R51 1 1
      368 DUPCLOSURE                       R52 K70 [PROTO_1]
      369 CAPTURE                          VAL R0
      370 CAPTURE                          VAL R25
      371 CAPTURE                          VAL R26
      372 DUPCLOSURE                       R53 K71 [PROTO_29]
      373 CAPTURE                          VAL R47
      374 DUPCLOSURE                       R54 K72 [PROTO_39]
      375 CAPTURE                          VAL R8
      376 CAPTURE                          VAL R43
      377 CAPTURE                          VAL R18
      378 DUPCLOSURE                       R55 K73 [PROTO_42]
      379 CAPTURE                          VAL R16
      380 CAPTURE                          VAL R29
      381 CAPTURE                          VAL R20
      382 CAPTURE                          VAL R18
      383 DUPCLOSURE                       R56 K74 [PROTO_50]
      384 CAPTURE                          VAL R34
      385 CAPTURE                          VAL R41
      386 CAPTURE                          VAL R17
      387 DUPCLOSURE                       R57 K75 [PROTO_92]
      388 CAPTURE                          VAL R18
      389 CAPTURE                          VAL R51
      390 CAPTURE                          VAL R37
      391 CAPTURE                          VAL R36
      392 CAPTURE                          VAL R42
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R9
      397 CAPTURE                          VAL R15
      398 CAPTURE                          VAL R8
      399 CAPTURE                          VAL R38
      400 CAPTURE                          VAL R31
      401 CAPTURE                          VAL R39
      402 CAPTURE                          VAL R27
      403 CAPTURE                          VAL R6
      404 CAPTURE                          VAL R45
      405 CAPTURE                          VAL R16
      406 CAPTURE                          VAL R29
      407 CAPTURE                          VAL R20
      408 CAPTURE                          VAL R44
      409 CAPTURE                          VAL R4
      410 CAPTURE                          VAL R2
      411 CAPTURE                          VAL R46
      412 CAPTURE                          VAL R14
      413 CAPTURE                          VAL R40
      414 CAPTURE                          VAL R19
      415 CAPTURE                          VAL R49
      416 CAPTURE                          VAL R43
      417 CAPTURE                          VAL R35
      418 CAPTURE                          VAL R53
      419 CAPTURE                          VAL R54
      420 CAPTURE                          VAL R52
      421 CAPTURE                          VAL R10
      422 CAPTURE                          VAL R13
      423 CAPTURE                          VAL R12
      424 CAPTURE                          VAL R23
      425 CAPTURE                          VAL R24
      426 CAPTURE                          VAL R33
      427 CAPTURE                          VAL R56
      428 RETURN                           R57 1
