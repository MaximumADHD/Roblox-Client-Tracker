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
        8 DUPTABLE                         R2 K4 [{["error"] = "MCP Server not supported"}]
        9 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AccessTokenPermissions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScopePermissionsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetScopePermissionsAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAvailableScopesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScopeRiskLevelsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetSelectedPresetAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetSelectedPresetAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectFileExistsAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_28:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["QuickConnectReadFileAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["QuickConnectModifyFileAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["OpenFileDialogAsync"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["ImportFileBinaryAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Info"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_36:
        0 LOADK                            R2 K0 ["%*v1/asset/?id=%*&permissionContext=ignoreUniverse"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 3 1
        6 MOVE                             R1 R2
        7 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 LOADK                            R1 K1 ["AssistantUserSkillAssets"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setUserSettingsAsync"]
        3 LOADK                            R2 K1 ["AssistantUserSkillAssets"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["getSkillAssetsAsync"]
        5 DUPTABLE                         R1 K5 [{["cursor"], ["limit"] = 100}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["cursor"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["McpAssistantStorage"]
        3 GETTABLEKS                       R0 R0 K1 ["deleteSkillAssetAsync"]
        5 DUPTABLE                         R1 K3 [{"assetId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["assetId"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_48:
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

PROTO_49:
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
       83 GETIMPORT                        R4 K1 [pcall]
       85 NEWCLOSURE                       R5 P17
       86 CAPTURE                          VAL R1
       87 CALL                             R4 1 2
       88 JUMPIFNOT                        R4 ; [+24]
       89 NEWCLOSURE                       R6 P18
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R6 R0 K22 ["getScopePermissionsAsync"]
       93 NEWCLOSURE                       R6 P19
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R6 R0 K23 ["setScopePermissionsAsync"]
       97 NEWCLOSURE                       R6 P20
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R6 R0 K24 ["getAvailableScopesAsync"]
      101 NEWCLOSURE                       R6 P21
      102 CAPTURE                          VAL R5
      103 SETTABLEKS                       R6 R0 K25 ["getScopeRiskLevelsAsync"]
      105 NEWCLOSURE                       R6 P22
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R6 R0 K26 ["getSelectedPresetAsync"]
      109 NEWCLOSURE                       R6 P23
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R6 R0 K27 ["setSelectedPresetAsync"]
      113 GETTABLEKS                       R6 R0 K28 ["quickConnect"]
      115 NEWCLOSURE                       R7 P24
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R7 R6 K29 ["fileExistsAsync"]
      119 GETTABLEKS                       R6 R0 K28 ["quickConnect"]
      121 NEWCLOSURE                       R7 P25
      122 CAPTURE                          VAL R3
      123 SETTABLEKS                       R7 R6 K30 ["readFileAsync"]
      125 GETTABLEKS                       R6 R0 K28 ["quickConnect"]
      127 NEWCLOSURE                       R7 P26
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R7 R6 K31 ["modifyFileAsync"]
      131 NEWCLOSURE                       R6 P27
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R6 R0 K32 ["openFileDialogAsync"]
      135 NEWCLOSURE                       R6 P28
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R6 R0 K33 ["importFileBinaryAsync"]
      139 NEWCLOSURE                       R6 P29
      140 CAPTURE                          VAL R3
      141 SETTABLEKS                       R6 R0 K34 ["printToStudioLogAsync"]
      143 GETUPVAL                         R6 0
      144 GETTABLEKS                       R6 R6 K35 ["APIS_URL"]
      146 LOADK                            R8 K36 ["https://apis%.(.+)"]
      147 NAMECALL                         R6 R6 K37 ["match"]
      149 CALL                             R6 2 1
      150 LOADK                            R8 K38 ["https://assetdelivery.%*/"]
      151 MOVE                             R10 R6
      152 NAMECALL                         R8 R8 K39 ["format"]
      154 CALL                             R8 2 1
      155 MOVE                             R7 R8
      156 NEWCLOSURE                       R8 P30
      157 CAPTURE                          VAL R7
      158 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      160 NEWCLOSURE                       R10 P31
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R10 R9 K41 ["getManifestAsync"]
      164 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      166 NEWCLOSURE                       R10 P32
      167 CAPTURE                          VAL R0
      168 SETTABLEKS                       R10 R9 K42 ["setManifestAsync"]
      170 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      172 NEWCLOSURE                       R10 P33
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R7
      175 SETTABLEKS                       R10 R9 K43 ["fetchContentAsync"]
      177 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      179 DUPCLOSURE                       R10 K44 [PROTO_40]
      180 CAPTURE                          UPVAL U1
      181 CAPTURE                          UPVAL U2
      182 SETTABLEKS                       R10 R9 K45 ["publishNewAsync"]
      184 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      186 DUPCLOSURE                       R10 K46 [PROTO_41]
      187 CAPTURE                          UPVAL U1
      188 CAPTURE                          UPVAL U2
      189 SETTABLEKS                       R10 R9 K47 ["publishUpdateAsync"]
      191 GETTABLEKS                       R9 R0 K40 ["userSkillAssets"]
      193 DUPCLOSURE                       R10 K48 [PROTO_42]
      194 SETTABLEKS                       R10 R9 K49 ["deleteAsync"]
      196 GETTABLEKS                       R9 R0 K50 ["cloudSkillAssets"]
      198 DUPCLOSURE                       R10 K51 [PROTO_44]
      199 CAPTURE                          UPVAL U3
      200 CAPTURE                          UPVAL U4
      201 SETTABLEKS                       R10 R9 K52 ["getAssetsAsync"]
      203 GETTABLEKS                       R9 R0 K50 ["cloudSkillAssets"]
      205 DUPCLOSURE                       R10 K53 [PROTO_46]
      206 CAPTURE                          UPVAL U3
      207 CAPTURE                          UPVAL U4
      208 SETTABLEKS                       R10 R9 K54 ["uploadAssetsAsync"]
      210 GETTABLEKS                       R9 R0 K50 ["cloudSkillAssets"]
      212 DUPCLOSURE                       R10 K55 [PROTO_48]
      213 CAPTURE                          UPVAL U3
      214 CAPTURE                          UPVAL U4
      215 SETTABLEKS                       R10 R9 K56 ["deleteAssetAsync"]
      217 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_53:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_58:
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

PROTO_59:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_56]
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R5 R4 K9 ["applyScriptSourceDirectly"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantPrivilegedCodeExecution"]
       42 JUMPIFNOT                        R4 ; [+7]
       43 GETIMPORT                        R4 K13 [task.spawn]
       45 NEWCLOSURE                       R5 P5
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R3
       49 CALL                             R4 1 0
       50 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R0 K1 ["tools"]
        7 GETTABLEKS                       R3 R3 K2 ["animationGen"]
        9 GETTABLEKS                       R4 R2 K3 ["generateAnimationAsync"]
       11 SETTABLEKS                       R4 R3 K3 ["generateAnimationAsync"]
       13 GETTABLEKS                       R4 R2 K4 ["publishAnimationAsync"]
       15 SETTABLEKS                       R4 R3 K4 ["publishAnimationAsync"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["FFlagAnimationGenOpenACE"]
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R4 R2 K6 ["openAnimationClipEditorAsync"]
       23 SETTABLEKS                       R4 R3 K6 ["openAnimationClipEditorAsync"]
       25 RETURN                           R0 0

PROTO_61:
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

PROTO_62:
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
       14 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 DUPTABLE                         R1 K5 [{"robloxctxAuthenticatedUserid", "generationId", "body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["generationId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K4 ["body"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_65:
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

PROTO_66:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_65]
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R3 R2 K4 ["publishModelAsync"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K5 ["Guest"]
       17 GETTABLEKS                       R3 R3 K6 ["LoadAssetHandlers"]
       19 GETTABLEKS                       R3 R3 K7 ["getRobloxScriptHandler"]
       21 GETIMPORT                        R4 K9 [game]
       23 CALL                             R3 1 1
       24 SETTABLEKS                       R3 R2 K10 ["loadAssetAsync"]
       26 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PublishMediator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Groups"]
        3 GETTABLEKS                       R0 R0 K1 ["getListGroupsAsync"]
        5 DUPTABLE                         R1 K3 [{"surface"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["surface"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_74:
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

PROTO_75:
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

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["THUMBNAILS_URL"]
        3 RETURN                           R0 1

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CREATOR_HUB_URL"]
        3 RETURN                           R0 1

PROTO_78:
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
       15 DUPCLOSURE                       R3 K11 [PROTO_74]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R3 R1 K12 ["fetchUserGroupsAsync"]
       20 DUPCLOSURE                       R3 K13 [PROTO_75]
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 SETTABLEKS                       R3 R1 K14 ["searchCreatorStoreAssetsAsync"]
       26 DUPCLOSURE                       R3 K15 [PROTO_76]
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R3 R1 K16 ["getThumbnailsUrl"]
       30 DUPCLOSURE                       R3 K17 [PROTO_77]
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R3 R1 K18 ["getCreatorHubUrl"]
       34 RETURN                           R0 0

PROTO_79:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_80:
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

PROTO_81:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadPackageAssetAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAudioApiByDefault"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_83:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 NAMECALL                         R3 R3 K0 ["InsertAsset"]
        6 CALL                             R3 4 -1
        7 RETURN                           R3 -1

PROTO_84:
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

PROTO_85:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["assetInsert"]
        4 DUPCLOSURE                       R2 K2 [PROTO_79]
        5 SETTABLEKS                       R2 R1 K3 ["getObjects"]
        7 DUPCLOSURE                       R2 K4 [PROTO_80]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K5 ["getItemDetailsAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_81]
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K7 ["loadPackageAssetAsync"]
       17 DUPCLOSURE                       R2 K8 [PROTO_82]
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R2 R1 K9 ["getAudioApiByDefault"]
       21 DUPCLOSURE                       R2 K10 [PROTO_83]
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K11 ["insertAudioAsset"]
       25 DUPCLOSURE                       R2 K12 [PROTO_84]
       26 SETTABLEKS                       R2 R1 K13 ["assignSourceAssetId"]
       28 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_87:
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

PROTO_88:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_94:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_87]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_88]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 DUPCLOSURE                       R6 K7 [PROTO_89]
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

PROTO_95:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_96:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_98:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_99:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_101:
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

PROTO_102:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_103:
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

PROTO_104:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_105:
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

PROTO_106:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_107:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_108:
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

PROTO_109:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_111:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_112:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_113:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_114:
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

PROTO_115:
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

PROTO_116:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_117:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_116]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_118:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 DUPTABLE                         R1 K3 [{"body"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["body"]
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_119:
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

PROTO_120:
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

PROTO_121:
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

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImageGeneration"]
        3 GETTABLEKS                       R0 R0 K1 ["postGenerateImageAsync"]
        5 DUPTABLE                         R1 K15 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["textPrompt"], ["model"], ["aspectRatio"], ["images"], ["removeBackground"], ["seed"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K6 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K9 ["textPrompt"]
       12 SETTABLEKS                       R2 R1 K9 ["textPrompt"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K10 ["model"]
       17 SETTABLEKS                       R2 R1 K10 ["model"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K11 ["aspectRatio"]
       22 SETTABLEKS                       R2 R1 K11 ["aspectRatio"]
       24 GETUPVAL                         R2 3
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K12 ["images"]
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K12 ["images"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K13 ["removeBackground"]
       34 SETTABLEKS                       R2 R1 K13 ["removeBackground"]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K14 ["seed"]
       39 SETTABLEKS                       R2 R1 K14 ["seed"]
       41 CALL                             R0 1 -1
       42 RETURN                           R0 -1

PROTO_123:
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
       48 DUPTABLE                         R3 K18 [{["ok"] = True, ["statusCode"], ["imageGenerationId"]}]
       49 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       51 GETTABLEKS                       R4 R4 K6 ["statusCode"]
       53 SETTABLEKS                       R4 R3 K6 ["statusCode"]
       55 GETTABLEKS                       R4 R2 K19 ["data"]
       57 GETTABLEKS                       R4 R4 K17 ["imageGenerationId"]
       59 SETTABLEKS                       R4 R3 K17 ["imageGenerationId"]
       61 RETURN                           R3 1

PROTO_124:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImageGeneration"]
        3 GETTABLEKS                       R0 R0 K1 ["getImageGenerationStatusAsync"]
        5 DUPTABLE                         R1 K10 [{["robloxctxRcc"] = False, ["robloxUniverseId"] = , ["robloxctxAuthenticatedUserid"], ["robloxPlaceId"] = , ["robloxGameId"] = , ["imageGenerationId"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K6 ["robloxctxAuthenticatedUserid"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K9 ["imageGenerationId"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_125:
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
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R3 R2 K4 ["success"]
       20 JUMPIF                           R3 ; [+26]
       21 GETTABLEKS                       R4 R2 K5 ["httpDetails"]
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETTABLEKS                       R3 R2 K5 ["httpDetails"]
       26 GETTABLEKS                       R3 R3 K6 ["statusCode"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R3
       30 DUPTABLE                         R4 K10 [{["ok"] = False, ["statusCode"], ["errorMessage"]}]
       31 SETTABLEKS                       R3 R4 K6 ["statusCode"]
       33 GETIMPORT                        R5 K12 [select]
       35 LOADN                            R6 2
       36 GETIMPORT                        R7 K14 [pcall]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K15 ["throwError"]
       41 MOVE                             R9 R2
       42 CALL                             R7 2 -1
       43 CALL                             R5 -1 1
       44 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       46 RETURN                           R4 1
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R4 R2 K16 ["data"]
       50 CALL                             R3 1 1
       51 DUPTABLE                         R4 K24 [{["ok"] = True, ["statusCode"], ["status"], ["currentStage"], ["presignedUrl"], ["widthPx"], ["heightPx"], ["format"]}]
       52 GETTABLEKS                       R5 R2 K5 ["httpDetails"]
       54 GETTABLEKS                       R5 R5 K6 ["statusCode"]
       56 SETTABLEKS                       R5 R4 K6 ["statusCode"]
       58 GETTABLEKS                       R5 R2 K16 ["data"]
       60 GETTABLEKS                       R5 R5 K18 ["status"]
       62 SETTABLEKS                       R5 R4 K18 ["status"]
       64 GETTABLEKS                       R5 R2 K16 ["data"]
       66 GETTABLEKS                       R5 R5 K19 ["currentStage"]
       68 SETTABLEKS                       R5 R4 K19 ["currentStage"]
       70 GETTABLEKS                       R5 R3 K20 ["presignedUrl"]
       72 SETTABLEKS                       R5 R4 K20 ["presignedUrl"]
       74 GETTABLEKS                       R5 R3 K21 ["widthPx"]
       76 SETTABLEKS                       R5 R4 K21 ["widthPx"]
       78 GETTABLEKS                       R5 R3 K22 ["heightPx"]
       80 SETTABLEKS                       R5 R4 K22 ["heightPx"]
       82 GETTABLEKS                       R5 R3 K23 ["format"]
       84 SETTABLEKS                       R5 R4 K23 ["format"]
       86 RETURN                           R4 1

PROTO_126:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_128:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_129:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_130:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_131:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_132:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K1 ["GameId"]
        2 NAMECALL                         R1 R1 K2 ["GetItem"]
        4 CALL                             R1 2 1
        5 ORK                              R0 R1 K0 [0]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_134:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_135:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_136:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_138:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_139:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_140:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_141:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isEditDataModelAvailable"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_142:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_143:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CapabilitiesHandler"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_144:
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

PROTO_145:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["cleanupServerAndClients"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_146:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["isCleanupServerAndClientsAvailable"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_147:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_148:
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

PROTO_149:
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

PROTO_150:
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

PROTO_151:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_152:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_153:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioStateString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_154:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_95]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_96]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_97]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       24 DUPCLOSURE                       R3 K11 [PROTO_98]
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
       45 DUPCLOSURE                       R7 K18 [PROTO_100]
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R7 R6 K19 ["createWebStreamClient"]
       49 GETTABLEKS                       R6 R2 K17 ["http"]
       51 DUPCLOSURE                       R7 K20 [PROTO_103]
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 SETTABLEKS                       R7 R6 K21 ["requestAsync"]
       56 GETTABLEKS                       R6 R2 K17 ["http"]
       58 DUPCLOSURE                       R7 K22 [PROTO_105]
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R7 R6 K23 ["openUrl"]
       62 GETTABLEKS                       R6 R2 K24 ["selection"]
       64 DUPCLOSURE                       R7 K25 [PROTO_106]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R7 R6 K26 ["get"]
       68 GETTABLEKS                       R6 R2 K24 ["selection"]
       70 DUPCLOSURE                       R7 K27 [PROTO_107]
       71 CAPTURE                          UPVAL U8
       72 SETTABLEKS                       R7 R6 K28 ["set"]
       74 DUPCLOSURE                       R6 K29 [PROTO_108]
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
      158 DUPCLOSURE                       R7 K52 [PROTO_110]
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
      184 GETUPVAL                         R6 3
      185 GETTABLEKS                       R6 R6 K54 ["FFlagAssistantSplitToolsAndWidgets"]
      187 JUMPIFNOT                        R6 ; [+6]
      188 GETUPVAL                         R6 15
      189 MOVE                             R7 R2
      190 CALL                             R6 1 0
      191 GETUPVAL                         R6 16
      192 MOVE                             R7 R2
      193 CALL                             R6 1 0
      194 GETUPVAL                         R6 3
      195 GETTABLEKS                       R6 R6 K55 ["FFlagAssistantAnimationGenTool"]
      197 JUMPIFNOT                        R6 ; [+25]
      198 GETUPVAL                         R6 17
      199 GETTABLEKS                       R6 R6 K40 ["create"]
      201 MOVE                             R7 R0
      202 CALL                             R6 1 1
      203 GETTABLEKS                       R7 R2 K31 ["tools"]
      205 GETTABLEKS                       R7 R7 K56 ["animationGen"]
      207 GETTABLEKS                       R8 R6 K57 ["generateAnimationAsync"]
      209 SETTABLEKS                       R8 R7 K57 ["generateAnimationAsync"]
      211 GETTABLEKS                       R8 R6 K58 ["publishAnimationAsync"]
      213 SETTABLEKS                       R8 R7 K58 ["publishAnimationAsync"]
      215 GETUPVAL                         R8 3
      216 GETTABLEKS                       R8 R8 K59 ["FFlagAnimationGenOpenACE"]
      218 JUMPIFNOT                        R8 ; [+4]
      219 GETTABLEKS                       R8 R6 K60 ["openAnimationClipEditorAsync"]
      221 SETTABLEKS                       R8 R7 K60 ["openAnimationClipEditorAsync"]
      223 GETUPVAL                         R6 3
      224 GETTABLEKS                       R6 R6 K61 ["FFlagAssistantAvatarAutoSetupTool"]
      226 JUMPIFNOT                        R6 ; [+14]
      227 GETTABLEKS                       R6 R2 K31 ["tools"]
      229 GETTABLEKS                       R6 R6 K62 ["avatarAutoSetup"]
      231 GETUPVAL                         R7 4
      232 GETTABLEKS                       R7 R7 K47 ["makeStudioTelemetryEvents"]
      234 MOVE                             R8 R5
      235 CALL                             R7 1 1
      236 NEWCLOSURE                       R8 P15
      237 CAPTURE                          UPVAL U18
      238 CAPTURE                          VAL R7
      239 SETTABLEKS                       R8 R6 K63 ["autoSetupAsync"]
      241 GETTABLEKS                       R6 R2 K31 ["tools"]
      243 GETTABLEKS                       R6 R6 K64 ["uploadImage"]
      245 DUPCLOSURE                       R7 K65 [PROTO_113]
      246 CAPTURE                          UPVAL U19
      247 SETTABLEKS                       R7 R6 K66 ["publishAssetAsync"]
      249 DUPCLOSURE                       R7 K67 [PROTO_115]
      250 CAPTURE                          UPVAL U3
      251 CAPTURE                          UPVAL U20
      252 CAPTURE                          UPVAL U21
      253 CAPTURE                          UPVAL U1
      254 CAPTURE                          UPVAL U22
      255 SETTABLEKS                       R7 R6 K68 ["searchAssetAsync"]
      257 GETUPVAL                         R6 3
      258 GETTABLEKS                       R6 R6 K69 ["FFlagAssistantPrivilegedCodeExecution"]
      260 JUMPIFNOT                        R6 ; [+4]
      261 DUPCLOSURE                       R6 K70 [PROTO_117]
      262 CAPTURE                          UPVAL U23
      263 SETTABLEKS                       R6 R2 K71 ["hasInternalPermission"]
      265 DUPCLOSURE                       R6 K72 [PROTO_119]
      266 CAPTURE                          UPVAL U20
      267 CAPTURE                          UPVAL U24
      268 SETTABLEKS                       R6 R2 K73 ["fetchSystemPromptAsync"]
      270 GETUPVAL                         R6 25
      271 MOVE                             R7 R2
      272 MOVE                             R8 R0
      273 CALL                             R6 2 0
      274 GETUPVAL                         R6 26
      275 MOVE                             R7 R2
      276 MOVE                             R8 R0
      277 CALL                             R6 2 0
      278 GETUPVAL                         R6 27
      279 CALL                             R6 0 0
      280 DUPCLOSURE                       R6 K74 [PROTO_120]
      281 DUPCLOSURE                       R7 K75 [PROTO_121]
      282 CAPTURE                          UPVAL U28
      283 DUPTABLE                         R8 K78 [{"startAsync", "getStatusAsync"}]
      284 NEWCLOSURE                       R9 P22
      285 CAPTURE                          VAL R2
      286 CAPTURE                          UPVAL U20
      287 CAPTURE                          UPVAL U29
      288 CAPTURE                          VAL R7
      289 SETTABLEKS                       R9 R8 K76 ["startAsync"]
      291 NEWCLOSURE                       R9 P23
      292 CAPTURE                          VAL R2
      293 CAPTURE                          UPVAL U20
      294 CAPTURE                          UPVAL U29
      295 CAPTURE                          VAL R6
      296 SETTABLEKS                       R9 R8 K77 ["getStatusAsync"]
      298 SETTABLEKS                       R8 R2 K79 ["imageGeneration"]
      300 DUPCLOSURE                       R8 K80 [PROTO_126]
      301 CAPTURE                          UPVAL U23
      302 SETTABLEKS                       R8 R2 K81 ["copyToClipboard"]
      304 DUPCLOSURE                       R8 K82 [PROTO_127]
      305 CAPTURE                          UPVAL U23
      306 SETTABLEKS                       R8 R2 K83 ["getClassIcon"]
      308 GETUPVAL                         R8 0
      309 GETTABLEKS                       R8 R8 K0 ["Guest"]
      311 GETTABLEKS                       R8 R8 K84 ["RecordingHandlers"]
      313 GETTABLEKS                       R8 R8 K85 ["getPluginHandlers"]
      315 GETUPVAL                         R9 30
      316 CALL                             R8 1 1
      317 GETTABLEKS                       R9 R8 K86 ["startRecording"]
      319 SETTABLEKS                       R9 R2 K86 ["startRecording"]
      321 GETTABLEKS                       R9 R8 K87 ["endRecording"]
      323 SETTABLEKS                       R9 R2 K87 ["endRecording"]
      325 NEWCLOSURE                       R9 P26
      326 CAPTURE                          VAL R1
      327 SETTABLEKS                       R9 R2 K88 ["getNetworking"]
      329 DUPCLOSURE                       R9 K89 [PROTO_129]
      330 CAPTURE                          UPVAL U9
      331 SETTABLEKS                       R9 R2 K90 ["getScriptSource"]
      333 DUPCLOSURE                       R9 K91 [PROTO_131]
      334 CAPTURE                          UPVAL U23
      335 SETTABLEKS                       R9 R2 K92 ["getUserId"]
      337 GETUPVAL                         R9 3
      338 GETTABLEKS                       R9 R9 K93 ["FFlagAssistantAssetSearchInsertTool"]
      340 JUMPIFNOT                        R9 ; [+32]
      341 NAMECALL                         R9 R1 K53 ["IsHost"]
      343 CALL                             R9 1 1
      344 JUMPIFNOT                        R9 ; [+20]
      345 LOADK                            R11 K94 ["GameId"]
      346 GETIMPORT                        R12 K36 [game]
      348 GETTABLEKS                       R12 R12 K94 ["GameId"]
      350 NAMECALL                         R9 R0 K95 ["SetItem"]
      352 CALL                             R9 3 0
      353 GETIMPORT                        R9 K36 [game]
      355 LOADK                            R11 K94 ["GameId"]
      356 NAMECALL                         R9 R9 K96 ["GetPropertyChangedSignal"]
      358 CALL                             R9 2 1
      359 NEWCLOSURE                       R11 P29
      360 CAPTURE                          VAL R0
      361 NAMECALL                         R9 R9 K97 ["Connect"]
      363 CALL                             R9 2 0
      364 JUMP                             ; [+8]
      365 NAMECALL                         R9 R1 K46 ["IsGuest"]
      367 CALL                             R9 1 1
      368 JUMPIFNOT                        R9 ; [+4]
      369 NEWCLOSURE                       R9 P30
      370 CAPTURE                          VAL R0
      371 SETTABLEKS                       R9 R2 K98 ["getGameId"]
      373 DUPCLOSURE                       R9 K99 [PROTO_135]
      374 CAPTURE                          UPVAL U31
      375 SETTABLEKS                       R9 R2 K100 ["startStopPlayAsync"]
      377 DUPCLOSURE                       R9 K101 [PROTO_137]
      378 CAPTURE                          UPVAL U32
      379 SETTABLEKS                       R9 R2 K102 ["subscribeOutput"]
      381 DUPCLOSURE                       R9 K103 [PROTO_138]
      382 CAPTURE                          UPVAL U33
      383 SETTABLEKS                       R9 R2 K104 ["subscribeGameLoaded"]
      385 DUPCLOSURE                       R9 K105 [PROTO_139]
      386 CAPTURE                          UPVAL U34
      387 SETTABLEKS                       R9 R2 K106 ["subscribeGameStopped"]
      389 DUPCLOSURE                       R9 K107 [PROTO_140]
      390 CAPTURE                          UPVAL U35
      391 SETTABLEKS                       R9 R2 K108 ["getStudioPlayState"]
      393 DUPCLOSURE                       R9 K109 [PROTO_141]
      394 CAPTURE                          UPVAL U35
      395 SETTABLEKS                       R9 R2 K110 ["isEditDataModelAvailable"]
      397 GETUPVAL                         R9 36
      398 MOVE                             R10 R0
      399 MOVE                             R11 R1
      400 MOVE                             R12 R2
      401 CALL                             R9 3 0
      402 GETIMPORT                        R9 K14 [pcall]
      404 NEWCLOSURE                       R10 P37
      405 CAPTURE                          VAL R0
      406 CALL                             R9 1 2
      407 JUMPIFNOT                        R9 ; [+3]
      408 JUMPIFNOT                        R10 ; [+2]
      409 SETTABLEKS                       R10 R2 K111 ["assetAccessController"]
      411 GETUPVAL                         R11 3
      412 GETTABLEKS                       R11 R11 K112 ["FFlagAssistantInsertAssetSandboxScripts"]
      414 JUMPIFNOT                        R11 ; [+8]
      415 GETIMPORT                        R11 K14 [pcall]
      417 NEWCLOSURE                       R12 P38
      418 CAPTURE                          VAL R0
      419 CALL                             R11 1 2
      420 JUMPIFNOT                        R12 ; [+2]
      421 SETTABLEKS                       R12 R2 K113 ["capabilitiesHandler"]
      423 DUPCLOSURE                       R11 K114 [PROTO_144]
      424 CAPTURE                          UPVAL U37
      425 SETTABLEKS                       R11 R2 K115 ["startMultiPlayerTest"]
      427 DUPCLOSURE                       R11 K116 [PROTO_145]
      428 CAPTURE                          UPVAL U37
      429 SETTABLEKS                       R11 R2 K117 ["stopMultiPlayerTest"]
      431 DUPCLOSURE                       R11 K118 [PROTO_146]
      432 CAPTURE                          UPVAL U37
      433 SETTABLEKS                       R11 R2 K119 ["isInMultiPlayerTest"]
      435 DUPCLOSURE                       R11 K120 [PROTO_148]
      436 CAPTURE                          UPVAL U37
      437 SETTABLEKS                       R11 R2 K121 ["subscribeStopMultiPlayerTestStateChanged"]
      439 DUPCLOSURE                       R11 K122 [PROTO_149]
      440 CAPTURE                          UPVAL U37
      441 SETTABLEKS                       R11 R2 K123 ["createMultiPlayersServer"]
      443 DUPCLOSURE                       R11 K124 [PROTO_150]
      444 CAPTURE                          UPVAL U37
      445 SETTABLEKS                       R11 R2 K125 ["createMultiPlayersClient"]
      447 DUPCLOSURE                       R11 K126 [PROTO_151]
      448 CAPTURE                          UPVAL U2
      449 SETTABLEKS                       R11 R2 K127 ["getExperimentFeatureEnabled"]
      451 DUPCLOSURE                       R11 K128 [PROTO_152]
      452 CAPTURE                          UPVAL U2
      453 SETTABLEKS                       R11 R2 K129 ["onceExperimentFeatureEnabled"]
      455 DUPCLOSURE                       R11 K130 [PROTO_153]
      456 CAPTURE                          UPVAL U38
      457 SETTABLEKS                       R11 R2 K131 ["getStudioState"]
      459 RETURN                           R2 1

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
      330 DUPCLOSURE                       R46 K68 [PROTO_1]
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R25
      333 CAPTURE                          VAL R26
      334 DUPCLOSURE                       R47 K69 [PROTO_49]
      335 CAPTURE                          VAL R45
      336 CAPTURE                          VAL R15
      337 CAPTURE                          VAL R12
      338 CAPTURE                          VAL R35
      339 CAPTURE                          VAL R32
      340 DUPCLOSURE                       R48 K70 [PROTO_59]
      341 CAPTURE                          VAL R4
      342 CAPTURE                          VAL R21
      343 CAPTURE                          VAL R17
      344 DUPCLOSURE                       R49 K71 [PROTO_60]
      345 CAPTURE                          VAL R34
      346 CAPTURE                          VAL R21
      347 DUPCLOSURE                       R50 K72 [PROTO_62]
      348 CAPTURE                          VAL R36
      349 CAPTURE                          VAL R18
      350 DUPCLOSURE                       R51 K73 [PROTO_66]
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R35
      353 CAPTURE                          VAL R30
      354 CAPTURE                          VAL R17
      355 DUPCLOSURE                       R52 K74 [PROTO_69]
      356 CAPTURE                          VAL R21
      357 CAPTURE                          VAL R17
      358 DUPCLOSURE                       R53 K75 [PROTO_78]
      359 CAPTURE                          VAL R35
      360 CAPTURE                          VAL R29
      361 CAPTURE                          VAL R28
      362 CAPTURE                          VAL R45
      363 CAPTURE                          VAL R7
      364 CAPTURE                          VAL R8
      365 DUPCLOSURE                       R54 K76 [PROTO_85]
      366 CAPTURE                          VAL R45
      367 CAPTURE                          VAL R7
      368 CAPTURE                          VAL R8
      369 CAPTURE                          VAL R9
      370 CAPTURE                          VAL R14
      371 DUPCLOSURE                       R55 K77 [PROTO_94]
      372 CAPTURE                          VAL R41
      373 CAPTURE                          VAL R21
      374 CAPTURE                          VAL R16
      375 DUPCLOSURE                       R56 K78 [PROTO_154]
      376 CAPTURE                          VAL R17
      377 CAPTURE                          VAL R45
      378 CAPTURE                          VAL R20
      379 CAPTURE                          VAL R21
      380 CAPTURE                          VAL R36
      381 CAPTURE                          VAL R8
      382 CAPTURE                          VAL R33
      383 CAPTURE                          VAL R5
      384 CAPTURE                          VAL R13
      385 CAPTURE                          VAL R4
      386 CAPTURE                          VAL R38
      387 CAPTURE                          VAL R27
      388 CAPTURE                          VAL R2
      389 CAPTURE                          VAL R51
      390 CAPTURE                          VAL R52
      391 CAPTURE                          VAL R53
      392 CAPTURE                          VAL R54
      393 CAPTURE                          VAL R34
      394 CAPTURE                          VAL R18
      395 CAPTURE                          VAL R12
      396 CAPTURE                          VAL R35
      397 CAPTURE                          VAL R29
      398 CAPTURE                          VAL R43
      399 CAPTURE                          VAL R15
      400 CAPTURE                          VAL R31
      401 CAPTURE                          VAL R47
      402 CAPTURE                          VAL R48
      403 CAPTURE                          VAL R46
      404 CAPTURE                          VAL R25
      405 CAPTURE                          VAL R30
      406 CAPTURE                          VAL R6
      407 CAPTURE                          VAL R11
      408 CAPTURE                          VAL R10
      409 CAPTURE                          VAL R23
      410 CAPTURE                          VAL R24
      411 CAPTURE                          VAL R40
      412 CAPTURE                          VAL R55
      413 CAPTURE                          VAL R0
      414 CAPTURE                          VAL R37
      415 RETURN                           R56 1
