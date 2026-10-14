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

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["_Index"]
        7 GETTABLEKS                       R1 R1 K4 ["OpenApiMcpAssistantApi"]
        9 GETTABLEKS                       R1 R1 K4 ["OpenApiMcpAssistantApi"]
       11 GETTABLEKS                       R1 R1 K5 ["Models"]
       13 GETTABLEKS                       R1 R1 K6 ["CreateConversationRequest"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["Packages"]
       21 GETTABLEKS                       R2 R2 K3 ["_Index"]
       23 GETTABLEKS                       R2 R2 K4 ["OpenApiMcpAssistantApi"]
       25 GETTABLEKS                       R2 R2 K4 ["OpenApiMcpAssistantApi"]
       27 GETTABLEKS                       R2 R2 K5 ["Models"]
       29 GETTABLEKS                       R2 R2 K7 ["SystemPromptRequest"]
       31 CALL                             R1 1 1
       32 NEWTABLE                         R2 2 0
       34 LOADB                            R3 1
       35 SETTABLE                         R3 R2 R0
       36 LOADB                            R3 1
       37 SETTABLE                         R3 R2 R1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K8 ["setBody"]
       41 GETUPVAL                         R4 1
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K8 ["setBody"]
       48 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetImageDataBase64Async"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListPluginGuisAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
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
       19 JUMPIF                           R0 ; [+6]
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K3 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R0 3
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LoadImageAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSettingsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSettingsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetUserSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetUserSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetSetting"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 0
        8 CLOSEUPVALS                      R1
        9 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetSetting"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSecureSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSecureSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Base64EncodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GeneratePKCEAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["StartMCPAuthAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JsonDecodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["SetUpMCPServerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 DUPTABLE                         R2 K4 [{["error"] = "MCP Server not supported"}]
        9 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetMCPProxyTokenAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectFileExistsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_33:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectReadFileAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["QuickConnectModifyFileAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Info"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_41:
        0 LOADK                            R1 K0 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["AssistantUserSkillAssets"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
        0 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getSkillAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{["cursor"], ["limit"] = 100}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["cursor"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteSkillAssetAsync"]
        5 DUPTABLE                         R1 K3 [{"assetId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["assetId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_52:
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

PROTO_53:
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
       25 GETTABLEKS                       R4 R4 K7 ["pluginCapture"]
       27 DUPCLOSURE                       R5 K8 [PROTO_7]
       28 CAPTURE                          UPVAL U0
       29 SETTABLEKS                       R5 R4 K9 ["listPluginGuisAsync"]
       31 GETTABLEKS                       R4 R0 K4 ["tools"]
       33 GETTABLEKS                       R4 R4 K7 ["pluginCapture"]
       35 NEWCLOSURE                       R5 P5
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K10 ["capturePluginGuiByIdAsync"]
       42 GETTABLEKS                       R4 R0 K4 ["tools"]
       44 GETTABLEKS                       R4 R4 K11 ["uploadImage"]
       46 NEWCLOSURE                       R5 P6
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R5 R4 K12 ["loadImageAsync"]
       50 NEWCLOSURE                       R4 P7
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R4 R0 K13 ["getSettingsAsync"]
       54 NEWCLOSURE                       R4 P8
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R4 R0 K14 ["setSettingsAsync"]
       58 NEWCLOSURE                       R4 P9
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R4 R0 K15 ["getUserSettingsAsync"]
       62 NEWCLOSURE                       R4 P10
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R4 R0 K16 ["setUserSettingsAsync"]
       66 NEWCLOSURE                       R4 P11
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R4 R0 K17 ["getPluginSetting"]
       70 NEWCLOSURE                       R4 P12
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R4 R0 K18 ["setPluginSetting"]
       74 NEWCLOSURE                       R4 P13
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R0 K19 ["getSecureSettingsAsync"]
       78 NEWCLOSURE                       R4 P14
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R4 R0 K20 ["setSecureSettingsAsync"]
       82 NEWCLOSURE                       R4 P15
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R4 R0 K21 ["base64EncodeAsync"]
       86 NEWCLOSURE                       R4 P16
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R4 R0 K22 ["generatePKCEAsync"]
       90 NEWCLOSURE                       R4 P17
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R4 R0 K23 ["startMCPAuthAsync"]
       94 GETTABLEKS                       R4 R0 K24 ["json"]
       96 NEWCLOSURE                       R5 P18
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R5 R4 K25 ["encodeAsync"]
      100 GETTABLEKS                       R4 R0 K24 ["json"]
      102 NEWCLOSURE                       R5 P19
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R5 R4 K26 ["decodeAsync"]
      106 NEWCLOSURE                       R4 P20
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R4 R0 K27 ["setupMCPServerAsync"]
      110 GETUPVAL                         R4 4
      111 GETTABLEKS                       R4 R4 K28 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
      113 JUMPIFNOT                        R4 ; [+4]
      114 NEWCLOSURE                       R4 P21
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R4 R0 K29 ["getMCPProxyTokenAsync"]
      118 GETTABLEKS                       R4 R0 K30 ["quickConnect"]
      120 NEWCLOSURE                       R5 P22
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R5 R4 K31 ["fileExistsAsync"]
      124 GETTABLEKS                       R4 R0 K30 ["quickConnect"]
      126 NEWCLOSURE                       R5 P23
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R5 R4 K32 ["readFileAsync"]
      130 GETTABLEKS                       R4 R0 K30 ["quickConnect"]
      132 NEWCLOSURE                       R5 P24
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R5 R4 K33 ["modifyFileAsync"]
      136 NEWCLOSURE                       R4 P25
      137 CAPTURE                          VAL R3
      138 SETTABLEKS                       R4 R0 K34 ["openFileDialogAsync"]
      140 NEWCLOSURE                       R4 P26
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R4 R0 K35 ["importFileBinaryAsync"]
      144 NEWCLOSURE                       R4 P27
      145 CAPTURE                          VAL R3
      146 SETTABLEKS                       R4 R0 K36 ["printToStudioLogAsync"]
      148 GETUPVAL                         R4 5
      149 GETTABLEKS                       R4 R4 K37 ["APIS_URL"]
      151 LOADK                            R6 K38 ["https://apis%.(.+)"]
      152 NAMECALL                         R4 R4 K39 ["match"]
      154 CALL                             R4 2 1
      155 LOADK                            R5 K40 ["https://assetdelivery.%*/"]
      156 MOVE                             R7 R4
      157 NAMECALL                         R5 R5 K41 ["format"]
      159 CALL                             R5 2 1
      160 NEWCLOSURE                       R6 P28
      161 CAPTURE                          VAL R5
      162 GETTABLEKS                       R7 R0 K42 ["userSkillAssets"]
      164 NEWCLOSURE                       R8 P29
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R8 R7 K43 ["getManifestAsync"]
      168 GETTABLEKS                       R7 R0 K42 ["userSkillAssets"]
      170 NEWCLOSURE                       R8 P30
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R5
      173 SETTABLEKS                       R8 R7 K44 ["fetchContentAsync"]
      175 GETTABLEKS                       R7 R0 K42 ["userSkillAssets"]
      177 DUPCLOSURE                       R8 K45 [PROTO_44]
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          UPVAL U7
      180 SETTABLEKS                       R8 R7 K46 ["publishNewAsync"]
      182 GETTABLEKS                       R7 R0 K42 ["userSkillAssets"]
      184 DUPCLOSURE                       R8 K47 [PROTO_45]
      185 CAPTURE                          UPVAL U6
      186 CAPTURE                          UPVAL U7
      187 SETTABLEKS                       R8 R7 K48 ["publishUpdateAsync"]
      189 GETTABLEKS                       R7 R0 K42 ["userSkillAssets"]
      191 DUPCLOSURE                       R8 K49 [PROTO_46]
      192 SETTABLEKS                       R8 R7 K50 ["deleteAsync"]
      194 GETTABLEKS                       R7 R0 K51 ["cloudSkillAssets"]
      196 DUPCLOSURE                       R8 K52 [PROTO_48]
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          UPVAL U9
      199 SETTABLEKS                       R8 R7 K53 ["getAssetsAsync"]
      201 GETTABLEKS                       R7 R0 K51 ["cloudSkillAssets"]
      203 DUPCLOSURE                       R8 K54 [PROTO_50]
      204 CAPTURE                          UPVAL U8
      205 CAPTURE                          UPVAL U9
      206 SETTABLEKS                       R8 R7 K55 ["uploadAssetsAsync"]
      208 GETTABLEKS                       R7 R0 K51 ["cloudSkillAssets"]
      210 DUPCLOSURE                       R8 K56 [PROTO_52]
      211 CAPTURE                          UPVAL U8
      212 CAPTURE                          UPVAL U9
      213 SETTABLEKS                       R8 R7 K57 ["deleteAssetAsync"]
      215 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridgeStandalone"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_57:
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
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          REF R2
       24 CLOSEUPVALS                      R2
       25 RETURN                           R2 2

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_61:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_63:
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

PROTO_64:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 LOADB                            R4 0
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+22]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantStandaloneDataModel"]
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["EngineFeatureAssistantBridgeStandalone"]
       15 JUMPIFEQKB                       R5 TRUE ; [+3]
       17 CLOSEUPVALS                      R3
       18 RETURN                           R0 0
       19 GETIMPORT                        R5 K1 [pcall]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R1
       23 CALL                             R5 1 2
       24 JUMPIFNOT                        R5 ; [+1]
       25 JUMPIF                           R6 ; [+2]
       26 CLOSEUPVALS                      R3
       27 RETURN                           R0 0
       28 MOVE                             R3 R6
       29 LOADB                            R4 1
       30 GETTABLEKS                       R5 R0 K4 ["tools"]
       32 GETTABLEKS                       R5 R5 K5 ["executeLuau"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          REF R4
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          REF R3
       38 SETTABLEKS                       R6 R5 K6 ["loadCode"]
       40 GETTABLEKS                       R5 R0 K4 ["tools"]
       42 GETTABLEKS                       R5 R5 K5 ["executeLuau"]
       44 NEWCLOSURE                       R6 P3
       45 CAPTURE                          REF R3
       46 SETTABLEKS                       R6 R5 K7 ["stopCode"]
       48 JUMPIF                           R4 ; [+16]
       49 GETTABLEKS                       R5 R0 K4 ["tools"]
       51 GETTABLEKS                       R5 R5 K8 ["multiEdit"]
       53 NEWCLOSURE                       R6 P4
       54 CAPTURE                          REF R3
       55 SETTABLEKS                       R6 R5 K9 ["updateScriptSourceAsync"]
       57 GETTABLEKS                       R5 R0 K4 ["tools"]
       59 GETTABLEKS                       R5 R5 K8 ["multiEdit"]
       61 DUPCLOSURE                       R6 K10 [PROTO_61]
       62 CAPTURE                          UPVAL U1
       63 SETTABLEKS                       R6 R5 K11 ["applyScriptSourceDirectly"]
       65 GETIMPORT                        R5 K14 [task.spawn]
       67 NEWCLOSURE                       R6 P6
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          REF R3
       71 CALL                             R5 1 0
       72 CLOSEUPVALS                      R3
       73 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["tools"]
        7 GETTABLEKS                       R3 R3 K2 ["animationGen"]
        9 GETTABLEKS                       R4 R2 K3 ["generateAnimationAsync"]
       11 SETTABLEKS                       R4 R3 K3 ["generateAnimationAsync"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["FFlagAnimationGenOpenACE"]
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETTABLEKS                       R4 R2 K5 ["openAnimationClipEditorAsync"]
       19 SETTABLEKS                       R4 R3 K5 ["openAnimationClipEditorAsync"]
       21 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["autoSetupAsync"]
        3 DUPTABLE                         R2 K5 [{"model", "analytics", "onProgress", "onNotification"}]
        4 GETTABLEKS                       R3 R0 K1 ["model"]
        6 SETTABLEKS                       R3 R2 K1 ["model"]
        8 DUPTABLE                         R3 K11 [{"onRequested", "onOptions", "onJobInitialized", "onFinish", "onFailure"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K12 ["logAvatarAutoSetupRequested"]
       12 SETTABLEKS                       R4 R3 K6 ["onRequested"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K13 ["logAvatarAutoSetupOptions"]
       17 SETTABLEKS                       R4 R3 K7 ["onOptions"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K14 ["logAvatarAutoSetupJobInitialized"]
       22 SETTABLEKS                       R4 R3 K8 ["onJobInitialized"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K15 ["logAvatarAutoSetupFinish"]
       27 SETTABLEKS                       R4 R3 K9 ["onFinish"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K16 ["logAvatarAutoSetupFailure"]
       32 SETTABLEKS                       R4 R3 K10 ["onFailure"]
       34 SETTABLEKS                       R3 R2 K2 ["analytics"]
       36 GETTABLEKS                       R3 R0 K3 ["onProgress"]
       38 SETTABLEKS                       R3 R2 K3 ["onProgress"]
       40 GETTABLEKS                       R3 R0 K4 ["onNotification"]
       42 SETTABLEKS                       R3 R2 K4 ["onNotification"]
       44 CALL                             R1 1 -1
       45 RETURN                           R1 -1

PROTO_67:
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
       19 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
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
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 0
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R4 K9 ["success"]
       34 JUMPIF                           R5 ; [+6]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K10 ["throwError"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 -1
       40 RETURN                           R5 -1
       41 GETTABLEKS                       R5 R4 K11 ["data"]
       43 GETTABLEKS                       R5 R5 K12 ["assetId"]
       45 FASTCALL2K                       ASSERT R5 K13 ; [+5]
       47 MOVE                             R7 R5
       48 LOADK                            R8 K13 ["Expected assetId in response from postUploadAssetAsync"]
       49 GETIMPORT                        R6 K15 [assert]
       51 CALL                             R6 2 0
       52 GETTABLEKS                       R6 R4 K11 ["data"]
       54 GETTABLEKS                       R6 R6 K16 ["generationId"]
       56 FASTCALL2K                       ASSERT R6 K17 ; [+5]
       58 MOVE                             R8 R6
       59 LOADK                            R9 K17 ["Expected generationId in response from postUploadAssetAsync"]
       60 GETIMPORT                        R7 K15 [assert]
       62 CALL                             R7 2 0
       63 DUPTABLE                         R7 K18 [{"assetId", "generationId"}]
       64 SETTABLEKS                       R5 R7 K12 ["assetId"]
       66 SETTABLEKS                       R6 R7 K16 ["generationId"]
       68 RETURN                           R7 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_74:
        0 GETIMPORT                        R1 K3 [Enum.AssetCreatorType.User]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K4 ["GetUserId"]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K6 [game]
        8 GETTABLEKS                       R3 R3 K7 ["CreatorType"]
       10 GETIMPORT                        R4 K9 [Enum.CreatorType.Group]
       12 JUMPIFNOTEQ                      R3 R4 ; [+14]
       14 GETIMPORT                        R3 K6 [game]
       16 GETTABLEKS                       R3 R3 K10 ["CreatorId"]
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+7]
       21 GETIMPORT                        R1 K11 [Enum.AssetCreatorType.Group]
       23 GETIMPORT                        R3 K6 [game]
       25 GETTABLEKS                       R2 R3 K10 ["CreatorId"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K12 ["GenerationUtils"]
       30 GETTABLEKS                       R3 R3 K13 ["cloneAsArchivable"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 1
       34 FASTCALL2K                       ASSERT R3 K14 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K14 ["Failed to clone instance for asset publish"]
       38 GETIMPORT                        R4 K16 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 2
       42 NEWTABLE                         R6 0 1
       44 MOVE                             R7 R3
       45 SETLIST                          R6 R7 1 [1]
       47 NAMECALL                         R4 R4 K17 ["SerializeInstances"]
       49 CALL                             R4 2 1
       50 NAMECALL                         R5 R3 K18 ["Destroy"]
       52 CALL                             R5 1 0
       53 GETUPVAL                         R5 3
       54 MOVE                             R7 R4
       55 DUPTABLE                         R8 K31 [{["AssetType"] = "Model", ["AssetName"] = "Gen3d texture source", ["Description"] = "Gen3d texture source", ["AssetId"] = 0, ["CreatorId"], ["CreatorType"], ["ContentType"] = "model/x-rbxm", ["Token"] = "", ["AdditionalParameters"]}]
       56 SETTABLEKS                       R2 R8 K10 ["CreatorId"]
       58 SETTABLEKS                       R1 R8 K7 ["CreatorType"]
       60 DUPTABLE                         R9 K34 [{["PublishAsPackage"] = False}]
       61 SETTABLEKS                       R9 R8 K30 ["AdditionalParameters"]
       63 NAMECALL                         R5 R5 K35 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       65 CALL                             R5 3 1
       66 GETTABLEKS                       R6 R5 K24 ["AssetId"]
       68 RETURN                           R6 1

PROTO_75:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_70]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 SETTABLEKS                       R3 R2 K4 ["publishModelAsync"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K5 ["Guest"]
       18 GETTABLEKS                       R3 R3 K6 ["LoadAssetHandlers"]
       20 GETTABLEKS                       R3 R3 K7 ["getRobloxScriptHandler"]
       22 GETIMPORT                        R4 K9 [game]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K10 ["loadAssetAsync"]
       27 DUPCLOSURE                       R3 K11 [PROTO_71]
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R3 R2 K12 ["exportMeshToGlbAsync"]
       31 DUPCLOSURE                       R3 K13 [PROTO_72]
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U0
       34 SETTABLEKS                       R3 R2 K14 ["exportInstanceToGlbAsync"]
       36 DUPCLOSURE                       R3 K15 [PROTO_73]
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R3 R2 K16 ["loadModelFromUrlAsync"]
       40 DUPCLOSURE                       R3 K17 [PROTO_74]
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 SETTABLEKS                       R3 R2 K18 ["publishInstanceAsAssetAsync"]
       47 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PublishMediator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_77:
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

PROTO_78:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantGen3DAssetPublishTracking"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K2 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R3 K3 ["OperationInProgressChanged"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R4 R4 K4 ["Connect"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Groups"]
        3 GETTABLEKS                       R0 R0 K1 ["getListGroupsAsync"]
        5 DUPTABLE                         R1 K3 [{"surface"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["surface"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["THUMBNAILS_URL"]
        3 RETURN                           R0 1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CREATOR_HUB_URL"]
        3 RETURN                           R0 1

PROTO_87:
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
       15 DUPCLOSURE                       R3 K11 [PROTO_83]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R1 K12 ["fetchUserGroupsAsync"]
       20 DUPCLOSURE                       R3 K13 [PROTO_84]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R3 R1 K14 ["searchCreatorStoreAssetsAsync"]
       26 DUPCLOSURE                       R3 K15 [PROTO_85]
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R1 K16 ["getThumbnailsUrl"]
       30 DUPCLOSURE                       R3 K17 [PROTO_86]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R1 K18 ["getCreatorHubUrl"]
       34 RETURN                           R0 0

PROTO_88:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_91:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_92:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_93:
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

PROTO_94:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetInsert"]
        4 DUPCLOSURE                       R2 K2 [PROTO_88]
        5 SETTABLEKS                       R2 R1 K3 ["getObjects"]
        7 DUPCLOSURE                       R2 K4 [PROTO_89]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K5 ["getItemDetailsAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_90]
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K7 ["loadPackageAssetAsync"]
       17 DUPCLOSURE                       R2 K8 [PROTO_91]
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R1 K9 ["getAudioApiByDefault"]
       21 DUPCLOSURE                       R2 K10 [PROTO_92]
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K11 ["insertAudioAsset"]
       25 DUPCLOSURE                       R2 K12 [PROTO_93]
       26 SETTABLEKS                       R2 R1 K13 ["assignSourceAssetId"]
       28 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_96:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagGetOrCreateUniqueIdMethod"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["GetOrCreateUniqueId"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 GETTABLEKS                       R1 R0 K2 ["UniqueId"]
       12 RETURN                           R1 1

PROTO_97:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_98:
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

PROTO_99:
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

PROTO_100:
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

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_103:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_105:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_106:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_108:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_109:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_110:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_111:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_112:
        0 GETIMPORT                        R4 K1 [pcall]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R4 1 3
        6 GETTABLEKS                       R7 R3 K2 ["instances"]
        8 DUPCLOSURE                       R8 K3 [PROTO_96]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R8 R7 K4 ["getUniqueId"]
       13 GETTABLEKS                       R7 R3 K2 ["instances"]
       15 DUPCLOSURE                       R8 K5 [PROTO_97]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R8 R7 K6 ["getInstanceFromUniqueId"]
       19 NEWCLOSURE                       R7 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R3
       22 DUPCLOSURE                       R8 K7 [PROTO_99]
       23 NEWCLOSURE                       R9 P5
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R3
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K8 ["FFlagAssistantUseNewDMNetworking"]
       29 JUMPIFNOT                        R10 ; [+79]
       30 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       32 MOVE                             R11 R2
       33 LOADK                            R12 K9 ["StudioEnvironment requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       34 GETIMPORT                        R10 K11 [assert]
       36 CALL                             R10 2 0
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R10 R10 K12 ["invoke"]
       40 MOVE                             R11 R2
       41 LOADK                            R12 K13 ["StudioEnvironment.instances.resolveInstanceByPathAsync"]
       42 CALL                             R10 2 1
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R11 R11 K12 ["invoke"]
       46 MOVE                             R12 R2
       47 LOADK                            R13 K14 ["StudioEnvironment.instances.pickInstanceAsync"]
       48 CALL                             R11 2 1
       49 GETUPVAL                         R12 3
       50 GETTABLEKS                       R12 R12 K15 ["Utils"]
       52 GETTABLEKS                       R12 R12 K16 ["Bin"]
       54 GETTABLEKS                       R12 R12 K17 ["new"]
       56 CALL                             R12 0 1
       57 MOVE                             R15 R6
       58 NAMECALL                         R13 R12 K18 ["Add"]
       60 CALL                             R13 2 0
       61 NAMECALL                         R13 R2 K19 ["GetIdentity"]
       63 CALL                             R13 1 1
       64 GETUPVAL                         R14 5
       65 GETTABLEKS                       R14 R14 K20 ["Identity"]
       67 GETTABLEKS                       R14 R14 K21 ["Standalone"]
       69 JUMPIFEQ                         R13 R14 ; [+17]
       71 NEWCLOSURE                       R17 P6
       72 CAPTURE                          VAL R7
       73 NAMECALL                         R15 R10 K22 ["Connect"]
       75 CALL                             R15 2 -1
       76 NAMECALL                         R13 R12 K18 ["Add"]
       78 CALL                             R13 -1 0
       79 NEWCLOSURE                       R17 P7
       80 CAPTURE                          VAL R9
       81 NAMECALL                         R15 R11 K22 ["Connect"]
       83 CALL                             R15 2 -1
       84 NAMECALL                         R13 R12 K18 ["Add"]
       86 CALL                             R13 -1 0
       87 GETTABLEKS                       R13 R3 K2 ["instances"]
       89 NEWCLOSURE                       R14 P8
       90 CAPTURE                          VAL R10
       91 CAPTURE                          UPVAL U5
       92 SETTABLEKS                       R14 R13 K23 ["resolveInstanceByPathAsync"]
       94 GETTABLEKS                       R13 R3 K2 ["instances"]
       96 NEWCLOSURE                       R14 P9
       97 CAPTURE                          VAL R11
       98 CAPTURE                          UPVAL U5
       99 SETTABLEKS                       R14 R13 K24 ["pickInstanceAsync"]
      101 GETTABLEKS                       R13 R3 K25 ["Destroying"]
      103 NEWCLOSURE                       R15 P10
      104 CAPTURE                          VAL R12
      105 NAMECALL                         R13 R13 K26 ["Once"]
      107 CALL                             R13 2 0
      108 RETURN                           R0 0
      109 FASTCALL2K                       ASSERT R1 K27 ; [+5]
      111 MOVE                             R11 R1
      112 LOADK                            R12 K27 ["StudioEnvironment requires networking"]
      113 GETIMPORT                        R10 K11 [assert]
      115 CALL                             R10 2 0
      116 LOADK                            R12 K28 ["Instances_resolveInstanceByPathAsync"]
      117 NEWCLOSURE                       R13 P11
      118 CAPTURE                          VAL R7
      119 NAMECALL                         R10 R1 K29 ["OnHostInvokeAsync"]
      121 CALL                             R10 3 2
      122 GETTABLEKS                       R12 R3 K2 ["instances"]
      124 NEWCLOSURE                       R13 P12
      125 CAPTURE                          VAL R10
      126 SETTABLEKS                       R13 R12 K23 ["resolveInstanceByPathAsync"]
      128 LOADK                            R14 K30 ["InstancePicker_pickInstanceAsync"]
      129 NEWCLOSURE                       R15 P13
      130 CAPTURE                          VAL R9
      131 NAMECALL                         R12 R1 K29 ["OnHostInvokeAsync"]
      133 CALL                             R12 3 2
      134 GETTABLEKS                       R14 R3 K2 ["instances"]
      136 NEWCLOSURE                       R15 P14
      137 CAPTURE                          VAL R12
      138 SETTABLEKS                       R15 R14 K24 ["pickInstanceAsync"]
      140 GETTABLEKS                       R14 R1 K25 ["Destroying"]
      142 NEWCLOSURE                       R16 P15
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R11
      146 NAMECALL                         R14 R14 K26 ["Once"]
      148 CALL                             R14 2 0
      149 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_114:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_116:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_117:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_118:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_119:
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

PROTO_120:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_121:
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

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_123:
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

PROTO_124:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_125:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_126:
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

PROTO_127:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_130:
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

PROTO_131:
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

PROTO_132:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_133:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_132]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_134:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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
       22 JUMPIF                           R3 ; [+55]
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
       67 GETIMPORT                        R8 K22 [pcall]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K23 ["throwError"]
       72 MOVE                             R10 R2
       73 CALL                             R8 2 -1
       74 CALL                             R6 -1 1
       75 SETTABLEKS                       R6 R5 K17 ["errorMessage"]
       77 RETURN                           R5 1
       78 DUPTABLE                         R3 K26 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
       79 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       81 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       83 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       85 GETTABLEKS                       R4 R2 K27 ["data"]
       87 GETTABLEKS                       R4 R4 K25 ["imageGenerationId"]
       89 SETTABLEKS                       R4 R3 K25 ["imageGenerationId"]
       91 RETURN                           R3 1

PROTO_140:
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

PROTO_141:
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
       21 JUMPIF                           R3 ; [+26]
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
       37 GETIMPORT                        R7 K14 [pcall]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K15 ["throwError"]
       42 MOVE                             R9 R2
       43 CALL                             R7 2 -1
       44 CALL                             R5 -1 1
       45 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       47 RETURN                           R4 1
       48 GETUPVAL                         R3 4
       49 GETTABLEKS                       R4 R2 K16 ["data"]
       51 CALL                             R3 1 1
       52 DUPTABLE                         R4 K24 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["presignedUrl"], ["widthPx"], ["heightPx"], ["format"]}]
       53 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       55 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       57 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       59 GETTABLEKS                       R5 R2 K16 ["data"]
       61 GETTABLEKS                       R5 R5 K18 ["status"]
       63 SETTABLEKS                       R5 R4 K18 ["status"]
       65 GETTABLEKS                       R5 R2 K16 ["data"]
       67 GETTABLEKS                       R5 R5 K19 ["currentStage"]
       69 SETTABLEKS                       R5 R4 K19 ["currentStage"]
       71 GETTABLEKS                       R5 R3 K20 ["presignedUrl"]
       73 SETTABLEKS                       R5 R4 K20 ["presignedUrl"]
       75 GETTABLEKS                       R5 R3 K21 ["widthPx"]
       77 SETTABLEKS                       R5 R4 K21 ["widthPx"]
       79 GETTABLEKS                       R5 R3 K22 ["heightPx"]
       81 SETTABLEKS                       R5 R4 K22 ["heightPx"]
       83 GETTABLEKS                       R5 R3 K23 ["format"]
       85 SETTABLEKS                       R5 R4 K23 ["format"]
       87 RETURN                           R4 1

PROTO_142:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TexturePreview"]
        3 GETTABLEKS                       R0 R0 K1 ["postGenerateTexturePreviewAsync"]
        5 DUPTABLE                         R1 K16 [{["robloxctxRcc"] = False, ["robloxctxAuthenticatedUserid"], ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["n"], ["temperature"], ["controlStrength"], ["resolution"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K4 ["robloxctxAuthenticatedUserid"]
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
       70 CALL                             R0 1 -1
       71 RETURN                           R0 -1

PROTO_143:
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
       56 JUMPIF                           R5 ; [+27]
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
       72 GETIMPORT                        R8 K24 [pcall]
       74 GETUPVAL                         R9 2
       75 GETTABLEKS                       R9 R9 K25 ["throwError"]
       77 MOVE                             R10 R4
       78 CALL                             R8 2 -1
       79 CALL                             R6 -1 1
       80 SETTABLEKS                       R6 R5 K18 ["errorMessage"]
       82 CLOSEUPVALS                      R2
       83 RETURN                           R5 1
       84 DUPTABLE                         R5 K28 [{["ok"] = True, ["statusCode"], ["texturePreviewId"]}]
       85 GETTABLEKS                       R6 R4 K20 ["httpDetails"]
       87 GETTABLEKS                       R6 R6 K17 ["statusCode"]
       89 SETTABLEKS                       R6 R5 K17 ["statusCode"]
       91 GETTABLEKS                       R6 R4 K29 ["data"]
       93 GETTABLEKS                       R6 R6 K27 ["texturePreviewId"]
       95 SETTABLEKS                       R6 R5 K27 ["texturePreviewId"]
       97 CLOSEUPVALS                      R2
       98 RETURN                           R5 1

PROTO_144:
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

PROTO_145:
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
       21 JUMPIF                           R3 ; [+26]
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
       37 GETIMPORT                        R6 K14 [pcall]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K15 ["throwError"]
       42 MOVE                             R8 R2
       43 CALL                             R6 2 -1
       44 CALL                             R4 -1 1
       45 SETTABLEKS                       R4 R3 K8 ["errorMessage"]
       47 RETURN                           R3 1
       48 GETUPVAL                         R3 4
       49 GETTABLEKS                       R3 R3 K16 ["TexturePreviewResponseOps"]
       51 GETTABLEKS                       R3 R3 K17 ["toGetStatusResult"]
       53 LOADB                            R4 1
       54 GETTABLEKS                       R5 R2 K10 ["httpDetails"]
       56 GETTABLEKS                       R5 R5 K7 ["statusCode"]
       58 GETTABLEKS                       R6 R2 K18 ["data"]
       60 LOADNIL                          R7
       61 CALL                             R3 4 -1
       62 RETURN                           R3 -1

PROTO_146:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateSegmentMeshAsync"]
        3 DUPTABLE                         R1 K12 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["mesh"], ["parts"], ["generateTexture"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K13 ["FStringCubeGenerationGatewayApiKey"]
       10 LOADK                            R6 K15 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R4 R3 K16 ["match"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K14 [""]
       15 JUMPIFEQKS                       R3 K14 [""] ; [+3]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K8 ["robloxApiKey"]
       22 GETUPVAL                         R2 3
       23 SETTABLEKS                       R2 R1 K9 ["mesh"]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K17 ["partNames"]
       28 SETTABLEKS                       R2 R1 K10 ["parts"]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K11 ["generateTexture"]
       33 SETTABLEKS                       R2 R1 K11 ["generateTexture"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_147:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["formFile"]
       11 LOADK                            R3 K4 ["mesh.glb"]
       12 GETIMPORT                        R4 K7 [buffer.fromstring]
       14 GETTABLEKS                       R5 R0 K8 ["glb"]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K9 ["model/gltf-binary"]
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K10 ["callWithOptions"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 GETTABLEKS                       R4 R3 K11 ["success"]
       33 JUMPIF                           R4 ; [+7]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K12 ["throwError"]
       37 MOVE                             R5 R3
       38 LOADK                            R6 K13 ["SegmentMesh.postGenerateSegmentMeshAsync"]
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1
       41 GETTABLEKS                       R4 R3 K14 ["data"]
       43 GETTABLEKS                       R4 R4 K15 ["jobId"]
       45 FASTCALL2K                       ASSERT R4 K16 ; [+5]
       47 MOVE                             R6 R4
       48 LOADK                            R7 K16 ["Expected jobId in response from SegmentMesh.postGenerateSegmentMeshAsync"]
       49 GETIMPORT                        R5 K18 [assert]
       51 CALL                             R5 2 0
       52 DUPTABLE                         R5 K20 [{"segmentationId"}]
       53 SETTABLEKS                       R4 R5 K19 ["segmentationId"]
       55 RETURN                           R5 1

PROTO_148:
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

PROTO_149:
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
       26 LOADK                            R5 K6 ["SegmentMesh.getSegmentMeshStatusAsync"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 DUPTABLE                         R3 K10 [{"status", "modelGlbUrl", "modelRbxmUrl"}]
       30 GETTABLEKS                       R4 R2 K11 ["data"]
       32 GETTABLEKS                       R4 R4 K7 ["status"]
       34 SETTABLEKS                       R4 R3 K7 ["status"]
       36 GETTABLEKS                       R4 R2 K11 ["data"]
       38 GETTABLEKS                       R4 R4 K12 ["glbUrl"]
       40 SETTABLEKS                       R4 R3 K8 ["modelGlbUrl"]
       42 GETTABLEKS                       R4 R2 K11 ["data"]
       44 GETTABLEKS                       R4 R4 K13 ["rbxmUrl"]
       46 SETTABLEKS                       R4 R3 K9 ["modelRbxmUrl"]
       48 RETURN                           R3 1

PROTO_150:
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

PROTO_151:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
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
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 0
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R4 K9 ["success"]
       34 JUMPIF                           R5 ; [+7]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K10 ["throwError"]
       38 MOVE                             R6 R4
       39 LOADK                            R7 K11 ["SegmentMesh.postUploadAssetAsync"]
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1
       42 GETTABLEKS                       R5 R4 K12 ["data"]
       44 GETTABLEKS                       R5 R5 K13 ["assetId"]
       46 FASTCALL2K                       ASSERT R5 K14 ; [+5]
       48 MOVE                             R7 R5
       49 LOADK                            R8 K14 ["Expected assetId in response from SegmentMesh.postUploadAssetAsync"]
       50 GETIMPORT                        R6 K16 [assert]
       52 CALL                             R6 2 0
       53 GETTABLEKS                       R6 R4 K12 ["data"]
       55 GETTABLEKS                       R6 R6 K17 ["generationId"]
       57 FASTCALL2K                       ASSERT R6 K18 ; [+5]
       59 MOVE                             R8 R6
       60 LOADK                            R9 K18 ["Expected generationId in response from SegmentMesh.postUploadAssetAsync"]
       61 GETIMPORT                        R7 K16 [assert]
       63 CALL                             R7 2 0
       64 DUPTABLE                         R7 K19 [{"assetId", "generationId"}]
       65 SETTABLEKS                       R5 R7 K13 ["assetId"]
       67 SETTABLEKS                       R6 R7 K17 ["generationId"]
       69 RETURN                           R7 1

PROTO_152:
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

PROTO_153:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateTextureAsync"]
        3 DUPTABLE                         R1 K16 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["glb"], ["assetId"], ["image"], ["textPrompt"], ["model"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K17 ["FStringCubeGenerationGatewayApiKey"]
       10 LOADK                            R6 K19 ["^%s*(.-)%s*$"]
       11 NAMECALL                         R4 R3 K20 ["match"]
       13 CALL                             R4 2 1
       14 ORK                              R3 R4 K18 [""]
       15 JUMPIFEQKS                       R3 K18 [""] ; [+3]
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
       53 CALL                             R0 1 -1
       54 RETURN                           R0 -1

PROTO_154:
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

PROTO_155:
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

PROTO_156:
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

PROTO_157:
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

PROTO_158:
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
       26 LOADK                            R5 K6 ["TextureGeneration.postUploadTextureAssetAsync"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 GETTABLEKS                       R3 R2 K7 ["data"]
       31 GETTABLEKS                       R3 R3 K8 ["assetId"]
       33 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       35 MOVE                             R5 R3
       36 LOADK                            R6 K9 ["Expected assetId in response from TextureGeneration.postUploadTextureAssetAsync"]
       37 GETIMPORT                        R4 K11 [assert]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R4 R2 K7 ["data"]
       42 GETTABLEKS                       R4 R4 K12 ["generationId"]
       44 FASTCALL2K                       ASSERT R4 K13 ; [+5]
       46 MOVE                             R6 R4
       47 LOADK                            R7 K13 ["Expected generationId in response from TextureGeneration.postUploadTextureAssetAsync"]
       48 GETIMPORT                        R5 K11 [assert]
       50 CALL                             R5 2 0
       51 DUPTABLE                         R5 K14 [{"assetId", "generationId"}]
       52 SETTABLEKS                       R3 R5 K8 ["assetId"]
       54 SETTABLEKS                       R4 R5 K12 ["generationId"]
       56 RETURN                           R5 1

PROTO_159:
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

PROTO_160:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateLayoutAsync"]
        3 DUPTABLE                         R1 K15 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["isometricImage"], ["topDownImage"], ["textPrompt"], ["sceneSize"], ["originWorldCoordinate"], ["model"]}]
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
       23 SETTABLEKS                       R2 R1 K9 ["isometricImage"]
       25 GETUPVAL                         R2 4
       26 SETTABLEKS                       R2 R1 K10 ["topDownImage"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K11 ["textPrompt"]
       31 SETTABLEKS                       R2 R1 K11 ["textPrompt"]
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K20 ["sceneWidth"]
       36 SETTABLEKS                       R2 R1 K12 ["sceneSize"]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K13 ["originWorldCoordinate"]
       41 SETTABLEKS                       R2 R1 K13 ["originWorldCoordinate"]
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R2 R2 K14 ["model"]
       46 SETTABLEKS                       R2 R1 K14 ["model"]
       48 CALL                             R0 1 -1
       49 RETURN                           R0 -1

PROTO_161:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getUserId"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R1 K2 [tostring]
        7 CALL                             R1 -1 1
        8 GETTABLEKS                       R3 R0 K3 ["isometricImage"]
       10 JUMPIFNOT                        R3 ; [+11]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["formFile"]
       14 LOADK                            R3 K5 ["isometric.png"]
       15 GETTABLEKS                       R4 R0 K3 ["isometricImage"]
       17 GETTABLEKS                       R6 R0 K7 ["isometricImageContentType"]
       19 ORK                              R5 R6 K6 ["image/png"]
       20 CALL                             R2 3 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 GETTABLEKS                       R4 R0 K8 ["topDownImage"]
       25 JUMPIFNOT                        R4 ; [+11]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K4 ["formFile"]
       29 LOADK                            R4 K9 ["topdown.png"]
       30 GETTABLEKS                       R5 R0 K8 ["topDownImage"]
       32 GETTABLEKS                       R7 R0 K10 ["topDownImageContentType"]
       34 ORK                              R6 R7 K6 ["image/png"]
       35 CALL                             R3 3 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K11 ["callWithOptions"]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R6 0 0
       50 CALL                             R4 2 1
       51 GETTABLEKS                       R5 R4 K12 ["success"]
       53 JUMPIF                           R5 ; [+26]
       54 GETTABLEKS                       R6 R4 K13 ["httpDetails"]
       56 JUMPIFNOT                        R6 ; [+5]
       57 GETTABLEKS                       R5 R4 K13 ["httpDetails"]
       59 GETTABLEKS                       R5 R5 K14 ["statusCode"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R5
       63 DUPTABLE                         R6 K18 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       64 SETTABLEKS                       R5 R6 K14 ["statusCode"]
       66 GETIMPORT                        R7 K20 [select]
       68 LOADN                            R8 2
       69 GETIMPORT                        R9 K22 [pcall]
       71 GETUPVAL                         R10 2
       72 GETTABLEKS                       R10 R10 K23 ["throwError"]
       74 MOVE                             R11 R4
       75 CALL                             R9 2 -1
       76 CALL                             R7 -1 1
       77 SETTABLEKS                       R7 R6 K17 ["errorMessage"]
       79 RETURN                           R6 1
       80 DUPTABLE                         R5 K26 [{["ok"] = True, ["statusCode"], ["layoutGenerationId"]}]
       81 GETTABLEKS                       R6 R4 K13 ["httpDetails"]
       83 GETTABLEKS                       R6 R6 K14 ["statusCode"]
       85 SETTABLEKS                       R6 R5 K14 ["statusCode"]
       87 GETTABLEKS                       R6 R4 K27 ["data"]
       89 GETTABLEKS                       R6 R6 K25 ["layoutGenerationId"]
       91 SETTABLEKS                       R6 R5 K25 ["layoutGenerationId"]
       93 RETURN                           R5 1

PROTO_162:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getLayoutGenerationStatusAsync"]
        3 DUPTABLE                         R1 K10 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["layoutGenerationId"], ["robloxApiKey"]}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K5 ["robloxctxAuthenticatedUserid"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K8 ["layoutGenerationId"]
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

PROTO_163:
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
       21 JUMPIF                           R3 ; [+26]
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
       37 GETIMPORT                        R7 K14 [pcall]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K15 ["throwError"]
       42 MOVE                             R9 R2
       43 CALL                             R7 2 -1
       44 CALL                             R5 -1 1
       45 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       47 RETURN                           R4 1
       48 GETTABLEKS                       R3 R2 K16 ["data"]
       50 GETTABLEKS                       R3 R3 K17 ["result"]
       52 DUPTABLE                         R4 K22 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["scriptUrl"]}]
       53 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       55 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       57 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       59 GETTABLEKS                       R5 R2 K16 ["data"]
       61 GETTABLEKS                       R5 R5 K19 ["status"]
       63 SETTABLEKS                       R5 R4 K19 ["status"]
       65 GETTABLEKS                       R5 R2 K16 ["data"]
       67 GETTABLEKS                       R5 R5 K20 ["currentStage"]
       69 SETTABLEKS                       R5 R4 K20 ["currentStage"]
       71 MOVE                             R5 R3
       72 JUMPIFNOT                        R5 ; [+2]
       73 GETTABLEKS                       R5 R3 K23 ["standaloneScriptPresignedS3Url"]
       75 SETTABLEKS                       R5 R4 K21 ["scriptUrl"]
       77 RETURN                           R4 1

PROTO_164:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_165:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_166:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_167:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_168:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_169:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_170:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_171:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K1 ["GameId"]
        2 NAMECALL                         R1 R1 K2 ["GetItem"]
        4 CALL                             R1 2 1
        5 ORK                              R0 R1 K0 [0]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_172:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_173:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_174:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_175:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_176:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["subscribeGameLoaded"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_177:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["subscribeGameStopped"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_178:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_179:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelType"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_180:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isEditDataModelAvailable"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_181:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["subscribeEditDataModelAvailabilityChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_182:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_183:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CapabilitiesHandler"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_184:
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

PROTO_185:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["cleanupServerAndClients"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_186:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["isCleanupServerAndClientsAvailable"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_187:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_188:
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

PROTO_189:
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

PROTO_190:
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

PROTO_191:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_192:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_193:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioStateString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_194:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Guest"]
        3 GETTABLEKS                       R4 R4 K1 ["Environment"]
        5 GETTABLEKS                       R4 R4 K2 ["new"]
        7 CALL                             R4 0 1
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       13 JUMPIFNOT                        R7 ; [+21]
       14 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       16 MOVE                             R8 R2
       17 LOADK                            R9 K4 ["StudioEnvironment requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       18 GETIMPORT                        R7 K6 [assert]
       20 CALL                             R7 2 0
       21 NAMECALL                         R7 R2 K7 ["GetIdentity"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K8 ["Identity"]
       27 GETTABLEKS                       R8 R8 K9 ["Standalone"]
       29 JUMPIFNOTEQ                      R7 R8 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 MOVE                             R6 R3
       34 JUMP                             ; [+15]
       35 FASTCALL2K                       ASSERT R1 K10 ; [+5]
       37 MOVE                             R8 R1
       38 LOADK                            R9 K10 ["StudioEnvironment requires networking"]
       39 GETIMPORT                        R7 K6 [assert]
       41 CALL                             R7 2 0
       42 NAMECALL                         R7 R1 K11 ["IsHost"]
       44 CALL                             R7 1 1
       45 MOVE                             R5 R7
       46 NAMECALL                         R7 R1 K12 ["IsGuest"]
       48 CALL                             R7 1 1
       49 MOVE                             R6 R7
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R7 R7 K13 ["APIS_URL"]
       53 SETTABLEKS                       R7 R4 K14 ["apisUrl"]
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       58 JUMPIFNOT                        R7 ; [+4]
       59 NEWCLOSURE                       R7 P0
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R7 R4 K15 ["hasUI"]
       63 DUPCLOSURE                       R7 K16 [PROTO_114]
       64 SETTABLEKS                       R7 R4 K17 ["isRobloxScriptSecurity"]
       66 DUPCLOSURE                       R7 K18 [PROTO_115]
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U1
       69 SETTABLEKS                       R7 R4 K19 ["isCompactionExperimentEnabled"]
       71 DUPCLOSURE                       R7 K20 [PROTO_116]
       72 SETTABLEKS                       R7 R4 K21 ["getEngineFeature"]
       74 GETIMPORT                        R7 K23 [pcall]
       76 NEWCLOSURE                       R8 P4
       77 CAPTURE                          VAL R0
       78 CALL                             R7 1 2
       79 JUMPIFNOT                        R7 ; [+2]
       80 MOVE                             R9 R8
       81 JUMPIF                           R9 ; [+1]
       82 LOADNIL                          R9
       83 GETUPVAL                         R10 5
       84 GETTABLEKS                       R10 R10 K24 ["createStudioEventLogger"]
       86 MOVE                             R11 R9
       87 CALL                             R10 1 1
       88 SETTABLEKS                       R10 R4 K25 ["EventLogger"]
       90 GETTABLEKS                       R10 R4 K26 ["http"]
       92 DUPCLOSURE                       R11 K27 [PROTO_118]
       93 CAPTURE                          UPVAL U6
       94 SETTABLEKS                       R11 R10 K28 ["createWebStreamClient"]
       96 GETTABLEKS                       R10 R4 K26 ["http"]
       98 DUPCLOSURE                       R11 K29 [PROTO_121]
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U7
      101 SETTABLEKS                       R11 R10 K30 ["requestAsync"]
      103 GETTABLEKS                       R10 R4 K26 ["http"]
      105 DUPCLOSURE                       R11 K31 [PROTO_123]
      106 CAPTURE                          UPVAL U8
      107 SETTABLEKS                       R11 R10 K32 ["openUrl"]
      109 GETTABLEKS                       R10 R4 K33 ["selection"]
      111 DUPCLOSURE                       R11 K34 [PROTO_124]
      112 CAPTURE                          UPVAL U9
      113 SETTABLEKS                       R11 R10 K35 ["get"]
      115 GETTABLEKS                       R10 R4 K33 ["selection"]
      117 DUPCLOSURE                       R11 K36 [PROTO_125]
      118 CAPTURE                          UPVAL U9
      119 SETTABLEKS                       R11 R10 K37 ["set"]
      121 DUPCLOSURE                       R10 K38 [PROTO_126]
      122 CAPTURE                          UPVAL U10
      123 SETTABLEKS                       R10 R4 K39 ["openScriptAsync"]
      125 GETTABLEKS                       R10 R4 K40 ["tools"]
      127 GETTABLEKS                       R10 R10 K41 ["marketplaceInsertion"]
      129 GETUPVAL                         R11 0
      130 GETTABLEKS                       R11 R11 K0 ["Guest"]
      132 GETTABLEKS                       R11 R11 K42 ["LoadAssetHandlers"]
      134 GETTABLEKS                       R11 R11 K43 ["getRobloxScriptHandler"]
      136 GETIMPORT                        R12 K45 [game]
      138 CALL                             R11 1 1
      139 SETTABLEKS                       R11 R10 K46 ["loadAssetAsync"]
      141 GETTABLEKS                       R10 R4 K40 ["tools"]
      143 GETTABLEKS                       R10 R10 K47 ["materialGen"]
      145 GETUPVAL                         R11 11
      146 GETTABLEKS                       R11 R11 K48 ["create"]
      148 DUPTABLE                         R12 K53 [{"NotificationManager", "NetworkingOLD", "Net", "Telemetry"}]
      149 JUMPIFNOT                        R6 ; [+5]
      150 GETUPVAL                         R13 12
      151 GETTABLEKS                       R13 R13 K35 ["get"]
      153 CALL                             R13 0 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R13
      156 SETTABLEKS                       R13 R12 K49 ["NotificationManager"]
      158 SETTABLEKS                       R1 R12 K50 ["NetworkingOLD"]
      160 SETTABLEKS                       R2 R12 K51 ["Net"]
      162 GETUPVAL                         R13 5
      163 GETTABLEKS                       R13 R13 K54 ["makeStudioTelemetryEvents"]
      165 MOVE                             R14 R9
      166 CALL                             R13 1 1
      167 SETTABLEKS                       R13 R12 K52 ["Telemetry"]
      169 CALL                             R11 1 1
      170 GETTABLEKS                       R12 R11 K55 ["generateMaterialVariantsAsync"]
      172 SETTABLEKS                       R12 R10 K55 ["generateMaterialVariantsAsync"]
      174 GETTABLEKS                       R12 R11 K56 ["uploadMaterialsAsync"]
      176 SETTABLEKS                       R12 R10 K56 ["uploadMaterialsAsync"]
      178 GETUPVAL                         R12 1
      179 GETTABLEKS                       R12 R12 K3 ["FFlagAssistantUseNewDMNetworking"]
      181 JUMPIFNOT                        R12 ; [+8]
      182 GETTABLEKS                       R12 R4 K57 ["Destroying"]
      184 NEWCLOSURE                       R14 P11
      185 CAPTURE                          VAL R11
      186 NAMECALL                         R12 R12 K58 ["Once"]
      188 CALL                             R12 2 0
      189 JUMP                             ; [+14]
      190 FASTCALL2K                       ASSERT R1 K10 ; [+5]
      192 MOVE                             R13 R1
      193 LOADK                            R14 K10 ["StudioEnvironment requires networking"]
      194 GETIMPORT                        R12 K6 [assert]
      196 CALL                             R12 2 0
      197 GETTABLEKS                       R12 R1 K57 ["Destroying"]
      199 NEWCLOSURE                       R14 P12
      200 CAPTURE                          VAL R11
      201 NAMECALL                         R12 R12 K58 ["Once"]
      203 CALL                             R12 2 0
      204 GETUPVAL                         R10 13
      205 MOVE                             R11 R4
      206 MOVE                             R12 R0
      207 CALL                             R10 2 0
      208 JUMPIFNOT                        R5 ; [+4]
      209 GETUPVAL                         R10 14
      210 MOVE                             R11 R4
      211 MOVE                             R12 R0
      212 CALL                             R10 2 0
      213 GETUPVAL                         R10 15
      214 MOVE                             R11 R4
      215 CALL                             R10 1 0
      216 GETUPVAL                         R10 16
      217 MOVE                             R11 R4
      218 CALL                             R10 1 0
      219 GETUPVAL                         R10 1
      220 GETTABLEKS                       R10 R10 K59 ["FFlagAssistantAnimationGenTool"]
      222 JUMPIFNOT                        R10 ; [+21]
      223 GETUPVAL                         R10 17
      224 GETTABLEKS                       R10 R10 K48 ["create"]
      226 MOVE                             R11 R0
      227 CALL                             R10 1 1
      228 GETTABLEKS                       R11 R4 K40 ["tools"]
      230 GETTABLEKS                       R11 R11 K60 ["animationGen"]
      232 GETTABLEKS                       R12 R10 K61 ["generateAnimationAsync"]
      234 SETTABLEKS                       R12 R11 K61 ["generateAnimationAsync"]
      236 GETUPVAL                         R12 1
      237 GETTABLEKS                       R12 R12 K62 ["FFlagAnimationGenOpenACE"]
      239 JUMPIFNOT                        R12 ; [+4]
      240 GETTABLEKS                       R12 R10 K63 ["openAnimationClipEditorAsync"]
      242 SETTABLEKS                       R12 R11 K63 ["openAnimationClipEditorAsync"]
      244 GETUPVAL                         R10 1
      245 GETTABLEKS                       R10 R10 K64 ["FFlagAssistantAvatarAutoSetupTool"]
      247 JUMPIFNOT                        R10 ; [+19]
      248 GETTABLEKS                       R10 R4 K40 ["tools"]
      250 GETTABLEKS                       R10 R10 K65 ["avatarAutoSetup"]
      252 GETUPVAL                         R11 5
      253 GETTABLEKS                       R11 R11 K54 ["makeStudioTelemetryEvents"]
      255 MOVE                             R12 R9
      256 CALL                             R11 1 1
      257 NEWCLOSURE                       R12 P13
      258 CAPTURE                          UPVAL U18
      259 CAPTURE                          VAL R11
      260 SETTABLEKS                       R12 R10 K66 ["autoSetupAsync"]
      262 GETUPVAL                         R12 18
      263 GETTABLEKS                       R12 R12 K67 ["cancelAutoSetup"]
      265 SETTABLEKS                       R12 R10 K67 ["cancelAutoSetup"]
      267 GETTABLEKS                       R10 R4 K40 ["tools"]
      269 GETTABLEKS                       R10 R10 K68 ["uploadImage"]
      271 DUPCLOSURE                       R11 K69 [PROTO_129]
      272 CAPTURE                          UPVAL U19
      273 SETTABLEKS                       R11 R10 K70 ["publishAssetAsync"]
      275 DUPCLOSURE                       R11 K71 [PROTO_131]
      276 CAPTURE                          UPVAL U1
      277 CAPTURE                          UPVAL U20
      278 CAPTURE                          UPVAL U21
      279 CAPTURE                          UPVAL U3
      280 CAPTURE                          UPVAL U22
      281 SETTABLEKS                       R11 R10 K72 ["searchAssetAsync"]
      283 DUPCLOSURE                       R10 K73 [PROTO_133]
      284 CAPTURE                          UPVAL U23
      285 SETTABLEKS                       R10 R4 K74 ["hasInternalPermission"]
      287 DUPCLOSURE                       R10 K75 [PROTO_135]
      288 CAPTURE                          UPVAL U20
      289 CAPTURE                          UPVAL U24
      290 SETTABLEKS                       R10 R4 K76 ["fetchSystemPromptAsync"]
      292 GETUPVAL                         R10 25
      293 MOVE                             R11 R4
      294 MOVE                             R12 R0
      295 CALL                             R10 2 0
      296 GETUPVAL                         R10 26
      297 MOVE                             R11 R4
      298 MOVE                             R12 R0
      299 CALL                             R10 2 0
      300 GETUPVAL                         R10 27
      301 CALL                             R10 0 0
      302 GETUPVAL                         R10 28
      303 GETTABLEKS                       R10 R10 K77 ["patchCubeGenerationGatewayHost"]
      305 GETUPVAL                         R11 29
      306 GETUPVAL                         R12 1
      307 GETTABLEKS                       R12 R12 K78 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      309 CALL                             R10 2 0
      310 DUPCLOSURE                       R10 K79 [PROTO_136]
      311 DUPCLOSURE                       R11 K80 [PROTO_137]
      312 CAPTURE                          UPVAL U29
      313 DUPTABLE                         R12 K83 [{"startAsync", "getStatusAsync"}]
      314 NEWCLOSURE                       R13 P20
      315 CAPTURE                          VAL R4
      316 CAPTURE                          UPVAL U20
      317 CAPTURE                          UPVAL U30
      318 CAPTURE                          UPVAL U1
      319 CAPTURE                          VAL R11
      320 SETTABLEKS                       R13 R12 K81 ["startAsync"]
      322 NEWCLOSURE                       R13 P21
      323 CAPTURE                          VAL R4
      324 CAPTURE                          UPVAL U20
      325 CAPTURE                          UPVAL U30
      326 CAPTURE                          UPVAL U1
      327 CAPTURE                          VAL R10
      328 SETTABLEKS                       R13 R12 K82 ["getStatusAsync"]
      330 SETTABLEKS                       R12 R4 K84 ["imageGeneration"]
      332 DUPTABLE                         R12 K83 [{"startAsync", "getStatusAsync"}]
      333 NEWCLOSURE                       R13 P22
      334 CAPTURE                          VAL R4
      335 CAPTURE                          UPVAL U29
      336 CAPTURE                          UPVAL U20
      337 CAPTURE                          UPVAL U30
      338 CAPTURE                          UPVAL U1
      339 SETTABLEKS                       R13 R12 K81 ["startAsync"]
      341 NEWCLOSURE                       R13 P23
      342 CAPTURE                          VAL R4
      343 CAPTURE                          UPVAL U20
      344 CAPTURE                          UPVAL U30
      345 CAPTURE                          UPVAL U1
      346 CAPTURE                          UPVAL U28
      347 SETTABLEKS                       R13 R12 K82 ["getStatusAsync"]
      349 SETTABLEKS                       R12 R4 K85 ["texturePreview"]
      351 GETUPVAL                         R12 30
      352 GETTABLEKS                       R12 R12 K86 ["SegmentMesh"]
      354 GETUPVAL                         R13 30
      355 GETTABLEKS                       R13 R13 K87 ["TextureGeneration"]
      357 DUPTABLE                         R14 K88 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      358 NEWCLOSURE                       R15 P24
      359 CAPTURE                          VAL R4
      360 CAPTURE                          UPVAL U29
      361 CAPTURE                          UPVAL U20
      362 CAPTURE                          VAL R12
      363 CAPTURE                          UPVAL U1
      364 SETTABLEKS                       R15 R14 K81 ["startAsync"]
      366 NEWCLOSURE                       R15 P25
      367 CAPTURE                          VAL R4
      368 CAPTURE                          UPVAL U20
      369 CAPTURE                          VAL R12
      370 CAPTURE                          UPVAL U1
      371 SETTABLEKS                       R15 R14 K82 ["getStatusAsync"]
      373 NEWCLOSURE                       R15 P26
      374 CAPTURE                          VAL R4
      375 CAPTURE                          UPVAL U20
      376 CAPTURE                          VAL R12
      377 CAPTURE                          UPVAL U1
      378 SETTABLEKS                       R15 R14 K70 ["publishAssetAsync"]
      380 DUPCLOSURE                       R15 K89 [PROTO_152]
      381 CAPTURE                          UPVAL U0
      382 SETTABLEKS                       R15 R14 K46 ["loadAssetAsync"]
      384 SETTABLEKS                       R14 R4 K90 ["segmentMesh"]
      386 DUPTABLE                         R14 K88 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      387 NEWCLOSURE                       R15 P28
      388 CAPTURE                          VAL R4
      389 CAPTURE                          UPVAL U29
      390 CAPTURE                          UPVAL U20
      391 CAPTURE                          VAL R13
      392 CAPTURE                          UPVAL U1
      393 SETTABLEKS                       R15 R14 K81 ["startAsync"]
      395 NEWCLOSURE                       R15 P29
      396 CAPTURE                          VAL R4
      397 CAPTURE                          UPVAL U20
      398 CAPTURE                          VAL R13
      399 CAPTURE                          UPVAL U1
      400 SETTABLEKS                       R15 R14 K82 ["getStatusAsync"]
      402 NEWCLOSURE                       R15 P30
      403 CAPTURE                          VAL R4
      404 CAPTURE                          UPVAL U20
      405 CAPTURE                          VAL R13
      406 CAPTURE                          UPVAL U1
      407 SETTABLEKS                       R15 R14 K70 ["publishAssetAsync"]
      409 DUPCLOSURE                       R15 K91 [PROTO_159]
      410 CAPTURE                          UPVAL U0
      411 SETTABLEKS                       R15 R14 K46 ["loadAssetAsync"]
      413 SETTABLEKS                       R14 R4 K92 ["textureGeneration"]
      415 GETUPVAL                         R14 30
      416 GETTABLEKS                       R14 R14 K93 ["LayoutGeneration"]
      418 DUPTABLE                         R15 K83 [{"startAsync", "getStatusAsync"}]
      419 NEWCLOSURE                       R16 P32
      420 CAPTURE                          VAL R4
      421 CAPTURE                          UPVAL U29
      422 CAPTURE                          UPVAL U20
      423 CAPTURE                          VAL R14
      424 CAPTURE                          UPVAL U1
      425 SETTABLEKS                       R16 R15 K81 ["startAsync"]
      427 NEWCLOSURE                       R16 P33
      428 CAPTURE                          VAL R4
      429 CAPTURE                          UPVAL U20
      430 CAPTURE                          VAL R14
      431 CAPTURE                          UPVAL U1
      432 SETTABLEKS                       R16 R15 K82 ["getStatusAsync"]
      434 SETTABLEKS                       R15 R4 K94 ["layoutGeneration"]
      436 DUPCLOSURE                       R15 K95 [PROTO_164]
      437 CAPTURE                          UPVAL U23
      438 SETTABLEKS                       R15 R4 K96 ["copyToClipboard"]
      440 DUPCLOSURE                       R15 K97 [PROTO_165]
      441 CAPTURE                          UPVAL U23
      442 SETTABLEKS                       R15 R4 K98 ["getClassIcon"]
      444 GETUPVAL                         R15 0
      445 GETTABLEKS                       R15 R15 K0 ["Guest"]
      447 GETTABLEKS                       R15 R15 K99 ["RecordingHandlers"]
      449 GETTABLEKS                       R15 R15 K100 ["getPluginHandlers"]
      451 GETUPVAL                         R16 31
      452 CALL                             R15 1 1
      453 GETTABLEKS                       R16 R15 K101 ["startRecording"]
      455 SETTABLEKS                       R16 R4 K101 ["startRecording"]
      457 GETTABLEKS                       R16 R15 K102 ["endRecording"]
      459 SETTABLEKS                       R16 R4 K102 ["endRecording"]
      461 NEWCLOSURE                       R16 P36
      462 CAPTURE                          VAL R1
      463 SETTABLEKS                       R16 R4 K103 ["getNetworkingOLD"]
      465 DUPCLOSURE                       R16 K104 [PROTO_167]
      466 CAPTURE                          UPVAL U10
      467 SETTABLEKS                       R16 R4 K105 ["getScriptSource"]
      469 DUPCLOSURE                       R16 K106 [PROTO_169]
      470 CAPTURE                          UPVAL U23
      471 SETTABLEKS                       R16 R4 K107 ["getUserId"]
      473 JUMPIFNOT                        R5 ; [+20]
      474 LOADK                            R18 K108 ["GameId"]
      475 GETIMPORT                        R19 K45 [game]
      477 GETTABLEKS                       R19 R19 K108 ["GameId"]
      479 NAMECALL                         R16 R0 K109 ["SetItem"]
      481 CALL                             R16 3 0
      482 GETIMPORT                        R16 K45 [game]
      484 LOADK                            R18 K108 ["GameId"]
      485 NAMECALL                         R16 R16 K110 ["GetPropertyChangedSignal"]
      487 CALL                             R16 2 1
      488 NEWCLOSURE                       R18 P39
      489 CAPTURE                          VAL R0
      490 NAMECALL                         R16 R16 K111 ["Connect"]
      492 CALL                             R16 2 0
      493 JUMP                             ; [+5]
      494 JUMPIFNOT                        R6 ; [+4]
      495 NEWCLOSURE                       R16 P40
      496 CAPTURE                          VAL R0
      497 SETTABLEKS                       R16 R4 K112 ["getGameId"]
      499 DUPCLOSURE                       R16 K113 [PROTO_173]
      500 CAPTURE                          UPVAL U32
      501 SETTABLEKS                       R16 R4 K114 ["startStopPlayAsync"]
      503 DUPCLOSURE                       R16 K115 [PROTO_175]
      504 CAPTURE                          UPVAL U33
      505 SETTABLEKS                       R16 R4 K116 ["subscribeOutput"]
      507 DUPCLOSURE                       R16 K117 [PROTO_176]
      508 CAPTURE                          UPVAL U34
      509 SETTABLEKS                       R16 R4 K118 ["subscribeGameLoaded"]
      511 DUPCLOSURE                       R16 K119 [PROTO_177]
      512 CAPTURE                          UPVAL U35
      513 SETTABLEKS                       R16 R4 K120 ["subscribeGameStopped"]
      515 DUPCLOSURE                       R16 K121 [PROTO_178]
      516 CAPTURE                          UPVAL U36
      517 SETTABLEKS                       R16 R4 K122 ["getStudioPlayState"]
      519 DUPCLOSURE                       R16 K123 [PROTO_179]
      520 CAPTURE                          UPVAL U36
      521 SETTABLEKS                       R16 R4 K124 ["getFocusedDataModelType"]
      523 DUPCLOSURE                       R16 K125 [PROTO_180]
      524 CAPTURE                          UPVAL U36
      525 SETTABLEKS                       R16 R4 K126 ["isEditDataModelAvailable"]
      527 GETUPVAL                         R16 1
      528 GETTABLEKS                       R16 R16 K127 ["FFlagAssistantRestoreMostRecentThread"]
      530 JUMPIFNOT                        R16 ; [+4]
      531 DUPCLOSURE                       R16 K128 [PROTO_181]
      532 CAPTURE                          UPVAL U36
      533 SETTABLEKS                       R16 R4 K129 ["subscribeEditDataModelAvailabilityChanged"]
      535 GETUPVAL                         R16 37
      536 MOVE                             R17 R0
      537 MOVE                             R18 R1
      538 MOVE                             R19 R2
      539 MOVE                             R20 R4
      540 CALL                             R16 4 0
      541 GETIMPORT                        R16 K23 [pcall]
      543 NEWCLOSURE                       R17 P49
      544 CAPTURE                          VAL R0
      545 CALL                             R16 1 2
      546 JUMPIFNOT                        R16 ; [+3]
      547 JUMPIFNOT                        R17 ; [+2]
      548 SETTABLEKS                       R17 R4 K130 ["assetAccessController"]
      550 GETUPVAL                         R18 1
      551 GETTABLEKS                       R18 R18 K131 ["FFlagAssistantInsertAssetSandboxScripts"]
      553 JUMPIFNOT                        R18 ; [+8]
      554 GETIMPORT                        R18 K23 [pcall]
      556 NEWCLOSURE                       R19 P50
      557 CAPTURE                          VAL R0
      558 CALL                             R18 1 2
      559 JUMPIFNOT                        R19 ; [+2]
      560 SETTABLEKS                       R19 R4 K132 ["capabilitiesHandler"]
      562 DUPCLOSURE                       R18 K133 [PROTO_184]
      563 CAPTURE                          UPVAL U38
      564 SETTABLEKS                       R18 R4 K134 ["startMultiPlayerTest"]
      566 DUPCLOSURE                       R18 K135 [PROTO_185]
      567 CAPTURE                          UPVAL U38
      568 SETTABLEKS                       R18 R4 K136 ["stopMultiPlayerTest"]
      570 DUPCLOSURE                       R18 K137 [PROTO_186]
      571 CAPTURE                          UPVAL U38
      572 SETTABLEKS                       R18 R4 K138 ["isInMultiPlayerTest"]
      574 DUPCLOSURE                       R18 K139 [PROTO_188]
      575 CAPTURE                          UPVAL U38
      576 SETTABLEKS                       R18 R4 K140 ["subscribeStopMultiPlayerTestStateChanged"]
      578 DUPCLOSURE                       R18 K141 [PROTO_189]
      579 CAPTURE                          UPVAL U38
      580 SETTABLEKS                       R18 R4 K142 ["createMultiPlayersServer"]
      582 DUPCLOSURE                       R18 K143 [PROTO_190]
      583 CAPTURE                          UPVAL U38
      584 SETTABLEKS                       R18 R4 K144 ["createMultiPlayersClient"]
      586 DUPCLOSURE                       R18 K145 [PROTO_191]
      587 CAPTURE                          UPVAL U4
      588 SETTABLEKS                       R18 R4 K146 ["getExperimentFeatureEnabled"]
      590 DUPCLOSURE                       R18 K147 [PROTO_192]
      591 CAPTURE                          UPVAL U4
      592 SETTABLEKS                       R18 R4 K148 ["onceExperimentFeatureEnabled"]
      594 DUPCLOSURE                       R18 K149 [PROTO_193]
      595 CAPTURE                          UPVAL U39
      596 SETTABLEKS                       R18 R4 K150 ["getStudioState"]
      598 RETURN                           R4 1

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
       15 LOADK                            R4 K9 ["ScriptEditorService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K7 [game]
       19 LOADK                            R5 K10 ["BrowserService"]
       20 NAMECALL                         R3 R3 K8 ["GetService"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K7 [game]
       25 LOADK                            R6 K11 ["ChangeHistoryService"]
       26 NAMECALL                         R4 R4 K8 ["GetService"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K5 [pcall]
       31 GETIMPORT                        R6 K7 [game]
       33 GETTABLEKS                       R6 R6 K8 ["GetService"]
       35 GETIMPORT                        R7 K7 [game]
       37 LOADK                            R8 K12 ["GenerationService"]
       38 CALL                             R5 3 2
       39 GETIMPORT                        R7 K7 [game]
       41 LOADK                            R9 K13 ["HttpRbxApiService"]
       42 NAMECALL                         R7 R7 K8 ["GetService"]
       44 CALL                             R7 2 1
       45 GETIMPORT                        R8 K7 [game]
       47 LOADK                            R10 K14 ["HttpService"]
       48 NAMECALL                         R8 R8 K8 ["GetService"]
       50 CALL                             R8 2 1
       51 GETIMPORT                        R9 K7 [game]
       53 LOADK                            R11 K15 ["InsertService"]
       54 NAMECALL                         R9 R9 K8 ["GetService"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K7 [game]
       59 LOADK                            R12 K16 ["LogService"]
       60 NAMECALL                         R10 R10 K8 ["GetService"]
       62 CALL                             R10 2 1
       63 GETIMPORT                        R11 K7 [game]
       65 LOADK                            R13 K17 ["PlacesService"]
       66 NAMECALL                         R11 R11 K8 ["GetService"]
       68 CALL                             R11 2 1
       69 GETIMPORT                        R12 K5 [pcall]
       71 GETIMPORT                        R13 K7 [game]
       73 GETTABLEKS                       R13 R13 K8 ["GetService"]
       75 GETIMPORT                        R14 K7 [game]
       77 LOADK                            R15 K18 ["PluginManagementService"]
       78 CALL                             R12 3 2
       79 GETIMPORT                        R14 K7 [game]
       81 LOADK                            R16 K19 ["PublishService"]
       82 NAMECALL                         R14 R14 K8 ["GetService"]
       84 CALL                             R14 2 1
       85 GETIMPORT                        R15 K7 [game]
       87 LOADK                            R17 K20 ["RunService"]
       88 NAMECALL                         R15 R15 K8 ["GetService"]
       90 CALL                             R15 2 1
       91 GETIMPORT                        R16 K7 [game]
       93 LOADK                            R18 K21 ["Selection"]
       94 NAMECALL                         R16 R16 K8 ["GetService"]
       96 CALL                             R16 2 1
       97 GETIMPORT                        R17 K7 [game]
       99 LOADK                            R19 K22 ["SoundService"]
      100 NAMECALL                         R17 R17 K8 ["GetService"]
      102 CALL                             R17 2 1
      103 GETIMPORT                        R18 K7 [game]
      105 LOADK                            R20 K23 ["StudioAssetService"]
      106 NAMECALL                         R18 R18 K8 ["GetService"]
      108 CALL                             R18 2 1
      109 GETIMPORT                        R19 K5 [pcall]
      111 GETIMPORT                        R20 K7 [game]
      113 GETTABLEKS                       R20 R20 K8 ["GetService"]
      115 GETIMPORT                        R21 K7 [game]
      117 LOADK                            R22 K24 ["StudioCaptureService"]
      118 CALL                             R19 3 2
      119 GETIMPORT                        R21 K7 [game]
      121 LOADK                            R23 K25 ["StudioService"]
      122 NAMECALL                         R21 R21 K8 ["GetService"]
      124 CALL                             R21 2 1
      125 GETIMPORT                        R22 K7 [game]
      127 LOADK                            R24 K26 ["UniqueIdLookupService"]
      128 NAMECALL                         R22 R22 K8 ["GetService"]
      130 CALL                             R22 2 1
      131 GETIMPORT                        R23 K28 [require]
      133 GETTABLEKS                       R24 R0 K29 ["Packages"]
      135 GETTABLEKS                       R24 R24 K30 ["AssistantUI"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K28 [require]
      140 GETTABLEKS                       R25 R0 K31 ["Src"]
      142 GETTABLEKS                       R25 R25 K32 ["Util"]
      144 GETTABLEKS                       R25 R25 K33 ["AvatarAutoSetup"]
      146 GETTABLEKS                       R25 R25 K34 ["Orchestrator"]
      148 CALL                             R24 1 1
      149 GETIMPORT                        R25 K28 [require]
      151 GETTABLEKS                       R26 R0 K29 ["Packages"]
      153 GETTABLEKS                       R26 R26 K35 ["DMNetworking"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K28 [require]
      158 GETTABLEKS                       R27 R0 K29 ["Packages"]
      160 GETTABLEKS                       R27 R27 K36 ["DMNetworkingOLD"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K28 [require]
      165 GETTABLEKS                       R28 R0 K31 ["Src"]
      167 GETTABLEKS                       R28 R28 K32 ["Util"]
      169 GETTABLEKS                       R28 R28 K37 ["ExperimentFeature"]
      171 CALL                             R27 1 1
      172 GETIMPORT                        R28 K28 [require]
      174 GETTABLEKS                       R29 R0 K31 ["Src"]
      176 GETTABLEKS                       R29 R29 K38 ["Flags"]
      178 CALL                             R28 1 1
      179 GETIMPORT                        R29 K28 [require]
      181 GETTABLEKS                       R30 R0 K29 ["Packages"]
      183 GETTABLEKS                       R30 R30 K39 ["Framework"]
      185 CALL                             R29 1 1
      186 GETIMPORT                        R30 K28 [require]
      188 GETTABLEKS                       R31 R0 K31 ["Src"]
      190 GETTABLEKS                       R31 R31 K32 ["Util"]
      192 GETTABLEKS                       R31 R31 K40 ["GameLoadedNotifier"]
      194 CALL                             R30 1 1
      195 GETIMPORT                        R31 K28 [require]
      197 GETTABLEKS                       R32 R0 K31 ["Src"]
      199 GETTABLEKS                       R32 R32 K32 ["Util"]
      201 GETTABLEKS                       R32 R32 K41 ["GameStoppedNotifier"]
      203 CALL                             R31 1 1
      204 GETIMPORT                        R32 K28 [require]
      206 GETTABLEKS                       R33 R0 K29 ["Packages"]
      208 GETTABLEKS                       R33 R33 K42 ["_Index"]
      210 GETTABLEKS                       R33 R33 K43 ["Gen3dCore"]
      212 GETTABLEKS                       R33 R33 K43 ["Gen3dCore"]
      214 CALL                             R32 1 1
      215 GETIMPORT                        R33 K28 [require]
      217 GETTABLEKS                       R34 R0 K29 ["Packages"]
      219 GETTABLEKS                       R34 R34 K44 ["HttpWrapper"]
      221 CALL                             R33 1 1
      222 GETIMPORT                        R34 K28 [require]
      224 GETTABLEKS                       R35 R0 K29 ["Packages"]
      226 GETTABLEKS                       R35 R35 K45 ["ModelContextProtocol"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K28 [require]
      231 GETTABLEKS                       R36 R0 K31 ["Src"]
      233 GETTABLEKS                       R36 R36 K32 ["Util"]
      235 GETTABLEKS                       R36 R36 K46 ["NotificationManagerStore"]
      237 CALL                             R35 1 1
      238 GETIMPORT                        R36 K28 [require]
      240 GETTABLEKS                       R37 R0 K29 ["Packages"]
      242 GETTABLEKS                       R37 R37 K47 ["OpenApiCreatorHomeApi"]
      244 CALL                             R36 1 1
      245 GETIMPORT                        R37 K28 [require]
      247 GETTABLEKS                       R38 R0 K29 ["Packages"]
      249 GETTABLEKS                       R38 R38 K48 ["OpenApiCreatorInventoryApi"]
      251 CALL                             R37 1 1
      252 GETIMPORT                        R38 K28 [require]
      254 GETTABLEKS                       R39 R0 K29 ["Packages"]
      256 GETTABLEKS                       R39 R39 K49 ["OpenApiCubeGenerationGateway"]
      258 CALL                             R38 1 1
      259 GETIMPORT                        R39 K28 [require]
      261 GETTABLEKS                       R40 R0 K29 ["Packages"]
      263 GETTABLEKS                       R40 R40 K50 ["OpenApiMcpAssistantApi"]
      265 CALL                             R39 1 1
      266 GETIMPORT                        R40 K28 [require]
      268 GETTABLEKS                       R41 R0 K29 ["Packages"]
      270 GETTABLEKS                       R41 R41 K51 ["OpenApiMcpAssistantStorageApi"]
      272 CALL                             R40 1 1
      273 GETIMPORT                        R41 K28 [require]
      275 GETTABLEKS                       R42 R0 K29 ["Packages"]
      277 GETTABLEKS                       R42 R42 K52 ["Promise"]
      279 CALL                             R41 1 1
      280 GETIMPORT                        R42 K28 [require]
      282 GETTABLEKS                       R43 R0 K31 ["Src"]
      284 GETTABLEKS                       R43 R43 K32 ["Util"]
      286 GETTABLEKS                       R43 R43 K53 ["StudioAnimationGen"]
      288 CALL                             R42 1 1
      289 GETIMPORT                        R43 K28 [require]
      291 GETTABLEKS                       R44 R0 K31 ["Src"]
      293 GETTABLEKS                       R44 R44 K32 ["Util"]
      295 GETTABLEKS                       R44 R44 K54 ["StudioEndpointUtil"]
      297 CALL                             R43 1 1
      298 GETIMPORT                        R44 K28 [require]
      300 GETTABLEKS                       R45 R0 K31 ["Src"]
      302 GETTABLEKS                       R45 R45 K55 ["Host"]
      304 GETTABLEKS                       R45 R45 K56 ["Resources"]
      306 GETTABLEKS                       R45 R45 K57 ["StudioEventLogger"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K28 [require]
      311 GETTABLEKS                       R46 R0 K31 ["Src"]
      313 GETTABLEKS                       R46 R46 K58 ["Components"]
      315 GETTABLEKS                       R46 R46 K59 ["Contexts"]
      317 GETTABLEKS                       R46 R46 K60 ["StudioLLM"]
      319 GETTABLEKS                       R46 R46 K61 ["StudioLLMSystemReminder"]
      321 CALL                             R45 1 1
      322 GETIMPORT                        R46 K28 [require]
      324 GETTABLEKS                       R47 R0 K31 ["Src"]
      326 GETTABLEKS                       R47 R47 K32 ["Util"]
      328 GETTABLEKS                       R47 R47 K62 ["StudioMaterialGenerator"]
      330 CALL                             R46 1 1
      331 GETIMPORT                        R47 K28 [require]
      333 GETTABLEKS                       R48 R0 K31 ["Src"]
      335 GETTABLEKS                       R48 R48 K32 ["Util"]
      337 GETTABLEKS                       R48 R48 K63 ["StudioNetworkingOLD"]
      339 CALL                             R47 1 1
      340 GETIMPORT                        R48 K28 [require]
      342 GETTABLEKS                       R49 R0 K31 ["Src"]
      344 GETTABLEKS                       R49 R49 K32 ["Util"]
      346 GETTABLEKS                       R49 R49 K64 ["StudioState"]
      348 CALL                             R48 1 1
      349 GETIMPORT                        R49 K28 [require]
      351 GETTABLEKS                       R50 R0 K31 ["Src"]
      353 GETTABLEKS                       R50 R50 K32 ["Util"]
      355 GETTABLEKS                       R50 R50 K65 ["createStudioInstancePicker"]
      357 CALL                             R49 1 1
      358 GETTABLEKS                       R50 R25 K66 ["Remote"]
      360 GETTABLEKS                       R51 R29 K67 ["Http"]
      362 GETTABLEKS                       R51 R51 K68 ["Networking"]
      364 GETTABLEKS                       R51 R51 K69 ["new"]
      366 DUPTABLE                         R52 K73 [{["isInternal"] = True, ["loggingLevel"]}]
      367 GETTABLEKS                       R54 R28 K74 ["FFlagDebugLogAssistantUI"]
      369 JUMPIFNOT                        R54 ; [+2]
      370 LOADN                            R53 4
      371 JUMP                             ; [+1]
      372 LOADN                            R53 0
      373 SETTABLEKS                       R53 R52 K72 ["loggingLevel"]
      375 CALL                             R51 1 1
      376 GETTABLEKS                       R52 R29 K75 ["Url"]
      378 GETTABLEKS                       R53 R52 K69 ["new"]
      380 LOADNIL                          R54
      381 CALL                             R53 1 1
      382 DUPCLOSURE                       R54 K76 [PROTO_0]
      383 CAPTURE                          VAL R28
      384 DUPCLOSURE                       R55 K77 [PROTO_2]
      385 CAPTURE                          VAL R0
      386 CAPTURE                          VAL R33
      387 CAPTURE                          VAL R34
      388 DUPCLOSURE                       R56 K78 [PROTO_53]
      389 CAPTURE                          VAL R13
      390 CAPTURE                          VAL R15
      391 CAPTURE                          VAL R20
      392 CAPTURE                          VAL R41
      393 CAPTURE                          VAL R28
      394 CAPTURE                          VAL R53
      395 CAPTURE                          VAL R21
      396 CAPTURE                          VAL R14
      397 CAPTURE                          VAL R43
      398 CAPTURE                          VAL R40
      399 DUPCLOSURE                       R57 K79 [PROTO_64]
      400 CAPTURE                          VAL R28
      401 CAPTURE                          VAL R2
      402 CAPTURE                          VAL R23
      403 DUPCLOSURE                       R58 K80 [PROTO_65]
      404 CAPTURE                          VAL R42
      405 CAPTURE                          VAL R28
      406 DUPCLOSURE                       R59 K81 [PROTO_67]
      407 CAPTURE                          VAL R44
      408 CAPTURE                          VAL R24
      409 DUPCLOSURE                       R60 K82 [PROTO_75]
      410 CAPTURE                          VAL R21
      411 CAPTURE                          VAL R43
      412 CAPTURE                          VAL R38
      413 CAPTURE                          VAL R28
      414 CAPTURE                          VAL R23
      415 CAPTURE                          VAL R6
      416 CAPTURE                          VAL R32
      417 CAPTURE                          VAL R18
      418 CAPTURE                          VAL R14
      419 DUPCLOSURE                       R61 K83 [PROTO_78]
      420 CAPTURE                          VAL R28
      421 CAPTURE                          VAL R23
      422 DUPCLOSURE                       R62 K84 [PROTO_87]
      423 CAPTURE                          VAL R43
      424 CAPTURE                          VAL R37
      425 CAPTURE                          VAL R36
      426 CAPTURE                          VAL R53
      427 CAPTURE                          VAL R7
      428 CAPTURE                          VAL R8
      429 DUPCLOSURE                       R63 K85 [PROTO_94]
      430 CAPTURE                          VAL R53
      431 CAPTURE                          VAL R7
      432 CAPTURE                          VAL R8
      433 CAPTURE                          VAL R9
      434 CAPTURE                          VAL R17
      435 DUPCLOSURE                       R64 K86 [PROTO_112]
      436 CAPTURE                          VAL R49
      437 CAPTURE                          VAL R28
      438 CAPTURE                          VAL R22
      439 CAPTURE                          VAL R23
      440 CAPTURE                          VAL R50
      441 CAPTURE                          VAL R25
      442 DUPCLOSURE                       R65 K87 [PROTO_194]
      443 CAPTURE                          VAL R23
      444 CAPTURE                          VAL R28
      445 CAPTURE                          VAL R25
      446 CAPTURE                          VAL R53
      447 CAPTURE                          VAL R27
      448 CAPTURE                          VAL R44
      449 CAPTURE                          VAL R8
      450 CAPTURE                          VAL R41
      451 CAPTURE                          VAL R3
      452 CAPTURE                          VAL R16
      453 CAPTURE                          VAL R2
      454 CAPTURE                          VAL R46
      455 CAPTURE                          VAL R35
      456 CAPTURE                          VAL R60
      457 CAPTURE                          VAL R61
      458 CAPTURE                          VAL R62
      459 CAPTURE                          VAL R63
      460 CAPTURE                          VAL R42
      461 CAPTURE                          VAL R24
      462 CAPTURE                          VAL R14
      463 CAPTURE                          VAL R43
      464 CAPTURE                          VAL R37
      465 CAPTURE                          VAL R51
      466 CAPTURE                          VAL R21
      467 CAPTURE                          VAL R39
      468 CAPTURE                          VAL R56
      469 CAPTURE                          VAL R57
      470 CAPTURE                          VAL R55
      471 CAPTURE                          VAL R32
      472 CAPTURE                          VAL R33
      473 CAPTURE                          VAL R38
      474 CAPTURE                          VAL R4
      475 CAPTURE                          VAL R11
      476 CAPTURE                          VAL R10
      477 CAPTURE                          VAL R30
      478 CAPTURE                          VAL R31
      479 CAPTURE                          VAL R48
      480 CAPTURE                          VAL R64
      481 CAPTURE                          VAL R0
      482 CAPTURE                          VAL R45
      483 RETURN                           R65 1
