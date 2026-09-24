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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringCubeGenerationGatewayBaseUrlOverride"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R3 K0 ["cube-generation-gateway"] ; [+2]
        2 GETUPVAL                         R4 0
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 MOVE                             R10 R4
        9 CALL                             R5 5 -1
       10 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["buildRequest"]
        9 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ConvertImageDataToTempIdAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReleaseTempIdAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GetImageDataBase64Async"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["LoadImageAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSettingsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSettingsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetUserSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetUserSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GetSetting"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 0
        8 CLOSEUPVALS                      R1
        9 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetSetting"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSecureSettingsAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetSecureSettingsAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Base64EncodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GeneratePKCEAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["StartMCPAuthAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["JsonEncodeAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JsonDecodeAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["SetUpMCPServerAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_27:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 RETURN                           R2 1
        8 DUPTABLE                         R2 K4 [{["error"] = "MCP Server not supported"}]
        9 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AccessTokenPermissions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScopePermissionsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetScopePermissionsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAvailableScopesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScopeRiskLevelsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSelectedPresetAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSelectedPresetAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectFileExistsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_36:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectReadFileAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["QuickConnectModifyFileAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Info"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_44:
        0 LOADK                            R1 K0 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["AssistantUserSkillAssets"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getSkillAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{["cursor"], ["limit"] = 100}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["cursor"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteSkillAssetAsync"]
        5 DUPTABLE                         R1 K3 [{"assetId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["assetId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_55:
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

PROTO_56:
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
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R4 R0 K13 ["getPluginSetting"]
       51 NEWCLOSURE                       R4 P10
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R4 R0 K14 ["setPluginSetting"]
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
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R5 R4 K21 ["encodeAsync"]
       81 GETTABLEKS                       R4 R0 K20 ["json"]
       83 NEWCLOSURE                       R5 P17
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R5 R4 K22 ["decodeAsync"]
       87 NEWCLOSURE                       R4 P18
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R4 R0 K23 ["setupMCPServerAsync"]
       91 GETIMPORT                        R4 K1 [pcall]
       93 NEWCLOSURE                       R5 P19
       94 CAPTURE                          VAL R1
       95 CALL                             R4 1 2
       96 JUMPIFNOT                        R4 ; [+24]
       97 NEWCLOSURE                       R6 P20
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R6 R0 K24 ["getScopePermissionsAsync"]
      101 NEWCLOSURE                       R6 P21
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R6 R0 K25 ["setScopePermissionsAsync"]
      105 NEWCLOSURE                       R6 P22
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R6 R0 K26 ["getAvailableScopesAsync"]
      109 NEWCLOSURE                       R6 P23
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R6 R0 K27 ["getScopeRiskLevelsAsync"]
      113 NEWCLOSURE                       R6 P24
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R6 R0 K28 ["getSelectedPresetAsync"]
      117 NEWCLOSURE                       R6 P25
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R6 R0 K29 ["setSelectedPresetAsync"]
      121 GETTABLEKS                       R6 R0 K30 ["quickConnect"]
      123 NEWCLOSURE                       R7 P26
      124 CAPTURE                          VAL R3
      125 SETTABLEKS                       R7 R6 K31 ["fileExistsAsync"]
      127 GETTABLEKS                       R6 R0 K30 ["quickConnect"]
      129 NEWCLOSURE                       R7 P27
      130 CAPTURE                          VAL R3
      131 SETTABLEKS                       R7 R6 K32 ["readFileAsync"]
      133 GETTABLEKS                       R6 R0 K30 ["quickConnect"]
      135 NEWCLOSURE                       R7 P28
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R7 R6 K33 ["modifyFileAsync"]
      139 NEWCLOSURE                       R6 P29
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R6 R0 K34 ["openFileDialogAsync"]
      143 NEWCLOSURE                       R6 P30
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R6 R0 K35 ["importFileBinaryAsync"]
      147 NEWCLOSURE                       R6 P31
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R6 R0 K36 ["printToStudioLogAsync"]
      151 GETUPVAL                         R6 0
      152 GETTABLEKS                       R6 R6 K37 ["APIS_URL"]
      154 LOADK                            R8 K38 ["https://apis%.(.+)"]
      155 NAMECALL                         R6 R6 K39 ["match"]
      157 CALL                             R6 2 1
      158 LOADK                            R7 K40 ["https://assetdelivery.%*/"]
      159 MOVE                             R9 R6
      160 NAMECALL                         R7 R7 K41 ["format"]
      162 CALL                             R7 2 1
      163 NEWCLOSURE                       R8 P32
      164 CAPTURE                          VAL R7
      165 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      167 NEWCLOSURE                       R10 P33
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R10 R9 K43 ["getManifestAsync"]
      171 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      173 NEWCLOSURE                       R10 P34
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R7
      176 SETTABLEKS                       R10 R9 K44 ["fetchContentAsync"]
      178 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      180 DUPCLOSURE                       R10 K45 [PROTO_47]
      181 CAPTURE                          UPVAL U1
      182 CAPTURE                          UPVAL U2
      183 SETTABLEKS                       R10 R9 K46 ["publishNewAsync"]
      185 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      187 DUPCLOSURE                       R10 K47 [PROTO_48]
      188 CAPTURE                          UPVAL U1
      189 CAPTURE                          UPVAL U2
      190 SETTABLEKS                       R10 R9 K48 ["publishUpdateAsync"]
      192 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      194 DUPCLOSURE                       R10 K49 [PROTO_49]
      195 SETTABLEKS                       R10 R9 K50 ["deleteAsync"]
      197 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      199 DUPCLOSURE                       R10 K52 [PROTO_51]
      200 CAPTURE                          UPVAL U3
      201 CAPTURE                          UPVAL U4
      202 SETTABLEKS                       R10 R9 K53 ["getAssetsAsync"]
      204 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      206 DUPCLOSURE                       R10 K54 [PROTO_53]
      207 CAPTURE                          UPVAL U3
      208 CAPTURE                          UPVAL U4
      209 SETTABLEKS                       R10 R9 K55 ["uploadAssetsAsync"]
      211 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      213 DUPCLOSURE                       R10 K56 [PROTO_55]
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          UPVAL U4
      216 SETTABLEKS                       R10 R9 K57 ["deleteAssetAsync"]
      218 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridgeStandalone"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_64:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_66:
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

PROTO_67:
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
       35 CAPTURE                          REF R3
       36 SETTABLEKS                       R6 R5 K6 ["loadCode"]
       38 GETTABLEKS                       R5 R0 K4 ["tools"]
       40 GETTABLEKS                       R5 R5 K5 ["executeLuau"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          REF R3
       44 SETTABLEKS                       R6 R5 K7 ["stopCode"]
       46 JUMPIF                           R4 ; [+16]
       47 GETTABLEKS                       R5 R0 K4 ["tools"]
       49 GETTABLEKS                       R5 R5 K8 ["multiEdit"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          REF R3
       53 SETTABLEKS                       R6 R5 K9 ["updateScriptSourceAsync"]
       55 GETTABLEKS                       R5 R0 K4 ["tools"]
       57 GETTABLEKS                       R5 R5 K8 ["multiEdit"]
       59 DUPCLOSURE                       R6 K10 [PROTO_64]
       60 CAPTURE                          UPVAL U1
       61 SETTABLEKS                       R6 R5 K11 ["applyScriptSourceDirectly"]
       63 GETIMPORT                        R5 K14 [task.spawn]
       65 NEWCLOSURE                       R6 P6
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          REF R3
       69 CALL                             R5 1 0
       70 CLOSEUPVALS                      R3
       71 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
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

PROTO_74:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_75:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_76:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_77:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_73]
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
       27 DUPCLOSURE                       R3 K11 [PROTO_74]
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R3 R2 K12 ["exportMeshToGlbAsync"]
       31 DUPCLOSURE                       R3 K13 [PROTO_75]
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U0
       34 SETTABLEKS                       R3 R2 K14 ["exportInstanceToGlbAsync"]
       36 DUPCLOSURE                       R3 K15 [PROTO_76]
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R3 R2 K16 ["loadModelFromUrlAsync"]
       40 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PublishMediator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Groups"]
        3 GETTABLEKS                       R0 R0 K1 ["getListGroupsAsync"]
        5 DUPTABLE                         R1 K3 [{"surface"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["surface"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_85:
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

PROTO_86:
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

PROTO_87:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["THUMBNAILS_URL"]
        3 RETURN                           R0 1

PROTO_88:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CREATOR_HUB_URL"]
        3 RETURN                           R0 1

PROTO_89:
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
       15 DUPCLOSURE                       R3 K11 [PROTO_85]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R1 K12 ["fetchUserGroupsAsync"]
       20 DUPCLOSURE                       R3 K13 [PROTO_86]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R3 R1 K14 ["searchCreatorStoreAssetsAsync"]
       26 DUPCLOSURE                       R3 K15 [PROTO_87]
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R1 K16 ["getThumbnailsUrl"]
       30 DUPCLOSURE                       R3 K17 [PROTO_88]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R1 K18 ["getCreatorHubUrl"]
       34 RETURN                           R0 0

PROTO_90:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_94:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_95:
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

PROTO_96:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetInsert"]
        4 DUPCLOSURE                       R2 K2 [PROTO_90]
        5 SETTABLEKS                       R2 R1 K3 ["getObjects"]
        7 DUPCLOSURE                       R2 K4 [PROTO_91]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K5 ["getItemDetailsAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_92]
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K7 ["loadPackageAssetAsync"]
       17 DUPCLOSURE                       R2 K8 [PROTO_93]
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R1 K9 ["getAudioApiByDefault"]
       21 DUPCLOSURE                       R2 K10 [PROTO_94]
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K11 ["insertAudioAsset"]
       25 DUPCLOSURE                       R2 K12 [PROTO_95]
       26 SETTABLEKS                       R2 R1 K13 ["assignSourceAssetId"]
       28 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_98:
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

PROTO_99:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Utils"]
        3 GETTABLEKS                       R2 R2 K1 ["TestAutomationUtils"]
        5 GETTABLEKS                       R2 R2 K2 ["findInstanceByPath"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+3]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 DUPTABLE                         R3 K6 [{"uniqueId", "name", "className"}]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K7 ["instances"]
       17 GETTABLEKS                       R4 R4 K8 ["getUniqueId"]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["uniqueId"]
       23 GETTABLEKS                       R4 R2 K9 ["Name"]
       25 SETTABLEKS                       R4 R3 K4 ["name"]
       27 GETTABLEKS                       R4 R2 K10 ["ClassName"]
       29 SETTABLEKS                       R4 R3 K5 ["className"]
       31 RETURN                           R3 1

PROTO_101:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_102:
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

PROTO_103:
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

PROTO_104:
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
       18 GETTABLEKS                       R3 R1 K6 ["shouldSelectModel"]
       20 JUMPIFNOTEQKB                    R3 TRUE ; [+17]
       22 LOADNIL                          R3
       23 MOVE                             R4 R2
       24 JUMPIFNOT                        R4 ; [+9]
       25 GETTABLEKS                       R5 R4 K7 ["ClassName"]
       27 JUMPIFNOTEQKS                    R5 K8 ["Model"] ; [+3]
       29 MOVE                             R3 R4
       30 JUMP                             ; [+3]
       31 GETTABLEKS                       R4 R4 K9 ["Parent"]
       33 JUMPBACK                         ; [-10]
       34 JUMPIFNOTEQKNIL                  R3 ; [+2]
       36 RETURN                           R0 0
       37 MOVE                             R2 R3
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K10 ["instances"]
       41 GETTABLEKS                       R3 R3 K11 ["getUniqueId"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 DUPTABLE                         R4 K15 [{"uniqueId", "name", "className"}]
       46 SETTABLEKS                       R3 R4 K12 ["uniqueId"]
       48 GETTABLEKS                       R5 R2 K16 ["Name"]
       50 SETTABLEKS                       R5 R4 K13 ["name"]
       52 GETTABLEKS                       R5 R2 K7 ["ClassName"]
       54 SETTABLEKS                       R5 R4 K14 ["className"]
       56 RETURN                           R4 1

PROTO_105:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_106:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_107:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_98]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_99]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 LOADK                            R8 K7 ["Instances_resolveInstanceByPathAsync"]
       20 NEWCLOSURE                       R9 P3
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R2
       23 NAMECALL                         R6 R1 K8 ["OnHostInvokeAsync"]
       25 CALL                             R6 3 2
       26 GETTABLEKS                       R8 R2 K2 ["instances"]
       28 NEWCLOSURE                       R9 P4
       29 CAPTURE                          VAL R6
       30 SETTABLEKS                       R9 R8 K9 ["resolveInstanceByPathAsync"]
       32 DUPCLOSURE                       R8 K10 [PROTO_102]
       33 LOADK                            R11 K11 ["InstancePicker_pickInstanceAsync"]
       34 NEWCLOSURE                       R12 P6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 NAMECALL                         R9 R1 K8 ["OnHostInvokeAsync"]
       39 CALL                             R9 3 2
       40 GETTABLEKS                       R11 R2 K2 ["instances"]
       42 NEWCLOSURE                       R12 P7
       43 CAPTURE                          VAL R9
       44 SETTABLEKS                       R12 R11 K12 ["pickInstanceAsync"]
       46 GETTABLEKS                       R11 R1 K13 ["Destroying"]
       48 NEWCLOSURE                       R13 P8
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R7
       52 NAMECALL                         R11 R11 K14 ["Once"]
       54 CALL                             R11 2 0
       55 RETURN                           R0 0

PROTO_108:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_109:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_110:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_111:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_112:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_113:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_114:
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

PROTO_115:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_116:
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

PROTO_117:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_118:
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

PROTO_119:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_120:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_121:
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

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_124:
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

PROTO_125:
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

PROTO_126:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_127:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_126]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_128:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_129:
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

PROTO_130:
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

PROTO_131:
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

PROTO_132:
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

PROTO_133:
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

PROTO_134:
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

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_140:
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

PROTO_141:
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

PROTO_142:
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

PROTO_143:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postGenerateTextureAsync"]
        3 DUPTABLE                         R1 K13 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["robloxApiKey"], ["glb"], ["image"], ["textPrompt"], ["model"]}]
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
       23 SETTABLEKS                       R2 R1 K9 ["glb"]
       25 GETUPVAL                         R2 4
       26 SETTABLEKS                       R2 R1 K10 ["image"]
       28 GETUPVAL                         R2 5
       29 GETTABLEKS                       R2 R2 K11 ["textPrompt"]
       31 SETTABLEKS                       R2 R1 K11 ["textPrompt"]
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K12 ["model"]
       36 SETTABLEKS                       R2 R1 K12 ["model"]
       38 CALL                             R0 1 -1
       39 RETURN                           R0 -1

PROTO_144:
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
       19 GETTABLEKS                       R4 R0 K10 ["image"]
       21 JUMPIFNOT                        R4 ; [+11]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K3 ["formFile"]
       25 LOADK                            R4 K10 ["image"]
       26 GETTABLEKS                       R5 R0 K10 ["image"]
       28 GETTABLEKS                       R7 R0 K12 ["imageContentType"]
       30 ORK                              R6 R7 K11 ["image/png"]
       31 CALL                             R3 3 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K13 ["callWithOptions"]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R6 0 0
       46 CALL                             R4 2 1
       47 GETTABLEKS                       R5 R4 K14 ["success"]
       49 JUMPIF                           R5 ; [+7]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K15 ["throwError"]
       53 MOVE                             R6 R4
       54 LOADK                            R7 K16 ["TextureGeneration.postGenerateTextureAsync"]
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1
       57 GETTABLEKS                       R5 R4 K17 ["data"]
       59 GETTABLEKS                       R5 R5 K18 ["textureGenerationId"]
       61 FASTCALL2K                       ASSERT R5 K19 ; [+5]
       63 MOVE                             R7 R5
       64 LOADK                            R8 K19 ["Expected textureGenerationId in response from TextureGeneration.postGenerateTextureAsync"]
       65 GETIMPORT                        R6 K21 [assert]
       67 CALL                             R6 2 0
       68 DUPTABLE                         R6 K22 [{"textureGenerationId"}]
       69 SETTABLEKS                       R5 R6 K18 ["textureGenerationId"]
       71 RETURN                           R6 1

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
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

PROTO_149:
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

PROTO_150:
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

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_155:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_156:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_157:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_158:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_159:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_160:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_161:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K1 ["GameId"]
        2 NAMECALL                         R1 R1 K2 ["GetItem"]
        4 CALL                             R1 2 1
        5 ORK                              R0 R1 K0 [0]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_162:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_163:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_164:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_165:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_166:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_167:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_168:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_169:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFocusedDataModelType"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_170:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isEditDataModelAvailable"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_171:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["subscribeEditDataModelAvailabilityChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_172:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_173:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CapabilitiesHandler"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_174:
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

PROTO_175:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["cleanupServerAndClients"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_176:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["isCleanupServerAndClientsAvailable"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_177:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_178:
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

PROTO_179:
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

PROTO_180:
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

PROTO_181:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_182:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_183:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioStateString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_184:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_108]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_109]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_110]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       24 DUPCLOSURE                       R3 K11 [PROTO_111]
       25 SETTABLEKS                       R3 R2 K12 ["getEngineFeature"]
       27 GETIMPORT                        R3 K14 [pcall]
       29 NEWCLOSURE                       R4 P4
       30 CAPTURE                          VAL R0
       31 CALL                             R3 1 2
       32 JUMPIFNOT                        R3 ; [+2]
       33 MOVE                             R5 R4
       34 JUMPIF                           R5 ; [+1]
       35 LOADNIL                          R5
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R6 R6 K15 ["createStudioEventLogger"]
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R2 K16 ["EventLogger"]
       43 GETTABLEKS                       R6 R2 K17 ["http"]
       45 DUPCLOSURE                       R7 K18 [PROTO_113]
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R7 R6 K19 ["createWebStreamClient"]
       49 GETTABLEKS                       R6 R2 K17 ["http"]
       51 DUPCLOSURE                       R7 K20 [PROTO_116]
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 SETTABLEKS                       R7 R6 K21 ["requestAsync"]
       56 GETTABLEKS                       R6 R2 K17 ["http"]
       58 DUPCLOSURE                       R7 K22 [PROTO_118]
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R7 R6 K23 ["openUrl"]
       62 GETTABLEKS                       R6 R2 K24 ["selection"]
       64 DUPCLOSURE                       R7 K25 [PROTO_119]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R7 R6 K26 ["get"]
       68 GETTABLEKS                       R6 R2 K24 ["selection"]
       70 DUPCLOSURE                       R7 K27 [PROTO_120]
       71 CAPTURE                          UPVAL U8
       72 SETTABLEKS                       R7 R6 K28 ["set"]
       74 DUPCLOSURE                       R6 K29 [PROTO_121]
       75 CAPTURE                          UPVAL U9
       76 SETTABLEKS                       R6 R2 K30 ["openScriptAsync"]
       78 GETTABLEKS                       R6 R2 K31 ["tools"]
       80 GETTABLEKS                       R6 R6 K32 ["marketplaceInsertion"]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K0 ["Guest"]
       85 GETTABLEKS                       R7 R7 K33 ["LoadAssetHandlers"]
       87 GETTABLEKS                       R7 R7 K34 ["getRobloxScriptHandler"]
       89 GETIMPORT                        R8 K36 [game]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R7 R6 K37 ["loadAssetAsync"]
       94 GETTABLEKS                       R6 R2 K31 ["tools"]
       96 GETTABLEKS                       R6 R6 K38 ["materialGen"]
       98 GETUPVAL                         R7 10
       99 GETTABLEKS                       R7 R7 K39 ["create"]
      101 DUPTABLE                         R8 K43 [{"NotificationManager", "Networking", "Telemetry"}]
      102 NAMECALL                         R10 R1 K44 ["IsGuest"]
      104 CALL                             R10 1 1
      105 JUMPIFNOT                        R10 ; [+5]
      106 GETUPVAL                         R9 11
      107 GETTABLEKS                       R9 R9 K26 ["get"]
      109 CALL                             R9 0 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R9
      112 SETTABLEKS                       R9 R8 K40 ["NotificationManager"]
      114 SETTABLEKS                       R1 R8 K41 ["Networking"]
      116 GETUPVAL                         R9 4
      117 GETTABLEKS                       R9 R9 K45 ["makeStudioTelemetryEvents"]
      119 MOVE                             R10 R5
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K42 ["Telemetry"]
      123 CALL                             R7 1 1
      124 GETTABLEKS                       R8 R7 K46 ["generateMaterialVariantsAsync"]
      126 SETTABLEKS                       R8 R6 K46 ["generateMaterialVariantsAsync"]
      128 GETTABLEKS                       R8 R7 K47 ["uploadMaterialsAsync"]
      130 SETTABLEKS                       R8 R6 K47 ["uploadMaterialsAsync"]
      132 GETTABLEKS                       R8 R1 K48 ["Destroying"]
      134 NEWCLOSURE                       R10 P11
      135 CAPTURE                          VAL R7
      136 NAMECALL                         R8 R8 K49 ["Once"]
      138 CALL                             R8 2 0
      139 GETUPVAL                         R6 12
      140 MOVE                             R7 R2
      141 MOVE                             R8 R0
      142 CALL                             R6 2 0
      143 NAMECALL                         R6 R1 K50 ["IsHost"]
      145 CALL                             R6 1 1
      146 JUMPIFNOT                        R6 ; [+4]
      147 GETUPVAL                         R6 13
      148 MOVE                             R7 R2
      149 MOVE                             R8 R0
      150 CALL                             R6 2 0
      151 GETUPVAL                         R6 14
      152 MOVE                             R7 R2
      153 CALL                             R6 1 0
      154 GETUPVAL                         R6 15
      155 MOVE                             R7 R2
      156 CALL                             R6 1 0
      157 GETUPVAL                         R6 3
      158 GETTABLEKS                       R6 R6 K51 ["FFlagAssistantAnimationGenTool"]
      160 JUMPIFNOT                        R6 ; [+21]
      161 GETUPVAL                         R6 16
      162 GETTABLEKS                       R6 R6 K39 ["create"]
      164 MOVE                             R7 R0
      165 CALL                             R6 1 1
      166 GETTABLEKS                       R7 R2 K31 ["tools"]
      168 GETTABLEKS                       R7 R7 K52 ["animationGen"]
      170 GETTABLEKS                       R8 R6 K53 ["generateAnimationAsync"]
      172 SETTABLEKS                       R8 R7 K53 ["generateAnimationAsync"]
      174 GETUPVAL                         R8 3
      175 GETTABLEKS                       R8 R8 K54 ["FFlagAnimationGenOpenACE"]
      177 JUMPIFNOT                        R8 ; [+4]
      178 GETTABLEKS                       R8 R6 K55 ["openAnimationClipEditorAsync"]
      180 SETTABLEKS                       R8 R7 K55 ["openAnimationClipEditorAsync"]
      182 GETUPVAL                         R6 3
      183 GETTABLEKS                       R6 R6 K56 ["FFlagAssistantAvatarAutoSetupTool"]
      185 JUMPIFNOT                        R6 ; [+19]
      186 GETTABLEKS                       R6 R2 K31 ["tools"]
      188 GETTABLEKS                       R6 R6 K57 ["avatarAutoSetup"]
      190 GETUPVAL                         R7 4
      191 GETTABLEKS                       R7 R7 K45 ["makeStudioTelemetryEvents"]
      193 MOVE                             R8 R5
      194 CALL                             R7 1 1
      195 NEWCLOSURE                       R8 P12
      196 CAPTURE                          UPVAL U17
      197 CAPTURE                          VAL R7
      198 SETTABLEKS                       R8 R6 K58 ["autoSetupAsync"]
      200 GETUPVAL                         R8 17
      201 GETTABLEKS                       R8 R8 K59 ["cancelAutoSetup"]
      203 SETTABLEKS                       R8 R6 K59 ["cancelAutoSetup"]
      205 GETTABLEKS                       R6 R2 K31 ["tools"]
      207 GETTABLEKS                       R6 R6 K60 ["uploadImage"]
      209 DUPCLOSURE                       R7 K61 [PROTO_123]
      210 CAPTURE                          UPVAL U18
      211 SETTABLEKS                       R7 R6 K62 ["publishAssetAsync"]
      213 DUPCLOSURE                       R7 K63 [PROTO_125]
      214 CAPTURE                          UPVAL U3
      215 CAPTURE                          UPVAL U19
      216 CAPTURE                          UPVAL U20
      217 CAPTURE                          UPVAL U1
      218 CAPTURE                          UPVAL U21
      219 SETTABLEKS                       R7 R6 K64 ["searchAssetAsync"]
      221 DUPCLOSURE                       R6 K65 [PROTO_127]
      222 CAPTURE                          UPVAL U22
      223 SETTABLEKS                       R6 R2 K66 ["hasInternalPermission"]
      225 DUPCLOSURE                       R6 K67 [PROTO_129]
      226 CAPTURE                          UPVAL U19
      227 CAPTURE                          UPVAL U23
      228 SETTABLEKS                       R6 R2 K68 ["fetchSystemPromptAsync"]
      230 GETUPVAL                         R6 24
      231 MOVE                             R7 R2
      232 MOVE                             R8 R0
      233 CALL                             R6 2 0
      234 GETUPVAL                         R6 25
      235 MOVE                             R7 R2
      236 MOVE                             R8 R0
      237 CALL                             R6 2 0
      238 GETUPVAL                         R6 26
      239 CALL                             R6 0 0
      240 GETUPVAL                         R7 3
      241 GETTABLEKS                       R7 R7 K69 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      243 JUMPIFEQKS                       R7 K70 [""] ; [+3]
      245 MOVE                             R6 R7
      246 JUMP                             ; [+1]
      247 LOADNIL                          R6
      248 JUMPIFNOT                        R6 ; [+9]
      249 GETUPVAL                         R7 27
      250 GETTABLEKS                       R7 R7 K71 ["buildRequest"]
      252 GETUPVAL                         R8 27
      253 NEWCLOSURE                       R9 P17
      254 CAPTURE                          VAL R6
      255 CAPTURE                          VAL R7
      256 SETTABLEKS                       R9 R8 K71 ["buildRequest"]
      258 DUPCLOSURE                       R7 K72 [PROTO_130]
      259 DUPCLOSURE                       R8 K73 [PROTO_131]
      260 CAPTURE                          UPVAL U27
      261 DUPTABLE                         R9 K76 [{"startAsync", "getStatusAsync"}]
      262 NEWCLOSURE                       R10 P20
      263 CAPTURE                          VAL R2
      264 CAPTURE                          UPVAL U19
      265 CAPTURE                          UPVAL U28
      266 CAPTURE                          UPVAL U3
      267 CAPTURE                          VAL R8
      268 SETTABLEKS                       R10 R9 K74 ["startAsync"]
      270 NEWCLOSURE                       R10 P21
      271 CAPTURE                          VAL R2
      272 CAPTURE                          UPVAL U19
      273 CAPTURE                          UPVAL U28
      274 CAPTURE                          UPVAL U3
      275 CAPTURE                          VAL R7
      276 SETTABLEKS                       R10 R9 K75 ["getStatusAsync"]
      278 SETTABLEKS                       R9 R2 K77 ["imageGeneration"]
      280 GETUPVAL                         R9 28
      281 GETTABLEKS                       R9 R9 K78 ["SegmentMesh"]
      283 GETUPVAL                         R10 28
      284 GETTABLEKS                       R10 R10 K79 ["TextureGeneration"]
      286 DUPTABLE                         R11 K80 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      287 NEWCLOSURE                       R12 P22
      288 CAPTURE                          VAL R2
      289 CAPTURE                          UPVAL U27
      290 CAPTURE                          UPVAL U19
      291 CAPTURE                          VAL R9
      292 CAPTURE                          UPVAL U3
      293 SETTABLEKS                       R12 R11 K74 ["startAsync"]
      295 NEWCLOSURE                       R12 P23
      296 CAPTURE                          VAL R2
      297 CAPTURE                          UPVAL U19
      298 CAPTURE                          VAL R9
      299 CAPTURE                          UPVAL U3
      300 SETTABLEKS                       R12 R11 K75 ["getStatusAsync"]
      302 NEWCLOSURE                       R12 P24
      303 CAPTURE                          VAL R2
      304 CAPTURE                          UPVAL U19
      305 CAPTURE                          VAL R9
      306 CAPTURE                          UPVAL U3
      307 SETTABLEKS                       R12 R11 K62 ["publishAssetAsync"]
      309 DUPCLOSURE                       R12 K81 [PROTO_142]
      310 CAPTURE                          UPVAL U0
      311 SETTABLEKS                       R12 R11 K37 ["loadAssetAsync"]
      313 SETTABLEKS                       R11 R2 K82 ["segmentMesh"]
      315 DUPTABLE                         R11 K80 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      316 NEWCLOSURE                       R12 P26
      317 CAPTURE                          VAL R2
      318 CAPTURE                          UPVAL U27
      319 CAPTURE                          UPVAL U19
      320 CAPTURE                          VAL R10
      321 CAPTURE                          UPVAL U3
      322 SETTABLEKS                       R12 R11 K74 ["startAsync"]
      324 NEWCLOSURE                       R12 P27
      325 CAPTURE                          VAL R2
      326 CAPTURE                          UPVAL U19
      327 CAPTURE                          VAL R10
      328 CAPTURE                          UPVAL U3
      329 SETTABLEKS                       R12 R11 K75 ["getStatusAsync"]
      331 NEWCLOSURE                       R12 P28
      332 CAPTURE                          VAL R2
      333 CAPTURE                          UPVAL U19
      334 CAPTURE                          VAL R10
      335 CAPTURE                          UPVAL U3
      336 SETTABLEKS                       R12 R11 K62 ["publishAssetAsync"]
      338 DUPCLOSURE                       R12 K83 [PROTO_149]
      339 CAPTURE                          UPVAL U0
      340 SETTABLEKS                       R12 R11 K37 ["loadAssetAsync"]
      342 SETTABLEKS                       R11 R2 K84 ["textureGeneration"]
      344 GETUPVAL                         R11 28
      345 GETTABLEKS                       R11 R11 K85 ["LayoutGeneration"]
      347 DUPTABLE                         R12 K76 [{"startAsync", "getStatusAsync"}]
      348 NEWCLOSURE                       R13 P30
      349 CAPTURE                          VAL R2
      350 CAPTURE                          UPVAL U27
      351 CAPTURE                          UPVAL U19
      352 CAPTURE                          VAL R11
      353 CAPTURE                          UPVAL U3
      354 SETTABLEKS                       R13 R12 K74 ["startAsync"]
      356 NEWCLOSURE                       R13 P31
      357 CAPTURE                          VAL R2
      358 CAPTURE                          UPVAL U19
      359 CAPTURE                          VAL R11
      360 CAPTURE                          UPVAL U3
      361 SETTABLEKS                       R13 R12 K75 ["getStatusAsync"]
      363 SETTABLEKS                       R12 R2 K86 ["layoutGeneration"]
      365 DUPCLOSURE                       R12 K87 [PROTO_154]
      366 CAPTURE                          UPVAL U22
      367 SETTABLEKS                       R12 R2 K88 ["copyToClipboard"]
      369 DUPCLOSURE                       R12 K89 [PROTO_155]
      370 CAPTURE                          UPVAL U22
      371 SETTABLEKS                       R12 R2 K90 ["getClassIcon"]
      373 GETUPVAL                         R12 0
      374 GETTABLEKS                       R12 R12 K0 ["Guest"]
      376 GETTABLEKS                       R12 R12 K91 ["RecordingHandlers"]
      378 GETTABLEKS                       R12 R12 K92 ["getPluginHandlers"]
      380 GETUPVAL                         R13 29
      381 CALL                             R12 1 1
      382 GETTABLEKS                       R13 R12 K93 ["startRecording"]
      384 SETTABLEKS                       R13 R2 K93 ["startRecording"]
      386 GETTABLEKS                       R13 R12 K94 ["endRecording"]
      388 SETTABLEKS                       R13 R2 K94 ["endRecording"]
      390 NEWCLOSURE                       R13 P34
      391 CAPTURE                          VAL R1
      392 SETTABLEKS                       R13 R2 K95 ["getNetworking"]
      394 DUPCLOSURE                       R13 K96 [PROTO_157]
      395 CAPTURE                          UPVAL U9
      396 SETTABLEKS                       R13 R2 K97 ["getScriptSource"]
      398 DUPCLOSURE                       R13 K98 [PROTO_159]
      399 CAPTURE                          UPVAL U22
      400 SETTABLEKS                       R13 R2 K99 ["getUserId"]
      402 GETUPVAL                         R13 3
      403 GETTABLEKS                       R13 R13 K100 ["FFlagAssistantAssetSearchInsertTool"]
      405 JUMPIFNOT                        R13 ; [+32]
      406 NAMECALL                         R13 R1 K50 ["IsHost"]
      408 CALL                             R13 1 1
      409 JUMPIFNOT                        R13 ; [+20]
      410 LOADK                            R15 K101 ["GameId"]
      411 GETIMPORT                        R16 K36 [game]
      413 GETTABLEKS                       R16 R16 K101 ["GameId"]
      415 NAMECALL                         R13 R0 K102 ["SetItem"]
      417 CALL                             R13 3 0
      418 GETIMPORT                        R13 K36 [game]
      420 LOADK                            R15 K101 ["GameId"]
      421 NAMECALL                         R13 R13 K103 ["GetPropertyChangedSignal"]
      423 CALL                             R13 2 1
      424 NEWCLOSURE                       R15 P37
      425 CAPTURE                          VAL R0
      426 NAMECALL                         R13 R13 K104 ["Connect"]
      428 CALL                             R13 2 0
      429 JUMP                             ; [+8]
      430 NAMECALL                         R13 R1 K44 ["IsGuest"]
      432 CALL                             R13 1 1
      433 JUMPIFNOT                        R13 ; [+4]
      434 NEWCLOSURE                       R13 P38
      435 CAPTURE                          VAL R0
      436 SETTABLEKS                       R13 R2 K105 ["getGameId"]
      438 DUPCLOSURE                       R13 K106 [PROTO_163]
      439 CAPTURE                          UPVAL U30
      440 SETTABLEKS                       R13 R2 K107 ["startStopPlayAsync"]
      442 DUPCLOSURE                       R13 K108 [PROTO_165]
      443 CAPTURE                          UPVAL U31
      444 SETTABLEKS                       R13 R2 K109 ["subscribeOutput"]
      446 DUPCLOSURE                       R13 K110 [PROTO_166]
      447 CAPTURE                          UPVAL U32
      448 SETTABLEKS                       R13 R2 K111 ["subscribeGameLoaded"]
      450 DUPCLOSURE                       R13 K112 [PROTO_167]
      451 CAPTURE                          UPVAL U33
      452 SETTABLEKS                       R13 R2 K113 ["subscribeGameStopped"]
      454 DUPCLOSURE                       R13 K114 [PROTO_168]
      455 CAPTURE                          UPVAL U34
      456 SETTABLEKS                       R13 R2 K115 ["getStudioPlayState"]
      458 DUPCLOSURE                       R13 K116 [PROTO_169]
      459 CAPTURE                          UPVAL U34
      460 SETTABLEKS                       R13 R2 K117 ["getFocusedDataModelType"]
      462 DUPCLOSURE                       R13 K118 [PROTO_170]
      463 CAPTURE                          UPVAL U34
      464 SETTABLEKS                       R13 R2 K119 ["isEditDataModelAvailable"]
      466 GETUPVAL                         R13 3
      467 GETTABLEKS                       R13 R13 K120 ["FFlagAssistantRestoreMostRecentThread"]
      469 JUMPIFNOT                        R13 ; [+4]
      470 DUPCLOSURE                       R13 K121 [PROTO_171]
      471 CAPTURE                          UPVAL U34
      472 SETTABLEKS                       R13 R2 K122 ["subscribeEditDataModelAvailabilityChanged"]
      474 GETUPVAL                         R13 35
      475 MOVE                             R14 R0
      476 MOVE                             R15 R1
      477 MOVE                             R16 R2
      478 CALL                             R13 3 0
      479 GETIMPORT                        R13 K14 [pcall]
      481 NEWCLOSURE                       R14 P47
      482 CAPTURE                          VAL R0
      483 CALL                             R13 1 2
      484 JUMPIFNOT                        R13 ; [+3]
      485 JUMPIFNOT                        R14 ; [+2]
      486 SETTABLEKS                       R14 R2 K123 ["assetAccessController"]
      488 GETUPVAL                         R15 3
      489 GETTABLEKS                       R15 R15 K124 ["FFlagAssistantInsertAssetSandboxScripts"]
      491 JUMPIFNOT                        R15 ; [+8]
      492 GETIMPORT                        R15 K14 [pcall]
      494 NEWCLOSURE                       R16 P48
      495 CAPTURE                          VAL R0
      496 CALL                             R15 1 2
      497 JUMPIFNOT                        R16 ; [+2]
      498 SETTABLEKS                       R16 R2 K125 ["capabilitiesHandler"]
      500 DUPCLOSURE                       R15 K126 [PROTO_174]
      501 CAPTURE                          UPVAL U36
      502 SETTABLEKS                       R15 R2 K127 ["startMultiPlayerTest"]
      504 DUPCLOSURE                       R15 K128 [PROTO_175]
      505 CAPTURE                          UPVAL U36
      506 SETTABLEKS                       R15 R2 K129 ["stopMultiPlayerTest"]
      508 DUPCLOSURE                       R15 K130 [PROTO_176]
      509 CAPTURE                          UPVAL U36
      510 SETTABLEKS                       R15 R2 K131 ["isInMultiPlayerTest"]
      512 DUPCLOSURE                       R15 K132 [PROTO_178]
      513 CAPTURE                          UPVAL U36
      514 SETTABLEKS                       R15 R2 K133 ["subscribeStopMultiPlayerTestStateChanged"]
      516 DUPCLOSURE                       R15 K134 [PROTO_179]
      517 CAPTURE                          UPVAL U36
      518 SETTABLEKS                       R15 R2 K135 ["createMultiPlayersServer"]
      520 DUPCLOSURE                       R15 K136 [PROTO_180]
      521 CAPTURE                          UPVAL U36
      522 SETTABLEKS                       R15 R2 K137 ["createMultiPlayersClient"]
      524 DUPCLOSURE                       R15 K138 [PROTO_181]
      525 CAPTURE                          UPVAL U2
      526 SETTABLEKS                       R15 R2 K139 ["getExperimentFeatureEnabled"]
      528 DUPCLOSURE                       R15 K140 [PROTO_182]
      529 CAPTURE                          UPVAL U2
      530 SETTABLEKS                       R15 R2 K141 ["onceExperimentFeatureEnabled"]
      532 DUPCLOSURE                       R15 K142 [PROTO_183]
      533 CAPTURE                          UPVAL U37
      534 SETTABLEKS                       R15 R2 K143 ["getStudioState"]
      536 RETURN                           R2 1

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
       69 GETIMPORT                        R12 K7 [game]
       71 LOADK                            R14 K18 ["PublishService"]
       72 NAMECALL                         R12 R12 K8 ["GetService"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K7 [game]
       77 LOADK                            R15 K19 ["Selection"]
       78 NAMECALL                         R13 R13 K8 ["GetService"]
       80 CALL                             R13 2 1
       81 GETIMPORT                        R14 K7 [game]
       83 LOADK                            R16 K20 ["SoundService"]
       84 NAMECALL                         R14 R14 K8 ["GetService"]
       86 CALL                             R14 2 1
       87 GETIMPORT                        R15 K7 [game]
       89 LOADK                            R17 K21 ["StudioService"]
       90 NAMECALL                         R15 R15 K8 ["GetService"]
       92 CALL                             R15 2 1
       93 GETIMPORT                        R16 K7 [game]
       95 LOADK                            R18 K22 ["UniqueIdLookupService"]
       96 NAMECALL                         R16 R16 K8 ["GetService"]
       98 CALL                             R16 2 1
       99 GETIMPORT                        R17 K24 [require]
      101 GETTABLEKS                       R18 R0 K25 ["Packages"]
      103 GETTABLEKS                       R18 R18 K26 ["AssistantUI"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K24 [require]
      108 GETTABLEKS                       R19 R0 K27 ["Src"]
      110 GETTABLEKS                       R19 R19 K28 ["Util"]
      112 GETTABLEKS                       R19 R19 K29 ["AvatarAutoSetup"]
      114 GETTABLEKS                       R19 R19 K30 ["Orchestrator"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K24 [require]
      119 GETTABLEKS                       R20 R0 K25 ["Packages"]
      121 GETTABLEKS                       R20 R20 K31 ["DMNetworking"]
      123 CALL                             R19 1 1
      124 GETIMPORT                        R20 K24 [require]
      126 GETTABLEKS                       R21 R0 K27 ["Src"]
      128 GETTABLEKS                       R21 R21 K28 ["Util"]
      130 GETTABLEKS                       R21 R21 K32 ["ExperimentFeature"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K24 [require]
      135 GETTABLEKS                       R22 R0 K27 ["Src"]
      137 GETTABLEKS                       R22 R22 K33 ["Flags"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K24 [require]
      142 GETTABLEKS                       R23 R0 K25 ["Packages"]
      144 GETTABLEKS                       R23 R23 K34 ["Framework"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K24 [require]
      149 GETTABLEKS                       R24 R0 K27 ["Src"]
      151 GETTABLEKS                       R24 R24 K28 ["Util"]
      153 GETTABLEKS                       R24 R24 K35 ["GameLoadedNotifier"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K24 [require]
      158 GETTABLEKS                       R25 R0 K27 ["Src"]
      160 GETTABLEKS                       R25 R25 K28 ["Util"]
      162 GETTABLEKS                       R25 R25 K36 ["GameStoppedNotifier"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K24 [require]
      167 GETTABLEKS                       R26 R0 K25 ["Packages"]
      169 GETTABLEKS                       R26 R26 K37 ["HttpWrapper"]
      171 CALL                             R25 1 1
      172 GETIMPORT                        R26 K24 [require]
      174 GETTABLEKS                       R27 R0 K25 ["Packages"]
      176 GETTABLEKS                       R27 R27 K38 ["ModelContextProtocol"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K24 [require]
      181 GETTABLEKS                       R28 R0 K27 ["Src"]
      183 GETTABLEKS                       R28 R28 K28 ["Util"]
      185 GETTABLEKS                       R28 R28 K39 ["NotificationManagerStore"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K24 [require]
      190 GETTABLEKS                       R29 R0 K25 ["Packages"]
      192 GETTABLEKS                       R29 R29 K40 ["OpenApiCreatorHomeApi"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K24 [require]
      197 GETTABLEKS                       R30 R0 K25 ["Packages"]
      199 GETTABLEKS                       R30 R30 K41 ["OpenApiCreatorInventoryApi"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K24 [require]
      204 GETTABLEKS                       R31 R0 K25 ["Packages"]
      206 GETTABLEKS                       R31 R31 K42 ["OpenApiCubeGenerationGateway"]
      208 CALL                             R30 1 1
      209 GETIMPORT                        R31 K24 [require]
      211 GETTABLEKS                       R32 R0 K25 ["Packages"]
      213 GETTABLEKS                       R32 R32 K43 ["OpenApiMcpAssistantApi"]
      215 CALL                             R31 1 1
      216 GETIMPORT                        R32 K24 [require]
      218 GETTABLEKS                       R33 R0 K25 ["Packages"]
      220 GETTABLEKS                       R33 R33 K44 ["OpenApiMcpAssistantStorageApi"]
      222 CALL                             R32 1 1
      223 GETIMPORT                        R33 K24 [require]
      225 GETTABLEKS                       R34 R0 K25 ["Packages"]
      227 GETTABLEKS                       R34 R34 K45 ["Promise"]
      229 CALL                             R33 1 1
      230 GETIMPORT                        R34 K24 [require]
      232 GETTABLEKS                       R35 R0 K27 ["Src"]
      234 GETTABLEKS                       R35 R35 K28 ["Util"]
      236 GETTABLEKS                       R35 R35 K46 ["StudioAnimationGen"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K24 [require]
      241 GETTABLEKS                       R36 R0 K27 ["Src"]
      243 GETTABLEKS                       R36 R36 K28 ["Util"]
      245 GETTABLEKS                       R36 R36 K47 ["StudioEndpointUtil"]
      247 CALL                             R35 1 1
      248 GETIMPORT                        R36 K24 [require]
      250 GETTABLEKS                       R37 R0 K27 ["Src"]
      252 GETTABLEKS                       R37 R37 K48 ["Host"]
      254 GETTABLEKS                       R37 R37 K49 ["Resources"]
      256 GETTABLEKS                       R37 R37 K50 ["StudioEventLogger"]
      258 CALL                             R36 1 1
      259 GETIMPORT                        R37 K24 [require]
      261 GETTABLEKS                       R38 R0 K27 ["Src"]
      263 GETTABLEKS                       R38 R38 K51 ["Components"]
      265 GETTABLEKS                       R38 R38 K52 ["Contexts"]
      267 GETTABLEKS                       R38 R38 K53 ["StudioLLM"]
      269 GETTABLEKS                       R38 R38 K54 ["StudioLLMSystemReminder"]
      271 CALL                             R37 1 1
      272 GETIMPORT                        R38 K24 [require]
      274 GETTABLEKS                       R39 R0 K27 ["Src"]
      276 GETTABLEKS                       R39 R39 K28 ["Util"]
      278 GETTABLEKS                       R39 R39 K55 ["StudioMaterialGenerator"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K24 [require]
      283 GETTABLEKS                       R40 R0 K27 ["Src"]
      285 GETTABLEKS                       R40 R40 K28 ["Util"]
      287 GETTABLEKS                       R40 R40 K56 ["StudioNetworking"]
      289 CALL                             R39 1 1
      290 GETIMPORT                        R40 K24 [require]
      292 GETTABLEKS                       R41 R0 K27 ["Src"]
      294 GETTABLEKS                       R41 R41 K28 ["Util"]
      296 GETTABLEKS                       R41 R41 K57 ["StudioState"]
      298 CALL                             R40 1 1
      299 GETIMPORT                        R41 K24 [require]
      301 GETTABLEKS                       R42 R0 K27 ["Src"]
      303 GETTABLEKS                       R42 R42 K28 ["Util"]
      305 GETTABLEKS                       R42 R42 K58 ["createStudioInstancePicker"]
      307 CALL                             R41 1 1
      308 GETTABLEKS                       R42 R22 K59 ["Http"]
      310 GETTABLEKS                       R42 R42 K60 ["Networking"]
      312 GETTABLEKS                       R43 R42 K61 ["new"]
      314 DUPTABLE                         R44 K65 [{["isInternal"] = True, ["loggingLevel"]}]
      315 GETTABLEKS                       R46 R21 K66 ["FFlagDebugLogAssistantUI"]
      317 JUMPIFNOT                        R46 ; [+2]
      318 LOADN                            R45 4
      319 JUMP                             ; [+1]
      320 LOADN                            R45 0
      321 SETTABLEKS                       R45 R44 K64 ["loggingLevel"]
      323 CALL                             R43 1 1
      324 GETTABLEKS                       R44 R22 K67 ["Url"]
      326 GETTABLEKS                       R45 R44 K61 ["new"]
      328 LOADNIL                          R46
      329 CALL                             R45 1 1
      330 DUPCLOSURE                       R46 K68 [PROTO_0]
      331 CAPTURE                          VAL R21
      332 DUPCLOSURE                       R47 K69 [PROTO_1]
      333 CAPTURE                          VAL R21
      334 DUPCLOSURE                       R48 K70 [PROTO_3]
      335 CAPTURE                          VAL R25
      336 DUPCLOSURE                       R49 K71 [PROTO_5]
      337 CAPTURE                          VAL R0
      338 CAPTURE                          VAL R25
      339 CAPTURE                          VAL R26
      340 DUPCLOSURE                       R50 K72 [PROTO_56]
      341 CAPTURE                          VAL R45
      342 CAPTURE                          VAL R15
      343 CAPTURE                          VAL R12
      344 CAPTURE                          VAL R35
      345 CAPTURE                          VAL R32
      346 DUPCLOSURE                       R51 K73 [PROTO_67]
      347 CAPTURE                          VAL R21
      348 CAPTURE                          VAL R2
      349 CAPTURE                          VAL R17
      350 DUPCLOSURE                       R52 K74 [PROTO_68]
      351 CAPTURE                          VAL R34
      352 CAPTURE                          VAL R21
      353 DUPCLOSURE                       R53 K75 [PROTO_70]
      354 CAPTURE                          VAL R36
      355 CAPTURE                          VAL R18
      356 DUPCLOSURE                       R54 K76 [PROTO_77]
      357 CAPTURE                          VAL R15
      358 CAPTURE                          VAL R35
      359 CAPTURE                          VAL R30
      360 CAPTURE                          VAL R21
      361 CAPTURE                          VAL R17
      362 CAPTURE                          VAL R6
      363 DUPCLOSURE                       R55 K77 [PROTO_80]
      364 CAPTURE                          VAL R21
      365 CAPTURE                          VAL R17
      366 DUPCLOSURE                       R56 K78 [PROTO_89]
      367 CAPTURE                          VAL R35
      368 CAPTURE                          VAL R29
      369 CAPTURE                          VAL R28
      370 CAPTURE                          VAL R45
      371 CAPTURE                          VAL R7
      372 CAPTURE                          VAL R8
      373 DUPCLOSURE                       R57 K79 [PROTO_96]
      374 CAPTURE                          VAL R45
      375 CAPTURE                          VAL R7
      376 CAPTURE                          VAL R8
      377 CAPTURE                          VAL R9
      378 CAPTURE                          VAL R14
      379 DUPCLOSURE                       R58 K80 [PROTO_107]
      380 CAPTURE                          VAL R41
      381 CAPTURE                          VAL R21
      382 CAPTURE                          VAL R16
      383 CAPTURE                          VAL R17
      384 DUPCLOSURE                       R59 K81 [PROTO_184]
      385 CAPTURE                          VAL R17
      386 CAPTURE                          VAL R45
      387 CAPTURE                          VAL R20
      388 CAPTURE                          VAL R21
      389 CAPTURE                          VAL R36
      390 CAPTURE                          VAL R8
      391 CAPTURE                          VAL R33
      392 CAPTURE                          VAL R3
      393 CAPTURE                          VAL R13
      394 CAPTURE                          VAL R2
      395 CAPTURE                          VAL R38
      396 CAPTURE                          VAL R27
      397 CAPTURE                          VAL R54
      398 CAPTURE                          VAL R55
      399 CAPTURE                          VAL R56
      400 CAPTURE                          VAL R57
      401 CAPTURE                          VAL R34
      402 CAPTURE                          VAL R18
      403 CAPTURE                          VAL R12
      404 CAPTURE                          VAL R35
      405 CAPTURE                          VAL R29
      406 CAPTURE                          VAL R43
      407 CAPTURE                          VAL R15
      408 CAPTURE                          VAL R31
      409 CAPTURE                          VAL R50
      410 CAPTURE                          VAL R51
      411 CAPTURE                          VAL R49
      412 CAPTURE                          VAL R25
      413 CAPTURE                          VAL R30
      414 CAPTURE                          VAL R4
      415 CAPTURE                          VAL R11
      416 CAPTURE                          VAL R10
      417 CAPTURE                          VAL R23
      418 CAPTURE                          VAL R24
      419 CAPTURE                          VAL R40
      420 CAPTURE                          VAL R58
      421 CAPTURE                          VAL R0
      422 CAPTURE                          VAL R37
      423 RETURN                           R59 1
