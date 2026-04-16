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
        2 NAMECALL                         R1 R1 K0 ["GetHistoryAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetHistoryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

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
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_22:
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
       49 SETTABLEKS                       R4 R0 K13 ["getHistoryAsync"]
       51 NEWCLOSURE                       R4 P10
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R4 R0 K14 ["setHistoryAsync"]
       55 NEWCLOSURE                       R4 P11
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R4 R0 K15 ["getSecureSettingsAsync"]
       59 NEWCLOSURE                       R4 P12
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R4 R0 K16 ["setSecureSettingsAsync"]
       63 NEWCLOSURE                       R4 P13
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R4 R0 K17 ["base64EncodeAsync"]
       67 NEWCLOSURE                       R4 P14
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R4 R0 K18 ["generatePKCEAsync"]
       71 NEWCLOSURE                       R4 P15
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R4 R0 K19 ["startMCPAuthAsync"]
       75 GETTABLEKS                       R4 R0 K20 ["json"]
       77 NEWCLOSURE                       R5 P16
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R5 R4 K21 ["encodeAsync"]
       82 GETTABLEKS                       R4 R0 K20 ["json"]
       84 NEWCLOSURE                       R5 P17
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R5 R4 K22 ["decodeAsync"]
       88 NEWCLOSURE                       R4 P18
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R4 R0 K23 ["setupMCPServerAsync"]
       92 NEWCLOSURE                       R4 P19
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R4 R0 K24 ["openFileDialogAsync"]
       96 NEWCLOSURE                       R4 P20
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R4 R0 K25 ["importFileBinaryAsync"]
      100 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_29:
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

PROTO_30:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_29]
       36 SETTABLEKS                       R5 R4 K9 ["applyScriptSourceDirectly"]
       38 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R1 K1 ["postUploadAssetAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R3 K4 [game]
       10 GETTABLEKS                       R2 R3 K5 ["GameId"]
       12 LOADN                            R4 0
       13 JUMPIFNOTLT                      R4 R2 ; [+5]
       15 DUPTABLE                         R3 K7 [{"universeId"}]
       16 SETTABLEKS                       R2 R3 K6 ["universeId"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K8 ["callWithOptions"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 0
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R4 K9 ["success"]
       33 JUMPIF                           R5 ; [+6]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K10 ["throwError"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 -1
       39 RETURN                           R5 -1
       40 GETTABLEKS                       R6 R4 K11 ["data"]
       42 GETTABLEKS                       R5 R6 K12 ["assetId"]
       44 FASTCALL2K                       ASSERT R5 K13 ; [+5]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K13 ["Expected assetId in response from postUploadAssetAsync"]
       48 GETIMPORT                        R6 K15 [assert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R7 R4 K11 ["data"]
       53 GETTABLEKS                       R6 R7 K16 ["generationId"]
       55 FASTCALL2K                       ASSERT R6 K17 ; [+5]
       57 MOVE                             R8 R6
       58 LOADK                            R9 K17 ["Expected generationId in response from postUploadAssetAsync"]
       59 GETIMPORT                        R7 K15 [assert]
       61 CALL                             R7 2 0
       62 DUPTABLE                         R7 K18 [{"assetId", "generationId"}]
       63 SETTABLEKS                       R5 R7 K12 ["assetId"]
       65 SETTABLEKS                       R6 R7 K16 ["generationId"]
       67 RETURN                           R7 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R2 K1 ["meshGen"]
        4 DUPCLOSURE                       R2 K2 [PROTO_32]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 SETTABLEKS                       R2 R1 K3 ["publishModelAsync"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K4 ["Guest"]
       13 GETTABLEKS                       R3 R4 K5 ["LoadAssetHandlers"]
       15 GETTABLEKS                       R2 R3 K6 ["getRobloxScriptHandler"]
       17 GETIMPORT                        R3 K8 [game]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K9 ["loadAssetAsync"]
       22 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_41:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_35]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_36]
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

PROTO_42:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_43:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_44:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_59:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["InternalGenerateMeshAsync"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_60:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CreatorInventoryApi"]
        3 GETTABLEKS                       R0 R1 K1 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_62:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+32]
        3 LOADK                            R5 K0 ["assetTypes=%*;userids=%*"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 NAMECALL                         R5 R5 K1 ["format"]
        8 CALL                             R5 3 1
        9 MOVE                             R4 R5
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["callWithOptions"]
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
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K6 ["throwError"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETTABLEKS                       R6 R5 K7 ["data"]
       34 RETURN                           R6 1
       35 LOADK                            R5 K8 ["%*/creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;userids=%*&maxPageSize=%*"]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K9 ["APIS_URL"]
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_65:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_67:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_68:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_69:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_73:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_75:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Guest"]
        3 GETTABLEKS                       R3 R4 K1 ["Environment"]
        5 GETTABLEKS                       R2 R3 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_42]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_43]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_44]
       20 SETTABLEKS                       R3 R2 K10 ["getEngineFeature"]
       22 GETIMPORT                        R3 K12 [pcall]
       24 NEWCLOSURE                       R4 P3
       25 CAPTURE                          VAL R0
       26 CALL                             R3 1 2
       27 JUMPIFNOT                        R3 ; [+2]
       28 MOVE                             R5 R4
       29 JUMPIF                           R5 ; [+1]
       30 LOADNIL                          R5
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K13 ["createStudioEventLogger"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R2 K14 ["EventLogger"]
       38 GETTABLEKS                       R6 R2 K15 ["http"]
       40 DUPCLOSURE                       R7 K16 [PROTO_46]
       41 CAPTURE                          UPVAL U3
       42 SETTABLEKS                       R7 R6 K17 ["createWebStreamClient"]
       44 GETTABLEKS                       R6 R2 K15 ["http"]
       46 DUPCLOSURE                       R7 K18 [PROTO_49]
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 SETTABLEKS                       R7 R6 K19 ["requestAsync"]
       51 GETTABLEKS                       R6 R2 K15 ["http"]
       53 DUPCLOSURE                       R7 K20 [PROTO_51]
       54 CAPTURE                          UPVAL U5
       55 SETTABLEKS                       R7 R6 K21 ["openUrl"]
       57 GETTABLEKS                       R6 R2 K22 ["selection"]
       59 DUPCLOSURE                       R7 K23 [PROTO_52]
       60 CAPTURE                          UPVAL U6
       61 SETTABLEKS                       R7 R6 K24 ["get"]
       63 GETTABLEKS                       R6 R2 K22 ["selection"]
       65 DUPCLOSURE                       R7 K25 [PROTO_53]
       66 CAPTURE                          UPVAL U6
       67 SETTABLEKS                       R7 R6 K26 ["set"]
       69 DUPCLOSURE                       R6 K27 [PROTO_54]
       70 CAPTURE                          UPVAL U7
       71 SETTABLEKS                       R6 R2 K28 ["openScriptAsync"]
       73 GETTABLEKS                       R7 R2 K29 ["tools"]
       75 GETTABLEKS                       R6 R7 K30 ["marketplaceInsertion"]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R9 R10 K0 ["Guest"]
       80 GETTABLEKS                       R8 R9 K31 ["LoadAssetHandlers"]
       82 GETTABLEKS                       R7 R8 K32 ["getRobloxScriptHandler"]
       84 GETIMPORT                        R8 K34 [game]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K35 ["loadAssetAsync"]
       89 GETUPVAL                         R6 8
       90 CALL                             R6 0 1
       91 JUMPIFNOT                        R6 ; [+52]
       92 GETTABLEKS                       R7 R2 K29 ["tools"]
       94 GETTABLEKS                       R6 R7 K36 ["materialGen"]
       96 GETUPVAL                         R8 9
       97 GETTABLEKS                       R7 R8 K37 ["create"]
       99 DUPTABLE                         R8 K41 [{"NotificationManager", "Networking", "Telemetry"}]
      100 GETUPVAL                         R10 10
      101 CALL                             R10 0 1
      102 JUMPIFNOT                        R10 ; [+9]
      103 NAMECALL                         R10 R1 K42 ["IsGuest"]
      105 CALL                             R10 1 1
      106 JUMPIFNOT                        R10 ; [+5]
      107 GETUPVAL                         R10 11
      108 GETTABLEKS                       R9 R10 K24 ["get"]
      110 CALL                             R9 0 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R9
      113 SETTABLEKS                       R9 R8 K38 ["NotificationManager"]
      115 SETTABLEKS                       R1 R8 K39 ["Networking"]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R9 R10 K43 ["makeStudioTelemetryEvents"]
      120 MOVE                             R10 R5
      121 CALL                             R9 1 1
      122 SETTABLEKS                       R9 R8 K40 ["Telemetry"]
      124 CALL                             R7 1 1
      125 GETTABLEKS                       R8 R7 K44 ["generateMaterialVariantsAsync"]
      127 SETTABLEKS                       R8 R6 K44 ["generateMaterialVariantsAsync"]
      129 GETTABLEKS                       R8 R7 K45 ["uploadMaterialsAsync"]
      131 SETTABLEKS                       R8 R6 K45 ["uploadMaterialsAsync"]
      133 GETUPVAL                         R8 10
      134 CALL                             R8 0 1
      135 JUMPIFNOT                        R8 ; [+28]
      136 GETTABLEKS                       R8 R1 K46 ["Destroying"]
      138 NEWCLOSURE                       R10 P10
      139 CAPTURE                          VAL R7
      140 NAMECALL                         R8 R8 K47 ["Once"]
      142 CALL                             R8 2 0
      143 JUMP                             ; [+20]
      144 GETTABLEKS                       R7 R2 K29 ["tools"]
      146 GETTABLEKS                       R6 R7 K36 ["materialGen"]
      148 GETUPVAL                         R7 12
      149 JUMPIFNOT                        R7 ; [+4]
      150 DUPCLOSURE                       R7 K48 [PROTO_56]
      151 CAPTURE                          UPVAL U12
      152 SETTABLEKS                       R7 R6 K44 ["generateMaterialVariantsAsync"]
      154 GETIMPORT                        R7 K12 [pcall]
      156 NEWCLOSURE                       R8 P12
      157 CAPTURE                          VAL R0
      158 CALL                             R7 1 2
      159 JUMPIFNOT                        R7 ; [+4]
      160 NEWCLOSURE                       R9 P13
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R9 R6 K45 ["uploadMaterialsAsync"]
      164 GETUPVAL                         R6 13
      165 CALL                             R6 0 1
      166 JUMPIFNOT                        R6 ; [+23]
      167 GETTABLEKS                       R7 R2 K29 ["tools"]
      169 GETTABLEKS                       R6 R7 K49 ["meshGen"]
      171 DUPCLOSURE                       R7 K50 [PROTO_32]
      172 CAPTURE                          UPVAL U14
      173 CAPTURE                          UPVAL U15
      174 CAPTURE                          UPVAL U16
      175 SETTABLEKS                       R7 R6 K51 ["publishModelAsync"]
      177 GETUPVAL                         R10 0
      178 GETTABLEKS                       R9 R10 K0 ["Guest"]
      180 GETTABLEKS                       R8 R9 K31 ["LoadAssetHandlers"]
      182 GETTABLEKS                       R7 R8 K32 ["getRobloxScriptHandler"]
      184 GETIMPORT                        R8 K34 [game]
      186 CALL                             R7 1 1
      187 SETTABLEKS                       R7 R6 K35 ["loadAssetAsync"]
      189 JUMP                             ; [+8]
      190 GETTABLEKS                       R7 R2 K29 ["tools"]
      192 GETTABLEKS                       R6 R7 K52 ["DEPRECATED_meshGen"]
      194 DUPCLOSURE                       R7 K53 [PROTO_59]
      195 CAPTURE                          UPVAL U17
      196 SETTABLEKS                       R7 R6 K54 ["generateMeshAsync"]
      198 GETTABLEKS                       R7 R2 K29 ["tools"]
      200 GETTABLEKS                       R6 R7 K55 ["uploadImage"]
      202 DUPCLOSURE                       R7 K56 [PROTO_60]
      203 CAPTURE                          UPVAL U18
      204 SETTABLEKS                       R7 R6 K57 ["publishAssetAsync"]
      206 DUPCLOSURE                       R7 K58 [PROTO_62]
      207 CAPTURE                          UPVAL U19
      208 CAPTURE                          UPVAL U15
      209 CAPTURE                          UPVAL U20
      210 CAPTURE                          UPVAL U1
      211 CAPTURE                          UPVAL U21
      212 SETTABLEKS                       R7 R6 K59 ["searchAssetAsync"]
      214 GETUPVAL                         R6 22
      215 MOVE                             R7 R2
      216 MOVE                             R8 R0
      217 CALL                             R6 2 0
      218 GETUPVAL                         R6 23
      219 MOVE                             R7 R2
      220 MOVE                             R8 R0
      221 CALL                             R6 2 0
      222 DUPCLOSURE                       R6 K60 [PROTO_63]
      223 CAPTURE                          UPVAL U14
      224 SETTABLEKS                       R6 R2 K61 ["copyToClipboard"]
      226 DUPCLOSURE                       R6 K62 [PROTO_64]
      227 CAPTURE                          UPVAL U14
      228 SETTABLEKS                       R6 R2 K63 ["getClassIcon"]
      230 GETUPVAL                         R9 0
      231 GETTABLEKS                       R8 R9 K0 ["Guest"]
      233 GETTABLEKS                       R7 R8 K64 ["RecordingHandlers"]
      235 GETTABLEKS                       R6 R7 K65 ["getPluginHandlers"]
      237 GETUPVAL                         R7 24
      238 CALL                             R6 1 1
      239 GETTABLEKS                       R7 R6 K66 ["startRecording"]
      241 SETTABLEKS                       R7 R2 K66 ["startRecording"]
      243 GETTABLEKS                       R7 R6 K67 ["endRecording"]
      245 SETTABLEKS                       R7 R2 K67 ["endRecording"]
      247 NEWCLOSURE                       R7 P20
      248 CAPTURE                          VAL R1
      249 SETTABLEKS                       R7 R2 K68 ["getNetworking"]
      251 DUPCLOSURE                       R7 K69 [PROTO_66]
      252 CAPTURE                          UPVAL U7
      253 SETTABLEKS                       R7 R2 K70 ["getScriptSource"]
      255 DUPCLOSURE                       R7 K71 [PROTO_68]
      256 CAPTURE                          UPVAL U14
      257 SETTABLEKS                       R7 R2 K72 ["getUserId"]
      259 DUPCLOSURE                       R7 K73 [PROTO_69]
      260 CAPTURE                          UPVAL U25
      261 SETTABLEKS                       R7 R2 K74 ["startStopPlayAsync"]
      263 DUPCLOSURE                       R7 K75 [PROTO_71]
      264 CAPTURE                          UPVAL U26
      265 SETTABLEKS                       R7 R2 K76 ["subscribeOutput"]
      267 DUPCLOSURE                       R7 K77 [PROTO_72]
      268 CAPTURE                          UPVAL U27
      269 SETTABLEKS                       R7 R2 K78 ["subscribeGameLoaded"]
      271 DUPCLOSURE                       R7 K79 [PROTO_73]
      272 CAPTURE                          UPVAL U28
      273 SETTABLEKS                       R7 R2 K80 ["subscribeGameStopped"]
      275 DUPCLOSURE                       R7 K81 [PROTO_74]
      276 CAPTURE                          UPVAL U29
      277 SETTABLEKS                       R7 R2 K82 ["getStudioPlayState"]
      279 GETUPVAL                         R7 13
      280 CALL                             R7 0 1
      281 JUMPIFNOT                        R7 ; [+5]
      282 GETUPVAL                         R7 30
      283 MOVE                             R8 R0
      284 MOVE                             R9 R1
      285 MOVE                             R10 R2
      286 CALL                             R7 3 0
      287 RETURN                           R2 1

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
       96 GETTABLEKS                       R16 R17 K27 ["CreatorInventoryApi"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K22 [require]
      101 GETTABLEKS                       R19 R0 K25 ["Generated"]
      103 GETTABLEKS                       R18 R19 K26 ["OpenAPI"]
      105 GETTABLEKS                       R17 R18 K28 ["CubeGenerationGateway"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K22 [require]
      110 GETTABLEKS                       R19 R0 K23 ["Packages"]
      112 GETTABLEKS                       R18 R19 K29 ["DMNetworking"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K22 [require]
      117 GETTABLEKS                       R20 R0 K23 ["Packages"]
      119 GETTABLEKS                       R19 R20 K30 ["Framework"]
      121 CALL                             R18 1 1
      122 GETIMPORT                        R19 K22 [require]
      124 GETTABLEKS                       R22 R0 K31 ["Src"]
      126 GETTABLEKS                       R21 R22 K32 ["Util"]
      128 GETTABLEKS                       R20 R21 K33 ["GameLoadedNotifier"]
      130 CALL                             R19 1 1
      131 GETIMPORT                        R20 K22 [require]
      133 GETTABLEKS                       R23 R0 K31 ["Src"]
      135 GETTABLEKS                       R22 R23 K32 ["Util"]
      137 GETTABLEKS                       R21 R22 K34 ["GameStoppedNotifier"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K22 [require]
      142 GETTABLEKS                       R24 R0 K31 ["Src"]
      144 GETTABLEKS                       R23 R24 K32 ["Util"]
      146 GETTABLEKS                       R22 R23 K35 ["NotificationManagerStore"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K22 [require]
      151 GETTABLEKS                       R24 R0 K23 ["Packages"]
      153 GETTABLEKS                       R23 R24 K36 ["Promise"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K22 [require]
      158 GETTABLEKS                       R26 R0 K31 ["Src"]
      160 GETTABLEKS                       R25 R26 K32 ["Util"]
      162 GETTABLEKS                       R24 R25 K37 ["StudioEndpointUtil"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K22 [require]
      167 GETTABLEKS                       R28 R0 K31 ["Src"]
      169 GETTABLEKS                       R27 R28 K38 ["Host"]
      171 GETTABLEKS                       R26 R27 K39 ["Resources"]
      173 GETTABLEKS                       R25 R26 K40 ["StudioEventLogger"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K22 [require]
      178 GETTABLEKS                       R28 R0 K31 ["Src"]
      180 GETTABLEKS                       R27 R28 K32 ["Util"]
      182 GETTABLEKS                       R26 R27 K41 ["StudioMaterialGenerator"]
      184 CALL                             R25 1 1
      185 GETIMPORT                        R26 K22 [require]
      187 GETTABLEKS                       R29 R0 K31 ["Src"]
      189 GETTABLEKS                       R28 R29 K32 ["Util"]
      191 GETTABLEKS                       R27 R28 K42 ["StudioNetworking"]
      193 CALL                             R26 1 1
      194 GETIMPORT                        R27 K22 [require]
      196 GETTABLEKS                       R30 R0 K31 ["Src"]
      198 GETTABLEKS                       R29 R30 K32 ["Util"]
      200 GETTABLEKS                       R28 R29 K43 ["StudioState"]
      202 CALL                             R27 1 1
      203 GETIMPORT                        R28 K22 [require]
      205 GETTABLEKS                       R31 R0 K31 ["Src"]
      207 GETTABLEKS                       R30 R31 K32 ["Util"]
      209 GETTABLEKS                       R29 R30 K44 ["createStudioInstancePicker"]
      211 CALL                             R28 1 1
      212 GETIMPORT                        R29 K22 [require]
      214 GETTABLEKS                       R32 R0 K31 ["Src"]
      216 GETTABLEKS                       R31 R32 K45 ["Flags"]
      218 GETTABLEKS                       R30 R31 K46 ["FFlagAssistantLuaMaterialGenerator"]
      220 CALL                             R29 1 1
      221 GETIMPORT                        R30 K22 [require]
      223 GETTABLEKS                       R33 R0 K31 ["Src"]
      225 GETTABLEKS                       R32 R33 K45 ["Flags"]
      227 GETTABLEKS                       R31 R32 K47 ["FFlagAssistantNotificationManager"]
      229 CALL                             R30 1 1
      230 GETIMPORT                        R31 K22 [require]
      232 GETTABLEKS                       R34 R0 K31 ["Src"]
      234 GETTABLEKS                       R33 R34 K45 ["Flags"]
      236 GETTABLEKS                       R32 R33 K48 ["FFlagAssistantUseNewOpenAPIClients"]
      238 CALL                             R31 1 1
      239 GETIMPORT                        R32 K22 [require]
      241 GETTABLEKS                       R35 R0 K31 ["Src"]
      243 GETTABLEKS                       R34 R35 K45 ["Flags"]
      245 GETTABLEKS                       R33 R34 K49 ["FFlagGetOrCreateUniqueIdMethod"]
      247 CALL                             R32 1 1
      248 GETIMPORT                        R33 K22 [require]
      250 GETTABLEKS                       R36 R0 K31 ["Src"]
      252 GETTABLEKS                       R35 R36 K45 ["Flags"]
      254 GETTABLEKS                       R34 R35 K50 ["FFlagPrettyJsonAssistant"]
      256 CALL                             R33 1 1
      257 GETTABLEKS                       R36 R14 K45 ["Flags"]
      259 GETTABLEKS                       R35 R36 K51 ["Shared"]
      261 GETTABLEKS                       R34 R35 K52 ["FFlagAssistantUseNewMeshGenTool"]
      263 GETTABLEKS                       R37 R14 K45 ["Flags"]
      265 GETTABLEKS                       R36 R37 K51 ["Shared"]
      267 GETTABLEKS                       R35 R36 K53 ["FFlagDebugLogAssistantUI"]
      269 GETTABLEKS                       R37 R18 K54 ["Http"]
      271 GETTABLEKS                       R36 R37 K55 ["Networking"]
      273 GETTABLEKS                       R37 R36 K56 ["new"]
      275 DUPTABLE                         R38 K59 [{"isInternal", "loggingLevel"}]
      276 LOADB                            R39 1
      277 SETTABLEKS                       R39 R38 K57 ["isInternal"]
      279 MOVE                             R40 R35
      280 CALL                             R40 0 1
      281 JUMPIFNOT                        R40 ; [+2]
      282 LOADN                            R39 4
      283 JUMP                             ; [+1]
      284 LOADN                            R39 0
      285 SETTABLEKS                       R39 R38 K58 ["loggingLevel"]
      287 CALL                             R37 1 1
      288 GETTABLEKS                       R38 R18 K60 ["Url"]
      290 GETTABLEKS                       R39 R38 K56 ["new"]
      292 LOADNIL                          R40
      293 CALL                             R39 1 1
      294 DUPCLOSURE                       R40 K61 [PROTO_22]
      295 CAPTURE                          VAL R33
      296 DUPCLOSURE                       R41 K62 [PROTO_30]
      297 DUPCLOSURE                       R42 K63 [PROTO_33]
      298 CAPTURE                          VAL R12
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R16
      301 CAPTURE                          VAL R14
      302 DUPCLOSURE                       R43 K64 [PROTO_41]
      303 CAPTURE                          VAL R28
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R13
      306 DUPCLOSURE                       R44 K65 [PROTO_75]
      307 CAPTURE                          VAL R14
      308 CAPTURE                          VAL R39
      309 CAPTURE                          VAL R24
      310 CAPTURE                          VAL R6
      311 CAPTURE                          VAL R22
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R29
      316 CAPTURE                          VAL R25
      317 CAPTURE                          VAL R30
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R34
      321 CAPTURE                          VAL R12
      322 CAPTURE                          VAL R23
      323 CAPTURE                          VAL R16
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R9
      326 CAPTURE                          VAL R31
      327 CAPTURE                          VAL R15
      328 CAPTURE                          VAL R37
      329 CAPTURE                          VAL R40
      330 CAPTURE                          VAL R41
      331 CAPTURE                          VAL R2
      332 CAPTURE                          VAL R8
      333 CAPTURE                          VAL R7
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R27
      337 CAPTURE                          VAL R43
      338 RETURN                           R44 1
