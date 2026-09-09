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
        0 LOADK                            R2 K0 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 3 1
        6 MOVE                             R1 R2
        7 RETURN                           R1 1

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
        6 LOADK                            R4 K6 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        7 GETUPVAL                         R6 1
        8 MOVE                             R7 R0
        9 NAMECALL                         R4 R4 K7 ["format"]
       11 CALL                             R4 3 1
       12 MOVE                             R3 R4
       13 SETTABLEKS                       R3 R2 K2 ["Url"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K8 ["Success"]
       18 LOADK                            R5 K9 ["Failed to fetch skill asset %*: HTTP %*"]
       19 MOVE                             R7 R0
       20 GETTABLEKS                       R8 R1 K10 ["StatusCode"]
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 3 1
       25 MOVE                             R4 R5
       26 FASTCALL2                        ASSERT R3 R4 ; [+3]
       28 GETIMPORT                        R2 K12 [assert]
       30 CALL                             R2 2 0
       31 GETTABLEKS                       R2 R1 K13 ["Body"]
       33 RETURN                           R2 1

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
      158 LOADK                            R8 K40 ["https://assetdelivery.%*/"]
      159 MOVE                             R10 R6
      160 NAMECALL                         R8 R8 K41 ["format"]
      162 CALL                             R8 2 1
      163 MOVE                             R7 R8
      164 NEWCLOSURE                       R8 P32
      165 CAPTURE                          VAL R7
      166 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      168 NEWCLOSURE                       R10 P33
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R10 R9 K43 ["getManifestAsync"]
      172 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      174 NEWCLOSURE                       R10 P34
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R7
      177 SETTABLEKS                       R10 R9 K44 ["fetchContentAsync"]
      179 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      181 DUPCLOSURE                       R10 K45 [PROTO_47]
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          UPVAL U2
      184 SETTABLEKS                       R10 R9 K46 ["publishNewAsync"]
      186 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      188 DUPCLOSURE                       R10 K47 [PROTO_48]
      189 CAPTURE                          UPVAL U1
      190 CAPTURE                          UPVAL U2
      191 SETTABLEKS                       R10 R9 K48 ["publishUpdateAsync"]
      193 GETTABLEKS                       R9 R0 K42 ["userSkillAssets"]
      195 DUPCLOSURE                       R10 K49 [PROTO_49]
      196 SETTABLEKS                       R10 R9 K50 ["deleteAsync"]
      198 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      200 DUPCLOSURE                       R10 K52 [PROTO_51]
      201 CAPTURE                          UPVAL U3
      202 CAPTURE                          UPVAL U4
      203 SETTABLEKS                       R10 R9 K53 ["getAssetsAsync"]
      205 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      207 DUPCLOSURE                       R10 K54 [PROTO_53]
      208 CAPTURE                          UPVAL U3
      209 CAPTURE                          UPVAL U4
      210 SETTABLEKS                       R10 R9 K55 ["uploadAssetsAsync"]
      212 GETTABLEKS                       R9 R0 K51 ["cloudSkillAssets"]
      214 DUPCLOSURE                       R10 K56 [PROTO_55]
      215 CAPTURE                          UPVAL U3
      216 CAPTURE                          UPVAL U4
      217 SETTABLEKS                       R10 R9 K57 ["deleteAssetAsync"]
      219 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_65:
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

PROTO_66:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_63]
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R5 R4 K9 ["applyScriptSourceDirectly"]
       39 GETIMPORT                        R4 K12 [task.spawn]
       41 NEWCLOSURE                       R5 P5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R3
       45 CALL                             R4 1 0
       46 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ExportMeshToGlbAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R4 R4 K0 ["GetUserId"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R1 R1 K1 ["ExportInstanceToGlbAsync"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_75:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadModelFromUrlAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_76:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_72]
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
       27 DUPCLOSURE                       R3 K11 [PROTO_73]
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R3 R2 K12 ["exportMeshToGlbAsync"]
       31 DUPCLOSURE                       R3 K13 [PROTO_74]
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U0
       34 SETTABLEKS                       R3 R2 K14 ["exportInstanceToGlbAsync"]
       36 DUPCLOSURE                       R3 K15 [PROTO_75]
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R3 R2 K16 ["loadModelFromUrlAsync"]
       40 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PublishMediator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R7 R2 K0 ["Type"]
        3 GETTABLE                         R5 R6 R7
        4 LOADK                            R9 K1 ["Invalid inventory source type: %*"]
        5 GETTABLEKS                       R11 R2 K0 ["Type"]
        7 NAMECALL                         R9 R9 K2 ["format"]
        9 CALL                             R9 2 1
       10 MOVE                             R8 R9
       11 FASTCALL2                        ASSERT R5 R8 ; [+4]
       13 MOVE                             R7 R5
       14 GETIMPORT                        R6 K4 [assert]
       16 CALL                             R6 2 0
       17 GETIMPORT                        R6 K7 [table.create]
       19 LOADN                            R7 2
       20 CALL                             R6 1 1
       21 JUMPIFNOT                        R1 ; [+12]
       22 LOADK                            R10 K8 ["assetTypes=%*"]
       23 MOVE                             R12 R1
       24 NAMECALL                         R10 R10 K2 ["format"]
       26 CALL                             R10 2 1
       27 MOVE                             R9 R10
       28 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       30 MOVE                             R8 R6
       31 GETIMPORT                        R7 K10 [table.insert]
       33 CALL                             R7 2 0
       34 LOADK                            R10 K11 ["%*=%*"]
       35 MOVE                             R12 R5
       36 GETTABLEKS                       R13 R2 K12 ["Id"]
       38 NAMECALL                         R10 R10 K2 ["format"]
       40 CALL                             R10 3 1
       41 MOVE                             R9 R10
       42 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K10 [table.insert]
       47 CALL                             R7 2 0
       48 GETIMPORT                        R7 K14 [table.concat]
       50 MOVE                             R8 R6
       51 LOADK                            R9 K15 [";"]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K16 ["callWithOptions"]
       56 NEWCLOSURE                       R9 P0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 NEWTABLE                         R10 0 0
       64 CALL                             R8 2 1
       65 GETTABLEKS                       R9 R8 K17 ["success"]
       67 JUMPIF                           R9 ; [+6]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K18 ["throwError"]
       71 MOVE                             R10 R8
       72 CALL                             R9 1 -1
       73 RETURN                           R9 -1
       74 GETTABLEKS                       R9 R8 K19 ["data"]
       76 RETURN                           R9 1

PROTO_83:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Groups"]
        3 GETTABLEKS                       R0 R0 K1 ["getListGroupsAsync"]
        5 DUPTABLE                         R1 K3 [{"surface"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["surface"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_84:
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

PROTO_85:
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
       79 LOADK                            R3 K19 ["%*/toolbox-service/v2/assets:search"]
       80 GETUPVAL                         R5 0
       81 GETTABLEKS                       R5 R5 K20 ["APIS_URL"]
       83 NAMECALL                         R3 R3 K21 ["format"]
       85 CALL                             R3 2 1
       86 MOVE                             R2 R3
       87 GETUPVAL                         R3 1
       88 MOVE                             R5 R2
       89 GETUPVAL                         R6 2
       90 MOVE                             R8 R1
       91 NAMECALL                         R6 R6 K22 ["JSONEncode"]
       93 CALL                             R6 2 -1
       94 NAMECALL                         R3 R3 K23 ["PostAsyncFullUrl"]
       96 CALL                             R3 -1 1
       97 GETUPVAL                         R4 2
       98 MOVE                             R6 R3
       99 NAMECALL                         R4 R4 K24 ["JSONDecode"]
      101 CALL                             R4 2 1
      102 DUPTABLE                         R5 K27 [{"creatorStoreAssets", "queryFacets"}]
      103 GETTABLEKS                       R6 R4 K25 ["creatorStoreAssets"]
      105 SETTABLEKS                       R6 R5 K25 ["creatorStoreAssets"]
      107 GETTABLEKS                       R7 R4 K26 ["queryFacets"]
      109 JUMPIFNOT                        R7 ; [+8]
      110 DUPTABLE                         R6 K29 [{"availableFacets"}]
      111 GETTABLEKS                       R7 R4 K26 ["queryFacets"]
      113 GETTABLEKS                       R7 R7 K28 ["availableFacets"]
      115 SETTABLEKS                       R7 R6 K28 ["availableFacets"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R6
      119 SETTABLEKS                       R6 R5 K26 ["queryFacets"]
      121 RETURN                           R5 1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["THUMBNAILS_URL"]
        3 RETURN                           R0 1

PROTO_87:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CREATOR_HUB_URL"]
        3 RETURN                           R0 1

PROTO_88:
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
       15 DUPCLOSURE                       R3 K11 [PROTO_84]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R1 K12 ["fetchUserGroupsAsync"]
       20 DUPCLOSURE                       R3 K13 [PROTO_85]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R3 R1 K14 ["searchCreatorStoreAssetsAsync"]
       26 DUPCLOSURE                       R3 K15 [PROTO_86]
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R1 K16 ["getThumbnailsUrl"]
       30 DUPCLOSURE                       R3 K17 [PROTO_87]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R1 K18 ["getCreatorHubUrl"]
       34 RETURN                           R0 0

PROTO_89:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_90:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [","]
        4 CALL                             R1 2 1
        5 LOADK                            R3 K4 ["%*/toolbox-service/v1/items/details?assetIds=%*"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K5 ["APIS_URL"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K6 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 NAMECALL                         R3 R3 K7 ["GetAsyncFullUrl"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K8 ["JSONDecode"]
       23 CALL                             R4 2 1
       24 NEWTABLE                         R5 0 0
       26 GETTABLEKS                       R6 R4 K9 ["data"]
       28 JUMPIFNOT                        R6 ; [+39]
       29 MOVE                             R7 R6
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETTABLEKS                       R12 R11 K10 ["asset"]
       35 JUMPIFNOT                        R12 ; [+30]
       36 DUPTABLE                         R15 K11 [{"asset"}]
       37 DUPTABLE                         R16 K17 [{"id", "name", "typeId", "assetSubTypes", "capabilities"}]
       38 GETTABLEKS                       R17 R12 K12 ["id"]
       40 SETTABLEKS                       R17 R16 K12 ["id"]
       42 GETTABLEKS                       R17 R12 K13 ["name"]
       44 SETTABLEKS                       R17 R16 K13 ["name"]
       46 GETTABLEKS                       R17 R12 K14 ["typeId"]
       48 SETTABLEKS                       R17 R16 K14 ["typeId"]
       50 GETTABLEKS                       R17 R12 K15 ["assetSubTypes"]
       52 SETTABLEKS                       R17 R16 K15 ["assetSubTypes"]
       54 GETTABLEKS                       R17 R12 K16 ["capabilities"]
       56 SETTABLEKS                       R17 R16 K16 ["capabilities"]
       58 SETTABLEKS                       R16 R15 K10 ["asset"]
       60 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       62 MOVE                             R14 R5
       63 GETIMPORT                        R13 K19 [table.insert]
       65 CALL                             R13 2 0
       66 FORGLOOP                         R7 2 ; [-34]
       68 DUPTABLE                         R7 K20 [{"data"}]
       69 SETTABLEKS                       R5 R7 K9 ["data"]
       71 RETURN                           R7 1

PROTO_91:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_92:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_93:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_94:
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

PROTO_95:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetInsert"]
        4 DUPCLOSURE                       R2 K2 [PROTO_89]
        5 SETTABLEKS                       R2 R1 K3 ["getObjects"]
        7 DUPCLOSURE                       R2 K4 [PROTO_90]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K5 ["getItemDetailsAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_91]
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K7 ["loadPackageAssetAsync"]
       17 DUPCLOSURE                       R2 K8 [PROTO_92]
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R1 K9 ["getAudioApiByDefault"]
       21 DUPCLOSURE                       R2 K10 [PROTO_93]
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K11 ["insertAudioAsset"]
       25 DUPCLOSURE                       R2 K12 [PROTO_94]
       26 SETTABLEKS                       R2 R1 K13 ["assignSourceAssetId"]
       28 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_97:
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

PROTO_98:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

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

PROTO_102:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_103:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_104:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_97]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_98]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 DUPCLOSURE                       R6 K7 [PROTO_99]
       20 LOADK                            R9 K8 ["InstancePicker_pickInstanceAsync"]
       21 NEWCLOSURE                       R10 P4
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R2
       24 NAMECALL                         R7 R1 K9 ["OnHostInvokeAsync"]
       26 CALL                             R7 3 2
       27 GETTABLEKS                       R9 R2 K2 ["instances"]
       29 NEWCLOSURE                       R10 P5
       30 CAPTURE                          VAL R7
       31 SETTABLEKS                       R10 R9 K10 ["pickInstanceAsync"]
       33 GETTABLEKS                       R9 R1 K11 ["Destroying"]
       35 NEWCLOSURE                       R11 P6
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R8
       38 NAMECALL                         R9 R9 K12 ["Once"]
       40 CALL                             R9 2 0
       41 RETURN                           R0 0

PROTO_105:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_106:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_107:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_108:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_109:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_110:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_111:
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

PROTO_112:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_113:
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

PROTO_114:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_115:
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

PROTO_116:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_117:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_118:
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

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_120:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_121:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_122:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

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
        3 JUMPIFNOT                        R4 ; [+29]
        4 LOADK                            R5 K1 ["assetTypes=%*;userids=%*"]
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 NAMECALL                         R5 R5 K2 ["format"]
        9 CALL                             R5 3 1
       10 MOVE                             R4 R5
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K3 ["callWithOptions"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 DUPTABLE                         R7 K6 [{["retryCount"] = 3}]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R6 R5 K7 ["success"]
       23 JUMPIF                           R6 ; [+6]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K8 ["throwError"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 -1
       29 RETURN                           R6 -1
       30 GETTABLEKS                       R6 R5 K9 ["data"]
       32 RETURN                           R6 1
       33 LOADK                            R5 K10 ["%*/creator-inventory-api/v1/-/creator-inventory-items:search?query=%*&filter=assetTypes=%*;userids=%*&maxPageSize=%*"]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R7 R7 K11 ["APIS_URL"]
       37 MOVE                             R8 R0
       38 MOVE                             R9 R1
       39 MOVE                             R10 R2
       40 MOVE                             R11 R3
       41 NAMECALL                         R5 R5 K2 ["format"]
       43 CALL                             R5 6 1
       44 MOVE                             R4 R5
       45 GETUPVAL                         R5 4
       46 MOVE                             R7 R4
       47 LOADNIL                          R8
       48 NAMECALL                         R5 R5 K12 ["get"]
       50 CALL                             R5 3 1
       51 GETUPVAL                         R6 4
       52 MOVE                             R8 R5
       53 LOADN                            R9 3
       54 LOADB                            R10 0
       55 NAMECALL                         R6 R6 K13 ["handleRetry"]
       57 CALL                             R6 4 1
       58 GETUPVAL                         R7 4
       59 MOVE                             R9 R6
       60 NAMECALL                         R7 R7 K14 ["parseJson"]
       62 CALL                             R7 2 1
       63 NAMECALL                         R7 R7 K15 ["await"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R7 K16 ["responseBody"]
       68 RETURN                           R8 1

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
       46 LOADK                            R7 K13 ["[StudioEnvironment] imageGeneration.startAsync -> status=%* body=%*"]
       47 FASTCALL1                        TOSTRING R3 ; [+3]
       48 MOVE                             R10 R3
       49 GETIMPORT                        R9 K2 [tostring]
       51 CALL                             R9 1 1
       52 FASTCALL1                        TOSTRING R4 ; [+3]
       53 MOVE                             R11 R4
       54 GETIMPORT                        R10 K2 [tostring]
       56 CALL                             R10 1 1
       57 NAMECALL                         R7 R7 K14 ["format"]
       59 CALL                             R7 3 1
       60 MOVE                             R6 R7
       61 CALL                             R5 1 0
       62 DUPTABLE                         R5 K18 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       63 SETTABLEKS                       R3 R5 K6 ["statusCode"]
       65 GETIMPORT                        R6 K20 [select]
       67 LOADN                            R7 2
       68 GETIMPORT                        R8 K22 [pcall]
       70 GETUPVAL                         R9 1
       71 GETTABLEKS                       R9 R9 K23 ["throwError"]
       73 MOVE                             R10 R2
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
       13 DUPCLOSURE                       R3 K5 [PROTO_105]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_106]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_107]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       24 DUPCLOSURE                       R3 K11 [PROTO_108]
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
       45 DUPCLOSURE                       R7 K18 [PROTO_110]
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R7 R6 K19 ["createWebStreamClient"]
       49 GETTABLEKS                       R6 R2 K17 ["http"]
       51 DUPCLOSURE                       R7 K20 [PROTO_113]
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 SETTABLEKS                       R7 R6 K21 ["requestAsync"]
       56 GETTABLEKS                       R6 R2 K17 ["http"]
       58 DUPCLOSURE                       R7 K22 [PROTO_115]
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R7 R6 K23 ["openUrl"]
       62 GETTABLEKS                       R6 R2 K24 ["selection"]
       64 DUPCLOSURE                       R7 K25 [PROTO_116]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R7 R6 K26 ["get"]
       68 GETTABLEKS                       R6 R2 K24 ["selection"]
       70 DUPCLOSURE                       R7 K27 [PROTO_117]
       71 CAPTURE                          UPVAL U8
       72 SETTABLEKS                       R7 R6 K28 ["set"]
       74 DUPCLOSURE                       R6 K29 [PROTO_118]
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
       94 GETUPVAL                         R6 3
       95 GETTABLEKS                       R6 R6 K38 ["FFlagAssistantLuaMaterialGenerator"]
       97 JUMPIFNOT                        R6 ; [+54]
       98 GETTABLEKS                       R6 R2 K31 ["tools"]
      100 GETTABLEKS                       R6 R6 K39 ["materialGen"]
      102 GETUPVAL                         R7 10
      103 GETTABLEKS                       R7 R7 K40 ["create"]
      105 DUPTABLE                         R8 K44 [{"NotificationManager", "Networking", "Telemetry"}]
      106 GETUPVAL                         R10 3
      107 GETTABLEKS                       R10 R10 K45 ["FFlagAssistantNotificationManager"]
      109 JUMPIFNOT                        R10 ; [+9]
      110 NAMECALL                         R10 R1 K46 ["IsGuest"]
      112 CALL                             R10 1 1
      113 JUMPIFNOT                        R10 ; [+5]
      114 GETUPVAL                         R9 11
      115 GETTABLEKS                       R9 R9 K26 ["get"]
      117 CALL                             R9 0 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R9
      120 SETTABLEKS                       R9 R8 K41 ["NotificationManager"]
      122 SETTABLEKS                       R1 R8 K42 ["Networking"]
      124 GETUPVAL                         R9 4
      125 GETTABLEKS                       R9 R9 K47 ["makeStudioTelemetryEvents"]
      127 MOVE                             R10 R5
      128 CALL                             R9 1 1
      129 SETTABLEKS                       R9 R8 K43 ["Telemetry"]
      131 CALL                             R7 1 1
      132 GETTABLEKS                       R8 R7 K48 ["generateMaterialVariantsAsync"]
      134 SETTABLEKS                       R8 R6 K48 ["generateMaterialVariantsAsync"]
      136 GETTABLEKS                       R8 R7 K49 ["uploadMaterialsAsync"]
      138 SETTABLEKS                       R8 R6 K49 ["uploadMaterialsAsync"]
      140 GETUPVAL                         R8 3
      141 GETTABLEKS                       R8 R8 K45 ["FFlagAssistantNotificationManager"]
      143 JUMPIFNOT                        R8 ; [+28]
      144 GETTABLEKS                       R8 R1 K50 ["Destroying"]
      146 NEWCLOSURE                       R10 P11
      147 CAPTURE                          VAL R7
      148 NAMECALL                         R8 R8 K51 ["Once"]
      150 CALL                             R8 2 0
      151 JUMP                             ; [+20]
      152 GETTABLEKS                       R6 R2 K31 ["tools"]
      154 GETTABLEKS                       R6 R6 K39 ["materialGen"]
      156 GETUPVAL                         R7 12
      157 JUMPIFNOT                        R7 ; [+4]
      158 DUPCLOSURE                       R7 K52 [PROTO_120]
      159 CAPTURE                          UPVAL U12
      160 SETTABLEKS                       R7 R6 K48 ["generateMaterialVariantsAsync"]
      162 GETIMPORT                        R7 K14 [pcall]
      164 NEWCLOSURE                       R8 P13
      165 CAPTURE                          VAL R0
      166 CALL                             R7 1 2
      167 JUMPIFNOT                        R7 ; [+4]
      168 NEWCLOSURE                       R9 P14
      169 CAPTURE                          VAL R8
      170 SETTABLEKS                       R9 R6 K49 ["uploadMaterialsAsync"]
      172 GETUPVAL                         R6 13
      173 MOVE                             R7 R2
      174 MOVE                             R8 R0
      175 CALL                             R6 2 0
      176 NAMECALL                         R6 R1 K53 ["IsHost"]
      178 CALL                             R6 1 1
      179 JUMPIFNOT                        R6 ; [+4]
      180 GETUPVAL                         R6 14
      181 MOVE                             R7 R2
      182 MOVE                             R8 R0
      183 CALL                             R6 2 0
      184 GETUPVAL                         R6 15
      185 MOVE                             R7 R2
      186 CALL                             R6 1 0
      187 GETUPVAL                         R6 16
      188 MOVE                             R7 R2
      189 CALL                             R6 1 0
      190 GETUPVAL                         R6 3
      191 GETTABLEKS                       R6 R6 K54 ["FFlagAssistantAnimationGenTool"]
      193 JUMPIFNOT                        R6 ; [+21]
      194 GETUPVAL                         R6 17
      195 GETTABLEKS                       R6 R6 K40 ["create"]
      197 MOVE                             R7 R0
      198 CALL                             R6 1 1
      199 GETTABLEKS                       R7 R2 K31 ["tools"]
      201 GETTABLEKS                       R7 R7 K55 ["animationGen"]
      203 GETTABLEKS                       R8 R6 K56 ["generateAnimationAsync"]
      205 SETTABLEKS                       R8 R7 K56 ["generateAnimationAsync"]
      207 GETUPVAL                         R8 3
      208 GETTABLEKS                       R8 R8 K57 ["FFlagAnimationGenOpenACE"]
      210 JUMPIFNOT                        R8 ; [+4]
      211 GETTABLEKS                       R8 R6 K58 ["openAnimationClipEditorAsync"]
      213 SETTABLEKS                       R8 R7 K58 ["openAnimationClipEditorAsync"]
      215 GETUPVAL                         R6 3
      216 GETTABLEKS                       R6 R6 K59 ["FFlagAssistantAvatarAutoSetupTool"]
      218 JUMPIFNOT                        R6 ; [+19]
      219 GETTABLEKS                       R6 R2 K31 ["tools"]
      221 GETTABLEKS                       R6 R6 K60 ["avatarAutoSetup"]
      223 GETUPVAL                         R7 4
      224 GETTABLEKS                       R7 R7 K47 ["makeStudioTelemetryEvents"]
      226 MOVE                             R8 R5
      227 CALL                             R7 1 1
      228 NEWCLOSURE                       R8 P15
      229 CAPTURE                          UPVAL U18
      230 CAPTURE                          VAL R7
      231 SETTABLEKS                       R8 R6 K61 ["autoSetupAsync"]
      233 GETUPVAL                         R8 18
      234 GETTABLEKS                       R8 R8 K62 ["cancelAutoSetup"]
      236 SETTABLEKS                       R8 R6 K62 ["cancelAutoSetup"]
      238 GETTABLEKS                       R6 R2 K31 ["tools"]
      240 GETTABLEKS                       R6 R6 K63 ["uploadImage"]
      242 DUPCLOSURE                       R7 K64 [PROTO_123]
      243 CAPTURE                          UPVAL U19
      244 SETTABLEKS                       R7 R6 K65 ["publishAssetAsync"]
      246 DUPCLOSURE                       R7 K66 [PROTO_125]
      247 CAPTURE                          UPVAL U3
      248 CAPTURE                          UPVAL U20
      249 CAPTURE                          UPVAL U21
      250 CAPTURE                          UPVAL U1
      251 CAPTURE                          UPVAL U22
      252 SETTABLEKS                       R7 R6 K67 ["searchAssetAsync"]
      254 DUPCLOSURE                       R6 K68 [PROTO_127]
      255 CAPTURE                          UPVAL U23
      256 SETTABLEKS                       R6 R2 K69 ["hasInternalPermission"]
      258 DUPCLOSURE                       R6 K70 [PROTO_129]
      259 CAPTURE                          UPVAL U20
      260 CAPTURE                          UPVAL U24
      261 SETTABLEKS                       R6 R2 K71 ["fetchSystemPromptAsync"]
      263 GETUPVAL                         R6 25
      264 MOVE                             R7 R2
      265 MOVE                             R8 R0
      266 CALL                             R6 2 0
      267 GETUPVAL                         R6 26
      268 MOVE                             R7 R2
      269 MOVE                             R8 R0
      270 CALL                             R6 2 0
      271 GETUPVAL                         R6 27
      272 CALL                             R6 0 0
      273 GETUPVAL                         R7 3
      274 GETTABLEKS                       R7 R7 K72 ["FStringCubeGenerationGatewayBaseUrlOverride"]
      276 JUMPIFEQKS                       R7 K73 [""] ; [+3]
      278 MOVE                             R6 R7
      279 JUMP                             ; [+1]
      280 LOADNIL                          R6
      281 JUMPIFNOT                        R6 ; [+9]
      282 GETUPVAL                         R7 28
      283 GETTABLEKS                       R7 R7 K74 ["buildRequest"]
      285 GETUPVAL                         R8 28
      286 NEWCLOSURE                       R9 P20
      287 CAPTURE                          VAL R6
      288 CAPTURE                          VAL R7
      289 SETTABLEKS                       R9 R8 K74 ["buildRequest"]
      291 DUPCLOSURE                       R7 K75 [PROTO_130]
      292 DUPCLOSURE                       R8 K76 [PROTO_131]
      293 CAPTURE                          UPVAL U28
      294 DUPTABLE                         R9 K79 [{"startAsync", "getStatusAsync"}]
      295 NEWCLOSURE                       R10 P23
      296 CAPTURE                          VAL R2
      297 CAPTURE                          UPVAL U20
      298 CAPTURE                          UPVAL U29
      299 CAPTURE                          UPVAL U3
      300 CAPTURE                          VAL R8
      301 SETTABLEKS                       R10 R9 K77 ["startAsync"]
      303 NEWCLOSURE                       R10 P24
      304 CAPTURE                          VAL R2
      305 CAPTURE                          UPVAL U20
      306 CAPTURE                          UPVAL U29
      307 CAPTURE                          UPVAL U3
      308 CAPTURE                          VAL R7
      309 SETTABLEKS                       R10 R9 K78 ["getStatusAsync"]
      311 SETTABLEKS                       R9 R2 K80 ["imageGeneration"]
      313 GETUPVAL                         R9 29
      314 GETTABLEKS                       R9 R9 K81 ["SegmentMesh"]
      316 GETUPVAL                         R10 29
      317 GETTABLEKS                       R10 R10 K82 ["TextureGeneration"]
      319 DUPTABLE                         R11 K83 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      320 NEWCLOSURE                       R12 P25
      321 CAPTURE                          VAL R2
      322 CAPTURE                          UPVAL U28
      323 CAPTURE                          UPVAL U20
      324 CAPTURE                          VAL R9
      325 CAPTURE                          UPVAL U3
      326 SETTABLEKS                       R12 R11 K77 ["startAsync"]
      328 NEWCLOSURE                       R12 P26
      329 CAPTURE                          VAL R2
      330 CAPTURE                          UPVAL U20
      331 CAPTURE                          VAL R9
      332 CAPTURE                          UPVAL U3
      333 SETTABLEKS                       R12 R11 K78 ["getStatusAsync"]
      335 NEWCLOSURE                       R12 P27
      336 CAPTURE                          VAL R2
      337 CAPTURE                          UPVAL U20
      338 CAPTURE                          VAL R9
      339 CAPTURE                          UPVAL U3
      340 SETTABLEKS                       R12 R11 K65 ["publishAssetAsync"]
      342 DUPCLOSURE                       R12 K84 [PROTO_142]
      343 CAPTURE                          UPVAL U0
      344 SETTABLEKS                       R12 R11 K37 ["loadAssetAsync"]
      346 SETTABLEKS                       R11 R2 K85 ["segmentMesh"]
      348 DUPTABLE                         R11 K83 [{"startAsync", "getStatusAsync", "publishAssetAsync", "loadAssetAsync"}]
      349 NEWCLOSURE                       R12 P29
      350 CAPTURE                          VAL R2
      351 CAPTURE                          UPVAL U28
      352 CAPTURE                          UPVAL U20
      353 CAPTURE                          VAL R10
      354 CAPTURE                          UPVAL U3
      355 SETTABLEKS                       R12 R11 K77 ["startAsync"]
      357 NEWCLOSURE                       R12 P30
      358 CAPTURE                          VAL R2
      359 CAPTURE                          UPVAL U20
      360 CAPTURE                          VAL R10
      361 CAPTURE                          UPVAL U3
      362 SETTABLEKS                       R12 R11 K78 ["getStatusAsync"]
      364 NEWCLOSURE                       R12 P31
      365 CAPTURE                          VAL R2
      366 CAPTURE                          UPVAL U20
      367 CAPTURE                          VAL R10
      368 CAPTURE                          UPVAL U3
      369 SETTABLEKS                       R12 R11 K65 ["publishAssetAsync"]
      371 DUPCLOSURE                       R12 K86 [PROTO_149]
      372 CAPTURE                          UPVAL U0
      373 SETTABLEKS                       R12 R11 K37 ["loadAssetAsync"]
      375 SETTABLEKS                       R11 R2 K87 ["textureGeneration"]
      377 GETUPVAL                         R11 29
      378 GETTABLEKS                       R11 R11 K88 ["LayoutGeneration"]
      380 DUPTABLE                         R12 K79 [{"startAsync", "getStatusAsync"}]
      381 NEWCLOSURE                       R13 P33
      382 CAPTURE                          VAL R2
      383 CAPTURE                          UPVAL U28
      384 CAPTURE                          UPVAL U20
      385 CAPTURE                          VAL R11
      386 CAPTURE                          UPVAL U3
      387 SETTABLEKS                       R13 R12 K77 ["startAsync"]
      389 NEWCLOSURE                       R13 P34
      390 CAPTURE                          VAL R2
      391 CAPTURE                          UPVAL U20
      392 CAPTURE                          VAL R11
      393 CAPTURE                          UPVAL U3
      394 SETTABLEKS                       R13 R12 K78 ["getStatusAsync"]
      396 SETTABLEKS                       R12 R2 K89 ["layoutGeneration"]
      398 DUPCLOSURE                       R12 K90 [PROTO_154]
      399 CAPTURE                          UPVAL U23
      400 SETTABLEKS                       R12 R2 K91 ["copyToClipboard"]
      402 DUPCLOSURE                       R12 K92 [PROTO_155]
      403 CAPTURE                          UPVAL U23
      404 SETTABLEKS                       R12 R2 K93 ["getClassIcon"]
      406 GETUPVAL                         R12 0
      407 GETTABLEKS                       R12 R12 K0 ["Guest"]
      409 GETTABLEKS                       R12 R12 K94 ["RecordingHandlers"]
      411 GETTABLEKS                       R12 R12 K95 ["getPluginHandlers"]
      413 GETUPVAL                         R13 30
      414 CALL                             R12 1 1
      415 GETTABLEKS                       R13 R12 K96 ["startRecording"]
      417 SETTABLEKS                       R13 R2 K96 ["startRecording"]
      419 GETTABLEKS                       R13 R12 K97 ["endRecording"]
      421 SETTABLEKS                       R13 R2 K97 ["endRecording"]
      423 NEWCLOSURE                       R13 P37
      424 CAPTURE                          VAL R1
      425 SETTABLEKS                       R13 R2 K98 ["getNetworking"]
      427 DUPCLOSURE                       R13 K99 [PROTO_157]
      428 CAPTURE                          UPVAL U9
      429 SETTABLEKS                       R13 R2 K100 ["getScriptSource"]
      431 DUPCLOSURE                       R13 K101 [PROTO_159]
      432 CAPTURE                          UPVAL U23
      433 SETTABLEKS                       R13 R2 K102 ["getUserId"]
      435 GETUPVAL                         R13 3
      436 GETTABLEKS                       R13 R13 K103 ["FFlagAssistantAssetSearchInsertTool"]
      438 JUMPIFNOT                        R13 ; [+32]
      439 NAMECALL                         R13 R1 K53 ["IsHost"]
      441 CALL                             R13 1 1
      442 JUMPIFNOT                        R13 ; [+20]
      443 LOADK                            R15 K104 ["GameId"]
      444 GETIMPORT                        R16 K36 [game]
      446 GETTABLEKS                       R16 R16 K104 ["GameId"]
      448 NAMECALL                         R13 R0 K105 ["SetItem"]
      450 CALL                             R13 3 0
      451 GETIMPORT                        R13 K36 [game]
      453 LOADK                            R15 K104 ["GameId"]
      454 NAMECALL                         R13 R13 K106 ["GetPropertyChangedSignal"]
      456 CALL                             R13 2 1
      457 NEWCLOSURE                       R15 P40
      458 CAPTURE                          VAL R0
      459 NAMECALL                         R13 R13 K107 ["Connect"]
      461 CALL                             R13 2 0
      462 JUMP                             ; [+8]
      463 NAMECALL                         R13 R1 K46 ["IsGuest"]
      465 CALL                             R13 1 1
      466 JUMPIFNOT                        R13 ; [+4]
      467 NEWCLOSURE                       R13 P41
      468 CAPTURE                          VAL R0
      469 SETTABLEKS                       R13 R2 K108 ["getGameId"]
      471 DUPCLOSURE                       R13 K109 [PROTO_163]
      472 CAPTURE                          UPVAL U31
      473 SETTABLEKS                       R13 R2 K110 ["startStopPlayAsync"]
      475 DUPCLOSURE                       R13 K111 [PROTO_165]
      476 CAPTURE                          UPVAL U32
      477 SETTABLEKS                       R13 R2 K112 ["subscribeOutput"]
      479 DUPCLOSURE                       R13 K113 [PROTO_166]
      480 CAPTURE                          UPVAL U33
      481 SETTABLEKS                       R13 R2 K114 ["subscribeGameLoaded"]
      483 DUPCLOSURE                       R13 K115 [PROTO_167]
      484 CAPTURE                          UPVAL U34
      485 SETTABLEKS                       R13 R2 K116 ["subscribeGameStopped"]
      487 DUPCLOSURE                       R13 K117 [PROTO_168]
      488 CAPTURE                          UPVAL U35
      489 SETTABLEKS                       R13 R2 K118 ["getStudioPlayState"]
      491 DUPCLOSURE                       R13 K119 [PROTO_169]
      492 CAPTURE                          UPVAL U35
      493 SETTABLEKS                       R13 R2 K120 ["getFocusedDataModelType"]
      495 DUPCLOSURE                       R13 K121 [PROTO_170]
      496 CAPTURE                          UPVAL U35
      497 SETTABLEKS                       R13 R2 K122 ["isEditDataModelAvailable"]
      499 GETUPVAL                         R13 3
      500 GETTABLEKS                       R13 R13 K123 ["FFlagAssistantRestoreMostRecentThread"]
      502 JUMPIFNOT                        R13 ; [+4]
      503 DUPCLOSURE                       R13 K124 [PROTO_171]
      504 CAPTURE                          UPVAL U35
      505 SETTABLEKS                       R13 R2 K125 ["subscribeEditDataModelAvailabilityChanged"]
      507 GETUPVAL                         R13 36
      508 MOVE                             R14 R0
      509 MOVE                             R15 R1
      510 MOVE                             R16 R2
      511 CALL                             R13 3 0
      512 GETIMPORT                        R13 K14 [pcall]
      514 NEWCLOSURE                       R14 P50
      515 CAPTURE                          VAL R0
      516 CALL                             R13 1 2
      517 JUMPIFNOT                        R13 ; [+3]
      518 JUMPIFNOT                        R14 ; [+2]
      519 SETTABLEKS                       R14 R2 K126 ["assetAccessController"]
      521 GETUPVAL                         R15 3
      522 GETTABLEKS                       R15 R15 K127 ["FFlagAssistantInsertAssetSandboxScripts"]
      524 JUMPIFNOT                        R15 ; [+8]
      525 GETIMPORT                        R15 K14 [pcall]
      527 NEWCLOSURE                       R16 P51
      528 CAPTURE                          VAL R0
      529 CALL                             R15 1 2
      530 JUMPIFNOT                        R16 ; [+2]
      531 SETTABLEKS                       R16 R2 K128 ["capabilitiesHandler"]
      533 DUPCLOSURE                       R15 K129 [PROTO_174]
      534 CAPTURE                          UPVAL U37
      535 SETTABLEKS                       R15 R2 K130 ["startMultiPlayerTest"]
      537 DUPCLOSURE                       R15 K131 [PROTO_175]
      538 CAPTURE                          UPVAL U37
      539 SETTABLEKS                       R15 R2 K132 ["stopMultiPlayerTest"]
      541 DUPCLOSURE                       R15 K133 [PROTO_176]
      542 CAPTURE                          UPVAL U37
      543 SETTABLEKS                       R15 R2 K134 ["isInMultiPlayerTest"]
      545 DUPCLOSURE                       R15 K135 [PROTO_178]
      546 CAPTURE                          UPVAL U37
      547 SETTABLEKS                       R15 R2 K136 ["subscribeStopMultiPlayerTestStateChanged"]
      549 DUPCLOSURE                       R15 K137 [PROTO_179]
      550 CAPTURE                          UPVAL U37
      551 SETTABLEKS                       R15 R2 K138 ["createMultiPlayersServer"]
      553 DUPCLOSURE                       R15 K139 [PROTO_180]
      554 CAPTURE                          UPVAL U37
      555 SETTABLEKS                       R15 R2 K140 ["createMultiPlayersClient"]
      557 DUPCLOSURE                       R15 K141 [PROTO_181]
      558 CAPTURE                          UPVAL U2
      559 SETTABLEKS                       R15 R2 K142 ["getExperimentFeatureEnabled"]
      561 DUPCLOSURE                       R15 K143 [PROTO_182]
      562 CAPTURE                          UPVAL U2
      563 SETTABLEKS                       R15 R2 K144 ["onceExperimentFeatureEnabled"]
      565 DUPCLOSURE                       R15 K145 [PROTO_183]
      566 CAPTURE                          UPVAL U38
      567 SETTABLEKS                       R15 R2 K146 ["getStudioState"]
      569 RETURN                           R2 1

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
       15 LOADK                            R4 K9 ["MaterialGenerationService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K5 [pcall]
       19 GETIMPORT                        R4 K7 [game]
       21 GETTABLEKS                       R4 R4 K8 ["GetService"]
       23 GETIMPORT                        R5 K7 [game]
       25 LOADK                            R6 K10 ["ScriptEditorService"]
       26 CALL                             R3 3 2
       27 GETIMPORT                        R5 K7 [game]
       29 LOADK                            R7 K11 ["BrowserService"]
       30 NAMECALL                         R5 R5 K8 ["GetService"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K7 [game]
       35 LOADK                            R8 K12 ["ChangeHistoryService"]
       36 NAMECALL                         R6 R6 K8 ["GetService"]
       38 CALL                             R6 2 1
       39 GETIMPORT                        R7 K5 [pcall]
       41 GETIMPORT                        R8 K7 [game]
       43 GETTABLEKS                       R8 R8 K8 ["GetService"]
       45 GETIMPORT                        R9 K7 [game]
       47 LOADK                            R10 K13 ["GenerationService"]
       48 CALL                             R7 3 2
       49 GETIMPORT                        R9 K7 [game]
       51 LOADK                            R11 K14 ["HttpRbxApiService"]
       52 NAMECALL                         R9 R9 K8 ["GetService"]
       54 CALL                             R9 2 1
       55 GETIMPORT                        R10 K7 [game]
       57 LOADK                            R12 K15 ["HttpService"]
       58 NAMECALL                         R10 R10 K8 ["GetService"]
       60 CALL                             R10 2 1
       61 GETIMPORT                        R11 K7 [game]
       63 LOADK                            R13 K16 ["InsertService"]
       64 NAMECALL                         R11 R11 K8 ["GetService"]
       66 CALL                             R11 2 1
       67 GETIMPORT                        R12 K7 [game]
       69 LOADK                            R14 K17 ["LogService"]
       70 NAMECALL                         R12 R12 K8 ["GetService"]
       72 CALL                             R12 2 1
       73 GETIMPORT                        R13 K7 [game]
       75 LOADK                            R15 K18 ["PlacesService"]
       76 NAMECALL                         R13 R13 K8 ["GetService"]
       78 CALL                             R13 2 1
       79 GETIMPORT                        R14 K7 [game]
       81 LOADK                            R16 K19 ["PublishService"]
       82 NAMECALL                         R14 R14 K8 ["GetService"]
       84 CALL                             R14 2 1
       85 GETIMPORT                        R15 K7 [game]
       87 LOADK                            R17 K20 ["Selection"]
       88 NAMECALL                         R15 R15 K8 ["GetService"]
       90 CALL                             R15 2 1
       91 GETIMPORT                        R16 K7 [game]
       93 LOADK                            R18 K21 ["SoundService"]
       94 NAMECALL                         R16 R16 K8 ["GetService"]
       96 CALL                             R16 2 1
       97 GETIMPORT                        R17 K7 [game]
       99 LOADK                            R19 K22 ["StudioService"]
      100 NAMECALL                         R17 R17 K8 ["GetService"]
      102 CALL                             R17 2 1
      103 GETIMPORT                        R18 K7 [game]
      105 LOADK                            R20 K23 ["UniqueIdLookupService"]
      106 NAMECALL                         R18 R18 K8 ["GetService"]
      108 CALL                             R18 2 1
      109 GETIMPORT                        R19 K25 [require]
      111 GETTABLEKS                       R20 R0 K26 ["Packages"]
      113 GETTABLEKS                       R20 R20 K27 ["AssistantUI"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K25 [require]
      118 GETTABLEKS                       R21 R0 K28 ["Src"]
      120 GETTABLEKS                       R21 R21 K29 ["Util"]
      122 GETTABLEKS                       R21 R21 K30 ["AvatarAutoSetup"]
      124 GETTABLEKS                       R21 R21 K31 ["Orchestrator"]
      126 CALL                             R20 1 1
      127 GETIMPORT                        R21 K25 [require]
      129 GETTABLEKS                       R22 R0 K26 ["Packages"]
      131 GETTABLEKS                       R22 R22 K32 ["DMNetworking"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K25 [require]
      136 GETTABLEKS                       R23 R0 K28 ["Src"]
      138 GETTABLEKS                       R23 R23 K29 ["Util"]
      140 GETTABLEKS                       R23 R23 K33 ["ExperimentFeature"]
      142 CALL                             R22 1 1
      143 GETIMPORT                        R23 K25 [require]
      145 GETTABLEKS                       R24 R0 K28 ["Src"]
      147 GETTABLEKS                       R24 R24 K34 ["Flags"]
      149 CALL                             R23 1 1
      150 GETIMPORT                        R24 K25 [require]
      152 GETTABLEKS                       R25 R0 K26 ["Packages"]
      154 GETTABLEKS                       R25 R25 K35 ["Framework"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K25 [require]
      159 GETTABLEKS                       R26 R0 K28 ["Src"]
      161 GETTABLEKS                       R26 R26 K29 ["Util"]
      163 GETTABLEKS                       R26 R26 K36 ["GameLoadedNotifier"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K25 [require]
      168 GETTABLEKS                       R27 R0 K28 ["Src"]
      170 GETTABLEKS                       R27 R27 K29 ["Util"]
      172 GETTABLEKS                       R27 R27 K37 ["GameStoppedNotifier"]
      174 CALL                             R26 1 1
      175 GETIMPORT                        R27 K25 [require]
      177 GETTABLEKS                       R28 R0 K26 ["Packages"]
      179 GETTABLEKS                       R28 R28 K38 ["HttpWrapper"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K25 [require]
      184 GETTABLEKS                       R29 R0 K26 ["Packages"]
      186 GETTABLEKS                       R29 R29 K39 ["ModelContextProtocol"]
      188 CALL                             R28 1 1
      189 GETIMPORT                        R29 K25 [require]
      191 GETTABLEKS                       R30 R0 K28 ["Src"]
      193 GETTABLEKS                       R30 R30 K29 ["Util"]
      195 GETTABLEKS                       R30 R30 K40 ["NotificationManagerStore"]
      197 CALL                             R29 1 1
      198 GETIMPORT                        R30 K25 [require]
      200 GETTABLEKS                       R31 R0 K26 ["Packages"]
      202 GETTABLEKS                       R31 R31 K41 ["OpenApiCreatorHomeApi"]
      204 CALL                             R30 1 1
      205 GETIMPORT                        R31 K25 [require]
      207 GETTABLEKS                       R32 R0 K26 ["Packages"]
      209 GETTABLEKS                       R32 R32 K42 ["OpenApiCreatorInventoryApi"]
      211 CALL                             R31 1 1
      212 GETIMPORT                        R32 K25 [require]
      214 GETTABLEKS                       R33 R0 K26 ["Packages"]
      216 GETTABLEKS                       R33 R33 K43 ["OpenApiCubeGenerationGateway"]
      218 CALL                             R32 1 1
      219 GETIMPORT                        R33 K25 [require]
      221 GETTABLEKS                       R34 R0 K26 ["Packages"]
      223 GETTABLEKS                       R34 R34 K44 ["OpenApiMcpAssistantApi"]
      225 CALL                             R33 1 1
      226 GETIMPORT                        R34 K25 [require]
      228 GETTABLEKS                       R35 R0 K26 ["Packages"]
      230 GETTABLEKS                       R35 R35 K45 ["OpenApiMcpAssistantStorageApi"]
      232 CALL                             R34 1 1
      233 GETIMPORT                        R35 K25 [require]
      235 GETTABLEKS                       R36 R0 K26 ["Packages"]
      237 GETTABLEKS                       R36 R36 K46 ["Promise"]
      239 CALL                             R35 1 1
      240 GETIMPORT                        R36 K25 [require]
      242 GETTABLEKS                       R37 R0 K28 ["Src"]
      244 GETTABLEKS                       R37 R37 K29 ["Util"]
      246 GETTABLEKS                       R37 R37 K47 ["StudioAnimationGen"]
      248 CALL                             R36 1 1
      249 GETIMPORT                        R37 K25 [require]
      251 GETTABLEKS                       R38 R0 K28 ["Src"]
      253 GETTABLEKS                       R38 R38 K29 ["Util"]
      255 GETTABLEKS                       R38 R38 K48 ["StudioEndpointUtil"]
      257 CALL                             R37 1 1
      258 GETIMPORT                        R38 K25 [require]
      260 GETTABLEKS                       R39 R0 K28 ["Src"]
      262 GETTABLEKS                       R39 R39 K49 ["Host"]
      264 GETTABLEKS                       R39 R39 K50 ["Resources"]
      266 GETTABLEKS                       R39 R39 K51 ["StudioEventLogger"]
      268 CALL                             R38 1 1
      269 GETIMPORT                        R39 K25 [require]
      271 GETTABLEKS                       R40 R0 K28 ["Src"]
      273 GETTABLEKS                       R40 R40 K52 ["Components"]
      275 GETTABLEKS                       R40 R40 K53 ["Contexts"]
      277 GETTABLEKS                       R40 R40 K54 ["StudioLLM"]
      279 GETTABLEKS                       R40 R40 K55 ["StudioLLMSystemReminder"]
      281 CALL                             R39 1 1
      282 GETIMPORT                        R40 K25 [require]
      284 GETTABLEKS                       R41 R0 K28 ["Src"]
      286 GETTABLEKS                       R41 R41 K29 ["Util"]
      288 GETTABLEKS                       R41 R41 K56 ["StudioMaterialGenerator"]
      290 CALL                             R40 1 1
      291 GETIMPORT                        R41 K25 [require]
      293 GETTABLEKS                       R42 R0 K28 ["Src"]
      295 GETTABLEKS                       R42 R42 K29 ["Util"]
      297 GETTABLEKS                       R42 R42 K57 ["StudioNetworking"]
      299 CALL                             R41 1 1
      300 GETIMPORT                        R42 K25 [require]
      302 GETTABLEKS                       R43 R0 K28 ["Src"]
      304 GETTABLEKS                       R43 R43 K29 ["Util"]
      306 GETTABLEKS                       R43 R43 K58 ["StudioState"]
      308 CALL                             R42 1 1
      309 GETIMPORT                        R43 K25 [require]
      311 GETTABLEKS                       R44 R0 K28 ["Src"]
      313 GETTABLEKS                       R44 R44 K29 ["Util"]
      315 GETTABLEKS                       R44 R44 K59 ["createStudioInstancePicker"]
      317 CALL                             R43 1 1
      318 GETTABLEKS                       R44 R24 K60 ["Http"]
      320 GETTABLEKS                       R44 R44 K61 ["Networking"]
      322 GETTABLEKS                       R45 R44 K62 ["new"]
      324 DUPTABLE                         R46 K66 [{["isInternal"] = True, ["loggingLevel"]}]
      325 GETTABLEKS                       R48 R23 K67 ["FFlagDebugLogAssistantUI"]
      327 JUMPIFNOT                        R48 ; [+2]
      328 LOADN                            R47 4
      329 JUMP                             ; [+1]
      330 LOADN                            R47 0
      331 SETTABLEKS                       R47 R46 K65 ["loggingLevel"]
      333 CALL                             R45 1 1
      334 GETTABLEKS                       R46 R24 K68 ["Url"]
      336 GETTABLEKS                       R47 R46 K62 ["new"]
      338 LOADNIL                          R48
      339 CALL                             R47 1 1
      340 DUPCLOSURE                       R48 K69 [PROTO_0]
      341 CAPTURE                          VAL R23
      342 DUPCLOSURE                       R49 K70 [PROTO_1]
      343 CAPTURE                          VAL R23
      344 DUPCLOSURE                       R50 K71 [PROTO_3]
      345 CAPTURE                          VAL R27
      346 DUPCLOSURE                       R51 K72 [PROTO_5]
      347 CAPTURE                          VAL R0
      348 CAPTURE                          VAL R27
      349 CAPTURE                          VAL R28
      350 DUPCLOSURE                       R52 K73 [PROTO_56]
      351 CAPTURE                          VAL R47
      352 CAPTURE                          VAL R17
      353 CAPTURE                          VAL R14
      354 CAPTURE                          VAL R37
      355 CAPTURE                          VAL R34
      356 DUPCLOSURE                       R53 K74 [PROTO_66]
      357 CAPTURE                          VAL R4
      358 CAPTURE                          VAL R19
      359 DUPCLOSURE                       R54 K75 [PROTO_67]
      360 CAPTURE                          VAL R36
      361 CAPTURE                          VAL R23
      362 DUPCLOSURE                       R55 K76 [PROTO_69]
      363 CAPTURE                          VAL R38
      364 CAPTURE                          VAL R20
      365 DUPCLOSURE                       R56 K77 [PROTO_76]
      366 CAPTURE                          VAL R17
      367 CAPTURE                          VAL R37
      368 CAPTURE                          VAL R32
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R19
      371 CAPTURE                          VAL R8
      372 DUPCLOSURE                       R57 K78 [PROTO_79]
      373 CAPTURE                          VAL R23
      374 CAPTURE                          VAL R19
      375 DUPCLOSURE                       R58 K79 [PROTO_88]
      376 CAPTURE                          VAL R37
      377 CAPTURE                          VAL R31
      378 CAPTURE                          VAL R30
      379 CAPTURE                          VAL R47
      380 CAPTURE                          VAL R9
      381 CAPTURE                          VAL R10
      382 DUPCLOSURE                       R59 K80 [PROTO_95]
      383 CAPTURE                          VAL R47
      384 CAPTURE                          VAL R9
      385 CAPTURE                          VAL R10
      386 CAPTURE                          VAL R11
      387 CAPTURE                          VAL R16
      388 DUPCLOSURE                       R60 K81 [PROTO_104]
      389 CAPTURE                          VAL R43
      390 CAPTURE                          VAL R23
      391 CAPTURE                          VAL R18
      392 DUPCLOSURE                       R61 K82 [PROTO_184]
      393 CAPTURE                          VAL R19
      394 CAPTURE                          VAL R47
      395 CAPTURE                          VAL R22
      396 CAPTURE                          VAL R23
      397 CAPTURE                          VAL R38
      398 CAPTURE                          VAL R10
      399 CAPTURE                          VAL R35
      400 CAPTURE                          VAL R5
      401 CAPTURE                          VAL R15
      402 CAPTURE                          VAL R4
      403 CAPTURE                          VAL R40
      404 CAPTURE                          VAL R29
      405 CAPTURE                          VAL R2
      406 CAPTURE                          VAL R56
      407 CAPTURE                          VAL R57
      408 CAPTURE                          VAL R58
      409 CAPTURE                          VAL R59
      410 CAPTURE                          VAL R36
      411 CAPTURE                          VAL R20
      412 CAPTURE                          VAL R14
      413 CAPTURE                          VAL R37
      414 CAPTURE                          VAL R31
      415 CAPTURE                          VAL R45
      416 CAPTURE                          VAL R17
      417 CAPTURE                          VAL R33
      418 CAPTURE                          VAL R52
      419 CAPTURE                          VAL R53
      420 CAPTURE                          VAL R51
      421 CAPTURE                          VAL R27
      422 CAPTURE                          VAL R32
      423 CAPTURE                          VAL R6
      424 CAPTURE                          VAL R13
      425 CAPTURE                          VAL R12
      426 CAPTURE                          VAL R25
      427 CAPTURE                          VAL R26
      428 CAPTURE                          VAL R42
      429 CAPTURE                          VAL R60
      430 CAPTURE                          VAL R0
      431 CAPTURE                          VAL R39
      432 RETURN                           R61 1
