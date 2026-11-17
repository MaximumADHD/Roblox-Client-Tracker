PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringCubeGenerationGatewayApiKey"]
        3 LOADK                            R3 K2 ["^%s*(.-)%s*$"]
        4 NAMECALL                         R1 R0 K3 ["match"]
        6 CALL                             R1 2 1
        7 ORK                              R0 R1 K1 [""]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+3]
       10 MOVE                             R1 R0
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AssetUploadOps"]
        3 GETTABLEKS                       R1 R1 K1 ["publishAsync"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["UploadAsset"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K5 [{"throwError", "debugLog"}]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["throwError"]
       13 SETTABLEKS                       R5 R4 K3 ["throwError"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K6 ["FFlagDebugLogAssistantUI"]
       18 SETTABLEKS                       R5 R4 K4 ["debugLog"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_2:
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

PROTO_3:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["_Index"]
        5 GETTABLEKS                       R1 R1 K3 ["OpenApiMcpAssistantApi"]
        7 GETTABLEKS                       R1 R1 K3 ["OpenApiMcpAssistantApi"]
        9 GETTABLEKS                       R1 R1 K4 ["Models"]
       11 GETTABLEKS                       R1 R1 K5 ["CreateConversationRequest"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["_Index"]
       19 GETTABLEKS                       R2 R2 K3 ["OpenApiMcpAssistantApi"]
       21 GETTABLEKS                       R2 R2 K3 ["OpenApiMcpAssistantApi"]
       23 GETTABLEKS                       R2 R2 K4 ["Models"]
       25 GETTABLEKS                       R2 R2 K6 ["SystemPromptRequest"]
       27 CALL                             R1 1 1
       28 NEWTABLE                         R2 2 0
       30 LOADB                            R3 1
       31 SETTABLE                         R3 R2 R0
       32 LOADB                            R3 1
       33 SETTABLE                         R3 R2 R1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K7 ["setBody"]
       37 GETUPVAL                         R4 1
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R5 R4 K7 ["setBody"]
       44 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetImageDataBase64Async"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListPluginGuisAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["BufferStatus"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["NotStarted"]
        7 JUMPIFEQ                         R1 R2 ; [+11]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["BufferStatus"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["Pending"]
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 RETURN                           R0 1

PROTO_10:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["BufferStatus"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["NotStarted"]
        7 JUMPIFEQ                         R1 R2 ; [+11]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["BufferStatus"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["Pending"]
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIF                           R0 ; [+6]
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K3 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 3
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 LOADK                            R6 K0 ["BufferStatus"]
        3 NAMECALL                         R4 R4 K1 ["GetPropertyChangedSignal"]
        5 CALL                             R4 2 1
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R3
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R4 R4 K2 ["Connect"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 MOVE                             R4 R2
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          REF R3
       18 CALL                             R4 1 0
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["BufferStatus"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K3 ["NotStarted"]
       26 JUMPIFEQ                         R5 R6 ; [+11]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["BufferStatus"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K4 ["Pending"]
       34 JUMPIFEQ                         R5 R6 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIF                           R4 ; [+5]
       39 NAMECALL                         R4 R3 K5 ["Disconnect"]
       41 CALL                             R4 1 0
       42 MOVE                             R4 R0
       43 CALL                             R4 0 0
       44 CLOSEUPVALS                      R3
       45 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsEdit"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+5]
        5 GETIMPORT                        R1 K2 [error]
        7 LOADK                            R2 K3 ["capturePluginGuiByIdAsync must run on the Edit DataModel"]
        8 LOADN                            R3 0
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K4 ["CapturePluginGuiByPluginGuiIdAsync"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [Enum.StudioCaptureBufferStatus]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K8 ["new"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CALL                             R4 1 1
       27 LOADN                            R6 15
       28 LOADK                            R7 K9 ["timed out after %*s waiting for the capture buffer"]
       29 LOADN                            R9 15
       30 NAMECALL                         R7 R7 K10 ["format"]
       32 CALL                             R7 2 1
       33 NAMECALL                         R4 R4 K11 ["timeout"]
       35 CALL                             R4 3 1
       36 NAMECALL                         R5 R4 K12 ["await"]
       38 CALL                             R5 1 2
       39 JUMPIF                           R5 ; [+17]
       40 GETIMPORT                        R7 K2 [error]
       42 LOADK                            R8 K13 ["%* (BufferStatus=%*)"]
       43 FASTCALL1                        TOSTRING R6 ; [+3]
       44 MOVE                             R11 R6
       45 GETIMPORT                        R10 K15 [tostring]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R1 K16 ["BufferStatus"]
       50 GETTABLEKS                       R11 R11 K17 ["Name"]
       52 NAMECALL                         R8 R8 K10 ["format"]
       54 CALL                             R8 3 1
       55 LOADN                            R9 0
       56 CALL                             R7 2 0
       57 GETTABLEKS                       R7 R1 K16 ["BufferStatus"]
       59 GETTABLEKS                       R8 R2 K18 ["Error"]
       61 JUMPIFNOTEQ                      R7 R8 ; [+20]
       63 NAMECALL                         R7 R1 K19 ["GetErrors"]
       65 CALL                             R7 1 1
       66 LENGTH                           R9 R7
       67 LOADN                            R10 0
       68 JUMPIFNOTLT                      R10 R9 ; [+7]
       70 GETIMPORT                        R8 K22 [table.concat]
       72 MOVE                             R9 R7
       73 LOADK                            R10 K23 ["; "]
       74 CALL                             R8 2 1
       75 JUMP                             ; [+1]
       76 LOADK                            R8 K24 ["capture reported no error detail"]
       77 GETIMPORT                        R9 K2 [error]
       79 MOVE                             R10 R8
       80 LOADN                            R11 0
       81 CALL                             R9 2 0
       82 GETUPVAL                         R7 3
       83 GETIMPORT                        R9 K26 [buffer.tostring]
       85 NAMECALL                         R10 R1 K27 ["GetBuffer"]
       87 CALL                             R10 1 -1
       88 CALL                             R9 -1 -1
       89 NAMECALL                         R7 R7 K28 ["Base64EncodeAsync"]
       91 CALL                             R7 -1 -1
       92 RETURN                           R7 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Panels"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["FocusAsync"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LoadImageAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSettingsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSettingsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetUserSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetUserSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetSetting"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_21:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R2 K1 [pcall]
        8 CALL                             R2 1 0
        9 CLOSEUPVALS                      R1
       10 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetSetting"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSecureSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSecureSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Base64EncodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GeneratePKCEAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["StartMCPAuthAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JsonDecodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["SetUpMCPServerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+2]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 DUPTABLE                         R2 K4 [{["error"] = "MCP Server not supported"}]
       10 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantPermissionsBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMCPProxyTokenAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReportMcpToolCallAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetMCPCaptureHookCommandAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectFileExistsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_39:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 AND                              R3 R1 R2
        8 RETURN                           R3 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectReadFileAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_41:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+2]
        8 MOVE                             R3 R2
        9 RETURN                           R3 1
       10 LOADNIL                          R3
       11 RETURN                           R3 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["QuickConnectModifyFileAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_43:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 2
        8 JUMPIF                           R2 ; [+10]
        9 GETIMPORT                        R4 K3 [warn]
       11 LOADK                            R6 K4 ["QuickConnect modifyFileAsync failed: "]
       12 FASTCALL1                        TOSTRING R3 ; [+3]
       13 MOVE                             R8 R3
       14 GETIMPORT                        R7 K6 [tostring]
       16 CALL                             R7 1 1
       17 CONCAT                           R5 R6 R7
       18 CALL                             R4 1 0
       19 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["OpenDirectoryDialogAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Info"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_48:
        0 LOADK                            R1 K0 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["AssistantUserSkillAssets"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["http"]
        3 GETTABLEKS                       R1 R1 K1 ["requestAsync"]
        5 DUPTABLE                         R2 K5 [{["Url"], ["Method"] = "GET"}]
        6 LOADK                            R3 K6 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R0
        9 NAMECALL                         R3 R3 K7 ["format"]
       11 CALL                             R3 3 1
       12 SETTABLEKS                       R3 R2 K2 ["Url"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R3 R1 K8 ["Success"]
       17 LOADK                            R4 K9 ["Failed to fetch skill asset %*: HTTP %*"]
       18 MOVE                             R6 R0
       19 GETTABLEKS                       R7 R1 K10 ["StatusCode"]
       21 NAMECALL                         R4 R4 K7 ["format"]
       23 CALL                             R4 3 1
       24 FASTCALL2                        ASSERT R3 R4 ; [+3]
       26 GETIMPORT                        R2 K12 [assert]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K13 ["Body"]
       31 RETURN                           R2 1

PROTO_51:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetUserId"]
        3 CALL                             R3 1 1
        4 DUPTABLE                         R4 K13 [{["AssetType"], ["AssetName"], ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "application/octet-stream", ["Description"], ["Token"] = "", ["AdditionalParameters"]}]
        5 GETIMPORT                        R5 K16 [Enum.AssetType.TextDocument]
        7 SETTABLEKS                       R5 R4 K1 ["AssetType"]
        9 SETTABLEKS                       R1 R4 K2 ["AssetName"]
       11 SETTABLEKS                       R3 R4 K5 ["CreatorId"]
       13 GETIMPORT                        R5 K19 [Enum.AssetCreatorType.User]
       15 SETTABLEKS                       R5 R4 K6 ["CreatorType"]
       17 SETTABLEKS                       R2 R4 K9 ["Description"]
       19 NEWTABLE                         R5 0 0
       21 SETTABLEKS                       R5 R4 K12 ["AdditionalParameters"]
       23 GETUPVAL                         R5 1
       24 MOVE                             R7 R0
       25 MOVE                             R8 R4
       26 NAMECALL                         R5 R5 K20 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       28 CALL                             R5 3 1
       29 FASTCALL1                        TYPE R5 ; [+3]
       30 MOVE                             R8 R5
       31 GETIMPORT                        R7 K22 [type]
       33 CALL                             R7 1 1
       34 JUMPIFNOTEQKS                    R7 K23 ["table"] ; [+4]
       36 GETTABLEKS                       R6 R5 K3 ["AssetId"]
       38 JUMP                             ; [+1]
       39 MOVE                             R6 R5
       40 DUPTABLE                         R7 K25 [{"assetId"}]
       41 SETTABLEKS                       R6 R7 K24 ["assetId"]
       43 RETURN                           R7 1

PROTO_52:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["GetUserId"]
        3 CALL                             R4 1 1
        4 DUPTABLE                         R5 K12 [{["AssetType"], ["AssetName"], ["AssetId"], ["CreatorId"], ["CreatorType"], ["ContentType"] = "application/octet-stream", ["Description"], ["Token"] = "", ["AdditionalParameters"]}]
        5 GETIMPORT                        R6 K15 [Enum.AssetType.TextDocument]
        7 SETTABLEKS                       R6 R5 K1 ["AssetType"]
        9 SETTABLEKS                       R2 R5 K2 ["AssetName"]
       11 SETTABLEKS                       R0 R5 K3 ["AssetId"]
       13 SETTABLEKS                       R4 R5 K4 ["CreatorId"]
       15 GETIMPORT                        R6 K18 [Enum.AssetCreatorType.User]
       17 SETTABLEKS                       R6 R5 K5 ["CreatorType"]
       19 SETTABLEKS                       R3 R5 K8 ["Description"]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K11 ["AdditionalParameters"]
       25 GETUPVAL                         R6 1
       26 MOVE                             R8 R1
       27 MOVE                             R9 R5
       28 NAMECALL                         R6 R6 K19 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
       30 CALL                             R6 3 0
       31 RETURN                           R0 0

PROTO_53:
        0 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getSkillAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{["cursor"], ["limit"] = 100}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["cursor"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_55:
        0 NEWTABLE                         R0 0 0
        2 LOADNIL                          R1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["callWithOptions"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          REF R1
        9 NEWTABLE                         R4 0 0
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R2 K1 ["success"]
       14 JUMPIF                           R3 ; [+3]
       15 LOADNIL                          R3
       16 CLOSEUPVALS                      R1
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R2 K2 ["data"]
       20 GETTABLEKS                       R4 R3 K3 ["assets"]
       22 JUMPIFNOT                        R4 ; [+14]
       23 GETTABLEKS                       R4 R3 K3 ["assets"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       30 MOVE                             R10 R0
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K6 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 ; [-8]
       37 GETTABLEKS                       R1 R3 K7 ["cursor"]
       39 JUMPIFEQKNIL                     R1 ; [+2]
       41 JUMPBACK                         ; [-39]
       42 CLOSEUPVALS                      R1
       43 RETURN                           R0 1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadSkillAssetsAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 DUPTABLE                         R2 K5 [{"assets"}]
        7 GETUPVAL                         R3 1
        8 SETTABLEKS                       R3 R2 K4 ["assets"]
       10 SETTABLEKS                       R2 R1 K2 ["body"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K1 ["success"]
       11 JUMPIF                           R2 ; [+4]
       12 GETIMPORT                        R2 K3 [error]
       14 LOADK                            R3 K4 ["Cloud skill asset upload failed"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteSkillAssetAsync"]
        5 DUPTABLE                         R1 K3 [{"assetId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["assetId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["callWithOptions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R2 R1 K1 ["success"]
       11 JUMPIF                           R2 ; [+4]
       12 GETIMPORT                        R2 K3 [error]
       14 LOADK                            R3 K4 ["Cloud skill asset delete failed"]
       15 CALL                             R2 1 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_60:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R3
       10 SETTABLEKS                       R4 R0 K2 ["convertImageDataToTempIdAsync"]
       12 NEWCLOSURE                       R4 P2
       13 CAPTURE                          VAL R3
       14 SETTABLEKS                       R4 R0 K3 ["releaseTempIdAsync"]
       16 GETTABLEKS                       R4 R0 K4 ["tools"]
       18 GETTABLEKS                       R4 R4 K5 ["screenCapture"]
       20 NEWCLOSURE                       R5 P3
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K6 ["getImageDataBase64Async"]
       24 GETTABLEKS                       R4 R0 K4 ["tools"]
       26 GETTABLEKS                       R4 R4 K7 ["pluginCapture"]
       28 DUPCLOSURE                       R5 K8 [PROTO_8]
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R5 R4 K9 ["listPluginGuisAsync"]
       32 GETTABLEKS                       R4 R0 K4 ["tools"]
       34 GETTABLEKS                       R4 R4 K7 ["pluginCapture"]
       36 NEWCLOSURE                       R5 P5
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K10 ["capturePluginGuiByIdAsync"]
       43 GETTABLEKS                       R4 R0 K4 ["tools"]
       45 GETTABLEKS                       R4 R4 K7 ["pluginCapture"]
       47 NEWCLOSURE                       R5 P6
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R5 R4 K11 ["focusPanelAsync"]
       51 GETTABLEKS                       R4 R0 K4 ["tools"]
       53 GETTABLEKS                       R4 R4 K12 ["uploadImage"]
       55 NEWCLOSURE                       R5 P7
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R5 R4 K13 ["loadImageAsync"]
       59 NEWCLOSURE                       R4 P8
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R4 R0 K14 ["getSettingsAsync"]
       63 NEWCLOSURE                       R4 P9
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R4 R0 K15 ["setSettingsAsync"]
       67 NEWCLOSURE                       R4 P10
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R4 R0 K16 ["getUserSettingsAsync"]
       71 NEWCLOSURE                       R4 P11
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R4 R0 K17 ["setUserSettingsAsync"]
       75 NEWCLOSURE                       R4 P12
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R4 R0 K18 ["getPluginSetting"]
       79 NEWCLOSURE                       R4 P13
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R4 R0 K19 ["setPluginSetting"]
       83 NEWCLOSURE                       R4 P14
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R4 R0 K20 ["getSecureSettingsAsync"]
       87 NEWCLOSURE                       R4 P15
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R4 R0 K21 ["setSecureSettingsAsync"]
       91 NEWCLOSURE                       R4 P16
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R4 R0 K22 ["base64EncodeAsync"]
       95 NEWCLOSURE                       R4 P17
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R4 R0 K23 ["generatePKCEAsync"]
       99 NEWCLOSURE                       R4 P18
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R4 R0 K24 ["startMCPAuthAsync"]
      103 GETTABLEKS                       R4 R0 K25 ["json"]
      105 NEWCLOSURE                       R5 P19
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R5 R4 K26 ["encodeAsync"]
      109 GETTABLEKS                       R4 R0 K25 ["json"]
      111 NEWCLOSURE                       R5 P20
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R5 R4 K27 ["decodeAsync"]
      115 NEWCLOSURE                       R4 P21
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R4 R0 K28 ["setupMCPServerAsync"]
      119 NEWCLOSURE                       R5 P22
      120 CAPTURE                          VAL R1
      121 FASTPCALL                        pcall 1 ; [+2]
      122 GETIMPORT                        R4 K1 [pcall]
      124 CALL                             R4 1 2
      125 JUMPIFNOT                        R4 ; [+4]
      126 NEWCLOSURE                       R6 P23
      127 CAPTURE                          VAL R5
      128 SETTABLEKS                       R6 R0 K29 ["getAssistantPermissionsBridge"]
      130 GETUPVAL                         R6 4
      131 GETTABLEKS                       R6 R6 K30 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
      133 JUMPIFNOT                        R6 ; [+4]
      134 NEWCLOSURE                       R6 P24
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R6 R0 K31 ["getMCPProxyTokenAsync"]
      138 GETUPVAL                         R6 4
      139 GETTABLEKS                       R6 R6 K32 ["EngineFeatureAssistantMcpActivityReportingEnabled"]
      141 JUMPIFNOT                        R6 ; [+4]
      142 NEWCLOSURE                       R6 P25
      143 CAPTURE                          VAL R3
      144 SETTABLEKS                       R6 R0 K33 ["reportMcpToolCallAsync"]
      146 GETUPVAL                         R6 4
      147 GETTABLEKS                       R6 R6 K34 ["EngineFeatureAssistantMcpCaptureHook"]
      149 JUMPIFNOT                        R6 ; [+4]
      150 NEWCLOSURE                       R6 P26
      151 CAPTURE                          VAL R3
      152 SETTABLEKS                       R6 R0 K35 ["getMCPCaptureHookCommandAsync"]
      154 GETTABLEKS                       R6 R0 K36 ["quickConnect"]
      156 NEWCLOSURE                       R7 P27
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R7 R6 K37 ["fileExistsAsync"]
      160 GETTABLEKS                       R6 R0 K36 ["quickConnect"]
      162 NEWCLOSURE                       R7 P28
      163 CAPTURE                          VAL R3
      164 SETTABLEKS                       R7 R6 K38 ["readFileAsync"]
      166 GETTABLEKS                       R6 R0 K36 ["quickConnect"]
      168 NEWCLOSURE                       R7 P29
      169 CAPTURE                          VAL R3
      170 SETTABLEKS                       R7 R6 K39 ["modifyFileAsync"]
      172 NEWCLOSURE                       R6 P30
      173 CAPTURE                          VAL R3
      174 SETTABLEKS                       R6 R0 K40 ["openFileDialogAsync"]
      176 NEWCLOSURE                       R6 P31
      177 CAPTURE                          VAL R3
      178 SETTABLEKS                       R6 R0 K41 ["openDirectoryDialogAsync"]
      180 NEWCLOSURE                       R6 P32
      181 CAPTURE                          VAL R3
      182 SETTABLEKS                       R6 R0 K42 ["importFileBinaryAsync"]
      184 NEWCLOSURE                       R6 P33
      185 CAPTURE                          VAL R3
      186 SETTABLEKS                       R6 R0 K43 ["printToStudioLogAsync"]
      188 GETUPVAL                         R6 5
      189 GETTABLEKS                       R6 R6 K44 ["APIS_URL"]
      191 LOADK                            R8 K45 ["https://apis%.(.+)"]
      192 NAMECALL                         R6 R6 K46 ["match"]
      194 CALL                             R6 2 1
      195 LOADK                            R7 K47 ["https://assetdelivery.%*/"]
      196 MOVE                             R9 R6
      197 NAMECALL                         R7 R7 K48 ["format"]
      199 CALL                             R7 2 1
      200 NEWCLOSURE                       R8 P34
      201 CAPTURE                          VAL R7
      202 GETTABLEKS                       R9 R0 K49 ["userSkillAssets"]
      204 NEWCLOSURE                       R10 P35
      205 CAPTURE                          VAL R0
      206 SETTABLEKS                       R10 R9 K50 ["getManifestAsync"]
      208 GETTABLEKS                       R9 R0 K49 ["userSkillAssets"]
      210 NEWCLOSURE                       R10 P36
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R7
      213 SETTABLEKS                       R10 R9 K51 ["fetchContentAsync"]
      215 GETTABLEKS                       R9 R0 K49 ["userSkillAssets"]
      217 DUPCLOSURE                       R10 K52 [PROTO_51]
      218 CAPTURE                          UPVAL U6
      219 CAPTURE                          UPVAL U7
      220 SETTABLEKS                       R10 R9 K53 ["publishNewAsync"]
      222 GETTABLEKS                       R9 R0 K49 ["userSkillAssets"]
      224 DUPCLOSURE                       R10 K54 [PROTO_52]
      225 CAPTURE                          UPVAL U6
      226 CAPTURE                          UPVAL U7
      227 SETTABLEKS                       R10 R9 K55 ["publishUpdateAsync"]
      229 GETTABLEKS                       R9 R0 K49 ["userSkillAssets"]
      231 DUPCLOSURE                       R10 K56 [PROTO_53]
      232 SETTABLEKS                       R10 R9 K57 ["deleteAsync"]
      234 GETTABLEKS                       R9 R0 K58 ["cloudSkillAssets"]
      236 DUPCLOSURE                       R10 K59 [PROTO_55]
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          UPVAL U9
      239 SETTABLEKS                       R10 R9 K60 ["getAssetsAsync"]
      241 GETTABLEKS                       R9 R0 K58 ["cloudSkillAssets"]
      243 DUPCLOSURE                       R10 K61 [PROTO_57]
      244 CAPTURE                          UPVAL U8
      245 CAPTURE                          UPVAL U9
      246 SETTABLEKS                       R10 R9 K62 ["uploadAssetsAsync"]
      248 GETTABLEKS                       R9 R0 K58 ["cloudSkillAssets"]
      250 DUPCLOSURE                       R10 K63 [PROTO_59]
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          UPVAL U9
      253 SETTABLEKS                       R10 R9 K64 ["deleteAssetAsync"]
      255 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_62:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridgeStandalone"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EngineFeatureAssistantExecuteLuauArguments"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R3 2
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 MOVE                             R4 R0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 NAMECALL                         R1 R1 K1 ["RunCodeAsync"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R3 2
       17 NAMECALL                         R1 R1 K2 ["RunBoundCodeAsync"]
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

PROTO_64:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIF                           R3 ; [+12]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["EngineFeatureStudioAssistantMcpOriginated"]
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R3 2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K1 ["BindCodeAsync"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 JUMP                             ; [+6]
       15 GETUPVAL                         R3 2
       16 MOVE                             R5 R0
       17 NAMECALL                         R3 R3 K1 ["BindCodeAsync"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          REF R2
       25 CLOSEUPVALS                      R2
       26 RETURN                           R2 2

PROTO_65:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_68:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasInternalPermission"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R0 K2 [pcall]
       11 CALL                             R0 1 2
       12 JUMPIFNOT                        R0 ; [+7]
       13 JUMPIFNOTEQKB                    R1 TRUE ; [+6]
       15 GETUPVAL                         R2 2
       16 LOADB                            R4 1
       17 NAMECALL                         R2 R2 K3 ["SetUseElevatedAssistantAsync"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_71:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 1 2
        6 LOADB                            R4 0
        7 JUMPIFNOT                        R2 ; [+1]
        8 JUMPIF                           R3 ; [+19]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["EngineFeatureAssistantBridgeStandalone"]
       12 JUMPIFEQKB                       R5 TRUE ; [+3]
       14 CLOSEUPVALS                      R3
       15 RETURN                           R0 0
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          VAL R1
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R5 K1 [pcall]
       21 CALL                             R5 1 2
       22 JUMPIFNOT                        R5 ; [+1]
       23 JUMPIF                           R6 ; [+2]
       24 CLOSEUPVALS                      R3
       25 RETURN                           R0 0
       26 MOVE                             R3 R6
       27 LOADB                            R4 1
       28 GETTABLEKS                       R5 R0 K3 ["tools"]
       30 GETTABLEKS                       R5 R5 K4 ["executeLuau"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          REF R4
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          REF R3
       36 SETTABLEKS                       R6 R5 K5 ["loadCode"]
       38 GETTABLEKS                       R5 R0 K3 ["tools"]
       40 GETTABLEKS                       R5 R5 K4 ["executeLuau"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          REF R3
       44 SETTABLEKS                       R6 R5 K6 ["stopCode"]
       46 JUMPIF                           R4 ; [+16]
       47 GETTABLEKS                       R5 R0 K3 ["tools"]
       49 GETTABLEKS                       R5 R5 K7 ["multiEdit"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          REF R3
       53 SETTABLEKS                       R6 R5 K8 ["updateScriptSourceAsync"]
       55 GETTABLEKS                       R5 R0 K3 ["tools"]
       57 GETTABLEKS                       R5 R5 K7 ["multiEdit"]
       59 DUPCLOSURE                       R6 K9 [PROTO_68]
       60 CAPTURE                          UPVAL U1
       61 SETTABLEKS                       R6 R5 K10 ["applyScriptSourceDirectly"]
       63 GETIMPORT                        R5 K13 [task.spawn]
       65 NEWCLOSURE                       R6 P6
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          REF R3
       69 CALL                             R5 1 0
       70 CLOSEUPVALS                      R3
       71 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_75:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ActivateAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_76:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K2 ["tools"]
       11 GETTABLEKS                       R4 R4 K3 ["pluginActivation"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R3
       15 SETTABLEKS                       R5 R4 K4 ["listActionsAsync"]
       17 GETTABLEKS                       R4 R0 K2 ["tools"]
       19 GETTABLEKS                       R4 R4 K3 ["pluginActivation"]
       21 NEWCLOSURE                       R5 P2
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R5 R4 K5 ["getActionStatesAsync"]
       25 GETTABLEKS                       R4 R0 K2 ["tools"]
       27 GETTABLEKS                       R4 R4 K3 ["pluginActivation"]
       29 NEWCLOSURE                       R5 P3
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R5 R4 K6 ["activateActionAsync"]
       33 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["tools"]
        7 GETTABLEKS                       R3 R3 K2 ["animationGen"]
        9 GETTABLEKS                       R4 R2 K3 ["generateAnimationAsync"]
       11 SETTABLEKS                       R4 R3 K3 ["generateAnimationAsync"]
       13 GETTABLEKS                       R4 R2 K4 ["publishAnimationHeadlessAsync"]
       15 SETTABLEKS                       R4 R3 K4 ["publishAnimationHeadlessAsync"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["FFlagAnimationGenOpenACE"]
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R4 R2 K6 ["openAnimationClipEditorAsync"]
       23 SETTABLEKS                       R4 R3 K6 ["openAnimationClipEditorAsync"]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K7 ["FFlagAssistantAnimationGenShowPublishButton"]
       28 JUMPIFNOT                        R4 ; [+4]
       29 GETTABLEKS                       R4 R2 K8 ["publishAnimationAsync"]
       31 SETTABLEKS                       R4 R3 K8 ["publishAnimationAsync"]
       33 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["autoSetupAsync"]
        3 DUPTABLE                         R2 K7 [{"model", "analytics", "options", "classifications", "onProgress", "onNotification"}]
        4 GETTABLEKS                       R3 R0 K1 ["model"]
        6 SETTABLEKS                       R3 R2 K1 ["model"]
        8 DUPTABLE                         R3 K13 [{"onRequested", "onOptions", "onJobInitialized", "onFinish", "onFailure"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K14 ["logAvatarAutoSetupRequested"]
       12 SETTABLEKS                       R4 R3 K8 ["onRequested"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K15 ["logAvatarAutoSetupOptions"]
       17 SETTABLEKS                       R4 R3 K9 ["onOptions"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K16 ["logAvatarAutoSetupJobInitialized"]
       22 SETTABLEKS                       R4 R3 K10 ["onJobInitialized"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K17 ["logAvatarAutoSetupFinish"]
       27 SETTABLEKS                       R4 R3 K11 ["onFinish"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K18 ["logAvatarAutoSetupFailure"]
       32 SETTABLEKS                       R4 R3 K12 ["onFailure"]
       34 SETTABLEKS                       R3 R2 K2 ["analytics"]
       36 GETTABLEKS                       R3 R0 K3 ["options"]
       38 SETTABLEKS                       R3 R2 K3 ["options"]
       40 GETTABLEKS                       R3 R0 K4 ["classifications"]
       42 SETTABLEKS                       R3 R2 K4 ["classifications"]
       44 GETTABLEKS                       R3 R0 K5 ["onProgress"]
       46 SETTABLEKS                       R3 R2 K5 ["onProgress"]
       48 GETTABLEKS                       R3 R0 K6 ["onNotification"]
       50 SETTABLEKS                       R3 R2 K6 ["onNotification"]
       52 CALL                             R1 1 -1
       53 RETURN                           R1 -1

PROTO_79:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["avatarAutoSetup"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["makeStudioTelemetryEvents"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R3
       12 SETTABLEKS                       R4 R2 K3 ["autoSetupAsync"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["cancelAutoSetup"]
       17 SETTABLEKS                       R4 R2 K4 ["cancelAutoSetup"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K5 ["getClassificationPlan"]
       22 SETTABLEKS                       R4 R2 K5 ["getClassificationPlan"]
       24 RETURN                           R0 0

PROTO_80:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetQuality"]
        4 GETIMPORT                        R2 K3 [require]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["Src"]
        9 GETTABLEKS                       R3 R3 K5 ["Util"]
       11 GETTABLEKS                       R3 R3 K6 ["AssetQuality"]
       13 GETTABLEKS                       R3 R3 K7 ["AssetQualityValidator"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K8 ["validateAsync"]
       18 SETTABLEKS                       R3 R1 K8 ["validateAsync"]
       20 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 DUPTABLE                         R1 K6 [{"robloxctxAuthenticatedUserid", "generationId", "robloxApiKey", "body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["generationId"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K7 ["FStringCubeGenerationGatewayApiKey"]
       15 LOADK                            R6 K9 ["^%s*(.-)%s*$"]
       16 NAMECALL                         R4 R3 K10 ["match"]
       18 CALL                             R4 2 1
       19 ORK                              R3 R4 K8 [""]
       20 JUMPIFEQKS                       R3 K8 [""] ; [+3]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K4 ["robloxApiKey"]
       27 GETUPVAL                         R2 4
       28 SETTABLEKS                       R2 R1 K5 ["body"]
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_83:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetUserId"]
        3 CALL                             R2 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R2 K4 [game]
       10 GETTABLEKS                       R2 R2 K5 ["GameId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantGen3dAsyncAssetUpload"]
       15 JUMPIFNOT                        R3 ; [+31]
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R4 K11 [{"generationId", "userId", "universeId", "robloxApiKey"}]
       18 SETTABLEKS                       R0 R4 K7 ["generationId"]
       20 SETTABLEKS                       R1 R4 K8 ["userId"]
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R2 ; [+3]
       25 MOVE                             R5 R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K9 ["universeId"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["FStringCubeGenerationGatewayApiKey"]
       33 LOADK                            R9 K14 ["^%s*(.-)%s*$"]
       34 NAMECALL                         R7 R6 K15 ["match"]
       36 CALL                             R7 2 1
       37 ORK                              R6 R7 K13 [""]
       38 JUMPIFEQKS                       R6 K13 [""] ; [+3]
       40 MOVE                             R5 R6
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K10 ["robloxApiKey"]
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 LOADN                            R4 0
       48 JUMPIFNOTLT                      R4 R2 ; [+5]
       50 DUPTABLE                         R3 K16 [{"universeId"}]
       51 SETTABLEKS                       R2 R3 K9 ["universeId"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K17 ["callWithOptions"]
       58 NEWCLOSURE                       R5 P0
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R6 0 0
       66 CALL                             R4 2 1
       67 GETTABLEKS                       R5 R4 K18 ["success"]
       69 JUMPIF                           R5 ; [+6]
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R5 R5 K19 ["throwError"]
       73 MOVE                             R6 R4
       74 CALL                             R5 1 -1
       75 RETURN                           R5 -1
       76 GETTABLEKS                       R5 R4 K20 ["data"]
       78 GETTABLEKS                       R5 R5 K21 ["assetId"]
       80 FASTCALL2K                       ASSERT R5 K22 ; [+5]
       82 MOVE                             R7 R5
       83 LOADK                            R8 K22 ["Expected assetId in response from postUploadAssetAsync"]
       84 GETIMPORT                        R6 K24 [assert]
       86 CALL                             R6 2 0
       87 GETTABLEKS                       R6 R4 K20 ["data"]
       89 GETTABLEKS                       R6 R6 K7 ["generationId"]
       91 FASTCALL2K                       ASSERT R6 K25 ; [+5]
       93 MOVE                             R8 R6
       94 LOADK                            R9 K25 ["Expected generationId in response from postUploadAssetAsync"]
       95 GETIMPORT                        R7 K24 [assert]
       97 CALL                             R7 2 0
       98 DUPTABLE                         R7 K26 [{"assetId", "generationId"}]
       99 SETTABLEKS                       R5 R7 K21 ["assetId"]
      101 SETTABLEKS                       R6 R7 K7 ["generationId"]
      103 RETURN                           R7 1

PROTO_84:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_87:
        0 GETIMPORT                        R2 K3 [Enum.AssetCreatorType.User]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K4 ["GetUserId"]
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K6 [game]
        8 GETTABLEKS                       R4 R4 K7 ["CreatorType"]
       10 GETIMPORT                        R5 K9 [Enum.CreatorType.Group]
       12 JUMPIFNOTEQ                      R4 R5 ; [+14]
       14 GETIMPORT                        R4 K6 [game]
       16 GETTABLEKS                       R4 R4 K10 ["CreatorId"]
       18 LOADN                            R5 0
       19 JUMPIFNOTLT                      R5 R4 ; [+7]
       21 GETIMPORT                        R2 K11 [Enum.AssetCreatorType.Group]
       23 GETIMPORT                        R4 K6 [game]
       25 GETTABLEKS                       R3 R4 K10 ["CreatorId"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K12 ["GenerationUtils"]
       30 GETTABLEKS                       R4 R4 K13 ["cloneAsArchivable"]
       32 MOVE                             R5 R0
       33 CALL                             R4 1 1
       34 FASTCALL2K                       ASSERT R4 K14 ; [+5]
       36 MOVE                             R6 R4
       37 LOADK                            R7 K14 ["Failed to clone instance for asset publish"]
       38 GETIMPORT                        R5 K16 [assert]
       40 CALL                             R5 2 0
       41 GETUPVAL                         R5 2
       42 NEWTABLE                         R7 0 1
       44 MOVE                             R8 R4
       45 SETLIST                          R7 R8 1 [1]
       47 NAMECALL                         R5 R5 K17 ["SerializeInstances"]
       49 CALL                             R5 2 1
       50 NAMECALL                         R6 R4 K18 ["Destroy"]
       52 CALL                             R6 1 0
       53 GETUPVAL                         R6 3
       54 MOVE                             R8 R5
       55 DUPTABLE                         R9 K30 [{["AssetType"] = "Model", ["AssetName"], ["Description"], ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       56 ORK                              R10 R1 K31 ["Gen3d texture source"]
       57 SETTABLEKS                       R10 R9 K21 ["AssetName"]
       59 ORK                              R10 R1 K31 ["Gen3d texture source"]
       60 SETTABLEKS                       R10 R9 K22 ["Description"]
       62 SETTABLEKS                       R3 R9 K10 ["CreatorId"]
       64 SETTABLEKS                       R2 R9 K7 ["CreatorType"]
       66 DUPTABLE                         R10 K34 [{["PublishAsPackage"] = False}]
       67 SETTABLEKS                       R10 R9 K29 ["AdditionalParameters"]
       69 NAMECALL                         R6 R6 K35 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       71 CALL                             R6 3 1
       72 GETTABLEKS                       R7 R6 K23 ["AssetId"]
       74 RETURN                           R7 1

PROTO_88:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_83]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 SETTABLEKS                       R3 R2 K4 ["publishModelAsync"]
       16 GETUPVAL                         R3 5
       17 GETTABLEKS                       R3 R3 K5 ["Guest"]
       19 GETTABLEKS                       R3 R3 K6 ["LoadAssetHandlers"]
       21 GETTABLEKS                       R3 R3 K7 ["getRobloxScriptHandler"]
       23 GETIMPORT                        R4 K9 [game]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K10 ["loadAssetAsync"]
       28 DUPCLOSURE                       R3 K11 [PROTO_84]
       29 CAPTURE                          UPVAL U6
       30 SETTABLEKS                       R3 R2 K12 ["exportMeshToGlbAsync"]
       32 DUPCLOSURE                       R3 K13 [PROTO_85]
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R3 R2 K14 ["exportInstanceToGlbAsync"]
       37 DUPCLOSURE                       R3 K15 [PROTO_86]
       38 CAPTURE                          UPVAL U6
       39 SETTABLEKS                       R3 R2 K16 ["loadModelFromUrlAsync"]
       41 DUPCLOSURE                       R3 K17 [PROTO_87]
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 SETTABLEKS                       R3 R2 K18 ["publishInstanceAsAssetAsync"]
       48 RETURN                           R0 0

PROTO_89:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSelectedRibbonTool"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [Enum.RibbonTool.Scale]
        6 JUMPIFEQ                         R0 R1 ; [+10]
        8 GETUPVAL                         R0 0
        9 GETIMPORT                        R2 K4 [Enum.RibbonTool.Scale]
       11 GETIMPORT                        R3 K7 [UDim2.new]
       13 CALL                             R3 0 -1
       14 NAMECALL                         R0 R0 K8 ["SelectRibbonTool"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_90:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["layoutGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PublishMediator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_92:
        0 GETIMPORT                        R1 K3 [Enum.PlacePublishType.Publish]
        2 JUMPIFEQ                         R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K4 ["Features"]
        8 GETTABLEKS                       R1 R1 K5 ["Gen3dUtils"]
       10 GETTABLEKS                       R1 R1 K6 ["Gen3DAssetTracking"]
       12 GETTABLEKS                       R1 R1 K7 ["reportPublishedAssets"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K8 ["EventLogger"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantGen3DAssetPublishTracking"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K2 [pcall]
       10 CALL                             R2 1 2
       11 JUMPIFNOT                        R2 ; [+1]
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R3 K3 ["OperationInProgressChanged"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R4 R4 K4 ["Connect"]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_94:
        0 DUPTABLE                         R0 K4 [{"userId", "gameId", "creatorType", "creatorId"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["getUserId"]
        4 CALL                             R2 0 -1
        5 FASTCALL                         TOSTRING ; [+2]
        6 GETIMPORT                        R1 K7 [tostring]
        8 CALL                             R1 -1 1
        9 SETTABLEKS                       R1 R0 K0 ["userId"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K8 ["getGameId"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K1 ["gameId"]
       17 GETIMPORT                        R1 K10 [game]
       19 GETTABLEKS                       R1 R1 K11 ["CreatorType"]
       21 SETTABLEKS                       R1 R0 K2 ["creatorType"]
       23 GETIMPORT                        R1 K10 [game]
       25 GETTABLEKS                       R1 R1 K12 ["CreatorId"]
       27 SETTABLEKS                       R1 R0 K3 ["creatorId"]
       29 RETURN                           R0 1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventory"]
        3 GETTABLEKS                       R0 R0 K1 ["getSearchCreatorInventoryItemsAsync"]
        5 DUPTABLE                         R1 K6 [{"query", "filter", "maxPageSize", "pageToken"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["query"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["filter"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K4 ["maxPageSize"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K5 ["pageToken"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_96:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R7 R2 K0 ["Type"]
        3 GETTABLE                         R5 R6 R7
        4 LOADK                            R8 K1 ["Invalid inventory source type: %*"]
        5 GETTABLEKS                       R10 R2 K0 ["Type"]
        7 NAMECALL                         R8 R8 K2 ["format"]
        9 CALL                             R8 2 1
       10 FASTCALL2                        ASSERT R5 R8 ; [+4]
       12 MOVE                             R7 R5
       13 GETIMPORT                        R6 K4 [assert]
       15 CALL                             R6 2 0
       16 GETIMPORT                        R6 K7 [table.create]
       18 LOADN                            R7 2
       19 CALL                             R6 1 1
       20 JUMPIFNOT                        R1 ; [+11]
       21 LOADK                            R9 K8 ["assetTypes=%*"]
       22 MOVE                             R11 R1
       23 NAMECALL                         R9 R9 K2 ["format"]
       25 CALL                             R9 2 1
       26 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       28 MOVE                             R8 R6
       29 GETIMPORT                        R7 K10 [table.insert]
       31 CALL                             R7 2 0
       32 LOADK                            R9 K11 ["%*=%*"]
       33 MOVE                             R11 R5
       34 GETTABLEKS                       R12 R2 K12 ["Id"]
       36 NAMECALL                         R9 R9 K2 ["format"]
       38 CALL                             R9 3 1
       39 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       41 MOVE                             R8 R6
       42 GETIMPORT                        R7 K10 [table.insert]
       44 CALL                             R7 2 0
       45 GETIMPORT                        R7 K14 [table.concat]
       47 MOVE                             R8 R6
       48 LOADK                            R9 K15 [";"]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K16 ["callWithOptions"]
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R10 0 0
       61 CALL                             R8 2 1
       62 GETTABLEKS                       R9 R8 K17 ["success"]
       64 JUMPIF                           R9 ; [+6]
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K18 ["throwError"]
       68 MOVE                             R10 R8
       69 CALL                             R9 1 -1
       70 RETURN                           R9 -1
       71 GETTABLEKS                       R9 R8 K19 ["data"]
       73 RETURN                           R9 1

PROTO_97:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Groups"]
        3 GETTABLEKS                       R0 R0 K1 ["getListGroupsAsync"]
        5 DUPTABLE                         R1 K3 [{"surface"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["surface"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_98:
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
       20 GETTABLEKS                       R2 R2 K4 ["groups"]
       22 GETIMPORT                        R3 K7 [table.create]
       24 LENGTH                           R4 R2
       25 CALL                             R3 1 1
       26 MOVE                             R4 R2
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 DUPTABLE                         R11 K10 [{"id", "name"}]
       31 GETTABLEKS                       R12 R8 K8 ["id"]
       33 SETTABLEKS                       R12 R11 K8 ["id"]
       35 GETTABLEKS                       R12 R8 K9 ["name"]
       37 SETTABLEKS                       R12 R11 K9 ["name"]
       39 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       41 MOVE                             R10 R3
       42 GETIMPORT                        R9 K12 [table.insert]
       44 CALL                             R9 2 0
       45 FORGLOOP                         R4 2 ; [-16]
       47 DUPTABLE                         R4 K13 [{"groups"}]
       48 SETTABLEKS                       R3 R4 K4 ["groups"]
       50 RETURN                           R4 1

PROTO_99:
        0 DUPTABLE                         R1 K13 [{"searchCategoryType", "query", "maxPageSize", "sortDirection", "sortCategory", "includeOnlyVerifiedCreators", "minPriceCents", "maxPriceCents", "facets", "tags", "searchView", "audioSearchFilters", "modelSearchFilters"}]
        1 GETTABLEKS                       R2 R0 K0 ["searchCategoryType"]
        3 SETTABLEKS                       R2 R1 K0 ["searchCategoryType"]
        5 GETTABLEKS                       R2 R0 K1 ["query"]
        7 SETTABLEKS                       R2 R1 K1 ["query"]
        9 GETTABLEKS                       R2 R0 K2 ["maxPageSize"]
       11 SETTABLEKS                       R2 R1 K2 ["maxPageSize"]
       13 GETTABLEKS                       R2 R0 K3 ["sortDirection"]
       15 SETTABLEKS                       R2 R1 K3 ["sortDirection"]
       17 GETTABLEKS                       R2 R0 K4 ["sortCategory"]
       19 SETTABLEKS                       R2 R1 K4 ["sortCategory"]
       21 GETTABLEKS                       R2 R0 K5 ["includeOnlyVerifiedCreators"]
       23 SETTABLEKS                       R2 R1 K5 ["includeOnlyVerifiedCreators"]
       25 GETTABLEKS                       R2 R0 K6 ["minPriceCents"]
       27 SETTABLEKS                       R2 R1 K6 ["minPriceCents"]
       29 GETTABLEKS                       R2 R0 K7 ["maxPriceCents"]
       31 SETTABLEKS                       R2 R1 K7 ["maxPriceCents"]
       33 GETTABLEKS                       R2 R0 K8 ["facets"]
       35 SETTABLEKS                       R2 R1 K8 ["facets"]
       37 GETTABLEKS                       R2 R0 K9 ["tags"]
       39 SETTABLEKS                       R2 R1 K9 ["tags"]
       41 GETTABLEKS                       R2 R0 K10 ["searchView"]
       43 SETTABLEKS                       R2 R1 K10 ["searchView"]
       45 GETTABLEKS                       R3 R0 K11 ["audioSearchFilters"]
       47 JUMPIFNOT                        R3 ; [+14]
       48 DUPTABLE                         R2 K16 [{"minDurationSeconds", "maxDurationSeconds"}]
       49 GETTABLEKS                       R3 R0 K11 ["audioSearchFilters"]
       51 GETTABLEKS                       R3 R3 K14 ["minDurationSeconds"]
       53 SETTABLEKS                       R3 R2 K14 ["minDurationSeconds"]
       55 GETTABLEKS                       R3 R0 K11 ["audioSearchFilters"]
       57 GETTABLEKS                       R3 R3 K15 ["maxDurationSeconds"]
       59 SETTABLEKS                       R3 R2 K15 ["maxDurationSeconds"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 SETTABLEKS                       R2 R1 K11 ["audioSearchFilters"]
       65 GETTABLEKS                       R3 R0 K12 ["modelSearchFilters"]
       67 JUMPIFNOT                        R3 ; [+8]
       68 DUPTABLE                         R2 K18 [{"includedSubTypes"}]
       69 GETTABLEKS                       R3 R0 K12 ["modelSearchFilters"]
       71 GETTABLEKS                       R3 R3 K17 ["includedSubTypes"]
       73 SETTABLEKS                       R3 R2 K17 ["includedSubTypes"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R2
       77 SETTABLEKS                       R2 R1 K12 ["modelSearchFilters"]
       79 LOADK                            R2 K19 ["%*/toolbox-service/v2/assets:search"]
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K20 ["APIS_URL"]
       83 NAMECALL                         R2 R2 K21 ["format"]
       85 CALL                             R2 2 1
       86 GETUPVAL                         R3 1
       87 MOVE                             R5 R2
       88 GETUPVAL                         R6 2
       89 MOVE                             R8 R1
       90 NAMECALL                         R6 R6 K22 ["JSONEncode"]
       92 CALL                             R6 2 -1
       93 NAMECALL                         R3 R3 K23 ["PostAsyncFullUrl"]
       95 CALL                             R3 -1 1
       96 GETUPVAL                         R4 2
       97 MOVE                             R6 R3
       98 NAMECALL                         R4 R4 K24 ["JSONDecode"]
      100 CALL                             R4 2 1
      101 DUPTABLE                         R5 K27 [{"creatorStoreAssets", "queryFacets"}]
      102 GETTABLEKS                       R6 R4 K25 ["creatorStoreAssets"]
      104 SETTABLEKS                       R6 R5 K25 ["creatorStoreAssets"]
      106 GETTABLEKS                       R7 R4 K26 ["queryFacets"]
      108 JUMPIFNOT                        R7 ; [+8]
      109 DUPTABLE                         R6 K29 [{"availableFacets"}]
      110 GETTABLEKS                       R7 R4 K26 ["queryFacets"]
      112 GETTABLEKS                       R7 R7 K28 ["availableFacets"]
      114 SETTABLEKS                       R7 R6 K28 ["availableFacets"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R6
      118 SETTABLEKS                       R6 R5 K26 ["queryFacets"]
      120 RETURN                           R5 1

PROTO_100:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["THUMBNAILS_URL"]
        3 RETURN                           R0 1

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CREATOR_HUB_URL"]
        3 RETURN                           R0 1

PROTO_102:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetSearch"]
        4 DUPTABLE                         R2 K8 [{["User"] = "userids", ["Group"] = "groupids", ["Universe"] = "universeids"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R3 R1 K9 ["getStudioIdentity"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R3 R1 K10 ["searchCreatorInventoryAsync"]
       15 DUPCLOSURE                       R3 K11 [PROTO_98]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R1 K12 ["fetchUserGroupsAsync"]
       20 DUPCLOSURE                       R3 K13 [PROTO_99]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R3 R1 K14 ["searchCreatorStoreAssetsAsync"]
       26 DUPCLOSURE                       R3 K15 [PROTO_100]
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R1 K16 ["getThumbnailsUrl"]
       30 DUPCLOSURE                       R3 K17 [PROTO_101]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R1 K18 ["getCreatorHubUrl"]
       34 RETURN                           R0 0

PROTO_103:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_104:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [","]
        4 CALL                             R1 2 1
        5 LOADK                            R2 K4 ["%*/toolbox-service/v1/items/details?assetIds=%*"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["APIS_URL"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R2 R2 K6 ["format"]
       12 CALL                             R2 3 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R5 R2
       15 NAMECALL                         R3 R3 K7 ["GetAsyncFullUrl"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R6 R3
       20 NAMECALL                         R4 R4 K8 ["JSONDecode"]
       22 CALL                             R4 2 1
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R6 R4 K9 ["data"]
       27 JUMPIFNOT                        R6 ; [+39]
       28 MOVE                             R7 R6
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 GETTABLEKS                       R12 R11 K10 ["asset"]
       34 JUMPIFNOT                        R12 ; [+30]
       35 DUPTABLE                         R15 K11 [{"asset"}]
       36 DUPTABLE                         R16 K17 [{"id", "name", "typeId", "assetSubTypes", "capabilities"}]
       37 GETTABLEKS                       R17 R12 K12 ["id"]
       39 SETTABLEKS                       R17 R16 K12 ["id"]
       41 GETTABLEKS                       R17 R12 K13 ["name"]
       43 SETTABLEKS                       R17 R16 K13 ["name"]
       45 GETTABLEKS                       R17 R12 K14 ["typeId"]
       47 SETTABLEKS                       R17 R16 K14 ["typeId"]
       49 GETTABLEKS                       R17 R12 K15 ["assetSubTypes"]
       51 SETTABLEKS                       R17 R16 K15 ["assetSubTypes"]
       53 GETTABLEKS                       R17 R12 K16 ["capabilities"]
       55 SETTABLEKS                       R17 R16 K16 ["capabilities"]
       57 SETTABLEKS                       R16 R15 K10 ["asset"]
       59 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       61 MOVE                             R14 R5
       62 GETIMPORT                        R13 K19 [table.insert]
       64 CALL                             R13 2 0
       65 FORGLOOP                         R7 2 ; [-34]
       67 DUPTABLE                         R7 K20 [{"data"}]
       68 SETTABLEKS                       R5 R7 K9 ["data"]
       70 RETURN                           R7 1

PROTO_105:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_106:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_107:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_108:
        0 SETTABLEKS                       R0 R1 K0 ["SourceAssetId"]
        2 LOADK                            R4 K1 ["Folder"]
        3 NAMECALL                         R2 R1 K2 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+13]
        7 NAMECALL                         R2 R1 K3 ["GetChildren"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K4 ["Model"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 SETTABLEKS                       R0 R6 K0 ["SourceAssetId"]
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R0 0

PROTO_109:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetInsert"]
        4 DUPCLOSURE                       R2 K2 [PROTO_103]
        5 SETTABLEKS                       R2 R1 K3 ["getObjects"]
        7 DUPCLOSURE                       R2 K4 [PROTO_104]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K5 ["getItemDetailsAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_105]
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K7 ["loadPackageAssetAsync"]
       17 DUPCLOSURE                       R2 K8 [PROTO_106]
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R1 K9 ["getAudioApiByDefault"]
       21 DUPCLOSURE                       R2 K10 [PROTO_107]
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K11 ["insertAudioAsset"]
       25 DUPCLOSURE                       R2 K12 [PROTO_108]
       26 SETTABLEKS                       R2 R1 K13 ["assignSourceAssetId"]
       28 RETURN                           R0 0

PROTO_110:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETIMPORT                        R1 K2 [string.gsub]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K3 ["Z$"]
        5 LOADK                            R4 K4 [""]
        6 CALL                             R1 3 1
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_111:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K0 ["GetAsyncFullUrl"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_112:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StartPageService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_113:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R4 K1 [game]
        4 LOADK                            R6 K2 ["StartPageService"]
        5 NAMECALL                         R4 R4 K3 ["GetService"]
        7 CALL                             R4 2 1
        8 NAMECALL                         R4 R4 K4 ["getRecentAPIGamesFromRegistry"]
       10 CALL                             R4 1 1
       11 MOVE                             R1 R4
       12 JUMPIF                           R1 ; [+2]
       13 NEWTABLE                         R1 0 0
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 DUPTABLE                         R8 K8 [{"name", "universeId", "lastOpened"}]
       19 GETTABLEKS                       R9 R5 K9 ["Name"]
       21 SETTABLEKS                       R9 R8 K5 ["name"]
       23 GETTABLEKS                       R10 R5 K10 ["Id"]
       25 FASTCALL1                        TONUMBER R10 ; [+2]
       26 GETIMPORT                        R9 K12 [tonumber]
       28 CALL                             R9 1 1
       29 SETTABLEKS                       R9 R8 K6 ["universeId"]
       31 GETTABLEKS                       R10 R5 K13 ["LastViewed"]
       33 JUMPIFNOT                        R10 ; [+8]
       34 GETIMPORT                        R11 K16 [string.gsub]
       36 MOVE                             R12 R10
       37 LOADK                            R13 K17 ["Z$"]
       38 LOADK                            R14 K18 [""]
       39 CALL                             R11 3 1
       40 MOVE                             R9 R11
       41 JUMP                             ; [+1]
       42 LOADNIL                          R9
       43 SETTABLEKS                       R9 R8 K7 ["lastOpened"]
       45 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       47 MOVE                             R7 R0
       48 GETIMPORT                        R6 K21 [table.insert]
       50 CALL                             R6 2 0
       51 FORGLOOP                         R1 2 ; [-34]
       53 RETURN                           R0 1

PROTO_114:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R4 K1 [game]
        4 LOADK                            R6 K2 ["StartPageService"]
        5 NAMECALL                         R4 R4 K3 ["GetService"]
        7 CALL                             R4 2 1
        8 NAMECALL                         R4 R4 K4 ["getLocalGamesFromRegistry"]
       10 CALL                             R4 1 1
       11 MOVE                             R1 R4
       12 JUMPIF                           R1 ; [+2]
       13 NEWTABLE                         R1 0 0
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 DUPTABLE                         R8 K8 [{"name", "filePath", "lastOpened"}]
       19 GETTABLEKS                       R9 R5 K9 ["Name"]
       21 SETTABLEKS                       R9 R8 K5 ["name"]
       23 GETTABLEKS                       R9 R5 K10 ["FilePath"]
       25 SETTABLEKS                       R9 R8 K6 ["filePath"]
       27 GETTABLEKS                       R10 R5 K11 ["LastViewed"]
       29 JUMPIFNOT                        R10 ; [+8]
       30 GETIMPORT                        R11 K14 [string.gsub]
       32 MOVE                             R12 R10
       33 LOADK                            R13 K15 ["Z$"]
       34 LOADK                            R14 K16 [""]
       35 CALL                             R11 3 1
       36 MOVE                             R9 R11
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 SETTABLEKS                       R9 R8 K7 ["lastOpened"]
       41 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       43 MOVE                             R7 R0
       44 GETIMPORT                        R6 K19 [table.insert]
       46 CALL                             R6 2 0
       47 FORGLOOP                         R1 2 ; [-30]
       49 RETURN                           R0 1

PROTO_115:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["ids=%*"]
        7 MOVE                             R11 R6
        8 NAMECALL                         R9 R9 K1 ["format"]
       10 CALL                             R9 2 1
       11 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-12]
       19 LOADK                            R3 K5 ["%*v1/universes/multiget?%*"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["DEVELOP_URL"]
       23 GETIMPORT                        R6 K8 [table.concat]
       25 MOVE                             R7 R1
       26 LOADK                            R8 K9 ["&"]
       27 CALL                             R6 2 1
       28 NAMECALL                         R3 R3 K1 ["format"]
       30 CALL                             R3 3 1
       31 GETUPVAL                         R4 1
       32 GETUPVAL                         R6 2
       33 MOVE                             R8 R3
       34 NAMECALL                         R6 R6 K10 ["GetAsyncFullUrl"]
       36 CALL                             R6 2 -1
       37 NAMECALL                         R4 R4 K11 ["JSONDecode"]
       39 CALL                             R4 -1 1
       40 MOVE                             R2 R4
       41 NEWTABLE                         R3 0 0
       43 GETTABLEKS                       R4 R2 K12 ["data"]
       45 JUMPIF                           R4 ; [+2]
       46 NEWTABLE                         R4 0 0
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 GETTABLEKS                       R9 R8 K13 ["id"]
       53 GETTABLEKS                       R10 R8 K14 ["rootPlaceId"]
       55 SETTABLE                         R10 R3 R9
       56 FORGLOOP                         R4 2 ; [-6]
       58 RETURN                           R3 1

PROTO_116:
        0 NEWTABLE                         R1 0 10
        2 LOADK                            R2 K0 ["creatorType=%*"]
        3 GETTABLEKS                       R4 R0 K1 ["creatorType"]
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 LOADK                            R3 K3 ["creatorTargetId=%*"]
        9 GETTABLEKS                       R5 R0 K4 ["creatorTargetId"]
       11 NAMECALL                         R3 R3 K2 ["format"]
       13 CALL                             R3 2 1
       14 LOADK                            R4 K5 ["isArchived=false"]
       15 LOADK                            R5 K6 ["isTemplates=false"]
       16 LOADK                            R6 K7 ["searchKey=Experiences"]
       17 LOADK                            R7 K8 ["surface=StudioStartPage"]
       18 LOADK                            R8 K9 ["sortParam=LastUpdated"]
       19 LOADK                            R9 K10 ["sortOrder=Desc"]
       20 LOADK                            R10 K11 ["PageIndex=%*"]
       21 GETTABLEKS                       R12 R0 K12 ["pageIndex"]
       23 NAMECALL                         R10 R10 K2 ["format"]
       25 CALL                             R10 2 1
       26 LOADK                            R11 K13 ["PageSize=%*"]
       27 GETTABLEKS                       R13 R0 K14 ["pageSize"]
       29 NAMECALL                         R11 R11 K2 ["format"]
       31 CALL                             R11 2 1
       32 SETLIST                          R1 R2 10 [1]
       34 GETTABLEKS                       R2 R0 K15 ["search"]
       36 JUMPIFNOT                        R2 ; [+20]
       37 GETTABLEKS                       R2 R0 K15 ["search"]
       39 JUMPIFEQKS                       R2 K16 [""] ; [+17]
       41 LOADK                            R4 K17 ["search=%*"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R8 R0 K15 ["search"]
       45 NAMECALL                         R6 R6 K18 ["UrlEncode"]
       47 CALL                             R6 2 1
       48 NAMECALL                         R4 R4 K2 ["format"]
       50 CALL                             R4 2 1
       51 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       53 MOVE                             R3 R1
       54 GETIMPORT                        R2 K21 [table.insert]
       56 CALL                             R2 2 0
       57 LOADK                            R3 K22 ["%*universes/v1/search?%*"]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K23 ["APIS_URL"]
       61 GETIMPORT                        R6 K25 [table.concat]
       63 MOVE                             R7 R1
       64 LOADK                            R8 K26 ["&"]
       65 CALL                             R6 2 1
       66 NAMECALL                         R3 R3 K2 ["format"]
       68 CALL                             R3 3 1
       69 GETUPVAL                         R4 0
       70 GETUPVAL                         R6 2
       71 MOVE                             R8 R3
       72 NAMECALL                         R6 R6 K27 ["GetAsyncFullUrl"]
       74 CALL                             R6 2 -1
       75 NAMECALL                         R4 R4 K28 ["JSONDecode"]
       77 CALL                             R4 -1 1
       78 MOVE                             R2 R4
       79 NEWTABLE                         R3 0 0
       81 GETTABLEKS                       R4 R2 K29 ["data"]
       83 JUMPIF                           R4 ; [+2]
       84 NEWTABLE                         R4 0 0
       86 LOADNIL                          R5
       87 LOADNIL                          R6
       88 FORGPREP                         R4
       89 DUPTABLE                         R11 K35 [{"name", "universeId", "placeId", "creatorName", "updated"}]
       90 GETTABLEKS                       R12 R8 K30 ["name"]
       92 SETTABLEKS                       R12 R11 K30 ["name"]
       94 GETTABLEKS                       R12 R8 K36 ["id"]
       96 SETTABLEKS                       R12 R11 K31 ["universeId"]
       98 GETTABLEKS                       R12 R8 K37 ["rootPlaceId"]
      100 SETTABLEKS                       R12 R11 K32 ["placeId"]
      102 GETTABLEKS                       R12 R8 K33 ["creatorName"]
      104 SETTABLEKS                       R12 R11 K33 ["creatorName"]
      106 GETTABLEKS                       R12 R8 K34 ["updated"]
      108 SETTABLEKS                       R12 R11 K34 ["updated"]
      110 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      112 MOVE                             R10 R3
      113 GETIMPORT                        R9 K21 [table.insert]
      115 CALL                             R9 2 0
      116 FORGLOOP                         R4 2 ; [-28]
      118 DUPTABLE                         R4 K40 [{"entries", "totalResults"}]
      119 SETTABLEKS                       R3 R4 K38 ["entries"]
      121 GETTABLEKS                       R5 R2 K39 ["totalResults"]
      123 JUMPIF                           R5 ; [+1]
      124 LENGTH                           R5 R3
      125 SETTABLEKS                       R5 R4 K39 ["totalResults"]
      127 RETURN                           R4 1

PROTO_117:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["tools"]
        5 GETTABLEKS                       R4 R4 K1 ["assetSearch"]
        7 GETTABLEKS                       R4 R4 K2 ["fetchUserGroupsAsync"]
        9 LOADK                            R5 K3 ["StudioStartPage"]
       10 CALL                             R4 1 1
       11 MOVE                             R1 R4
       12 GETTABLEKS                       R1 R1 K4 ["groups"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 DUPTABLE                         R8 K7 [{"name", "groupId"}]
       18 GETTABLEKS                       R9 R5 K5 ["name"]
       20 SETTABLEKS                       R9 R8 K5 ["name"]
       22 GETTABLEKS                       R9 R5 K8 ["id"]
       24 SETTABLEKS                       R9 R8 K6 ["groupId"]
       26 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K11 [table.insert]
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-16]
       34 RETURN                           R0 1

PROTO_118:
        0 LOADK                            R1 K0 ["%*v1/gametemplates"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["DEVELOP_URL"]
        4 NAMECALL                         R1 R1 K2 ["format"]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K3 ["GetAsyncFullUrl"]
       12 CALL                             R4 2 -1
       13 NAMECALL                         R2 R2 K4 ["JSONDecode"]
       15 CALL                             R2 -1 1
       16 MOVE                             R0 R2
       17 NEWTABLE                         R1 0 0
       19 GETTABLEKS                       R2 R0 K5 ["data"]
       21 JUMPIF                           R2 ; [+2]
       22 NEWTABLE                         R2 0 0
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETTABLEKS                       R7 R6 K6 ["universe"]
       29 JUMPIFNOT                        R7 ; [+32]
       30 GETTABLEKS                       R8 R7 K7 ["name"]
       32 JUMPIFNOT                        R8 ; [+29]
       33 GETTABLEKS                       R8 R7 K8 ["id"]
       35 JUMPIFNOT                        R8 ; [+26]
       36 GETTABLEKS                       R8 R7 K9 ["rootPlaceId"]
       38 JUMPIFNOT                        R8 ; [+23]
       39 DUPTABLE                         R10 K13 [{"name", "universeId", "placeId", "templateType"}]
       40 GETTABLEKS                       R11 R7 K7 ["name"]
       42 SETTABLEKS                       R11 R10 K7 ["name"]
       44 GETTABLEKS                       R11 R7 K8 ["id"]
       46 SETTABLEKS                       R11 R10 K10 ["universeId"]
       48 GETTABLEKS                       R11 R7 K9 ["rootPlaceId"]
       50 SETTABLEKS                       R11 R10 K11 ["placeId"]
       52 GETTABLEKS                       R11 R6 K14 ["gameTemplateType"]
       54 SETTABLEKS                       R11 R10 K12 ["templateType"]
       56 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       58 MOVE                             R9 R1
       59 GETIMPORT                        R8 K17 [table.insert]
       61 CALL                             R8 2 0
       62 FORGLOOP                         R2 2 ; [-36]
       64 RETURN                           R1 1

PROTO_119:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 LOADN                            R5 1
        4 LOADN                            R3 20
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 LOADK                            R6 K0 ["%*v1/universes/%*/places?limit=100&sortOrder=Asc"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K1 ["DEVELOP_URL"]
       11 MOVE                             R9 R0
       12 NAMECALL                         R6 R6 K2 ["format"]
       14 CALL                             R6 3 1
       15 JUMPIFNOT                        R2 ; [+11]
       16 MOVE                             R7 R6
       17 LOADK                            R8 K3 ["&cursor=%*"]
       18 GETUPVAL                         R10 1
       19 MOVE                             R12 R2
       20 NAMECALL                         R10 R10 K4 ["UrlEncode"]
       22 CALL                             R10 2 1
       23 NAMECALL                         R8 R8 K2 ["format"]
       25 CALL                             R8 2 1
       26 CONCAT                           R6 R7 R8
       27 GETUPVAL                         R9 1
       28 GETUPVAL                         R11 2
       29 MOVE                             R13 R6
       30 NAMECALL                         R11 R11 K5 ["GetAsyncFullUrl"]
       32 CALL                             R11 2 -1
       33 NAMECALL                         R9 R9 K6 ["JSONDecode"]
       35 CALL                             R9 -1 1
       36 MOVE                             R7 R9
       37 GETTABLEKS                       R8 R7 K7 ["data"]
       39 JUMPIF                           R8 ; [+2]
       40 NEWTABLE                         R8 0 0
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 FORGPREP                         R8
       45 DUPTABLE                         R15 K11 [{"name", "placeId", "universeId"}]
       46 GETTABLEKS                       R16 R12 K8 ["name"]
       48 SETTABLEKS                       R16 R15 K8 ["name"]
       50 GETTABLEKS                       R16 R12 K12 ["id"]
       52 SETTABLEKS                       R16 R15 K9 ["placeId"]
       54 GETTABLEKS                       R16 R12 K10 ["universeId"]
       56 SETTABLEKS                       R16 R15 K10 ["universeId"]
       58 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       60 MOVE                             R14 R1
       61 GETIMPORT                        R13 K15 [table.insert]
       63 CALL                             R13 2 0
       64 FORGLOOP                         R8 2 ; [-20]
       66 GETTABLEKS                       R2 R7 K16 ["nextPageCursor"]
       68 JUMPIFNOT                        R2 ; [+3]
       69 JUMPIFEQKS                       R2 K17 [""] ; [+2]
       71 FORNLOOP                         R3
       72 RETURN                           R1 1

PROTO_120:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["listPlace"]
        4 DUPCLOSURE                       R2 K2 [PROTO_111]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 DUPCLOSURE                       R3 K3 [PROTO_112]
        8 DUPCLOSURE                       R4 K4 [PROTO_113]
        9 SETTABLEKS                       R4 R1 K5 ["getRecentPlaces"]
       11 DUPCLOSURE                       R4 K6 [PROTO_114]
       12 SETTABLEKS                       R4 R1 K7 ["getRecentLocalFiles"]
       14 DUPCLOSURE                       R4 K8 [PROTO_115]
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R4 R1 K9 ["getRootPlaceIdsAsync"]
       20 DUPCLOSURE                       R4 K10 [PROTO_116]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R4 R1 K11 ["searchExperiencesAsync"]
       26 NEWCLOSURE                       R4 P6
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R4 R1 K12 ["getGroupsAsync"]
       30 DUPCLOSURE                       R4 K13 [PROTO_118]
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R4 R1 K14 ["getTemplatesAsync"]
       36 DUPCLOSURE                       R4 K15 [PROTO_119]
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R4 R1 K16 ["getUniversePlacesAsync"]
       42 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_122:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_123:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_124:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Utils"]
        3 GETTABLEKS                       R1 R1 K1 ["TestAutomationUtils"]
        5 GETTABLEKS                       R1 R1 K2 ["findInstanceByPath"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 DUPTABLE                         R2 K6 [{"uniqueId", "name", "className"}]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K7 ["instances"]
       17 GETTABLEKS                       R3 R3 K8 ["getUniqueId"]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K3 ["uniqueId"]
       23 GETTABLEKS                       R3 R1 K9 ["Name"]
       25 SETTABLEKS                       R3 R2 K4 ["name"]
       27 GETTABLEKS                       R3 R1 K10 ["ClassName"]
       29 SETTABLEKS                       R3 R2 K5 ["className"]
       31 RETURN                           R2 1

PROTO_125:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R6
        5 NAMECALL                         R7 R0 K0 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+2]
        9 LOADB                            R7 1
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-8]
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_126:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldSelectModel"]
        3 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["isA"]
       10 JUMPIFEQKNIL                     R1 ; [+19]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["isA"]
       15 MOVE                             R3 R2
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 MOVE                             R10 R7
       20 NAMECALL                         R8 R0 K2 ["IsA"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+2]
       24 LOADB                            R1 1
       25 RETURN                           R1 1
       26 FORGLOOP                         R3 2 ; [-8]
       28 LOADB                            R1 0
       29 RETURN                           R1 1
       30 LOADB                            R1 1
       31 RETURN                           R1 1

PROTO_127:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Instance picker component not found. Cannot pick instance."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["pickInstanceAsync"]
       10 DUPTABLE                         R2 K5 [{"filter"}]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R2 K4 ["filter"]
       15 CALL                             R1 1 1
       16 JUMPIF                           R1 ; [+2]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETTABLEKS                       R2 R0 K6 ["shouldSelectModel"]
       21 JUMPIFNOTEQKB                    R2 TRUE ; [+18]
       23 LOADNIL                          R2
       24 MOVE                             R3 R1
       25 JUMPIFNOT                        R3 ; [+9]
       26 GETTABLEKS                       R4 R3 K7 ["ClassName"]
       28 JUMPIFNOTEQKS                    R4 K8 ["Model"] ; [+3]
       30 MOVE                             R2 R3
       31 JUMP                             ; [+3]
       32 GETTABLEKS                       R3 R3 K9 ["Parent"]
       34 JUMPBACK                         ; [-10]
       35 JUMPIFNOTEQKNIL                  R2 ; [+3]
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 MOVE                             R1 R2
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K10 ["instances"]
       43 GETTABLEKS                       R2 R2 K11 ["getUniqueId"]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 1
       47 DUPTABLE                         R3 K15 [{"uniqueId", "name", "className"}]
       48 SETTABLEKS                       R2 R3 K12 ["uniqueId"]
       50 GETTABLEKS                       R4 R1 K16 ["Name"]
       52 SETTABLEKS                       R4 R3 K13 ["name"]
       54 GETTABLEKS                       R4 R1 K7 ["ClassName"]
       56 SETTABLEKS                       R4 R3 K14 ["className"]
       58 RETURN                           R3 1

PROTO_128:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_129:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_130:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_131:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_132:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_133:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R3 K1 [pcall]
        6 CALL                             R3 1 3
        7 GETTABLEKS                       R6 R2 K2 ["instances"]
        9 DUPCLOSURE                       R7 K3 [PROTO_122]
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_123]
       16 CAPTURE                          UPVAL U1
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 NEWCLOSURE                       R6 P3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 DUPCLOSURE                       R7 K7 [PROTO_125]
       23 NEWCLOSURE                       R8 P5
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R2
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R9 R9 K8 ["invoke"]
       29 MOVE                             R10 R1
       30 LOADK                            R11 K9 ["StudioEnvironment.instances.resolveInstanceByPathAsync"]
       31 CALL                             R9 2 1
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R10 R10 K8 ["invoke"]
       35 MOVE                             R11 R1
       36 LOADK                            R12 K10 ["StudioEnvironment.instances.pickInstanceAsync"]
       37 CALL                             R10 2 1
       38 GETUPVAL                         R11 4
       39 GETTABLEKS                       R11 R11 K11 ["new"]
       41 CALL                             R11 0 1
       42 MOVE                             R14 R5
       43 JUMPIF                           R14 ; [+3]
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K12 ["none"]
       47 NAMECALL                         R12 R11 K13 ["Add"]
       49 CALL                             R12 2 0
       50 NAMECALL                         R12 R1 K14 ["GetIdentity"]
       52 CALL                             R12 1 1
       53 GETUPVAL                         R13 5
       54 GETTABLEKS                       R13 R13 K15 ["Identity"]
       56 GETTABLEKS                       R13 R13 K16 ["Standalone"]
       58 JUMPIFEQ                         R12 R13 ; [+17]
       60 NEWCLOSURE                       R16 P6
       61 CAPTURE                          VAL R6
       62 NAMECALL                         R14 R9 K17 ["Connect"]
       64 CALL                             R14 2 -1
       65 NAMECALL                         R12 R11 K13 ["Add"]
       67 CALL                             R12 -1 0
       68 NEWCLOSURE                       R16 P7
       69 CAPTURE                          VAL R8
       70 NAMECALL                         R14 R10 K17 ["Connect"]
       72 CALL                             R14 2 -1
       73 NAMECALL                         R12 R11 K13 ["Add"]
       75 CALL                             R12 -1 0
       76 GETTABLEKS                       R12 R2 K2 ["instances"]
       78 NEWCLOSURE                       R13 P8
       79 CAPTURE                          VAL R9
       80 CAPTURE                          UPVAL U5
       81 SETTABLEKS                       R13 R12 K18 ["resolveInstanceByPathAsync"]
       83 GETTABLEKS                       R12 R2 K2 ["instances"]
       85 NEWCLOSURE                       R13 P9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          UPVAL U5
       88 SETTABLEKS                       R13 R12 K19 ["pickInstanceAsync"]
       90 GETTABLEKS                       R12 R2 K20 ["Destroying"]
       92 NEWCLOSURE                       R14 P10
       93 CAPTURE                          VAL R11
       94 NAMECALL                         R12 R12 K21 ["Once"]
       96 CALL                             R12 2 0
       97 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionContextBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_135:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetPlaceIsPersistedToCloudAsync"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K1 ["isPersistedToCloud"]
        7 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetPlaceFilePathAsync"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K1 ["file"]
        7 RETURN                           R0 0

PROTO_137:
        0 DUPTABLE                         R1 K2 [{"placeId", "universeId"}]
        1 GETIMPORT                        R3 K4 [game]
        3 GETTABLEKS                       R3 R3 K5 ["PlaceId"]
        5 JUMPIFEQKN                       R3 K6 [0] ; [+6]
        7 GETIMPORT                        R2 K4 [game]
        9 GETTABLEKS                       R2 R2 K5 ["PlaceId"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K0 ["placeId"]
       15 GETIMPORT                        R3 K4 [game]
       17 GETTABLEKS                       R3 R3 K7 ["GameId"]
       19 JUMPIFEQKN                       R3 K6 [0] ; [+6]
       21 GETIMPORT                        R2 K4 [game]
       23 GETTABLEKS                       R2 R2 K7 ["GameId"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K1 ["universeId"]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R0
       31 FASTPCALL                        pcall 1 ; [+2]
       32 GETIMPORT                        R2 K9 [pcall]
       34 CALL                             R2 1 2
       35 JUMPIFNOT                        R2 ; [+1]
       36 JUMPIF                           R3 ; [+1]
       37 RETURN                           R1 1
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 FASTPCALL                        pcall 1 ; [+2]
       42 GETIMPORT                        R4 K9 [pcall]
       44 CALL                             R4 1 0
       45 NEWCLOSURE                       R5 P2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 FASTPCALL                        pcall 1 ; [+2]
       49 GETIMPORT                        R4 K9 [pcall]
       51 CALL                             R4 1 0
       52 RETURN                           R1 1

PROTO_138:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_139:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_140:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Identity"]
        4 GETTABLEKS                       R2 R2 K1 ["Edit"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_141:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["invoke"]
        3 MOVE                             R4 R1
        4 LOADK                            R5 K1 ["StudioEnvironment.getPlaceSessionInfoAsync"]
        5 CALL                             R3 2 1
        6 NAMECALL                         R4 R1 K2 ["GetIdentity"]
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["Identity"]
       12 GETTABLEKS                       R5 R5 K4 ["Standalone"]
       14 JUMPIFEQ                         R4 R5 ; [+14]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R4 R3 K5 ["Connect"]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R5 R2 K6 ["Destroying"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R4
       26 NAMECALL                         R5 R5 K7 ["Once"]
       28 CALL                             R5 2 0
       29 NEWCLOSURE                       R4 P2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U1
       32 SETTABLEKS                       R4 R2 K8 ["getPlaceSessionInfoAsync"]
       34 RETURN                           R0 0

PROTO_142:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_143:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_144:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_145:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_146:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_147:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_148:
        0 DUPTABLE                         R2 K4 [{"Success", "StatusCode", "Headers", "Body"}]
        1 MOVE                             R3 R0
        2 JUMPIFNOT                        R3 ; [+13]
        3 LOADB                            R3 0
        4 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
        6 LOADN                            R5 200
        7 JUMPIFNOTLE                      R5 R4 ; [+8]
        9 GETTABLEKS                       R4 R1 K1 ["StatusCode"]
       11 LOADN                            R5 300
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

PROTO_149:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_150:
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

PROTO_151:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_152:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R5 K4 ["OpenUrl failed: "]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K6 [tostring]
       15 CALL                             R6 1 1
       16 CONCAT                           R4 R5 R6
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_153:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_154:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_155:
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

PROTO_156:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_157:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_158:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventory"]
        3 GETTABLEKS                       R0 R0 K1 ["getSearchCreatorInventoryItemsAsync"]
        5 DUPTABLE                         R1 K5 [{"query", "filter", "maxPageSize"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["query"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["filter"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K4 ["maxPageSize"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_159:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewOpenAPIClients"]
        3 JUMPIFNOT                        R4 ; [+28]
        4 LOADK                            R4 K1 ["assetTypes=%*;userids=%*"]
        5 MOVE                             R6 R1
        6 MOVE                             R7 R2
        7 NAMECALL                         R4 R4 K2 ["format"]
        9 CALL                             R4 3 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["callWithOptions"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R3
       18 DUPTABLE                         R7 K6 [{["retryCount"] = 3}]
       19 CALL                             R5 2 1
       20 GETTABLEKS                       R6 R5 K7 ["success"]
       22 JUMPIF                           R6 ; [+6]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K8 ["throwError"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 -1
       28 RETURN                           R6 -1
       29 GETTABLEKS                       R6 R5 K9 ["data"]
       31 RETURN                           R6 1
       32 LOADK                            R4 K10 ["%*/creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;userids=%*&maxPageSize=%*"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K11 ["APIS_URL"]
       36 MOVE                             R7 R0
       37 MOVE                             R8 R1
       38 MOVE                             R9 R2
       39 MOVE                             R10 R3
       40 NAMECALL                         R4 R4 K2 ["format"]
       42 CALL                             R4 6 1
       43 GETUPVAL                         R5 4
       44 MOVE                             R7 R4
       45 LOADNIL                          R8
       46 NAMECALL                         R5 R5 K12 ["get"]
       48 CALL                             R5 3 1
       49 GETUPVAL                         R6 4
       50 MOVE                             R8 R5
       51 LOADN                            R9 3
       52 LOADB                            R10 0
       53 NAMECALL                         R6 R6 K13 ["handleRetry"]
       55 CALL                             R6 4 1
       56 GETUPVAL                         R7 4
       57 MOVE                             R9 R6
       58 NAMECALL                         R7 R7 K14 ["parseJson"]
       60 CALL                             R7 2 1
       61 NAMECALL                         R7 R7 K15 ["await"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R7 K16 ["responseBody"]
       66 RETURN                           R8 1

PROTO_160:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_161:
        0 DUPCLOSURE                       R1 K0 [PROTO_160]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 AND                              R2 R0 R1
        7 RETURN                           R2 1

PROTO_162:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_163:
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

PROTO_164:
        0 NEWTABLE                         R1 4 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+39]
        9 GETTABLEKS                       R3 R0 K3 ["result"]
       11 FASTCALL1                        TYPEOF R3 ; [+2]
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+31]
       17 GETTABLEKS                       R3 R0 K3 ["result"]
       19 GETTABLEKS                       R3 R3 K4 ["image"]
       21 FASTCALL1                        TYPEOF R3 ; [+2]
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+21]
       27 GETTABLEKS                       R2 R0 K3 ["result"]
       29 GETTABLEKS                       R2 R2 K4 ["image"]
       31 GETTABLEKS                       R3 R2 K5 ["presignedUrl"]
       33 SETTABLEKS                       R3 R1 K5 ["presignedUrl"]
       35 GETTABLEKS                       R3 R2 K6 ["widthPx"]
       37 SETTABLEKS                       R3 R1 K6 ["widthPx"]
       39 GETTABLEKS                       R3 R2 K7 ["heightPx"]
       41 SETTABLEKS                       R3 R1 K7 ["heightPx"]
       43 GETTABLEKS                       R3 R2 K8 ["format"]
       45 SETTABLEKS                       R3 R1 K8 ["format"]
       47 RETURN                           R1 1

PROTO_165:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 MOVE                             R8 R1
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R9 R9 K0 ["formFile"]
       14 GETTABLEKS                       R10 R6 K1 ["name"]
       16 GETTABLEKS                       R11 R6 K2 ["content"]
       18 GETTABLEKS                       R13 R6 K4 ["contentType"]
       20 ORK                              R12 R13 K3 ["image/png"]
       21 CALL                             R9 3 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 -1 0
       26 FORGLOOP                         R2 2 ; [-17]
       28 RETURN                           R1 1

PROTO_166:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImageGeneration"]
        3 GETTABLEKS                       R0 R0 K1 ["postGenerateImageAsync"]
        5 DUPTABLE                         R1 K16 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["textPrompt"], ["model"], ["aspectRatio"], ["images"], ["removeBackground"], ["seed"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K6 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K17 ["FStringCubeGenerationGatewayApiKey"]
       12 LOADK                            R6 K19 ["^%s*(.-)%s*$"]
       13 NAMECALL                         R4 R3 K20 ["match"]
       15 CALL                             R4 2 1
       16 ORK                              R3 R4 K18 [""]
       17 JUMPIFEQKS                       R3 K18 [""] ; [+3]
       19 MOVE                             R2 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K9 ["robloxApiKey"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K10 ["textPrompt"]
       27 SETTABLEKS                       R2 R1 K10 ["textPrompt"]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K11 ["model"]
       32 SETTABLEKS                       R2 R1 K11 ["model"]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K12 ["aspectRatio"]
       37 SETTABLEKS                       R2 R1 K12 ["aspectRatio"]
       39 GETUPVAL                         R2 4
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K13 ["images"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R1 K13 ["images"]
       46 GETUPVAL                         R2 3
       47 GETTABLEKS                       R2 R2 K14 ["removeBackground"]
       49 SETTABLEKS                       R2 R1 K14 ["removeBackground"]
       51 GETUPVAL                         R2 3
       52 GETTABLEKS                       R2 R2 K15 ["seed"]
       54 SETTABLEKS                       R2 R1 K15 ["seed"]
       56 CALL                             R0 1 -1
       57 RETURN                           R0 -1

PROTO_167:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R3 R2 K4 ["success"]
       22 JUMPIF                           R3 ; [+56]
       23 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       28 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R3
       32 GETTABLEKS                       R5 R2 K7 ["errorDetails"]
       34 GETTABLEKS                       R5 R5 K8 ["kind"]
       36 JUMPIFEQKS                       R5 K9 ["Network"] ; [+6]
       38 GETTABLEKS                       R4 R2 K7 ["errorDetails"]
       40 GETTABLEKS                       R4 R4 K10 ["body"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 GETIMPORT                        R5 K12 [warn]
       46 LOADK                            R6 K13 ["[StudioEnvironment] imageGeneration.startAsync -> status=%* body=%*"]
       47 FASTCALL1                        TOSTRING R3 ; [+3]
       48 MOVE                             R9 R3
       49 GETIMPORT                        R8 K2 [tostring]
       51 CALL                             R8 1 1
       52 FASTCALL1                        TOSTRING R4 ; [+3]
       53 MOVE                             R10 R4
       54 GETIMPORT                        R9 K2 [tostring]
       56 CALL                             R9 1 1
       57 NAMECALL                         R6 R6 K14 ["format"]
       59 CALL                             R6 3 1
       60 CALL                             R5 1 0
       61 DUPTABLE                         R5 K18 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       62 SETTABLEKS                       R3 R5 K6 ["statusCode"]
       64 GETIMPORT                        R6 K20 [select]
       66 LOADN                            R7 2
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K21 ["throwError"]
       70 MOVE                             R10 R2
       71 FASTPCALL                        pcall 2 ; [+2]
       72 GETIMPORT                        R8 K23 [pcall]
       74 CALL                             R8 2 -1
       75 CALL                             R6 -1 1
       76 SETTABLEKS                       R6 R5 K17 ["errorMessage"]
       78 RETURN                           R5 1
       79 DUPTABLE                         R3 K26 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
       80 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       82 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       84 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       86 GETTABLEKS                       R4 R2 K27 ["data"]
       88 GETTABLEKS                       R4 R4 K25 ["imageGenerationId"]
       90 SETTABLEKS                       R4 R3 K25 ["imageGenerationId"]
       92 RETURN                           R3 1

PROTO_168:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImageGeneration"]
        3 GETTABLEKS                       R0 R0 K1 ["getImageGenerationStatusAsync"]
        5 DUPTABLE                         R1 K11 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["imageGenerationId"], ["robloxApiKey"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K6 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K9 ["imageGenerationId"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K12 ["FStringCubeGenerationGatewayApiKey"]
       15 LOADK                            R6 K14 ["^%s*(.-)%s*$"]
       16 NAMECALL                         R4 R3 K15 ["match"]
       18 CALL                             R4 2 1
       19 ORK                              R3 R4 K13 [""]
       20 JUMPIFEQKS                       R3 K13 [""] ; [+3]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K10 ["robloxApiKey"]
       27 CALL                             R0 1 -1
       28 RETURN                           R0 -1

PROTO_169:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+27]
       22 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       27 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       32 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       34 GETIMPORT                        R5 K12 [select]
       36 LOADN                            R6 2
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K13 ["throwError"]
       40 MOVE                             R9 R2
       41 FASTPCALL                        pcall 2 ; [+2]
       42 GETIMPORT                        R7 K15 [pcall]
       44 CALL                             R7 2 -1
       45 CALL                             R5 -1 1
       46 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       48 RETURN                           R4 1
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R4 R2 K16 ["data"]
       52 CALL                             R3 1 1
       53 DUPTABLE                         R4 K24 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["presignedUrl"], ["widthPx"], ["heightPx"], ["format"]}]
       54 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       56 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       58 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       60 GETTABLEKS                       R5 R2 K16 ["data"]
       62 GETTABLEKS                       R5 R5 K18 ["status"]
       64 SETTABLEKS                       R5 R4 K18 ["status"]
       66 GETTABLEKS                       R5 R2 K16 ["data"]
       68 GETTABLEKS                       R5 R5 K19 ["currentStage"]
       70 SETTABLEKS                       R5 R4 K19 ["currentStage"]
       72 GETTABLEKS                       R5 R3 K20 ["presignedUrl"]
       74 SETTABLEKS                       R5 R4 K20 ["presignedUrl"]
       76 GETTABLEKS                       R5 R3 K21 ["widthPx"]
       78 SETTABLEKS                       R5 R4 K21 ["widthPx"]
       80 GETTABLEKS                       R5 R3 K22 ["heightPx"]
       82 SETTABLEKS                       R5 R4 K22 ["heightPx"]
       84 GETTABLEKS                       R5 R3 K23 ["format"]
       86 SETTABLEKS                       R5 R4 K23 ["format"]
       88 RETURN                           R4 1

PROTO_170:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TexturePreview"]
        3 GETTABLEKS                       R0 R0 K1 ["postGenerateTexturePreviewAsync"]
        5 DUPTABLE                         R1 K18 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["n"], ["temperature"], ["controlStrength"], ["resolution"], ["cameraExtrinsic"], ["cameraIntrinsic"], ["partialResults"], ["previewResolution"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K4 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K19 ["FStringCubeGenerationGatewayApiKey"]
       12 LOADK                            R6 K21 ["^%s*(.-)%s*$"]
       13 NAMECALL                         R4 R3 K22 ["match"]
       15 CALL                             R4 2 1
       16 ORK                              R3 R4 K20 [""]
       17 JUMPIFEQKS                       R3 K20 [""] ; [+3]
       19 MOVE                             R2 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       24 GETUPVAL                         R2 3
       25 SETTABLEKS                       R2 R1 K6 ["glb"]
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K7 ["assetId"]
       30 SETTABLEKS                       R2 R1 K7 ["assetId"]
       32 GETUPVAL                         R2 5
       33 SETTABLEKS                       R2 R1 K8 ["image"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K9 ["textPrompt"]
       38 SETTABLEKS                       R2 R1 K9 ["textPrompt"]
       40 GETUPVAL                         R2 4
       41 GETTABLEKS                       R2 R2 K10 ["n"]
       43 SETTABLEKS                       R2 R1 K10 ["n"]
       45 GETUPVAL                         R2 4
       46 GETTABLEKS                       R2 R2 K11 ["temperature"]
       48 SETTABLEKS                       R2 R1 K11 ["temperature"]
       50 GETUPVAL                         R2 4
       51 GETTABLEKS                       R2 R2 K12 ["controlStrength"]
       53 SETTABLEKS                       R2 R1 K12 ["controlStrength"]
       55 GETUPVAL                         R2 4
       56 GETTABLEKS                       R2 R2 K13 ["resolution"]
       58 SETTABLEKS                       R2 R1 K13 ["resolution"]
       60 GETUPVAL                         R2 4
       61 GETTABLEKS                       R2 R2 K14 ["cameraExtrinsic"]
       63 SETTABLEKS                       R2 R1 K14 ["cameraExtrinsic"]
       65 GETUPVAL                         R2 4
       66 GETTABLEKS                       R2 R2 K15 ["cameraIntrinsic"]
       68 SETTABLEKS                       R2 R1 K15 ["cameraIntrinsic"]
       70 GETUPVAL                         R2 4
       71 GETTABLEKS                       R2 R2 K16 ["partialResults"]
       73 SETTABLEKS                       R2 R1 K16 ["partialResults"]
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K17 ["previewResolution"]
       78 SETTABLEKS                       R2 R1 K17 ["previewResolution"]
       80 CALL                             R0 1 -1
       81 RETURN                           R0 -1

PROTO_171:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K3 ["image"]
       11 JUMPIFEQKNIL                     R3 ; [+12]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["formFile"]
       16 LOADK                            R4 K3 ["image"]
       17 GETTABLEKS                       R5 R0 K3 ["image"]
       19 GETTABLEKS                       R7 R0 K6 ["imageContentType"]
       21 ORK                              R6 R7 K5 ["image/png"]
       22 CALL                             R3 3 1
       23 MOVE                             R2 R3
       24 LOADNIL                          R3
       25 GETTABLEKS                       R4 R0 K7 ["glb"]
       27 JUMPIFEQKNIL                     R4 ; [+13]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K4 ["formFile"]
       32 LOADK                            R5 K8 ["model.glb"]
       33 GETIMPORT                        R6 K11 [buffer.fromstring]
       35 GETTABLEKS                       R7 R0 K7 ["glb"]
       37 CALL                             R6 1 1
       38 LOADK                            R7 K12 ["model/gltf-binary"]
       39 CALL                             R4 3 1
       40 MOVE                             R3 R4
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K13 ["callWithOptions"]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          REF R3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          REF R2
       51 NEWTABLE                         R6 0 0
       53 CALL                             R4 2 1
       54 GETTABLEKS                       R5 R4 K14 ["success"]
       56 JUMPIF                           R5 ; [+28]
       57 DUPTABLE                         R5 K19 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       58 GETTABLEKS                       R7 R4 K20 ["httpDetails"]
       60 JUMPIFNOT                        R7 ; [+5]
       61 GETTABLEKS                       R6 R4 K20 ["httpDetails"]
       63 GETTABLEKS                       R6 R6 K17 ["statusCode"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R6
       67 SETTABLEKS                       R6 R5 K17 ["statusCode"]
       69 GETIMPORT                        R6 K22 [select]
       71 LOADN                            R7 2
       72 GETUPVAL                         R9 2
       73 GETTABLEKS                       R9 R9 K23 ["throwError"]
       75 MOVE                             R10 R4
       76 FASTPCALL                        pcall 2 ; [+2]
       77 GETIMPORT                        R8 K25 [pcall]
       79 CALL                             R8 2 -1
       80 CALL                             R6 -1 1
       81 SETTABLEKS                       R6 R5 K18 ["errorMessage"]
       83 CLOSEUPVALS                      R2
       84 RETURN                           R5 1
       85 DUPTABLE                         R5 K28 [{["ok"] = True, ["statusCode"], ["texturePreviewId"]}]
       86 GETTABLEKS                       R6 R4 K20 ["httpDetails"]
       88 GETTABLEKS                       R6 R6 K17 ["statusCode"]
       90 SETTABLEKS                       R6 R5 K17 ["statusCode"]
       92 GETTABLEKS                       R6 R4 K29 ["data"]
       94 GETTABLEKS                       R6 R6 K27 ["texturePreviewId"]
       96 SETTABLEKS                       R6 R5 K27 ["texturePreviewId"]
       98 CLOSEUPVALS                      R2
       99 RETURN                           R5 1

PROTO_172:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TexturePreview"]
        3 GETTABLEKS                       R0 R0 K1 ["getTexturePreviewStatusAsync"]
        5 DUPTABLE                         R1 K7 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["texturePreviewId"], ["robloxApiKey"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K4 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K5 ["texturePreviewId"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K8 ["FStringCubeGenerationGatewayApiKey"]
       15 LOADK                            R6 K10 ["^%s*(.-)%s*$"]
       16 NAMECALL                         R4 R3 K11 ["match"]
       18 CALL                             R4 2 1
       19 ORK                              R3 R4 K9 [""]
       20 JUMPIFEQKS                       R3 K9 [""] ; [+3]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K6 ["robloxApiKey"]
       27 CALL                             R0 1 -1
       28 RETURN                           R0 -1

PROTO_173:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+27]
       22 DUPTABLE                         R3 K9 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       23 GETTABLEKS                       R5 R2 K10 ["httpDetails"]
       25 JUMPIFNOT                        R5 ; [+5]
       26 GETTABLEKS                       R4 R2 K10 ["httpDetails"]
       28 GETTABLEKS                       R4 R4 K7 ["statusCode"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K7 ["statusCode"]
       34 GETIMPORT                        R4 K12 [select]
       36 LOADN                            R5 2
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K13 ["throwError"]
       40 MOVE                             R8 R2
       41 FASTPCALL                        pcall 2 ; [+2]
       42 GETIMPORT                        R6 K15 [pcall]
       44 CALL                             R6 2 -1
       45 CALL                             R4 -1 1
       46 SETTABLEKS                       R4 R3 K8 ["errorMessage"]
       48 RETURN                           R3 1
       49 GETUPVAL                         R3 4
       50 GETTABLEKS                       R3 R3 K16 ["TexturePreviewResponseOps"]
       52 GETTABLEKS                       R3 R3 K17 ["toGetStatusResult"]
       54 LOADB                            R4 1
       55 GETTABLEKS                       R5 R2 K10 ["httpDetails"]
       57 GETTABLEKS                       R5 R5 K7 ["statusCode"]
       59 GETTABLEKS                       R6 R2 K18 ["data"]
       61 LOADNIL                          R7
       62 CALL                             R3 4 -1
       63 RETURN                           R3 -1

PROTO_174:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getFFlagGen3dSegmentMeshAssetIdUpload"]
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R5 R0 K1 ["errorDetails"]
        8 FASTCALL1                        TYPEOF R5 ; [+2]
        9 GETIMPORT                        R4 K3 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+4]
       14 GETTABLEKS                       R3 R0 K1 ["errorDetails"]
       16 JUMP                             ; [+2]
       17 NEWTABLE                         R3 0 0
       19 GETTABLEKS                       R4 R3 K5 ["body"]
       21 MOVE                             R5 R2
       22 JUMPIFNOTEQKNIL                  R5 ; [+35]
       24 FASTCALL1                        TYPEOF R4 ; [+3]
       25 MOVE                             R7 R4
       26 GETIMPORT                        R6 K3 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+28]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K7 ["JSONDecode"]
       34 GETUPVAL                         R8 1
       35 MOVE                             R9 R4
       36 FASTPCALL                        pcall 3 ; [+2]
       37 GETIMPORT                        R6 K9 [pcall]
       39 CALL                             R6 3 2
       40 JUMPIFNOT                        R6 ; [+17]
       41 FASTCALL1                        TYPEOF R7 ; [+3]
       42 MOVE                             R9 R7
       43 GETIMPORT                        R8 K3 [typeof]
       45 CALL                             R8 1 1
       46 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+11]
       48 GETTABLEKS                       R9 R7 K10 ["jobId"]
       50 FASTCALL1                        TYPEOF R9 ; [+2]
       51 GETIMPORT                        R8 K3 [typeof]
       53 CALL                             R8 1 1
       54 JUMPIFNOTEQKS                    R8 K6 ["string"] ; [+3]
       56 GETTABLEKS                       R5 R7 K10 ["jobId"]
       58 GETIMPORT                        R6 K12 [warn]
       60 LOADK                            R7 K13 ["[SegmentMesh] %* failed: jobId=%* status=%* body=%*"]
       61 MOVE                             R9 R1
       62 ORK                              R10 R5 K14 ["unknown"]
       63 GETTABLEKS                       R11 R3 K15 ["statusCode"]
       65 MOVE                             R12 R4
       66 NAMECALL                         R7 R7 K16 ["format"]
       68 CALL                             R7 5 1
       69 CALL                             R6 1 0
       70 RETURN                           R0 0

PROTO_175:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateSegmentMeshAsync"]
        3 DUPTABLE                         R1 K13 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["mesh"], ["assetId"], ["parts"], ["generateTexture"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K14 ["FStringCubeGenerationGatewayApiKey"]
       10 LOADK                            R6 K16 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R4 R3 K17 ["match"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K15 [""]
       15 JUMPIFEQKS                       R3 K15 [""] ; [+3]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K8 ["robloxApiKey"]
       22 GETUPVAL                         R2 3
       23 SETTABLEKS                       R2 R1 K9 ["mesh"]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K10 ["assetId"]
       28 SETTABLEKS                       R2 R1 K10 ["assetId"]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K18 ["partNames"]
       33 SETTABLEKS                       R2 R1 K11 ["parts"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K12 ["generateTexture"]
       38 SETTABLEKS                       R2 R1 K12 ["generateTexture"]
       40 CALL                             R0 1 -1
       41 RETURN                           R0 -1

PROTO_176:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K3 ["glb"]
       11 JUMPIFEQKNIL                     R3 ; [+13]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["formFile"]
       16 LOADK                            R4 K5 ["mesh.glb"]
       17 GETIMPORT                        R5 K8 [buffer.fromstring]
       19 GETTABLEKS                       R6 R0 K3 ["glb"]
       21 CALL                             R5 1 1
       22 LOADK                            R6 K9 ["model/gltf-binary"]
       23 CALL                             R3 3 1
       24 MOVE                             R2 R3
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K10 ["callWithOptions"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          REF R2
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R5 0 0
       36 CALL                             R3 2 1
       37 GETTABLEKS                       R4 R3 K11 ["success"]
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R4 5
       41 MOVE                             R5 R3
       42 LOADK                            R6 K12 ["SegmentMesh.postGenerateSegmentMeshAsync"]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K13 ["throwError"]
       47 MOVE                             R5 R3
       48 LOADK                            R6 K12 ["SegmentMesh.postGenerateSegmentMeshAsync"]
       49 CALL                             R4 2 -1
       50 CLOSEUPVALS                      R2
       51 RETURN                           R4 -1
       52 GETTABLEKS                       R4 R3 K14 ["data"]
       54 GETTABLEKS                       R4 R4 K15 ["jobId"]
       56 FASTCALL2K                       ASSERT R4 K16 ; [+5]
       58 MOVE                             R6 R4
       59 LOADK                            R7 K16 ["Expected jobId in response from SegmentMesh.postGenerateSegmentMeshAsync"]
       60 GETIMPORT                        R5 K18 [assert]
       62 CALL                             R5 2 0
       63 DUPTABLE                         R5 K20 [{"segmentationId"}]
       64 SETTABLEKS                       R4 R5 K19 ["segmentationId"]
       66 CLOSEUPVALS                      R2
       67 RETURN                           R5 1

PROTO_177:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSegmentMeshStatusAsync"]
        3 DUPTABLE                         R1 K10 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["jobId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K8 ["jobId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K11 ["FStringCubeGenerationGatewayApiKey"]
       13 LOADK                            R6 K13 ["^%s*(.-)%s*$"]
       14 NAMECALL                         R4 R3 K14 ["match"]
       16 CALL                             R4 2 1
       17 ORK                              R3 R4 K12 [""]
       18 JUMPIFEQKS                       R3 K12 [""] ; [+3]
       20 MOVE                             R2 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K9 ["robloxApiKey"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_178:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+12]
       22 GETUPVAL                         R3 4
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["SegmentMesh.getSegmentMeshStatusAsync"]
       25 MOVE                             R6 R0
       26 CALL                             R3 3 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K6 ["throwError"]
       30 MOVE                             R4 R2
       31 LOADK                            R5 K5 ["SegmentMesh.getSegmentMeshStatusAsync"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1
       34 DUPTABLE                         R3 K10 [{"status", "modelGlbUrl", "modelRbxmUrl"}]
       35 GETTABLEKS                       R4 R2 K11 ["data"]
       37 GETTABLEKS                       R4 R4 K7 ["status"]
       39 SETTABLEKS                       R4 R3 K7 ["status"]
       41 GETTABLEKS                       R4 R2 K11 ["data"]
       43 GETTABLEKS                       R4 R4 K12 ["glbUrl"]
       45 SETTABLEKS                       R4 R3 K8 ["modelGlbUrl"]
       47 GETTABLEKS                       R4 R2 K11 ["data"]
       49 GETTABLEKS                       R4 R4 K13 ["rbxmUrl"]
       51 SETTABLEKS                       R4 R3 K9 ["modelRbxmUrl"]
       53 RETURN                           R3 1

PROTO_179:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postUploadAssetAsync"]
        3 DUPTABLE                         R1 K5 [{"robloxctxAuthenticatedUserid", "generationId", "robloxApiKey", "body"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["generationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K6 ["FStringCubeGenerationGatewayApiKey"]
       13 LOADK                            R6 K8 ["^%s*(.-)%s*$"]
       14 NAMECALL                         R4 R3 K9 ["match"]
       16 CALL                             R4 2 1
       17 ORK                              R3 R4 K7 [""]
       18 JUMPIFEQKS                       R3 K7 [""] ; [+3]
       20 MOVE                             R2 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K3 ["robloxApiKey"]
       25 GETUPVAL                         R2 4
       26 SETTABLEKS                       R2 R1 K4 ["body"]
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1

PROTO_180:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETIMPORT                        R2 K4 [game]
       10 GETTABLEKS                       R2 R2 K5 ["GameId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantGen3dAsyncAssetUpload"]
       15 JUMPIFNOT                        R3 ; [+31]
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R4 K11 [{"generationId", "userId", "universeId", "robloxApiKey"}]
       18 SETTABLEKS                       R0 R4 K7 ["generationId"]
       20 SETTABLEKS                       R1 R4 K8 ["userId"]
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R2 ; [+3]
       25 MOVE                             R5 R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K9 ["universeId"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["FStringCubeGenerationGatewayApiKey"]
       33 LOADK                            R9 K14 ["^%s*(.-)%s*$"]
       34 NAMECALL                         R7 R6 K15 ["match"]
       36 CALL                             R7 2 1
       37 ORK                              R6 R7 K13 [""]
       38 JUMPIFEQKS                       R6 K13 [""] ; [+3]
       40 MOVE                             R5 R6
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K10 ["robloxApiKey"]
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 LOADN                            R4 0
       48 JUMPIFNOTLT                      R4 R2 ; [+5]
       50 DUPTABLE                         R3 K16 [{"universeId"}]
       51 SETTABLEKS                       R2 R3 K9 ["universeId"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R3
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R4 R4 K17 ["callWithOptions"]
       58 NEWCLOSURE                       R5 P0
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R6 0 0
       66 CALL                             R4 2 1
       67 GETTABLEKS                       R5 R4 K18 ["success"]
       69 JUMPIF                           R5 ; [+7]
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R5 R5 K19 ["throwError"]
       73 MOVE                             R6 R4
       74 LOADK                            R7 K20 ["SegmentMesh.postUploadAssetAsync"]
       75 CALL                             R5 2 -1
       76 RETURN                           R5 -1
       77 GETTABLEKS                       R5 R4 K21 ["data"]
       79 GETTABLEKS                       R5 R5 K22 ["assetId"]
       81 FASTCALL2K                       ASSERT R5 K23 ; [+5]
       83 MOVE                             R7 R5
       84 LOADK                            R8 K23 ["Expected assetId in response from SegmentMesh.postUploadAssetAsync"]
       85 GETIMPORT                        R6 K25 [assert]
       87 CALL                             R6 2 0
       88 GETTABLEKS                       R6 R4 K21 ["data"]
       90 GETTABLEKS                       R6 R6 K7 ["generationId"]
       92 FASTCALL2K                       ASSERT R6 K26 ; [+5]
       94 MOVE                             R8 R6
       95 LOADK                            R9 K26 ["Expected generationId in response from SegmentMesh.postUploadAssetAsync"]
       96 GETIMPORT                        R7 K25 [assert]
       98 CALL                             R7 2 0
       99 DUPTABLE                         R7 K27 [{"assetId", "generationId"}]
      100 SETTABLEKS                       R5 R7 K22 ["assetId"]
      102 SETTABLEKS                       R6 R7 K7 ["generationId"]
      104 RETURN                           R7 1

PROTO_181:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Guest"]
        3 GETTABLEKS                       R1 R1 K1 ["LoadAssetHandlers"]
        5 GETTABLEKS                       R1 R1 K2 ["getRobloxScriptHandler"]
        7 GETIMPORT                        R2 K4 [game]
        9 CALL                             R1 1 1
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K6 [tostring]
       14 CALL                             R2 1 1
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_182:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateTextureAsync"]
        3 DUPTABLE                         R1 K18 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["model"], ["cameraExtrinsic"], ["cameraIntrinsic"], ["texturePreviewId"], ["imageIndex"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K19 ["FStringCubeGenerationGatewayApiKey"]
       10 LOADK                            R6 K21 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R4 R3 K22 ["match"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K20 [""]
       15 JUMPIFEQKS                       R3 K20 [""] ; [+3]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K8 ["robloxApiKey"]
       22 GETUPVAL                         R2 3
       23 SETTABLEKS                       R2 R1 K9 ["glb"]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K10 ["assetId"]
       28 SETTABLEKS                       R2 R1 K10 ["assetId"]
       30 GETUPVAL                         R2 5
       31 SETTABLEKS                       R2 R1 K11 ["image"]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K12 ["textPrompt"]
       36 SETTABLEKS                       R2 R1 K12 ["textPrompt"]
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K13 ["model"]
       41 SETTABLEKS                       R2 R1 K13 ["model"]
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K14 ["cameraExtrinsic"]
       46 SETTABLEKS                       R2 R1 K14 ["cameraExtrinsic"]
       48 GETUPVAL                         R2 4
       49 GETTABLEKS                       R2 R2 K15 ["cameraIntrinsic"]
       51 SETTABLEKS                       R2 R1 K15 ["cameraIntrinsic"]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K16 ["texturePreviewId"]
       56 SETTABLEKS                       R2 R1 K16 ["texturePreviewId"]
       58 GETUPVAL                         R2 4
       59 GETTABLEKS                       R2 R2 K17 ["imageIndex"]
       61 SETTABLEKS                       R2 R1 K17 ["imageIndex"]
       63 CALL                             R0 1 -1
       64 RETURN                           R0 -1

PROTO_183:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETTABLEKS                       R3 R0 K3 ["glb"]
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["formFile"]
       14 LOADK                            R3 K5 ["mesh.glb"]
       15 GETIMPORT                        R4 K8 [buffer.fromstring]
       17 GETTABLEKS                       R5 R0 K3 ["glb"]
       19 CALL                             R4 1 1
       20 LOADK                            R5 K9 ["model/gltf-binary"]
       21 CALL                             R2 3 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 GETTABLEKS                       R4 R0 K10 ["image"]
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["formFile"]
       30 LOADK                            R4 K10 ["image"]
       31 GETTABLEKS                       R5 R0 K10 ["image"]
       33 GETTABLEKS                       R7 R0 K12 ["imageContentType"]
       35 ORK                              R6 R7 K11 ["image/png"]
       36 CALL                             R3 3 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K13 ["callWithOptions"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R3
       49 NEWTABLE                         R6 0 0
       51 CALL                             R4 2 1
       52 GETTABLEKS                       R5 R4 K14 ["success"]
       54 JUMPIF                           R5 ; [+7]
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R5 R5 K15 ["throwError"]
       58 MOVE                             R6 R4
       59 LOADK                            R7 K16 ["TextureGeneration.postGenerateTextureAsync"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1
       62 GETTABLEKS                       R5 R4 K17 ["data"]
       64 GETTABLEKS                       R5 R5 K18 ["textureGenerationId"]
       66 FASTCALL2K                       ASSERT R5 K19 ; [+5]
       68 MOVE                             R7 R5
       69 LOADK                            R8 K19 ["Expected textureGenerationId in response from TextureGeneration.postGenerateTextureAsync"]
       70 GETIMPORT                        R6 K21 [assert]
       72 CALL                             R6 2 0
       73 DUPTABLE                         R6 K22 [{"textureGenerationId"}]
       74 SETTABLEKS                       R5 R6 K18 ["textureGenerationId"]
       76 RETURN                           R6 1

PROTO_184:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTextureGenerationStatusAsync"]
        3 DUPTABLE                         R1 K10 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["textureGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K8 ["textureGenerationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K11 ["FStringCubeGenerationGatewayApiKey"]
       13 LOADK                            R6 K13 ["^%s*(.-)%s*$"]
       14 NAMECALL                         R4 R3 K14 ["match"]
       16 CALL                             R4 2 1
       17 ORK                              R3 R4 K12 [""]
       18 JUMPIFEQKS                       R3 K12 [""] ; [+3]
       20 MOVE                             R2 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K9 ["robloxApiKey"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_185:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+7]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["throwError"]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K6 ["TextureGeneration.getTextureGenerationStatusAsync"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 GETTABLEKS                       R3 R2 K7 ["data"]
       31 GETTABLEKS                       R4 R3 K8 ["result"]
       33 DUPTABLE                         R5 K12 [{"status", "modelGlbUrl", "modelRbxmUrl"}]
       34 GETTABLEKS                       R6 R3 K9 ["status"]
       36 SETTABLEKS                       R6 R5 K9 ["status"]
       38 MOVE                             R6 R4
       39 JUMPIFNOT                        R6 ; [+2]
       40 GETTABLEKS                       R6 R4 K10 ["modelGlbUrl"]
       42 SETTABLEKS                       R6 R5 K10 ["modelGlbUrl"]
       44 MOVE                             R6 R4
       45 JUMPIFNOT                        R6 ; [+2]
       46 GETTABLEKS                       R6 R4 K11 ["modelRbxmUrl"]
       48 SETTABLEKS                       R6 R5 K11 ["modelRbxmUrl"]
       50 RETURN                           R5 1

PROTO_186:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postUploadTextureAssetAsync"]
        3 DUPTABLE                         R1 K6 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["textureGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K3 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K4 ["textureGenerationId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K7 ["FStringCubeGenerationGatewayApiKey"]
       13 LOADK                            R6 K9 ["^%s*(.-)%s*$"]
       14 NAMECALL                         R4 R3 K10 ["match"]
       16 CALL                             R4 2 1
       17 ORK                              R3 R4 K8 [""]
       18 JUMPIFEQKS                       R3 K8 [""] ; [+3]
       20 MOVE                             R2 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K5 ["robloxApiKey"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_187:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantGen3dAsyncAssetUpload"]
       11 JUMPIFNOT                        R2 ; [+35]
       12 GETIMPORT                        R2 K5 [game]
       14 GETTABLEKS                       R2 R2 K6 ["GameId"]
       16 GETUPVAL                         R3 2
       17 DUPTABLE                         R4 K11 [{"generationId", "userId", "universeId", "robloxApiKey"}]
       18 SETTABLEKS                       R0 R4 K7 ["generationId"]
       20 SETTABLEKS                       R1 R4 K8 ["userId"]
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R2 ; [+3]
       25 MOVE                             R5 R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R4 K9 ["universeId"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K12 ["FStringCubeGenerationGatewayApiKey"]
       33 LOADK                            R9 K14 ["^%s*(.-)%s*$"]
       34 NAMECALL                         R7 R6 K15 ["match"]
       36 CALL                             R7 2 1
       37 ORK                              R6 R7 K13 [""]
       38 JUMPIFEQKS                       R6 K13 [""] ; [+3]
       40 MOVE                             R5 R6
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K10 ["robloxApiKey"]
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1
       47 GETUPVAL                         R2 3
       48 GETTABLEKS                       R2 R2 K16 ["callWithOptions"]
       50 NEWCLOSURE                       R3 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 NEWTABLE                         R4 0 0
       57 CALL                             R2 2 1
       58 GETTABLEKS                       R3 R2 K17 ["success"]
       60 JUMPIF                           R3 ; [+7]
       61 GETUPVAL                         R3 3
       62 GETTABLEKS                       R3 R3 K18 ["throwError"]
       64 MOVE                             R4 R2
       65 LOADK                            R5 K19 ["TextureGeneration.postUploadTextureAssetAsync"]
       66 CALL                             R3 2 -1
       67 RETURN                           R3 -1
       68 GETTABLEKS                       R3 R2 K20 ["data"]
       70 GETTABLEKS                       R3 R3 K21 ["assetId"]
       72 FASTCALL2K                       ASSERT R3 K22 ; [+5]
       74 MOVE                             R5 R3
       75 LOADK                            R6 K22 ["Expected assetId in response from TextureGeneration.postUploadTextureAssetAsync"]
       76 GETIMPORT                        R4 K24 [assert]
       78 CALL                             R4 2 0
       79 GETTABLEKS                       R4 R2 K20 ["data"]
       81 GETTABLEKS                       R4 R4 K7 ["generationId"]
       83 FASTCALL2K                       ASSERT R4 K25 ; [+5]
       85 MOVE                             R6 R4
       86 LOADK                            R7 K25 ["Expected generationId in response from TextureGeneration.postUploadTextureAssetAsync"]
       87 GETIMPORT                        R5 K24 [assert]
       89 CALL                             R5 2 0
       90 DUPTABLE                         R5 K26 [{"assetId", "generationId"}]
       91 SETTABLEKS                       R3 R5 K21 ["assetId"]
       93 SETTABLEKS                       R4 R5 K7 ["generationId"]
       95 RETURN                           R5 1

PROTO_188:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Guest"]
        3 GETTABLEKS                       R1 R1 K1 ["LoadAssetHandlers"]
        5 GETTABLEKS                       R1 R1 K2 ["getRobloxScriptHandler"]
        7 GETIMPORT                        R2 K4 [game]
        9 CALL                             R1 1 1
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K6 [tostring]
       14 CALL                             R2 1 1
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_189:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateSceneAsync"]
        3 DUPTABLE                         R1 K15 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["textPrompts"], ["images"], ["sceneSize"], ["originWorldCoordinate"], ["useMeshGen"], ["adminOptions"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K16 ["FStringCubeGenerationGatewayApiKey"]
       10 LOADK                            R6 K18 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R4 R3 K19 ["match"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K17 [""]
       15 JUMPIFEQKS                       R3 K17 [""] ; [+3]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K8 ["robloxApiKey"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K9 ["textPrompts"]
       25 SETTABLEKS                       R2 R1 K9 ["textPrompts"]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K10 ["images"]
       31 CALL                             R2 1 1
       32 SETTABLEKS                       R2 R1 K10 ["images"]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K11 ["sceneSize"]
       37 SETTABLEKS                       R2 R1 K11 ["sceneSize"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K12 ["originWorldCoordinate"]
       42 SETTABLEKS                       R2 R1 K12 ["originWorldCoordinate"]
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K13 ["useMeshGen"]
       47 SETTABLEKS                       R2 R1 K13 ["useMeshGen"]
       49 GETUPVAL                         R2 5
       50 GETUPVAL                         R3 3
       51 GETTABLEKS                       R3 R3 K14 ["adminOptions"]
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R4 R4 K20 ["FStringCubeGenerationGatewaySceneAdminOptions"]
       56 CALL                             R2 2 1
       57 SETTABLEKS                       R2 R1 K14 ["adminOptions"]
       59 CALL                             R0 1 -1
       60 RETURN                           R0 -1

PROTO_190:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R4 0 0
       20 CALL                             R2 2 1
       21 GETTABLEKS                       R3 R2 K4 ["success"]
       23 JUMPIF                           R3 ; [+27]
       24 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       26 JUMPIFNOT                        R4 ; [+5]
       27 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       29 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       34 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       36 GETIMPORT                        R5 K12 [select]
       38 LOADN                            R6 2
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K13 ["throwError"]
       42 MOVE                             R9 R2
       43 FASTPCALL                        pcall 2 ; [+2]
       44 GETIMPORT                        R7 K15 [pcall]
       46 CALL                             R7 2 -1
       47 CALL                             R5 -1 1
       48 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       50 RETURN                           R4 1
       51 DUPTABLE                         R3 K18 [{["ok"] = True, ["statusCode"], ["jobId"]}]
       52 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       54 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       56 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       58 GETTABLEKS                       R4 R2 K19 ["data"]
       60 GETTABLEKS                       R4 R4 K17 ["jobId"]
       62 SETTABLEKS                       R4 R3 K17 ["jobId"]
       64 RETURN                           R3 1

PROTO_191:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSceneGenerationStatusAsync"]
        3 DUPTABLE                         R1 K10 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["jobId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K8 ["jobId"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K11 ["FStringCubeGenerationGatewayApiKey"]
       13 LOADK                            R6 K13 ["^%s*(.-)%s*$"]
       14 NAMECALL                         R4 R3 K14 ["match"]
       16 CALL                             R4 2 1
       17 ORK                              R3 R4 K12 [""]
       18 JUMPIFEQKS                       R3 K12 [""] ; [+3]
       20 MOVE                             R2 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K9 ["robloxApiKey"]
       25 CALL                             R0 1 -1
       26 RETURN                           R0 -1

PROTO_192:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["callWithOptions"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K4 ["success"]
       21 JUMPIF                           R3 ; [+27]
       22 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       27 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       32 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       34 GETIMPORT                        R5 K12 [select]
       36 LOADN                            R6 2
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K13 ["throwError"]
       40 MOVE                             R9 R2
       41 FASTPCALL                        pcall 2 ; [+2]
       42 GETIMPORT                        R7 K15 [pcall]
       44 CALL                             R7 2 -1
       45 CALL                             R5 -1 1
       46 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       48 RETURN                           R4 1
       49 GETTABLEKS                       R3 R2 K16 ["data"]
       51 GETTABLEKS                       R4 R3 K17 ["result"]
       53 DUPTABLE                         R5 K22 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["scriptUrl"]}]
       54 GETTABLEKS                       R6 R2 K5 ["httpDetails"]
       56 GETTABLEKS                       R6 R6 K6 ["statusCode"]
       58 SETTABLEKS                       R6 R5 K6 ["statusCode"]
       60 GETTABLEKS                       R6 R3 K19 ["status"]
       62 SETTABLEKS                       R6 R5 K19 ["status"]
       64 GETTABLEKS                       R6 R3 K20 ["currentStage"]
       66 SETTABLEKS                       R6 R5 K20 ["currentStage"]
       68 JUMPIFNOT                        R4 ; [+3]
       69 GETTABLEKS                       R6 R4 K21 ["scriptUrl"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R5 K21 ["scriptUrl"]
       75 RETURN                           R5 1

PROTO_193:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["PlaceSaver"]
        2 NAMECALL                         R1 R1 K1 ["GetPluginComponent"]
        4 CALL                             R1 2 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["SaveAsync"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_194:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["PlaceVersionHistory"]
        2 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        4 CALL                             R2 2 1
        5 GETIMPORT                        R4 K3 [game]
        7 GETTABLEKS                       R4 R4 K4 ["PlaceId"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K6 [{"Title"}]
       11 SETTABLEKS                       R1 R6 K5 ["Title"]
       13 NAMECALL                         R2 R2 K7 ["SaveVersionNotesAsync"]
       15 CALL                             R2 4 0
       16 RETURN                           R0 0

PROTO_195:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["PVHMaxTitleChars"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_196:
        0 DUPCLOSURE                       R1 K0 [PROTO_195]
        1 FASTPCALL                        pcall 1 ; [+2]
        2 GETIMPORT                        R0 K2 [pcall]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+5]
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R1 ; [+3]
        9 MOVE                             R2 R1
       10 RETURN                           R2 1
       11 LOADN                            R2 50
       12 RETURN                           R2 1

PROTO_197:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["APIS_URL"]
        5 LOADK                            R3 K4 ["/+$"]
        6 LOADK                            R4 K5 [""]
        7 CALL                             R1 3 1
        8 LOADK                            R2 K6 ["%*/place-version-history-api/v1/notes/validate?text=%*"]
        9 MOVE                             R4 R1
       10 GETUPVAL                         R5 1
       11 MOVE                             R7 R0
       12 NAMECALL                         R5 R5 K7 ["UrlEncode"]
       14 CALL                             R5 2 1
       15 NAMECALL                         R2 R2 K8 ["format"]
       17 CALL                             R2 3 1
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R5 2
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R5 K9 ["GetAsyncFullUrl"]
       23 CALL                             R5 2 -1
       24 NAMECALL                         R3 R3 K10 ["JSONDecode"]
       26 CALL                             R3 -1 1
       27 GETTABLEKS                       R5 R3 K11 ["isValid"]
       29 JUMPIFEQKB                       R5 TRUE ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1

PROTO_198:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_199:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_200:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.Animation]
        3 GETTABLEKS                       R2 R2 K4 ["Name"]
        5 NAMECALL                         R0 R0 K5 ["PromptForExistingAssetId"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_201:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K1 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+2]
        7 JUMPIFNOTEQKN                    R1 K2 [0] ; [+3]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 RETURN                           R1 1

PROTO_202:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetAsync"]
        8 CALL                             R0 2 1
        9 GETTABLEN                        R1 R0 1
       10 GETTABLEKS                       R1 R1 K1 ["Checked"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 NAMECALL                         R1 R1 K2 ["ActivateAsync"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_203:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["fromAction"]
        8 LOADK                            R2 K3 ["AssetManager"]
        9 LOADK                            R3 K4 ["Toggle"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K7 [task.spawn]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_204:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_205:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_206:
        0 LOADN                            R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R1 K1 [pcall]
        7 CALL                             R1 1 0
        8 CLOSEUPVALS                      R0
        9 RETURN                           R0 1

PROTO_207:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_208:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["PlaceId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_209:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K1 ["GameId"]
        2 NAMECALL                         R1 R1 K2 ["GetItem"]
        4 CALL                             R1 2 1
        5 ORK                              R0 R1 K0 [0]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_210:
        0 LOADN                            R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R1 K1 [pcall]
        7 CALL                             R1 1 0
        8 CLOSEUPVALS                      R0
        9 RETURN                           R0 1

PROTO_211:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_212:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_213:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_214:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_215:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_216:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_217:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelType"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_218:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isEditDataModelAvailable"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_219:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["subscribeEditDataModelAvailabilityChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_220:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_221:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CapabilitiesHandler"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_222:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Src"]
        5 GETTABLEKS                       R2 R2 K3 ["EvalDriver"]
        7 GETTABLEKS                       R2 R2 K4 ["EvalUtils"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["runWithMode"]
       12 LOADK                            R3 K6 ["ServerAndClients"]
       13 MOVE                             R4 R0
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_223:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["cleanupServerAndClients"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_224:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["isCleanupServerAndClientsAvailable"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_225:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_226:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Src"]
        5 GETTABLEKS                       R2 R2 K3 ["EvalDriver"]
        7 GETTABLEKS                       R2 R2 K4 ["EvalUtils"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K5 ["getStopMultiPlayerTestStateChangedSignal"]
       12 CALL                             R2 0 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R2 K6 ["Connect"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_227:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Util"]
        7 GETTABLEKS                       R1 R1 K4 ["MultiPlayersConnection"]
        9 GETTABLEKS                       R1 R1 K5 ["MultiPlayersServer"]
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K6 ["new"]
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["PluginConnectionService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 1
       21 RETURN                           R1 1

PROTO_228:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Src"]
        5 GETTABLEKS                       R2 R2 K3 ["Util"]
        7 GETTABLEKS                       R2 R2 K4 ["MultiPlayersConnection"]
        9 GETTABLEKS                       R2 R2 K5 ["MultiPlayersClient"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["new"]
       14 GETIMPORT                        R3 K8 [game]
       16 LOADK                            R5 K9 ["PluginConnectionService"]
       17 NAMECALL                         R3 R3 K10 ["GetService"]
       19 CALL                             R3 2 1
       20 MOVE                             R4 R0
       21 CALL                             R2 2 1
       22 RETURN                           R2 1

PROTO_229:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_230:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_231:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioStateString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_232:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Guest"]
        3 GETTABLEKS                       R3 R3 K1 ["Environment"]
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 NAMECALL                         R5 R1 K3 ["GetIdentity"]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["Identity"]
       14 GETTABLEKS                       R6 R6 K5 ["Standalone"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K6 ["APIS_URL"]
       23 SETTABLEKS                       R5 R3 K7 ["apisUrl"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R5 R3 K8 ["hasUI"]
       29 DUPCLOSURE                       R5 K9 [PROTO_143]
       30 SETTABLEKS                       R5 R3 K10 ["isRobloxScriptSecurity"]
       32 DUPCLOSURE                       R5 K11 [PROTO_144]
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R5 R3 K12 ["isCompactionExperimentEnabled"]
       37 DUPCLOSURE                       R5 K13 [PROTO_145]
       38 SETTABLEKS                       R5 R3 K14 ["getEngineFeature"]
       40 NEWCLOSURE                       R6 P4
       41 CAPTURE                          VAL R0
       42 FASTPCALL                        pcall 1 ; [+2]
       43 GETIMPORT                        R5 K16 [pcall]
       45 CALL                             R5 1 2
       46 JUMPIFNOT                        R5 ; [+2]
       47 MOVE                             R7 R6
       48 JUMPIF                           R7 ; [+1]
       49 LOADNIL                          R7
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R8 R8 K17 ["createStudioEventLogger"]
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R3 K18 ["EventLogger"]
       57 GETTABLEKS                       R8 R3 K19 ["http"]
       59 DUPCLOSURE                       R9 K20 [PROTO_147]
       60 CAPTURE                          UPVAL U6
       61 SETTABLEKS                       R9 R8 K21 ["createWebStreamClient"]
       63 GETTABLEKS                       R8 R3 K19 ["http"]
       65 DUPCLOSURE                       R9 K22 [PROTO_150]
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U7
       68 SETTABLEKS                       R9 R8 K23 ["requestAsync"]
       70 GETTABLEKS                       R8 R3 K19 ["http"]
       72 DUPCLOSURE                       R9 K24 [PROTO_152]
       73 CAPTURE                          UPVAL U8
       74 SETTABLEKS                       R9 R8 K25 ["openUrl"]
       76 GETTABLEKS                       R8 R3 K26 ["selection"]
       78 DUPCLOSURE                       R9 K27 [PROTO_153]
       79 CAPTURE                          UPVAL U9
       80 SETTABLEKS                       R9 R8 K28 ["get"]
       82 GETTABLEKS                       R8 R3 K26 ["selection"]
       84 DUPCLOSURE                       R9 K29 [PROTO_154]
       85 CAPTURE                          UPVAL U9
       86 SETTABLEKS                       R9 R8 K30 ["set"]
       88 DUPCLOSURE                       R8 K31 [PROTO_155]
       89 CAPTURE                          UPVAL U10
       90 SETTABLEKS                       R8 R3 K32 ["openScriptAsync"]
       92 GETTABLEKS                       R8 R3 K33 ["tools"]
       94 GETTABLEKS                       R8 R8 K34 ["marketplaceInsertion"]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K0 ["Guest"]
       99 GETTABLEKS                       R9 R9 K35 ["LoadAssetHandlers"]
      101 GETTABLEKS                       R9 R9 K36 ["getRobloxScriptHandler"]
      103 GETIMPORT                        R10 K38 [game]
      105 CALL                             R9 1 1
      106 SETTABLEKS                       R9 R8 K39 ["loadAssetAsync"]
      108 GETTABLEKS                       R8 R3 K33 ["tools"]
      110 GETTABLEKS                       R8 R8 K40 ["materialGen"]
      112 GETUPVAL                         R9 11
      113 GETTABLEKS                       R9 R9 K41 ["create"]
      115 DUPTABLE                         R10 K45 [{"NotificationManager", "Net", "Telemetry"}]
      116 JUMPIFNOT                        R2 ; [+5]
      117 GETUPVAL                         R11 12
      118 GETTABLEKS                       R11 R11 K28 ["get"]
      120 CALL                             R11 0 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R11
      123 SETTABLEKS                       R11 R10 K42 ["NotificationManager"]
      125 SETTABLEKS                       R1 R10 K43 ["Net"]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K46 ["makeStudioTelemetryEvents"]
      130 MOVE                             R12 R7
      131 CALL                             R11 1 1
      132 SETTABLEKS                       R11 R10 K44 ["Telemetry"]
      134 CALL                             R9 1 1
      135 GETTABLEKS                       R10 R9 K47 ["generateMaterialVariantsAsync"]
      137 SETTABLEKS                       R10 R8 K47 ["generateMaterialVariantsAsync"]
      139 GETTABLEKS                       R10 R9 K48 ["uploadMaterialsAsync"]
      141 SETTABLEKS                       R10 R8 K48 ["uploadMaterialsAsync"]
      143 GETTABLEKS                       R10 R3 K49 ["Destroying"]
      145 NEWCLOSURE                       R12 P11
      146 CAPTURE                          VAL R9
      147 NAMECALL                         R10 R10 K50 ["Once"]
      149 CALL                             R10 2 0
      150 GETUPVAL                         R8 13
      151 MOVE                             R9 R3
      152 MOVE                             R10 R0
      153 CALL                             R8 2 0
      154 GETTABLEKS                       R8 R3 K33 ["tools"]
      156 GETTABLEKS                       R8 R8 K51 ["layoutGen"]
      158 NEWCLOSURE                       R9 P12
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R9 R8 K52 ["activateScaleTool"]
      162 JUMPIFNOT                        R4 ; [+4]
      163 GETUPVAL                         R8 14
      164 MOVE                             R9 R3
      165 MOVE                             R10 R0
      166 CALL                             R8 2 0
      167 GETUPVAL                         R8 15
      168 MOVE                             R9 R3
      169 CALL                             R8 1 0
      170 GETUPVAL                         R8 16
      171 MOVE                             R9 R3
      172 CALL                             R8 1 0
      173 GETUPVAL                         R8 4
      174 GETTABLEKS                       R8 R8 K53 ["FFlagAssistantMcpListPlaceTool"]
      176 JUMPIFNOT                        R8 ; [+3]
      177 GETUPVAL                         R8 17
      178 MOVE                             R9 R3
      179 CALL                             R8 1 0
      180 GETUPVAL                         R8 18
      181 CALL                             R8 0 1
      182 JUMPIFNOT                        R8 ; [+33]
      183 GETUPVAL                         R8 19
      184 GETTABLEKS                       R8 R8 K41 ["create"]
      186 MOVE                             R9 R0
      187 CALL                             R8 1 1
      188 GETTABLEKS                       R9 R3 K33 ["tools"]
      190 GETTABLEKS                       R9 R9 K54 ["animationGen"]
      192 GETTABLEKS                       R10 R8 K55 ["generateAnimationAsync"]
      194 SETTABLEKS                       R10 R9 K55 ["generateAnimationAsync"]
      196 GETTABLEKS                       R10 R8 K56 ["publishAnimationHeadlessAsync"]
      198 SETTABLEKS                       R10 R9 K56 ["publishAnimationHeadlessAsync"]
      200 GETUPVAL                         R10 4
      201 GETTABLEKS                       R10 R10 K57 ["FFlagAnimationGenOpenACE"]
      203 JUMPIFNOT                        R10 ; [+4]
      204 GETTABLEKS                       R10 R8 K58 ["openAnimationClipEditorAsync"]
      206 SETTABLEKS                       R10 R9 K58 ["openAnimationClipEditorAsync"]
      208 GETUPVAL                         R10 4
      209 GETTABLEKS                       R10 R10 K59 ["FFlagAssistantAnimationGenShowPublishButton"]
      211 JUMPIFNOT                        R10 ; [+4]
      212 GETTABLEKS                       R10 R8 K60 ["publishAnimationAsync"]
      214 SETTABLEKS                       R10 R9 K60 ["publishAnimationAsync"]
      216 GETUPVAL                         R8 4
      217 GETTABLEKS                       R8 R8 K61 ["FFlagAssistantAvatarAutoSetupTool"]
      219 JUMPIFNOT                        R8 ; [+24]
      220 GETTABLEKS                       R8 R3 K33 ["tools"]
      222 GETTABLEKS                       R8 R8 K62 ["avatarAutoSetup"]
      224 GETUPVAL                         R9 5
      225 GETTABLEKS                       R9 R9 K46 ["makeStudioTelemetryEvents"]
      227 MOVE                             R10 R7
      228 CALL                             R9 1 1
      229 NEWCLOSURE                       R10 P13
      230 CAPTURE                          UPVAL U20
      231 CAPTURE                          VAL R9
      232 SETTABLEKS                       R10 R8 K63 ["autoSetupAsync"]
      234 GETUPVAL                         R10 20
      235 GETTABLEKS                       R10 R10 K64 ["cancelAutoSetup"]
      237 SETTABLEKS                       R10 R8 K64 ["cancelAutoSetup"]
      239 GETUPVAL                         R10 21
      240 GETTABLEKS                       R10 R10 K65 ["getClassificationPlan"]
      242 SETTABLEKS                       R10 R8 K65 ["getClassificationPlan"]
      244 GETUPVAL                         R8 4
      245 GETTABLEKS                       R8 R8 K66 ["FFlagAssistantAssetQualityTool"]
      247 JUMPIFNOT                        R8 ; [+20]
      248 GETTABLEKS                       R8 R3 K33 ["tools"]
      250 GETTABLEKS                       R8 R8 K67 ["assetQuality"]
      252 GETIMPORT                        R9 K69 [require]
      254 GETUPVAL                         R10 22
      255 GETTABLEKS                       R10 R10 K70 ["Src"]
      257 GETTABLEKS                       R10 R10 K71 ["Util"]
      259 GETTABLEKS                       R10 R10 K72 ["AssetQuality"]
      261 GETTABLEKS                       R10 R10 K73 ["AssetQualityValidator"]
      263 CALL                             R9 1 1
      264 GETTABLEKS                       R10 R9 K74 ["validateAsync"]
      266 SETTABLEKS                       R10 R8 K74 ["validateAsync"]
      268 GETUPVAL                         R8 4
      269 GETTABLEKS                       R8 R8 K75 ["FFlagAssistantAvatarGenTool"]
      271 JUMPIFNOT                        R8 ; [+9]
      272 GETTABLEKS                       R8 R3 K33 ["tools"]
      274 GETTABLEKS                       R8 R8 K76 ["avatarGen"]
      276 GETUPVAL                         R9 23
      277 GETTABLEKS                       R9 R9 K77 ["generateAvatarAsync"]
      279 SETTABLEKS                       R9 R8 K77 ["generateAvatarAsync"]
      281 GETTABLEKS                       R8 R3 K33 ["tools"]
      283 GETTABLEKS                       R8 R8 K78 ["uploadImage"]
      285 DUPCLOSURE                       R9 K79 [PROTO_157]
      286 CAPTURE                          UPVAL U24
      287 SETTABLEKS                       R9 R8 K80 ["publishAssetAsync"]
      289 DUPCLOSURE                       R9 K81 [PROTO_159]
      290 CAPTURE                          UPVAL U4
      291 CAPTURE                          UPVAL U25
      292 CAPTURE                          UPVAL U26
      293 CAPTURE                          UPVAL U2
      294 CAPTURE                          UPVAL U27
      295 SETTABLEKS                       R9 R8 K82 ["searchAssetAsync"]
      297 DUPCLOSURE                       R8 K83 [PROTO_161]
      298 CAPTURE                          UPVAL U28
      299 SETTABLEKS                       R8 R3 K84 ["hasInternalPermission"]
      301 DUPCLOSURE                       R8 K85 [PROTO_163]
      302 CAPTURE                          UPVAL U25
      303 CAPTURE                          UPVAL U29
      304 SETTABLEKS                       R8 R3 K86 ["fetchSystemPromptAsync"]
      306 GETUPVAL                         R8 30
      307 MOVE                             R9 R3
      308 MOVE                             R10 R0
      309 CALL                             R8 2 0
      310 GETUPVAL                         R8 31
      311 MOVE                             R9 R3
      312 MOVE                             R10 R0
      313 CALL                             R8 2 0
      314 GETUPVAL                         R8 4
      315 GETTABLEKS                       R8 R8 K87 ["FFlagAssistantActivatePluginTool"]
      317 JUMPIFNOT                        R8 ; [+4]
      318 GETUPVAL                         R8 32
      319 MOVE                             R9 R3
      320 MOVE                             R10 R0
      321 CALL                             R8 2 0
      322 GETUPVAL                         R8 33
      323 CALL                             R8 0 0
      324 GETUPVAL                         R8 34
      325 GETTABLEKS                       R8 R8 K88 ["patchCubeGenerationGatewayHost"]
      327 GETUPVAL                         R9 35
      328 GETUPVAL                         R10 4
      329 GETTABLEKS                       R10 R10 K89 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      331 CALL                             R8 2 0
      332 DUPCLOSURE                       R8 K90 [PROTO_164]
      333 DUPCLOSURE                       R9 K91 [PROTO_165]
      334 CAPTURE                          UPVAL U35
      335 DUPTABLE                         R10 K94 [{"startAsync", "getStatusAsync"}]
      336 NEWCLOSURE                       R11 P20
      337 CAPTURE                          VAL R3
      338 CAPTURE                          UPVAL U25
      339 CAPTURE                          UPVAL U36
      340 CAPTURE                          UPVAL U4
      341 CAPTURE                          VAL R9
      342 SETTABLEKS                       R11 R10 K92 ["startAsync"]
      344 NEWCLOSURE                       R11 P21
      345 CAPTURE                          VAL R3
      346 CAPTURE                          UPVAL U25
      347 CAPTURE                          UPVAL U36
      348 CAPTURE                          UPVAL U4
      349 CAPTURE                          VAL R8
      350 SETTABLEKS                       R11 R10 K93 ["getStatusAsync"]
      352 SETTABLEKS                       R10 R3 K95 ["imageGeneration"]
      354 DUPTABLE                         R10 K94 [{"startAsync", "getStatusAsync"}]
      355 NEWCLOSURE                       R11 P22
      356 CAPTURE                          VAL R3
      357 CAPTURE                          UPVAL U35
      358 CAPTURE                          UPVAL U25
      359 CAPTURE                          UPVAL U36
      360 CAPTURE                          UPVAL U4
      361 SETTABLEKS                       R11 R10 K92 ["startAsync"]
      363 NEWCLOSURE                       R11 P23
      364 CAPTURE                          VAL R3
      365 CAPTURE                          UPVAL U25
      366 CAPTURE                          UPVAL U36
      367 CAPTURE                          UPVAL U4
      368 CAPTURE                          UPVAL U34
      369 SETTABLEKS                       R11 R10 K93 ["getStatusAsync"]
      371 SETTABLEKS                       R10 R3 K96 ["texturePreview"]
      373 GETUPVAL                         R10 36
      374 GETTABLEKS                       R10 R10 K97 ["SegmentMesh"]
      376 GETUPVAL                         R11 36
      377 GETTABLEKS                       R11 R11 K98 ["TextureGeneration"]
      379 DUPCLOSURE                       R12 K99 [PROTO_174]
      380 CAPTURE                          UPVAL U34
      381 CAPTURE                          UPVAL U6
      382 DUPTABLE                         R13 K100 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      383 NEWCLOSURE                       R14 P25
      384 CAPTURE                          VAL R3
      385 CAPTURE                          UPVAL U35
      386 CAPTURE                          UPVAL U25
      387 CAPTURE                          VAL R10
      388 CAPTURE                          UPVAL U4
      389 CAPTURE                          VAL R12
      390 SETTABLEKS                       R14 R13 K92 ["startAsync"]
      392 NEWCLOSURE                       R14 P26
      393 CAPTURE                          VAL R3
      394 CAPTURE                          UPVAL U25
      395 CAPTURE                          VAL R10
      396 CAPTURE                          UPVAL U4
      397 CAPTURE                          VAL R12
      398 SETTABLEKS                       R14 R13 K93 ["getStatusAsync"]
      400 NEWCLOSURE                       R14 P27
      401 CAPTURE                          VAL R3
      402 CAPTURE                          UPVAL U4
      403 CAPTURE                          UPVAL U37
      404 CAPTURE                          UPVAL U25
      405 CAPTURE                          VAL R10
      406 SETTABLEKS                       R14 R13 K80 ["publishAssetAsync"]
      408 DUPCLOSURE                       R14 K101 [PROTO_181]
      409 CAPTURE                          UPVAL U0
      410 SETTABLEKS                       R14 R13 K39 ["loadAssetAsync"]
      412 SETTABLEKS                       R13 R3 K102 ["segmentMesh"]
      414 DUPTABLE                         R13 K100 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      415 NEWCLOSURE                       R14 P29
      416 CAPTURE                          VAL R3
      417 CAPTURE                          UPVAL U35
      418 CAPTURE                          UPVAL U25
      419 CAPTURE                          VAL R11
      420 CAPTURE                          UPVAL U4
      421 SETTABLEKS                       R14 R13 K92 ["startAsync"]
      423 NEWCLOSURE                       R14 P30
      424 CAPTURE                          VAL R3
      425 CAPTURE                          UPVAL U25
      426 CAPTURE                          VAL R11
      427 CAPTURE                          UPVAL U4
      428 SETTABLEKS                       R14 R13 K93 ["getStatusAsync"]
      430 NEWCLOSURE                       R14 P31
      431 CAPTURE                          VAL R3
      432 CAPTURE                          UPVAL U4
      433 CAPTURE                          UPVAL U37
      434 CAPTURE                          UPVAL U25
      435 CAPTURE                          VAL R11
      436 SETTABLEKS                       R14 R13 K80 ["publishAssetAsync"]
      438 DUPCLOSURE                       R14 K103 [PROTO_188]
      439 CAPTURE                          UPVAL U0
      440 SETTABLEKS                       R14 R13 K39 ["loadAssetAsync"]
      442 SETTABLEKS                       R13 R3 K104 ["textureGeneration"]
      444 GETUPVAL                         R13 36
      445 GETTABLEKS                       R13 R13 K105 ["SceneGeneration"]
      447 DUPTABLE                         R14 K94 [{"startAsync", "getStatusAsync"}]
      448 NEWCLOSURE                       R15 P33
      449 CAPTURE                          VAL R3
      450 CAPTURE                          UPVAL U25
      451 CAPTURE                          VAL R13
      452 CAPTURE                          UPVAL U4
      453 CAPTURE                          VAL R9
      454 CAPTURE                          UPVAL U38
      455 SETTABLEKS                       R15 R14 K92 ["startAsync"]
      457 NEWCLOSURE                       R15 P34
      458 CAPTURE                          VAL R3
      459 CAPTURE                          UPVAL U25
      460 CAPTURE                          VAL R13
      461 CAPTURE                          UPVAL U4
      462 SETTABLEKS                       R15 R14 K93 ["getStatusAsync"]
      464 SETTABLEKS                       R14 R3 K106 ["sceneGeneration"]
      466 GETUPVAL                         R14 4
      467 GETTABLEKS                       R14 R14 K107 ["FFlagAssistantSavePlaceTool"]
      469 JUMPIFNOT                        R14 ; [+20]
      470 DUPTABLE                         R14 K112 [{"saveAsync", "saveVersionNotesAsync", "getMaxNotesTitleLength", "validateVersionNotesAsync"}]
      471 NEWCLOSURE                       R15 P35
      472 CAPTURE                          VAL R0
      473 SETTABLEKS                       R15 R14 K108 ["saveAsync"]
      475 NEWCLOSURE                       R15 P36
      476 CAPTURE                          VAL R0
      477 SETTABLEKS                       R15 R14 K109 ["saveVersionNotesAsync"]
      479 DUPCLOSURE                       R15 K113 [PROTO_196]
      480 SETTABLEKS                       R15 R14 K110 ["getMaxNotesTitleLength"]
      482 DUPCLOSURE                       R15 K114 [PROTO_197]
      483 CAPTURE                          UPVAL U2
      484 CAPTURE                          UPVAL U6
      485 CAPTURE                          UPVAL U39
      486 SETTABLEKS                       R15 R14 K111 ["validateVersionNotesAsync"]
      488 SETTABLEKS                       R14 R3 K115 ["placeSaving"]
      490 DUPCLOSURE                       R14 K116 [PROTO_198]
      491 CAPTURE                          UPVAL U28
      492 SETTABLEKS                       R14 R3 K117 ["copyToClipboard"]
      494 DUPCLOSURE                       R14 K118 [PROTO_199]
      495 CAPTURE                          UPVAL U28
      496 SETTABLEKS                       R14 R3 K119 ["getClassIcon"]
      498 NEWCLOSURE                       R14 P41
      499 CAPTURE                          VAL R0
      500 SETTABLEKS                       R14 R3 K120 ["browseAssetsAsync"]
      502 NEWCLOSURE                       R14 P42
      503 CAPTURE                          VAL R0
      504 CAPTURE                          UPVAL U40
      505 SETTABLEKS                       R14 R3 K121 ["openAssetManager"]
      507 GETUPVAL                         R14 0
      508 GETTABLEKS                       R14 R14 K0 ["Guest"]
      510 GETTABLEKS                       R14 R14 K122 ["RecordingHandlers"]
      512 GETTABLEKS                       R14 R14 K123 ["getPluginHandlers"]
      514 GETUPVAL                         R15 41
      515 CALL                             R14 1 1
      516 GETTABLEKS                       R15 R14 K124 ["startRecording"]
      518 SETTABLEKS                       R15 R3 K124 ["startRecording"]
      520 GETTABLEKS                       R15 R14 K125 ["endRecording"]
      522 SETTABLEKS                       R15 R3 K125 ["endRecording"]
      524 DUPCLOSURE                       R15 K126 [PROTO_204]
      525 CAPTURE                          UPVAL U10
      526 SETTABLEKS                       R15 R3 K127 ["getScriptSource"]
      528 DUPCLOSURE                       R15 K128 [PROTO_206]
      529 CAPTURE                          UPVAL U28
      530 SETTABLEKS                       R15 R3 K129 ["getUserId"]
      532 JUMPIFNOT                        R4 ; [+43]
      533 LOADK                            R17 K130 ["GameId"]
      534 GETIMPORT                        R18 K38 [game]
      536 GETTABLEKS                       R18 R18 K130 ["GameId"]
      538 NAMECALL                         R15 R0 K131 ["SetItem"]
      540 CALL                             R15 3 0
      541 GETIMPORT                        R15 K38 [game]
      543 LOADK                            R17 K130 ["GameId"]
      544 NAMECALL                         R15 R15 K132 ["GetPropertyChangedSignal"]
      546 CALL                             R15 2 1
      547 NEWCLOSURE                       R17 P45
      548 CAPTURE                          VAL R0
      549 NAMECALL                         R15 R15 K133 ["Connect"]
      551 CALL                             R15 2 0
      552 GETUPVAL                         R15 4
      553 GETTABLEKS                       R15 R15 K134 ["FFlagAssistantMcpCapturePerTurn"]
      555 JUMPIFNOT                        R15 ; [+25]
      556 LOADK                            R17 K135 ["PlaceId"]
      557 GETIMPORT                        R18 K38 [game]
      559 GETTABLEKS                       R18 R18 K135 ["PlaceId"]
      561 NAMECALL                         R15 R0 K131 ["SetItem"]
      563 CALL                             R15 3 0
      564 GETIMPORT                        R15 K38 [game]
      566 LOADK                            R17 K135 ["PlaceId"]
      567 NAMECALL                         R15 R15 K132 ["GetPropertyChangedSignal"]
      569 CALL                             R15 2 1
      570 NEWCLOSURE                       R17 P46
      571 CAPTURE                          VAL R0
      572 NAMECALL                         R15 R15 K133 ["Connect"]
      574 CALL                             R15 2 0
      575 JUMP                             ; [+5]
      576 JUMPIFNOT                        R2 ; [+4]
      577 NEWCLOSURE                       R15 P47
      578 CAPTURE                          VAL R0
      579 SETTABLEKS                       R15 R3 K136 ["getGameId"]
      581 DUPCLOSURE                       R15 K137 [PROTO_211]
      582 CAPTURE                          UPVAL U42
      583 SETTABLEKS                       R15 R3 K138 ["startStopPlayAsync"]
      585 DUPCLOSURE                       R15 K139 [PROTO_213]
      586 CAPTURE                          UPVAL U43
      587 SETTABLEKS                       R15 R3 K140 ["subscribeOutput"]
      589 DUPCLOSURE                       R15 K141 [PROTO_214]
      590 CAPTURE                          UPVAL U44
      591 SETTABLEKS                       R15 R3 K142 ["subscribeGameLoaded"]
      593 DUPCLOSURE                       R15 K143 [PROTO_215]
      594 CAPTURE                          UPVAL U45
      595 SETTABLEKS                       R15 R3 K144 ["subscribeGameStopped"]
      597 DUPCLOSURE                       R15 K145 [PROTO_216]
      598 CAPTURE                          UPVAL U46
      599 SETTABLEKS                       R15 R3 K146 ["getStudioPlayState"]
      601 DUPCLOSURE                       R15 K147 [PROTO_217]
      602 CAPTURE                          UPVAL U46
      603 SETTABLEKS                       R15 R3 K148 ["getFocusedDataModelType"]
      605 DUPCLOSURE                       R15 K149 [PROTO_218]
      606 CAPTURE                          UPVAL U46
      607 SETTABLEKS                       R15 R3 K150 ["isEditDataModelAvailable"]
      609 GETUPVAL                         R15 4
      610 GETTABLEKS                       R15 R15 K151 ["FFlagAssistantRestoreMostRecentThread"]
      612 JUMPIFNOT                        R15 ; [+4]
      613 DUPCLOSURE                       R15 K152 [PROTO_219]
      614 CAPTURE                          UPVAL U46
      615 SETTABLEKS                       R15 R3 K153 ["subscribeEditDataModelAvailabilityChanged"]
      617 GETUPVAL                         R15 47
      618 MOVE                             R16 R0
      619 MOVE                             R17 R1
      620 MOVE                             R18 R3
      621 CALL                             R15 3 0
      622 GETUPVAL                         R15 4
      623 GETTABLEKS                       R15 R15 K154 ["FFlagAssistantMcpListStudiosTool"]
      625 JUMPIFNOT                        R15 ; [+5]
      626 GETUPVAL                         R15 48
      627 MOVE                             R16 R0
      628 MOVE                             R17 R1
      629 MOVE                             R18 R3
      630 CALL                             R15 3 0
      631 NEWCLOSURE                       R16 P56
      632 CAPTURE                          VAL R0
      633 FASTPCALL                        pcall 1 ; [+2]
      634 GETIMPORT                        R15 K16 [pcall]
      636 CALL                             R15 1 2
      637 JUMPIFNOT                        R15 ; [+3]
      638 JUMPIFNOT                        R16 ; [+2]
      639 SETTABLEKS                       R16 R3 K155 ["assetAccessController"]
      641 GETUPVAL                         R17 4
      642 GETTABLEKS                       R17 R17 K156 ["FFlagAssistantInsertAssetSandboxScripts"]
      644 JUMPIFNOT                        R17 ; [+9]
      645 NEWCLOSURE                       R18 P57
      646 CAPTURE                          VAL R0
      647 FASTPCALL                        pcall 1 ; [+2]
      648 GETIMPORT                        R17 K16 [pcall]
      650 CALL                             R17 1 2
      651 JUMPIFNOT                        R18 ; [+2]
      652 SETTABLEKS                       R18 R3 K157 ["capabilitiesHandler"]
      654 DUPCLOSURE                       R17 K158 [PROTO_222]
      655 CAPTURE                          UPVAL U22
      656 SETTABLEKS                       R17 R3 K159 ["startMultiPlayerTest"]
      658 DUPCLOSURE                       R17 K160 [PROTO_223]
      659 CAPTURE                          UPVAL U22
      660 SETTABLEKS                       R17 R3 K161 ["stopMultiPlayerTest"]
      662 DUPCLOSURE                       R17 K162 [PROTO_224]
      663 CAPTURE                          UPVAL U22
      664 SETTABLEKS                       R17 R3 K163 ["isInMultiPlayerTest"]
      666 DUPCLOSURE                       R17 K164 [PROTO_226]
      667 CAPTURE                          UPVAL U22
      668 SETTABLEKS                       R17 R3 K165 ["subscribeStopMultiPlayerTestStateChanged"]
      670 DUPCLOSURE                       R17 K166 [PROTO_227]
      671 CAPTURE                          UPVAL U22
      672 SETTABLEKS                       R17 R3 K167 ["createMultiPlayersServer"]
      674 DUPCLOSURE                       R17 K168 [PROTO_228]
      675 CAPTURE                          UPVAL U22
      676 SETTABLEKS                       R17 R3 K169 ["createMultiPlayersClient"]
      678 DUPCLOSURE                       R17 K170 [PROTO_229]
      679 CAPTURE                          UPVAL U3
      680 SETTABLEKS                       R17 R3 K171 ["getExperimentFeatureEnabled"]
      682 DUPCLOSURE                       R17 K172 [PROTO_230]
      683 CAPTURE                          UPVAL U3
      684 SETTABLEKS                       R17 R3 K173 ["onceExperimentFeatureEnabled"]
      686 DUPCLOSURE                       R17 K174 [PROTO_231]
      687 CAPTURE                          UPVAL U49
      688 SETTABLEKS                       R17 R3 K175 ["getStudioState"]
      690 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [game]
        9 GETTABLEKS                       R2 R2 K6 ["GetService"]
       11 GETIMPORT                        R3 K5 [game]
       13 LOADK                            R4 K7 ["ScriptEditorService"]
       14 FASTPCALL                        pcall 3 ; [+2]
       15 GETIMPORT                        R1 K9 [pcall]
       17 CALL                             R1 3 2
       18 GETIMPORT                        R3 K5 [game]
       20 LOADK                            R5 K10 ["BrowserService"]
       21 NAMECALL                         R3 R3 K6 ["GetService"]
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K5 [game]
       26 LOADK                            R6 K11 ["ChangeHistoryService"]
       27 NAMECALL                         R4 R4 K6 ["GetService"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R6 K5 [game]
       32 GETTABLEKS                       R6 R6 K6 ["GetService"]
       34 GETIMPORT                        R7 K5 [game]
       36 LOADK                            R8 K12 ["GenerationService"]
       37 FASTPCALL                        pcall 3 ; [+2]
       38 GETIMPORT                        R5 K9 [pcall]
       40 CALL                             R5 3 2
       41 GETIMPORT                        R7 K5 [game]
       43 LOADK                            R9 K13 ["HttpRbxApiService"]
       44 NAMECALL                         R7 R7 K6 ["GetService"]
       46 CALL                             R7 2 1
       47 GETIMPORT                        R8 K5 [game]
       49 LOADK                            R10 K14 ["HttpService"]
       50 NAMECALL                         R8 R8 K6 ["GetService"]
       52 CALL                             R8 2 1
       53 GETIMPORT                        R9 K5 [game]
       55 LOADK                            R11 K15 ["InsertService"]
       56 NAMECALL                         R9 R9 K6 ["GetService"]
       58 CALL                             R9 2 1
       59 GETIMPORT                        R10 K5 [game]
       61 LOADK                            R12 K16 ["LogService"]
       62 NAMECALL                         R10 R10 K6 ["GetService"]
       64 CALL                             R10 2 1
       65 GETIMPORT                        R11 K5 [game]
       67 LOADK                            R13 K17 ["PlacesService"]
       68 NAMECALL                         R11 R11 K6 ["GetService"]
       70 CALL                             R11 2 1
       71 GETIMPORT                        R13 K5 [game]
       73 GETTABLEKS                       R13 R13 K6 ["GetService"]
       75 GETIMPORT                        R14 K5 [game]
       77 LOADK                            R15 K18 ["PluginManagementService"]
       78 FASTPCALL                        pcall 3 ; [+2]
       79 GETIMPORT                        R12 K9 [pcall]
       81 CALL                             R12 3 2
       82 GETIMPORT                        R14 K5 [game]
       84 LOADK                            R16 K19 ["PublishService"]
       85 NAMECALL                         R14 R14 K6 ["GetService"]
       87 CALL                             R14 2 1
       88 GETIMPORT                        R15 K5 [game]
       90 LOADK                            R17 K20 ["RunService"]
       91 NAMECALL                         R15 R15 K6 ["GetService"]
       93 CALL                             R15 2 1
       94 GETIMPORT                        R16 K5 [game]
       96 LOADK                            R18 K21 ["Selection"]
       97 NAMECALL                         R16 R16 K6 ["GetService"]
       99 CALL                             R16 2 1
      100 GETIMPORT                        R17 K5 [game]
      102 LOADK                            R19 K22 ["SoundService"]
      103 NAMECALL                         R17 R17 K6 ["GetService"]
      105 CALL                             R17 2 1
      106 GETIMPORT                        R18 K5 [game]
      108 LOADK                            R20 K23 ["StudioAssetService"]
      109 NAMECALL                         R18 R18 K6 ["GetService"]
      111 CALL                             R18 2 1
      112 GETIMPORT                        R20 K5 [game]
      114 GETTABLEKS                       R20 R20 K6 ["GetService"]
      116 GETIMPORT                        R21 K5 [game]
      118 LOADK                            R22 K24 ["StudioCaptureService"]
      119 FASTPCALL                        pcall 3 ; [+2]
      120 GETIMPORT                        R19 K9 [pcall]
      122 CALL                             R19 3 2
      123 GETIMPORT                        R21 K5 [game]
      125 LOADK                            R23 K25 ["StudioService"]
      126 NAMECALL                         R21 R21 K6 ["GetService"]
      128 CALL                             R21 2 1
      129 GETIMPORT                        R22 K5 [game]
      131 LOADK                            R24 K26 ["UniqueIdLookupService"]
      132 NAMECALL                         R22 R22 K6 ["GetService"]
      134 CALL                             R22 2 1
      135 GETTABLEKS                       R23 R0 K27 ["Packages"]
      137 GETIMPORT                        R24 K29 [require]
      139 GETTABLEKS                       R25 R23 K30 ["AssistantUI"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K29 [require]
      144 GETTABLEKS                       R26 R23 K31 ["Bin"]
      146 CALL                             R25 1 1
      147 GETIMPORT                        R26 K29 [require]
      149 GETTABLEKS                       R27 R23 K32 ["DMNetworking"]
      151 CALL                             R26 1 1
      152 GETIMPORT                        R27 K29 [require]
      154 GETTABLEKS                       R28 R23 K33 ["Framework"]
      156 CALL                             R27 1 1
      157 GETIMPORT                        R28 K29 [require]
      159 GETTABLEKS                       R29 R23 K34 ["Gen3dCore"]
      161 CALL                             R28 1 1
      162 GETIMPORT                        R29 K29 [require]
      164 GETTABLEKS                       R30 R23 K35 ["HttpWrapper"]
      166 CALL                             R29 1 1
      167 GETIMPORT                        R30 K29 [require]
      169 GETTABLEKS                       R31 R23 K36 ["ModelContextProtocol"]
      171 CALL                             R30 1 1
      172 GETIMPORT                        R31 K29 [require]
      174 GETTABLEKS                       R32 R23 K37 ["OpenApiCreatorHomeApi"]
      176 CALL                             R31 1 1
      177 GETIMPORT                        R32 K29 [require]
      179 GETTABLEKS                       R33 R23 K38 ["OpenApiCreatorInventoryApi"]
      181 CALL                             R32 1 1
      182 GETIMPORT                        R33 K29 [require]
      184 GETTABLEKS                       R34 R23 K39 ["OpenApiCubeGenerationGateway"]
      186 CALL                             R33 1 1
      187 GETIMPORT                        R34 K29 [require]
      189 GETTABLEKS                       R35 R23 K40 ["OpenApiMcpAssistantApi"]
      191 CALL                             R34 1 1
      192 GETIMPORT                        R35 K29 [require]
      194 GETTABLEKS                       R36 R23 K41 ["OpenApiMcpAssistantStorageApi"]
      196 CALL                             R35 1 1
      197 GETIMPORT                        R36 K29 [require]
      199 GETTABLEKS                       R37 R23 K42 ["Promise"]
      201 CALL                             R36 1 1
      202 GETIMPORT                        R37 K29 [require]
      204 GETTABLEKS                       R38 R23 K43 ["StudioFoundation"]
      206 CALL                             R37 1 1
      207 GETIMPORT                        R38 K29 [require]
      209 GETTABLEKS                       R39 R0 K44 ["Src"]
      211 GETTABLEKS                       R39 R39 K45 ["Util"]
      213 GETTABLEKS                       R39 R39 K46 ["AvatarAutoSetup"]
      215 GETTABLEKS                       R39 R39 K47 ["Orchestrator"]
      217 CALL                             R38 1 1
      218 GETIMPORT                        R39 K29 [require]
      220 GETTABLEKS                       R40 R0 K44 ["Src"]
      222 GETTABLEKS                       R40 R40 K45 ["Util"]
      224 GETTABLEKS                       R40 R40 K48 ["AvatarGen"]
      226 GETTABLEKS                       R40 R40 K47 ["Orchestrator"]
      228 CALL                             R39 1 1
      229 GETIMPORT                        R40 K29 [require]
      231 GETTABLEKS                       R41 R0 K44 ["Src"]
      233 GETTABLEKS                       R41 R41 K45 ["Util"]
      235 GETTABLEKS                       R41 R41 K46 ["AvatarAutoSetup"]
      237 GETTABLEKS                       R41 R41 K49 ["ClassificationTargetUtils"]
      239 CALL                             R40 1 1
      240 GETIMPORT                        R41 K29 [require]
      242 GETTABLEKS                       R42 R0 K44 ["Src"]
      244 GETTABLEKS                       R42 R42 K45 ["Util"]
      246 GETTABLEKS                       R42 R42 K50 ["ExperimentFeature"]
      248 CALL                             R41 1 1
      249 GETIMPORT                        R42 K29 [require]
      251 GETTABLEKS                       R43 R0 K44 ["Src"]
      253 GETTABLEKS                       R43 R43 K51 ["Flags"]
      255 CALL                             R42 1 1
      256 GETIMPORT                        R43 K29 [require]
      258 GETTABLEKS                       R44 R0 K44 ["Src"]
      260 GETTABLEKS                       R44 R44 K45 ["Util"]
      262 GETTABLEKS                       R44 R44 K52 ["GameLoadedNotifier"]
      264 CALL                             R43 1 1
      265 GETIMPORT                        R44 K29 [require]
      267 GETTABLEKS                       R45 R0 K44 ["Src"]
      269 GETTABLEKS                       R45 R45 K45 ["Util"]
      271 GETTABLEKS                       R45 R45 K53 ["GameStoppedNotifier"]
      273 CALL                             R44 1 1
      274 GETIMPORT                        R45 K29 [require]
      276 GETTABLEKS                       R46 R0 K44 ["Src"]
      278 GETTABLEKS                       R46 R46 K45 ["Util"]
      280 GETTABLEKS                       R46 R46 K54 ["NotificationManagerStore"]
      282 CALL                             R45 1 1
      283 GETIMPORT                        R46 K29 [require]
      285 GETTABLEKS                       R47 R0 K44 ["Src"]
      287 GETTABLEKS                       R47 R47 K45 ["Util"]
      289 GETTABLEKS                       R47 R47 K55 ["StudioAnimationGen"]
      291 CALL                             R46 1 1
      292 GETIMPORT                        R47 K29 [require]
      294 GETTABLEKS                       R48 R0 K44 ["Src"]
      296 GETTABLEKS                       R48 R48 K45 ["Util"]
      298 GETTABLEKS                       R48 R48 K56 ["StudioEndpointUtil"]
      300 CALL                             R47 1 1
      301 GETIMPORT                        R48 K29 [require]
      303 GETTABLEKS                       R49 R0 K44 ["Src"]
      305 GETTABLEKS                       R49 R49 K57 ["Host"]
      307 GETTABLEKS                       R49 R49 K58 ["Resources"]
      309 GETTABLEKS                       R49 R49 K59 ["StudioEventLogger"]
      311 CALL                             R48 1 1
      312 GETIMPORT                        R49 K29 [require]
      314 GETTABLEKS                       R50 R0 K44 ["Src"]
      316 GETTABLEKS                       R50 R50 K60 ["Components"]
      318 GETTABLEKS                       R50 R50 K61 ["Contexts"]
      320 GETTABLEKS                       R50 R50 K62 ["StudioLLM"]
      322 GETTABLEKS                       R50 R50 K63 ["StudioLLMSystemReminder"]
      324 CALL                             R49 1 1
      325 GETIMPORT                        R50 K29 [require]
      327 GETTABLEKS                       R51 R0 K44 ["Src"]
      329 GETTABLEKS                       R51 R51 K45 ["Util"]
      331 GETTABLEKS                       R51 R51 K64 ["StudioMaterialGenerator"]
      333 CALL                             R50 1 1
      334 GETIMPORT                        R51 K29 [require]
      336 GETTABLEKS                       R52 R0 K44 ["Src"]
      338 GETTABLEKS                       R52 R52 K45 ["Util"]
      340 GETTABLEKS                       R52 R52 K65 ["StudioState"]
      342 CALL                             R51 1 1
      343 GETIMPORT                        R52 K29 [require]
      345 GETTABLEKS                       R53 R0 K44 ["Src"]
      347 GETTABLEKS                       R53 R53 K45 ["Util"]
      349 GETTABLEKS                       R53 R53 K66 ["createStudioInstancePicker"]
      351 CALL                             R52 1 1
      352 GETIMPORT                        R53 K29 [require]
      354 GETTABLEKS                       R54 R0 K44 ["Src"]
      356 GETTABLEKS                       R54 R54 K45 ["Util"]
      358 GETTABLEKS                       R54 R54 K67 ["mergeSceneAdminOptions"]
      360 CALL                             R53 1 1
      361 GETTABLEKS                       R54 R26 K68 ["Remote"]
      363 GETTABLEKS                       R55 R37 K45 ["Util"]
      365 GETTABLEKS                       R55 R55 K69 ["StudioUri"]
      367 GETTABLEKS                       R56 R24 K70 ["FlagUtils"]
      369 GETTABLEKS                       R56 R56 K71 ["getIsAnimationGenEnabled"]
      371 GETTABLEKS                       R57 R27 K72 ["Http"]
      373 GETTABLEKS                       R57 R57 K73 ["Networking"]
      375 GETTABLEKS                       R57 R57 K74 ["new"]
      377 DUPTABLE                         R58 K78 [{["isInternal"] = True, ["loggingLevel"]}]
      378 GETTABLEKS                       R60 R42 K79 ["FFlagDebugLogAssistantUI"]
      380 JUMPIFNOT                        R60 ; [+2]
      381 LOADN                            R59 4
      382 JUMP                             ; [+1]
      383 LOADN                            R59 0
      384 SETTABLEKS                       R59 R58 K77 ["loggingLevel"]
      386 CALL                             R57 1 1
      387 GETTABLEKS                       R58 R27 K80 ["Url"]
      389 GETTABLEKS                       R59 R58 K74 ["new"]
      391 LOADNIL                          R60
      392 CALL                             R59 1 1
      393 DUPCLOSURE                       R60 K81 [PROTO_0]
      394 CAPTURE                          VAL R42
      395 DUPCLOSURE                       R61 K82 [PROTO_1]
      396 CAPTURE                          VAL R28
      397 CAPTURE                          VAL R33
      398 CAPTURE                          VAL R47
      399 CAPTURE                          VAL R42
      400 DUPCLOSURE                       R62 K83 [PROTO_3]
      401 CAPTURE                          VAL R23
      402 CAPTURE                          VAL R29
      403 CAPTURE                          VAL R30
      404 DUPCLOSURE                       R63 K84 [PROTO_60]
      405 CAPTURE                          VAL R13
      406 CAPTURE                          VAL R15
      407 CAPTURE                          VAL R20
      408 CAPTURE                          VAL R36
      409 CAPTURE                          VAL R42
      410 CAPTURE                          VAL R59
      411 CAPTURE                          VAL R21
      412 CAPTURE                          VAL R14
      413 CAPTURE                          VAL R47
      414 CAPTURE                          VAL R35
      415 DUPCLOSURE                       R64 K85 [PROTO_71]
      416 CAPTURE                          VAL R42
      417 CAPTURE                          VAL R2
      418 CAPTURE                          VAL R24
      419 DUPCLOSURE                       R65 K86 [PROTO_76]
      420 DUPCLOSURE                       R66 K87 [PROTO_77]
      421 CAPTURE                          VAL R46
      422 CAPTURE                          VAL R42
      423 DUPCLOSURE                       R67 K88 [PROTO_79]
      424 CAPTURE                          VAL R48
      425 CAPTURE                          VAL R38
      426 CAPTURE                          VAL R40
      427 DUPCLOSURE                       R68 K89 [PROTO_80]
      428 CAPTURE                          VAL R0
      429 DUPCLOSURE                       R69 K90 [PROTO_88]
      430 CAPTURE                          VAL R21
      431 CAPTURE                          VAL R42
      432 CAPTURE                          VAL R61
      433 CAPTURE                          VAL R47
      434 CAPTURE                          VAL R33
      435 CAPTURE                          VAL R24
      436 CAPTURE                          VAL R6
      437 CAPTURE                          VAL R28
      438 CAPTURE                          VAL R18
      439 CAPTURE                          VAL R14
      440 DUPCLOSURE                       R70 K91 [PROTO_90]
      441 DUPCLOSURE                       R71 K92 [PROTO_93]
      442 CAPTURE                          VAL R42
      443 CAPTURE                          VAL R24
      444 DUPCLOSURE                       R72 K93 [PROTO_102]
      445 CAPTURE                          VAL R47
      446 CAPTURE                          VAL R32
      447 CAPTURE                          VAL R31
      448 CAPTURE                          VAL R59
      449 CAPTURE                          VAL R7
      450 CAPTURE                          VAL R8
      451 DUPCLOSURE                       R73 K94 [PROTO_109]
      452 CAPTURE                          VAL R59
      453 CAPTURE                          VAL R7
      454 CAPTURE                          VAL R8
      455 CAPTURE                          VAL R9
      456 CAPTURE                          VAL R17
      457 DUPCLOSURE                       R74 K95 [PROTO_110]
      458 DUPCLOSURE                       R75 K96 [PROTO_120]
      459 CAPTURE                          VAL R8
      460 CAPTURE                          VAL R7
      461 CAPTURE                          VAL R59
      462 DUPCLOSURE                       R76 K97 [PROTO_133]
      463 CAPTURE                          VAL R52
      464 CAPTURE                          VAL R22
      465 CAPTURE                          VAL R24
      466 CAPTURE                          VAL R54
      467 CAPTURE                          VAL R25
      468 CAPTURE                          VAL R26
      469 DUPCLOSURE                       R77 K98 [PROTO_137]
      470 DUPCLOSURE                       R78 K99 [PROTO_141]
      471 CAPTURE                          VAL R54
      472 CAPTURE                          VAL R26
      473 CAPTURE                          VAL R77
      474 DUPCLOSURE                       R79 K100 [PROTO_232]
      475 CAPTURE                          VAL R24
      476 CAPTURE                          VAL R26
      477 CAPTURE                          VAL R59
      478 CAPTURE                          VAL R41
      479 CAPTURE                          VAL R42
      480 CAPTURE                          VAL R48
      481 CAPTURE                          VAL R8
      482 CAPTURE                          VAL R36
      483 CAPTURE                          VAL R3
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R2
      486 CAPTURE                          VAL R50
      487 CAPTURE                          VAL R45
      488 CAPTURE                          VAL R69
      489 CAPTURE                          VAL R71
      490 CAPTURE                          VAL R72
      491 CAPTURE                          VAL R73
      492 CAPTURE                          VAL R75
      493 CAPTURE                          VAL R56
      494 CAPTURE                          VAL R46
      495 CAPTURE                          VAL R38
      496 CAPTURE                          VAL R40
      497 CAPTURE                          VAL R0
      498 CAPTURE                          VAL R39
      499 CAPTURE                          VAL R14
      500 CAPTURE                          VAL R47
      501 CAPTURE                          VAL R32
      502 CAPTURE                          VAL R57
      503 CAPTURE                          VAL R21
      504 CAPTURE                          VAL R34
      505 CAPTURE                          VAL R63
      506 CAPTURE                          VAL R64
      507 CAPTURE                          VAL R65
      508 CAPTURE                          VAL R62
      509 CAPTURE                          VAL R28
      510 CAPTURE                          VAL R29
      511 CAPTURE                          VAL R33
      512 CAPTURE                          VAL R61
      513 CAPTURE                          VAL R53
      514 CAPTURE                          VAL R7
      515 CAPTURE                          VAL R55
      516 CAPTURE                          VAL R4
      517 CAPTURE                          VAL R11
      518 CAPTURE                          VAL R10
      519 CAPTURE                          VAL R43
      520 CAPTURE                          VAL R44
      521 CAPTURE                          VAL R51
      522 CAPTURE                          VAL R76
      523 CAPTURE                          VAL R78
      524 CAPTURE                          VAL R49
      525 RETURN                           R79 1
