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
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Generated"]
        7 GETTABLEKS                       R1 R1 K4 ["OpenAPI"]
        9 GETTABLEKS                       R1 R1 K5 ["McpAssistantApi"]
       11 GETTABLEKS                       R1 R1 K6 ["Models"]
       13 GETTABLEKS                       R1 R1 K7 ["CreateConversationRequest"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["Src"]
       21 GETTABLEKS                       R2 R2 K3 ["Generated"]
       23 GETTABLEKS                       R2 R2 K4 ["OpenAPI"]
       25 GETTABLEKS                       R2 R2 K5 ["McpAssistantApi"]
       27 GETTABLEKS                       R2 R2 K6 ["Models"]
       29 GETTABLEKS                       R2 R2 K8 ["SystemPromptRequest"]
       31 CALL                             R1 1 1
       32 NEWTABLE                         R2 2 0
       34 LOADB                            R3 1
       35 SETTABLE                         R3 R2 R0
       36 LOADB                            R3 1
       37 SETTABLE                         R3 R2 R1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K9 ["setBody"]
       41 GETUPVAL                         R4 1
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R5 R4 K9 ["setBody"]
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
      144 GETTABLEKS                       R6 R6 K35 ["FFlagAssistantUserSkills"]
      146 JUMPIFNOT                        R6 ; [+53]
      147 GETUPVAL                         R6 1
      148 GETTABLEKS                       R6 R6 K36 ["APIS_URL"]
      150 LOADK                            R8 K37 ["https://apis%.(.+)"]
      151 NAMECALL                         R6 R6 K38 ["match"]
      153 CALL                             R6 2 1
      154 LOADK                            R8 K39 ["https://assetdelivery.%*/"]
      155 MOVE                             R10 R6
      156 NAMECALL                         R8 R8 K40 ["format"]
      158 CALL                             R8 2 1
      159 MOVE                             R7 R8
      160 NEWCLOSURE                       R8 P30
      161 CAPTURE                          VAL R7
      162 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      164 NEWCLOSURE                       R10 P31
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R10 R9 K42 ["getManifestAsync"]
      168 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      170 NEWCLOSURE                       R10 P32
      171 CAPTURE                          VAL R0
      172 SETTABLEKS                       R10 R9 K43 ["setManifestAsync"]
      174 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      176 NEWCLOSURE                       R10 P33
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R7
      179 SETTABLEKS                       R10 R9 K44 ["fetchContentAsync"]
      181 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      183 DUPCLOSURE                       R10 K45 [PROTO_40]
      184 CAPTURE                          UPVAL U2
      185 CAPTURE                          UPVAL U3
      186 SETTABLEKS                       R10 R9 K46 ["publishNewAsync"]
      188 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      190 DUPCLOSURE                       R10 K47 [PROTO_41]
      191 CAPTURE                          UPVAL U2
      192 CAPTURE                          UPVAL U3
      193 SETTABLEKS                       R10 R9 K48 ["publishUpdateAsync"]
      195 GETTABLEKS                       R9 R0 K41 ["userSkillAssets"]
      197 DUPCLOSURE                       R10 K49 [PROTO_42]
      198 SETTABLEKS                       R10 R9 K50 ["deleteAsync"]
      200 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_47:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_52:
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

PROTO_53:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_50]
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["tools"]
        6 GETTABLEKS                       R2 R2 K2 ["animationGen"]
        8 GETTABLEKS                       R3 R1 K3 ["generateAnimationAsync"]
       10 SETTABLEKS                       R3 R2 K3 ["generateAnimationAsync"]
       12 GETTABLEKS                       R3 R1 K4 ["publishAnimationAsync"]
       14 SETTABLEKS                       R3 R2 K4 ["publishAnimationAsync"]
       16 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.RibbonTool.Scale]
        3 GETIMPORT                        R3 K6 [UDim2.new]
        5 CALL                             R3 0 -1
        6 NAMECALL                         R0 R0 K7 ["SelectRibbonTool"]
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_57:
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

PROTO_58:
        0 GETTABLEKS                       R2 R0 K0 ["tools"]
        2 GETTABLEKS                       R2 R2 K1 ["meshGen"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R3 R2 K2 ["activateScaleTool"]
        8 DUPCLOSURE                       R3 K3 [PROTO_57]
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

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_62:
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

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantInstancePickerSelectModel"]
        3 JUMPIFNOT                        R1 ; [+32]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["shouldSelectModel"]
        7 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        9 LOADB                            R1 1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["isA"]
       14 JUMPIFEQKNIL                     R1 ; [+19]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K2 ["isA"]
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 MOVE                             R10 R7
       24 NAMECALL                         R8 R0 K3 ["IsA"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+2]
       28 LOADB                            R1 1
       29 RETURN                           R1 1
       30 FORGLOOP                         R3 2 ; [-8]
       32 LOADB                            R1 0
       33 RETURN                           R1 1
       34 LOADB                            R1 1
       35 RETURN                           R1 1
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K2 ["isA"]
       39 JUMPIFNOT                        R1 ; [+15]
       40 MOVE                             R2 R1
       41 LOADNIL                          R3
       42 LOADNIL                          R4
       43 FORGPREP                         R2
       44 MOVE                             R9 R6
       45 NAMECALL                         R7 R0 K3 ["IsA"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+2]
       49 LOADB                            R7 1
       50 RETURN                           R7 1
       51 FORGLOOP                         R2 2 ; [-8]
       53 LOADB                            R2 0
       54 RETURN                           R2 1
       55 LOADB                            R2 1
       56 RETURN                           R2 1

PROTO_64:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Instance picker component not found. Cannot pick instance."]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["pickInstanceAsync"]
       10 DUPTABLE                         R3 K5 [{"filter"}]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R4 R3 K4 ["filter"]
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["FFlagAssistantInstancePickerSelectModel"]
       22 JUMPIFNOT                        R3 ; [+20]
       23 GETTABLEKS                       R3 R1 K7 ["shouldSelectModel"]
       25 JUMPIFNOTEQKB                    R3 TRUE ; [+17]
       27 LOADNIL                          R3
       28 MOVE                             R4 R2
       29 JUMPIFNOT                        R4 ; [+9]
       30 GETTABLEKS                       R5 R4 K8 ["ClassName"]
       32 JUMPIFNOTEQKS                    R5 K9 ["Model"] ; [+3]
       34 MOVE                             R3 R4
       35 JUMP                             ; [+3]
       36 GETTABLEKS                       R4 R4 K10 ["Parent"]
       38 JUMPBACK                         ; [-10]
       39 JUMPIFNOTEQKNIL                  R3 ; [+2]
       41 RETURN                           R0 0
       42 MOVE                             R2 R3
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K11 ["instances"]
       46 GETTABLEKS                       R3 R3 K12 ["getUniqueId"]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 DUPTABLE                         R4 K16 [{"uniqueId", "name", "className"}]
       51 SETTABLEKS                       R3 R4 K13 ["uniqueId"]
       53 GETTABLEKS                       R5 R2 K17 ["Name"]
       55 SETTABLEKS                       R5 R4 K14 ["name"]
       57 GETTABLEKS                       R5 R2 K8 ["ClassName"]
       59 SETTABLEKS                       R5 R4 K15 ["className"]
       61 RETURN                           R4 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_67:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_60]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_61]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 DUPCLOSURE                       R6 K7 [PROTO_62]
       20 LOADK                            R9 K8 ["InstancePicker_pickInstanceAsync"]
       21 NEWCLOSURE                       R10 P4
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R7 R1 K9 ["OnHostInvokeAsync"]
       27 CALL                             R7 3 2
       28 GETTABLEKS                       R9 R2 K2 ["instances"]
       30 NEWCLOSURE                       R10 P5
       31 CAPTURE                          VAL R7
       32 SETTABLEKS                       R10 R9 K10 ["pickInstanceAsync"]
       34 GETTABLEKS                       R9 R1 K11 ["Destroying"]
       36 NEWCLOSURE                       R11 P6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R8
       39 NAMECALL                         R9 R9 K12 ["Once"]
       41 CALL                             R9 2 0
       42 RETURN                           R0 0

PROTO_68:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_69:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FStringAssistantDisableContextCompactionKey"]
        6 CALL                             R1 1 1
        7 NOT                              R0 R1
        8 RETURN                           R0 1

PROTO_71:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_78:
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

PROTO_79:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_84:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_85:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_86:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_87:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventoryApi"]
        3 GETTABLEKS                       R0 R0 K1 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_90:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_89]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_91:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_96:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_97:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_98:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_99:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GameId"]
        2 GETIMPORT                        R3 K2 [game]
        4 GETTABLEKS                       R3 R3 K0 ["GameId"]
        6 NAMECALL                         R0 R0 K3 ["SetItem"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 1
        1 LOADK                            R3 K1 ["GameId"]
        2 NAMECALL                         R1 R1 K2 ["GetItem"]
        4 CALL                             R1 2 1
        5 ORK                              R0 R1 K0 [0]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_101:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_102:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_105:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_106:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_107:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_108:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_109:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["CapabilitiesHandler"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_110:
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

PROTO_111:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["cleanupServerAndClients"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_112:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["EvalDriver"]
        7 GETTABLEKS                       R1 R1 K4 ["EvalUtils"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["isCleanupServerAndClientsAvailable"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_113:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_114:
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

PROTO_115:
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

PROTO_116:
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

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioStateString"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_68]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_69]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_70]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       24 DUPCLOSURE                       R3 K11 [PROTO_71]
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
       45 DUPCLOSURE                       R7 K18 [PROTO_73]
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R7 R6 K19 ["createWebStreamClient"]
       49 GETTABLEKS                       R6 R2 K17 ["http"]
       51 DUPCLOSURE                       R7 K20 [PROTO_76]
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 SETTABLEKS                       R7 R6 K21 ["requestAsync"]
       56 GETTABLEKS                       R6 R2 K17 ["http"]
       58 DUPCLOSURE                       R7 K22 [PROTO_78]
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R7 R6 K23 ["openUrl"]
       62 GETTABLEKS                       R6 R2 K24 ["selection"]
       64 DUPCLOSURE                       R7 K25 [PROTO_79]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R7 R6 K26 ["get"]
       68 GETTABLEKS                       R6 R2 K24 ["selection"]
       70 DUPCLOSURE                       R7 K27 [PROTO_80]
       71 CAPTURE                          UPVAL U8
       72 SETTABLEKS                       R7 R6 K28 ["set"]
       74 DUPCLOSURE                       R6 K29 [PROTO_81]
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
      158 DUPCLOSURE                       R7 K52 [PROTO_83]
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
      176 GETUPVAL                         R6 3
      177 GETTABLEKS                       R6 R6 K53 ["FFlagAssistantAnimationGenTool"]
      179 JUMPIFNOT                        R6 ; [+16]
      180 GETUPVAL                         R6 14
      181 GETTABLEKS                       R6 R6 K40 ["create"]
      183 CALL                             R6 0 1
      184 GETTABLEKS                       R7 R2 K31 ["tools"]
      186 GETTABLEKS                       R7 R7 K54 ["animationGen"]
      188 GETTABLEKS                       R8 R6 K55 ["generateAnimationAsync"]
      190 SETTABLEKS                       R8 R7 K55 ["generateAnimationAsync"]
      192 GETTABLEKS                       R8 R6 K56 ["publishAnimationAsync"]
      194 SETTABLEKS                       R8 R7 K56 ["publishAnimationAsync"]
      196 GETTABLEKS                       R6 R2 K31 ["tools"]
      198 GETTABLEKS                       R6 R6 K57 ["uploadImage"]
      200 DUPCLOSURE                       R7 K58 [PROTO_86]
      201 CAPTURE                          UPVAL U15
      202 SETTABLEKS                       R7 R6 K59 ["publishAssetAsync"]
      204 DUPCLOSURE                       R7 K60 [PROTO_88]
      205 CAPTURE                          UPVAL U3
      206 CAPTURE                          UPVAL U16
      207 CAPTURE                          UPVAL U17
      208 CAPTURE                          UPVAL U1
      209 CAPTURE                          UPVAL U18
      210 SETTABLEKS                       R7 R6 K61 ["searchAssetAsync"]
      212 GETUPVAL                         R6 3
      213 GETTABLEKS                       R6 R6 K62 ["FFlagAssistantPrivilegedCodeExecution"]
      215 JUMPIFNOT                        R6 ; [+4]
      216 DUPCLOSURE                       R6 K63 [PROTO_90]
      217 CAPTURE                          UPVAL U19
      218 SETTABLEKS                       R6 R2 K64 ["hasInternalPermission"]
      220 DUPCLOSURE                       R6 K65 [PROTO_92]
      221 CAPTURE                          UPVAL U16
      222 CAPTURE                          UPVAL U20
      223 SETTABLEKS                       R6 R2 K66 ["fetchSystemPromptAsync"]
      225 GETUPVAL                         R6 21
      226 MOVE                             R7 R2
      227 MOVE                             R8 R0
      228 CALL                             R6 2 0
      229 GETUPVAL                         R6 22
      230 MOVE                             R7 R2
      231 MOVE                             R8 R0
      232 CALL                             R6 2 0
      233 GETUPVAL                         R6 23
      234 CALL                             R6 0 0
      235 DUPCLOSURE                       R6 K67 [PROTO_93]
      236 CAPTURE                          UPVAL U19
      237 SETTABLEKS                       R6 R2 K68 ["copyToClipboard"]
      239 DUPCLOSURE                       R6 K69 [PROTO_94]
      240 CAPTURE                          UPVAL U19
      241 SETTABLEKS                       R6 R2 K70 ["getClassIcon"]
      243 GETUPVAL                         R6 0
      244 GETTABLEKS                       R6 R6 K0 ["Guest"]
      246 GETTABLEKS                       R6 R6 K71 ["RecordingHandlers"]
      248 GETTABLEKS                       R6 R6 K72 ["getPluginHandlers"]
      250 GETUPVAL                         R7 24
      251 CALL                             R6 1 1
      252 GETTABLEKS                       R7 R6 K73 ["startRecording"]
      254 SETTABLEKS                       R7 R2 K73 ["startRecording"]
      256 GETTABLEKS                       R7 R6 K74 ["endRecording"]
      258 SETTABLEKS                       R7 R2 K74 ["endRecording"]
      260 NEWCLOSURE                       R7 P21
      261 CAPTURE                          VAL R1
      262 SETTABLEKS                       R7 R2 K75 ["getNetworking"]
      264 DUPCLOSURE                       R7 K76 [PROTO_96]
      265 CAPTURE                          UPVAL U9
      266 SETTABLEKS                       R7 R2 K77 ["getScriptSource"]
      268 DUPCLOSURE                       R7 K78 [PROTO_98]
      269 CAPTURE                          UPVAL U19
      270 SETTABLEKS                       R7 R2 K79 ["getUserId"]
      272 GETUPVAL                         R7 3
      273 GETTABLEKS                       R7 R7 K80 ["FFlagAssistantAssetSearchInsertTool"]
      275 JUMPIFNOT                        R7 ; [+32]
      276 NAMECALL                         R7 R1 K81 ["IsHost"]
      278 CALL                             R7 1 1
      279 JUMPIFNOT                        R7 ; [+20]
      280 LOADK                            R9 K82 ["GameId"]
      281 GETIMPORT                        R10 K36 [game]
      283 GETTABLEKS                       R10 R10 K82 ["GameId"]
      285 NAMECALL                         R7 R0 K83 ["SetItem"]
      287 CALL                             R7 3 0
      288 GETIMPORT                        R7 K36 [game]
      290 LOADK                            R9 K82 ["GameId"]
      291 NAMECALL                         R7 R7 K84 ["GetPropertyChangedSignal"]
      293 CALL                             R7 2 1
      294 NEWCLOSURE                       R9 P24
      295 CAPTURE                          VAL R0
      296 NAMECALL                         R7 R7 K85 ["Connect"]
      298 CALL                             R7 2 0
      299 JUMP                             ; [+8]
      300 NAMECALL                         R7 R1 K46 ["IsGuest"]
      302 CALL                             R7 1 1
      303 JUMPIFNOT                        R7 ; [+4]
      304 NEWCLOSURE                       R7 P25
      305 CAPTURE                          VAL R0
      306 SETTABLEKS                       R7 R2 K86 ["getGameId"]
      308 DUPCLOSURE                       R7 K87 [PROTO_102]
      309 CAPTURE                          UPVAL U25
      310 SETTABLEKS                       R7 R2 K88 ["startStopPlayAsync"]
      312 DUPCLOSURE                       R7 K89 [PROTO_104]
      313 CAPTURE                          UPVAL U26
      314 SETTABLEKS                       R7 R2 K90 ["subscribeOutput"]
      316 DUPCLOSURE                       R7 K91 [PROTO_105]
      317 CAPTURE                          UPVAL U27
      318 SETTABLEKS                       R7 R2 K92 ["subscribeGameLoaded"]
      320 DUPCLOSURE                       R7 K93 [PROTO_106]
      321 CAPTURE                          UPVAL U28
      322 SETTABLEKS                       R7 R2 K94 ["subscribeGameStopped"]
      324 DUPCLOSURE                       R7 K95 [PROTO_107]
      325 CAPTURE                          UPVAL U29
      326 SETTABLEKS                       R7 R2 K96 ["getStudioPlayState"]
      328 GETUPVAL                         R7 30
      329 MOVE                             R8 R0
      330 MOVE                             R9 R1
      331 MOVE                             R10 R2
      332 CALL                             R7 3 0
      333 GETIMPORT                        R7 K14 [pcall]
      335 NEWCLOSURE                       R8 P31
      336 CAPTURE                          VAL R0
      337 CALL                             R7 1 2
      338 JUMPIFNOT                        R7 ; [+3]
      339 JUMPIFNOT                        R8 ; [+2]
      340 SETTABLEKS                       R8 R2 K97 ["assetAccessController"]
      342 GETUPVAL                         R9 3
      343 GETTABLEKS                       R9 R9 K98 ["FFlagAssistantInsertAssetSandboxScripts"]
      345 JUMPIFNOT                        R9 ; [+8]
      346 GETIMPORT                        R9 K14 [pcall]
      348 NEWCLOSURE                       R10 P32
      349 CAPTURE                          VAL R0
      350 CALL                             R9 1 2
      351 JUMPIFNOT                        R10 ; [+2]
      352 SETTABLEKS                       R10 R2 K99 ["capabilitiesHandler"]
      354 DUPCLOSURE                       R9 K100 [PROTO_110]
      355 CAPTURE                          UPVAL U31
      356 SETTABLEKS                       R9 R2 K101 ["startMultiPlayerTest"]
      358 DUPCLOSURE                       R9 K102 [PROTO_111]
      359 CAPTURE                          UPVAL U31
      360 SETTABLEKS                       R9 R2 K103 ["stopMultiPlayerTest"]
      362 DUPCLOSURE                       R9 K104 [PROTO_112]
      363 CAPTURE                          UPVAL U31
      364 SETTABLEKS                       R9 R2 K105 ["isInMultiPlayerTest"]
      366 DUPCLOSURE                       R9 K106 [PROTO_114]
      367 CAPTURE                          UPVAL U31
      368 SETTABLEKS                       R9 R2 K107 ["subscribeStopMultiPlayerTestStateChanged"]
      370 DUPCLOSURE                       R9 K108 [PROTO_115]
      371 CAPTURE                          UPVAL U31
      372 SETTABLEKS                       R9 R2 K109 ["createMultiPlayersServer"]
      374 DUPCLOSURE                       R9 K110 [PROTO_116]
      375 CAPTURE                          UPVAL U31
      376 SETTABLEKS                       R9 R2 K111 ["createMultiPlayersClient"]
      378 DUPCLOSURE                       R9 K112 [PROTO_117]
      379 CAPTURE                          UPVAL U2
      380 SETTABLEKS                       R9 R2 K113 ["getExperimentFeatureEnabled"]
      382 DUPCLOSURE                       R9 K114 [PROTO_118]
      383 CAPTURE                          UPVAL U2
      384 SETTABLEKS                       R9 R2 K115 ["onceExperimentFeatureEnabled"]
      386 DUPCLOSURE                       R9 K116 [PROTO_119]
      387 CAPTURE                          UPVAL U32
      388 SETTABLEKS                       R9 R2 K117 ["getStudioState"]
      390 RETURN                           R2 1

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
       41 LOADK                            R9 K13 ["HttpService"]
       42 NAMECALL                         R7 R7 K8 ["GetService"]
       44 CALL                             R7 2 1
       45 GETIMPORT                        R8 K7 [game]
       47 LOADK                            R10 K14 ["LogService"]
       48 NAMECALL                         R8 R8 K8 ["GetService"]
       50 CALL                             R8 2 1
       51 GETIMPORT                        R9 K7 [game]
       53 LOADK                            R11 K15 ["PlacesService"]
       54 NAMECALL                         R9 R9 K8 ["GetService"]
       56 CALL                             R9 2 1
       57 GETIMPORT                        R10 K7 [game]
       59 LOADK                            R12 K16 ["PublishService"]
       60 NAMECALL                         R10 R10 K8 ["GetService"]
       62 CALL                             R10 2 1
       63 GETIMPORT                        R11 K7 [game]
       65 LOADK                            R13 K17 ["Selection"]
       66 NAMECALL                         R11 R11 K8 ["GetService"]
       68 CALL                             R11 2 1
       69 GETIMPORT                        R12 K7 [game]
       71 LOADK                            R14 K18 ["StudioService"]
       72 NAMECALL                         R12 R12 K8 ["GetService"]
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K7 [game]
       77 LOADK                            R15 K19 ["UniqueIdLookupService"]
       78 NAMECALL                         R13 R13 K8 ["GetService"]
       80 CALL                             R13 2 1
       81 GETIMPORT                        R14 K21 [require]
       83 GETTABLEKS                       R15 R0 K22 ["Packages"]
       85 GETTABLEKS                       R15 R15 K23 ["AssistantUI"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K21 [require]
       90 GETTABLEKS                       R16 R0 K24 ["Src"]
       92 GETTABLEKS                       R16 R16 K25 ["Generated"]
       94 GETTABLEKS                       R16 R16 K26 ["OpenAPI"]
       96 GETTABLEKS                       R16 R16 K27 ["CreatorInventoryApi"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K21 [require]
      101 GETTABLEKS                       R17 R0 K24 ["Src"]
      103 GETTABLEKS                       R17 R17 K25 ["Generated"]
      105 GETTABLEKS                       R17 R17 K26 ["OpenAPI"]
      107 GETTABLEKS                       R17 R17 K28 ["CubeGenerationGateway"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K21 [require]
      112 GETTABLEKS                       R18 R0 K22 ["Packages"]
      114 GETTABLEKS                       R18 R18 K29 ["DMNetworking"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K21 [require]
      119 GETTABLEKS                       R19 R0 K24 ["Src"]
      121 GETTABLEKS                       R19 R19 K30 ["Util"]
      123 GETTABLEKS                       R19 R19 K31 ["ExperimentFeature"]
      125 CALL                             R18 1 1
      126 GETIMPORT                        R19 K21 [require]
      128 GETTABLEKS                       R20 R0 K24 ["Src"]
      130 GETTABLEKS                       R20 R20 K32 ["Flags"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K21 [require]
      135 GETTABLEKS                       R21 R0 K22 ["Packages"]
      137 GETTABLEKS                       R21 R21 K33 ["Framework"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K21 [require]
      142 GETTABLEKS                       R22 R0 K24 ["Src"]
      144 GETTABLEKS                       R22 R22 K30 ["Util"]
      146 GETTABLEKS                       R22 R22 K34 ["GameLoadedNotifier"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K21 [require]
      151 GETTABLEKS                       R23 R0 K24 ["Src"]
      153 GETTABLEKS                       R23 R23 K30 ["Util"]
      155 GETTABLEKS                       R23 R23 K35 ["GameStoppedNotifier"]
      157 CALL                             R22 1 1
      158 GETIMPORT                        R23 K21 [require]
      160 GETTABLEKS                       R24 R0 K22 ["Packages"]
      162 GETTABLEKS                       R24 R24 K36 ["HttpWrapper"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K21 [require]
      167 GETTABLEKS                       R25 R0 K24 ["Src"]
      169 GETTABLEKS                       R25 R25 K25 ["Generated"]
      171 GETTABLEKS                       R25 R25 K26 ["OpenAPI"]
      173 GETTABLEKS                       R25 R25 K37 ["McpAssistantApi"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K21 [require]
      178 GETTABLEKS                       R26 R0 K22 ["Packages"]
      180 GETTABLEKS                       R26 R26 K38 ["ModelContextProtocol"]
      182 CALL                             R25 1 1
      183 GETIMPORT                        R26 K21 [require]
      185 GETTABLEKS                       R27 R0 K24 ["Src"]
      187 GETTABLEKS                       R27 R27 K30 ["Util"]
      189 GETTABLEKS                       R27 R27 K39 ["NotificationManagerStore"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K21 [require]
      194 GETTABLEKS                       R28 R0 K22 ["Packages"]
      196 GETTABLEKS                       R28 R28 K40 ["Promise"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K21 [require]
      201 GETTABLEKS                       R29 R0 K24 ["Src"]
      203 GETTABLEKS                       R29 R29 K30 ["Util"]
      205 GETTABLEKS                       R29 R29 K41 ["StudioAnimationGen"]
      207 CALL                             R28 1 1
      208 GETIMPORT                        R29 K21 [require]
      210 GETTABLEKS                       R30 R0 K24 ["Src"]
      212 GETTABLEKS                       R30 R30 K30 ["Util"]
      214 GETTABLEKS                       R30 R30 K42 ["StudioEndpointUtil"]
      216 CALL                             R29 1 1
      217 GETIMPORT                        R30 K21 [require]
      219 GETTABLEKS                       R31 R0 K24 ["Src"]
      221 GETTABLEKS                       R31 R31 K43 ["Host"]
      223 GETTABLEKS                       R31 R31 K44 ["Resources"]
      225 GETTABLEKS                       R31 R31 K45 ["StudioEventLogger"]
      227 CALL                             R30 1 1
      228 GETIMPORT                        R31 K21 [require]
      230 GETTABLEKS                       R32 R0 K24 ["Src"]
      232 GETTABLEKS                       R32 R32 K46 ["Components"]
      234 GETTABLEKS                       R32 R32 K47 ["Contexts"]
      236 GETTABLEKS                       R32 R32 K48 ["StudioLLM"]
      238 GETTABLEKS                       R32 R32 K49 ["StudioLLMSystemReminder"]
      240 CALL                             R31 1 1
      241 GETIMPORT                        R32 K21 [require]
      243 GETTABLEKS                       R33 R0 K24 ["Src"]
      245 GETTABLEKS                       R33 R33 K30 ["Util"]
      247 GETTABLEKS                       R33 R33 K50 ["StudioMaterialGenerator"]
      249 CALL                             R32 1 1
      250 GETIMPORT                        R33 K21 [require]
      252 GETTABLEKS                       R34 R0 K24 ["Src"]
      254 GETTABLEKS                       R34 R34 K30 ["Util"]
      256 GETTABLEKS                       R34 R34 K51 ["StudioNetworking"]
      258 CALL                             R33 1 1
      259 GETIMPORT                        R34 K21 [require]
      261 GETTABLEKS                       R35 R0 K24 ["Src"]
      263 GETTABLEKS                       R35 R35 K30 ["Util"]
      265 GETTABLEKS                       R35 R35 K52 ["StudioState"]
      267 CALL                             R34 1 1
      268 GETIMPORT                        R35 K21 [require]
      270 GETTABLEKS                       R36 R0 K24 ["Src"]
      272 GETTABLEKS                       R36 R36 K30 ["Util"]
      274 GETTABLEKS                       R36 R36 K53 ["createStudioInstancePicker"]
      276 CALL                             R35 1 1
      277 GETTABLEKS                       R36 R20 K54 ["Http"]
      279 GETTABLEKS                       R36 R36 K55 ["Networking"]
      281 GETTABLEKS                       R37 R36 K56 ["new"]
      283 DUPTABLE                         R38 K60 [{["isInternal"] = True, ["loggingLevel"]}]
      284 GETTABLEKS                       R40 R19 K61 ["FFlagDebugLogAssistantUI"]
      286 JUMPIFNOT                        R40 ; [+2]
      287 LOADN                            R39 4
      288 JUMP                             ; [+1]
      289 LOADN                            R39 0
      290 SETTABLEKS                       R39 R38 K59 ["loggingLevel"]
      292 CALL                             R37 1 1
      293 GETTABLEKS                       R38 R20 K62 ["Url"]
      295 GETTABLEKS                       R39 R38 K56 ["new"]
      297 LOADNIL                          R40
      298 CALL                             R39 1 1
      299 DUPCLOSURE                       R40 K63 [PROTO_1]
      300 CAPTURE                          VAL R0
      301 CAPTURE                          VAL R23
      302 CAPTURE                          VAL R25
      303 DUPCLOSURE                       R41 K64 [PROTO_43]
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R39
      306 CAPTURE                          VAL R12
      307 CAPTURE                          VAL R10
      308 DUPCLOSURE                       R42 K65 [PROTO_53]
      309 CAPTURE                          VAL R4
      310 CAPTURE                          VAL R19
      311 CAPTURE                          VAL R14
      312 DUPCLOSURE                       R43 K66 [PROTO_54]
      313 CAPTURE                          VAL R28
      314 DUPCLOSURE                       R44 K67 [PROTO_58]
      315 CAPTURE                          VAL R12
      316 CAPTURE                          VAL R29
      317 CAPTURE                          VAL R16
      318 CAPTURE                          VAL R14
      319 DUPCLOSURE                       R45 K68 [PROTO_67]
      320 CAPTURE                          VAL R35
      321 CAPTURE                          VAL R19
      322 CAPTURE                          VAL R13
      323 DUPCLOSURE                       R46 K69 [PROTO_120]
      324 CAPTURE                          VAL R14
      325 CAPTURE                          VAL R39
      326 CAPTURE                          VAL R18
      327 CAPTURE                          VAL R19
      328 CAPTURE                          VAL R30
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R27
      331 CAPTURE                          VAL R5
      332 CAPTURE                          VAL R11
      333 CAPTURE                          VAL R4
      334 CAPTURE                          VAL R32
      335 CAPTURE                          VAL R26
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R44
      338 CAPTURE                          VAL R28
      339 CAPTURE                          VAL R10
      340 CAPTURE                          VAL R29
      341 CAPTURE                          VAL R15
      342 CAPTURE                          VAL R37
      343 CAPTURE                          VAL R12
      344 CAPTURE                          VAL R24
      345 CAPTURE                          VAL R41
      346 CAPTURE                          VAL R42
      347 CAPTURE                          VAL R40
      348 CAPTURE                          VAL R6
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R8
      351 CAPTURE                          VAL R21
      352 CAPTURE                          VAL R22
      353 CAPTURE                          VAL R34
      354 CAPTURE                          VAL R45
      355 CAPTURE                          VAL R0
      356 CAPTURE                          VAL R31
      357 RETURN                           R46 1
