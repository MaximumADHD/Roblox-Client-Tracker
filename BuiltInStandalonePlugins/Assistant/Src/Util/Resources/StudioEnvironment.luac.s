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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["Info"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["PrintToStudioLogAsync"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1
       10 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListUserSkillsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReadUserSkillsFileAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["WriteUserSkillsFileAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["DeleteUserSkillsFileAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenUserSkillsFolderAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_41:
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
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R6 R0 K34 ["printToStudioLogAsync"]
      144 GETUPVAL                         R6 1
      145 CALL                             R6 0 1
      146 JUMPIFNOT                        R6 ; [+44]
      147 GETTABLEKS                       R6 R0 K35 ["userSkills"]
      149 NEWCLOSURE                       R7 P30
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R7 R6 K36 ["listAsync"]
      153 GETTABLEKS                       R6 R0 K35 ["userSkills"]
      155 NEWCLOSURE                       R7 P31
      156 CAPTURE                          VAL R3
      157 SETTABLEKS                       R7 R6 K30 ["readFileAsync"]
      159 GETUPVAL                         R6 2
      160 GETTABLEKS                       R6 R6 K37 ["Utils"]
      162 GETTABLEKS                       R6 R6 K38 ["DataModelType"]
      164 GETTABLEKS                       R7 R6 K39 ["getDataModelType"]
      166 CALL                             R7 0 1
      167 GETTABLEKS                       R8 R6 K40 ["Types"]
      169 GETTABLEKS                       R8 R8 K41 ["Standalone"]
      171 JUMPIFNOTEQ                      R7 R8 ; [+19]
      173 GETTABLEKS                       R7 R0 K35 ["userSkills"]
      175 NEWCLOSURE                       R8 P32
      176 CAPTURE                          VAL R3
      177 SETTABLEKS                       R8 R7 K42 ["writeFileAsync"]
      179 GETTABLEKS                       R7 R0 K35 ["userSkills"]
      181 NEWCLOSURE                       R8 P33
      182 CAPTURE                          VAL R3
      183 SETTABLEKS                       R8 R7 K43 ["deleteFileAsync"]
      185 GETTABLEKS                       R7 R0 K35 ["userSkills"]
      187 NEWCLOSURE                       R8 P34
      188 CAPTURE                          VAL R3
      189 SETTABLEKS                       R8 R7 K44 ["openFolderAsync"]
      191 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_45:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_50:
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

PROTO_51:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_48]
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

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_54:
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

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["meshGen"]
        4 DUPCLOSURE                       R2 K2 [PROTO_54]
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

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_59:
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

PROTO_60:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+32]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["shouldSelectModel"]
        6 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["isA"]
       13 JUMPIFEQKNIL                     R1 ; [+19]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K1 ["isA"]
       18 MOVE                             R3 R2
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 MOVE                             R10 R7
       23 NAMECALL                         R8 R0 K2 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIFNOT                        R8 ; [+2]
       27 LOADB                            R1 1
       28 RETURN                           R1 1
       29 FORGLOOP                         R3 2 ; [-8]
       31 LOADB                            R1 0
       32 RETURN                           R1 1
       33 LOADB                            R1 1
       34 RETURN                           R1 1
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K1 ["isA"]
       38 JUMPIFNOT                        R1 ; [+15]
       39 MOVE                             R2 R1
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 MOVE                             R9 R6
       44 NAMECALL                         R7 R0 K2 ["IsA"]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+2]
       48 LOADB                            R7 1
       49 RETURN                           R7 1
       50 FORGLOOP                         R2 2 ; [-8]
       52 LOADB                            R2 0
       53 RETURN                           R2 1
       54 LOADB                            R2 1
       55 RETURN                           R2 1

PROTO_61:
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
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+20]
       22 GETTABLEKS                       R3 R1 K6 ["shouldSelectModel"]
       24 JUMPIFNOTEQKB                    R3 TRUE ; [+17]
       26 LOADNIL                          R3
       27 MOVE                             R4 R2
       28 JUMPIFNOT                        R4 ; [+9]
       29 GETTABLEKS                       R5 R4 K7 ["ClassName"]
       31 JUMPIFNOTEQKS                    R5 K8 ["Model"] ; [+3]
       33 MOVE                             R3 R4
       34 JUMP                             ; [+3]
       35 GETTABLEKS                       R4 R4 K9 ["Parent"]
       37 JUMPBACK                         ; [-10]
       38 JUMPIFNOTEQKNIL                  R3 ; [+2]
       40 RETURN                           R0 0
       41 MOVE                             R2 R3
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K10 ["instances"]
       45 GETTABLEKS                       R3 R3 K11 ["getUniqueId"]
       47 MOVE                             R4 R2
       48 CALL                             R3 1 1
       49 DUPTABLE                         R4 K15 [{"uniqueId", "name", "className"}]
       50 SETTABLEKS                       R3 R4 K12 ["uniqueId"]
       52 GETTABLEKS                       R5 R2 K16 ["Name"]
       54 SETTABLEKS                       R5 R4 K13 ["name"]
       56 GETTABLEKS                       R5 R2 K7 ["ClassName"]
       58 SETTABLEKS                       R5 R4 K14 ["className"]
       60 RETURN                           R4 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_64:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_57]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_58]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 DUPCLOSURE                       R6 K7 [PROTO_59]
       20 LOADK                            R9 K8 ["InstancePicker_pickInstanceAsync"]
       21 NEWCLOSURE                       R10 P4
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U3
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

PROTO_65:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_66:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 NOT                              R0 R1
        7 RETURN                           R0 1

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_69:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_71:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_83:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_85:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventoryApi"]
        3 GETTABLEKS                       R0 R0 K1 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_86:
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

PROTO_87:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_88:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_87]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_90:
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

PROTO_91:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_94:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_95:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_96:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_97:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_101:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_102:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_103:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_105:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onceExperimentFeatureEnabled"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_106:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_65]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_66]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 DUPCLOSURE                       R3 K9 [PROTO_67]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       24 GETTABLEKS                       R3 R2 K11 ["setMultiChatExperimentEnabledFn"]
       26 DUPCLOSURE                       R4 K12 [PROTO_68]
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U4
       29 CALL                             R3 1 0
       30 DUPCLOSURE                       R3 K13 [PROTO_69]
       31 SETTABLEKS                       R3 R2 K14 ["getEngineFeature"]
       33 GETIMPORT                        R3 K16 [pcall]
       35 NEWCLOSURE                       R4 P5
       36 CAPTURE                          VAL R0
       37 CALL                             R3 1 2
       38 JUMPIFNOT                        R3 ; [+2]
       39 MOVE                             R5 R4
       40 JUMPIF                           R5 ; [+1]
       41 LOADNIL                          R5
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K17 ["createStudioEventLogger"]
       45 MOVE                             R7 R5
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R2 K18 ["EventLogger"]
       49 GETTABLEKS                       R6 R2 K19 ["http"]
       51 DUPCLOSURE                       R7 K20 [PROTO_71]
       52 CAPTURE                          UPVAL U6
       53 SETTABLEKS                       R7 R6 K21 ["createWebStreamClient"]
       55 GETTABLEKS                       R6 R2 K19 ["http"]
       57 DUPCLOSURE                       R7 K22 [PROTO_74]
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 SETTABLEKS                       R7 R6 K23 ["requestAsync"]
       62 GETTABLEKS                       R6 R2 K19 ["http"]
       64 DUPCLOSURE                       R7 K24 [PROTO_76]
       65 CAPTURE                          UPVAL U8
       66 SETTABLEKS                       R7 R6 K25 ["openUrl"]
       68 GETTABLEKS                       R6 R2 K26 ["selection"]
       70 DUPCLOSURE                       R7 K27 [PROTO_77]
       71 CAPTURE                          UPVAL U9
       72 SETTABLEKS                       R7 R6 K28 ["get"]
       74 GETTABLEKS                       R6 R2 K26 ["selection"]
       76 DUPCLOSURE                       R7 K29 [PROTO_78]
       77 CAPTURE                          UPVAL U9
       78 SETTABLEKS                       R7 R6 K30 ["set"]
       80 DUPCLOSURE                       R6 K31 [PROTO_79]
       81 CAPTURE                          UPVAL U10
       82 SETTABLEKS                       R6 R2 K32 ["openScriptAsync"]
       84 GETTABLEKS                       R6 R2 K33 ["tools"]
       86 GETTABLEKS                       R6 R6 K34 ["marketplaceInsertion"]
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K0 ["Guest"]
       91 GETTABLEKS                       R7 R7 K35 ["LoadAssetHandlers"]
       93 GETTABLEKS                       R7 R7 K36 ["getRobloxScriptHandler"]
       95 GETIMPORT                        R8 K38 [game]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R6 K39 ["loadAssetAsync"]
      100 GETUPVAL                         R6 11
      101 CALL                             R6 0 1
      102 JUMPIFNOT                        R6 ; [+52]
      103 GETTABLEKS                       R6 R2 K33 ["tools"]
      105 GETTABLEKS                       R6 R6 K40 ["materialGen"]
      107 GETUPVAL                         R7 12
      108 GETTABLEKS                       R7 R7 K41 ["create"]
      110 DUPTABLE                         R8 K45 [{"NotificationManager", "Networking", "Telemetry"}]
      111 GETUPVAL                         R10 13
      112 CALL                             R10 0 1
      113 JUMPIFNOT                        R10 ; [+9]
      114 NAMECALL                         R10 R1 K46 ["IsGuest"]
      116 CALL                             R10 1 1
      117 JUMPIFNOT                        R10 ; [+5]
      118 GETUPVAL                         R9 14
      119 GETTABLEKS                       R9 R9 K28 ["get"]
      121 CALL                             R9 0 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R9
      124 SETTABLEKS                       R9 R8 K42 ["NotificationManager"]
      126 SETTABLEKS                       R1 R8 K43 ["Networking"]
      128 GETUPVAL                         R9 5
      129 GETTABLEKS                       R9 R9 K47 ["makeStudioTelemetryEvents"]
      131 MOVE                             R10 R5
      132 CALL                             R9 1 1
      133 SETTABLEKS                       R9 R8 K44 ["Telemetry"]
      135 CALL                             R7 1 1
      136 GETTABLEKS                       R8 R7 K48 ["generateMaterialVariantsAsync"]
      138 SETTABLEKS                       R8 R6 K48 ["generateMaterialVariantsAsync"]
      140 GETTABLEKS                       R8 R7 K49 ["uploadMaterialsAsync"]
      142 SETTABLEKS                       R8 R6 K49 ["uploadMaterialsAsync"]
      144 GETUPVAL                         R8 13
      145 CALL                             R8 0 1
      146 JUMPIFNOT                        R8 ; [+28]
      147 GETTABLEKS                       R8 R1 K50 ["Destroying"]
      149 NEWCLOSURE                       R10 P12
      150 CAPTURE                          VAL R7
      151 NAMECALL                         R8 R8 K51 ["Once"]
      153 CALL                             R8 2 0
      154 JUMP                             ; [+20]
      155 GETTABLEKS                       R6 R2 K33 ["tools"]
      157 GETTABLEKS                       R6 R6 K40 ["materialGen"]
      159 GETUPVAL                         R7 15
      160 JUMPIFNOT                        R7 ; [+4]
      161 DUPCLOSURE                       R7 K52 [PROTO_81]
      162 CAPTURE                          UPVAL U15
      163 SETTABLEKS                       R7 R6 K48 ["generateMaterialVariantsAsync"]
      165 GETIMPORT                        R7 K16 [pcall]
      167 NEWCLOSURE                       R8 P14
      168 CAPTURE                          VAL R0
      169 CALL                             R7 1 2
      170 JUMPIFNOT                        R7 ; [+4]
      171 NEWCLOSURE                       R9 P15
      172 CAPTURE                          VAL R8
      173 SETTABLEKS                       R9 R6 K49 ["uploadMaterialsAsync"]
      175 GETTABLEKS                       R6 R2 K33 ["tools"]
      177 GETTABLEKS                       R6 R6 K53 ["meshGen"]
      179 DUPCLOSURE                       R7 K54 [PROTO_54]
      180 CAPTURE                          UPVAL U16
      181 CAPTURE                          UPVAL U17
      182 CAPTURE                          UPVAL U18
      183 SETTABLEKS                       R7 R6 K55 ["publishModelAsync"]
      185 GETUPVAL                         R7 0
      186 GETTABLEKS                       R7 R7 K0 ["Guest"]
      188 GETTABLEKS                       R7 R7 K35 ["LoadAssetHandlers"]
      190 GETTABLEKS                       R7 R7 K36 ["getRobloxScriptHandler"]
      192 GETIMPORT                        R8 K38 [game]
      194 CALL                             R7 1 1
      195 SETTABLEKS                       R7 R6 K39 ["loadAssetAsync"]
      197 GETUPVAL                         R6 19
      198 CALL                             R6 0 1
      199 JUMPIFNOT                        R6 ; [+16]
      200 GETUPVAL                         R6 20
      201 GETTABLEKS                       R6 R6 K41 ["create"]
      203 CALL                             R6 0 1
      204 GETTABLEKS                       R7 R2 K33 ["tools"]
      206 GETTABLEKS                       R7 R7 K56 ["animationGen"]
      208 GETTABLEKS                       R8 R6 K57 ["generateAnimationAsync"]
      210 SETTABLEKS                       R8 R7 K57 ["generateAnimationAsync"]
      212 GETTABLEKS                       R8 R6 K58 ["publishAnimationAsync"]
      214 SETTABLEKS                       R8 R7 K58 ["publishAnimationAsync"]
      216 GETTABLEKS                       R6 R2 K33 ["tools"]
      218 GETTABLEKS                       R6 R6 K59 ["uploadImage"]
      220 DUPCLOSURE                       R7 K60 [PROTO_84]
      221 CAPTURE                          UPVAL U21
      222 SETTABLEKS                       R7 R6 K61 ["publishAssetAsync"]
      224 DUPCLOSURE                       R7 K62 [PROTO_86]
      225 CAPTURE                          UPVAL U22
      226 CAPTURE                          UPVAL U17
      227 CAPTURE                          UPVAL U23
      228 CAPTURE                          UPVAL U1
      229 CAPTURE                          UPVAL U24
      230 SETTABLEKS                       R7 R6 K63 ["searchAssetAsync"]
      232 GETUPVAL                         R6 25
      233 CALL                             R6 0 1
      234 JUMPIFNOT                        R6 ; [+4]
      235 DUPCLOSURE                       R6 K64 [PROTO_88]
      236 CAPTURE                          UPVAL U16
      237 SETTABLEKS                       R6 R2 K65 ["hasInternalPermission"]
      239 DUPCLOSURE                       R6 K66 [PROTO_90]
      240 CAPTURE                          UPVAL U17
      241 CAPTURE                          UPVAL U26
      242 SETTABLEKS                       R6 R2 K67 ["fetchSystemPromptAsync"]
      244 GETUPVAL                         R6 27
      245 MOVE                             R7 R2
      246 MOVE                             R8 R0
      247 CALL                             R6 2 0
      248 GETUPVAL                         R6 28
      249 MOVE                             R7 R2
      250 MOVE                             R8 R0
      251 CALL                             R6 2 0
      252 GETUPVAL                         R6 29
      253 CALL                             R6 0 0
      254 DUPCLOSURE                       R6 K68 [PROTO_91]
      255 CAPTURE                          UPVAL U16
      256 SETTABLEKS                       R6 R2 K69 ["copyToClipboard"]
      258 DUPCLOSURE                       R6 K70 [PROTO_92]
      259 CAPTURE                          UPVAL U16
      260 SETTABLEKS                       R6 R2 K71 ["getClassIcon"]
      262 GETUPVAL                         R6 0
      263 GETTABLEKS                       R6 R6 K0 ["Guest"]
      265 GETTABLEKS                       R6 R6 K72 ["RecordingHandlers"]
      267 GETTABLEKS                       R6 R6 K73 ["getPluginHandlers"]
      269 GETUPVAL                         R7 30
      270 CALL                             R6 1 1
      271 GETTABLEKS                       R7 R6 K74 ["startRecording"]
      273 SETTABLEKS                       R7 R2 K74 ["startRecording"]
      275 GETTABLEKS                       R7 R6 K75 ["endRecording"]
      277 SETTABLEKS                       R7 R2 K75 ["endRecording"]
      279 NEWCLOSURE                       R7 P23
      280 CAPTURE                          VAL R1
      281 SETTABLEKS                       R7 R2 K76 ["getNetworking"]
      283 DUPCLOSURE                       R7 K77 [PROTO_94]
      284 CAPTURE                          UPVAL U10
      285 SETTABLEKS                       R7 R2 K78 ["getScriptSource"]
      287 DUPCLOSURE                       R7 K79 [PROTO_96]
      288 CAPTURE                          UPVAL U16
      289 SETTABLEKS                       R7 R2 K80 ["getUserId"]
      291 DUPCLOSURE                       R7 K81 [PROTO_97]
      292 CAPTURE                          UPVAL U31
      293 SETTABLEKS                       R7 R2 K82 ["startStopPlayAsync"]
      295 DUPCLOSURE                       R7 K83 [PROTO_99]
      296 CAPTURE                          UPVAL U32
      297 SETTABLEKS                       R7 R2 K84 ["subscribeOutput"]
      299 DUPCLOSURE                       R7 K85 [PROTO_100]
      300 CAPTURE                          UPVAL U33
      301 SETTABLEKS                       R7 R2 K86 ["subscribeGameLoaded"]
      303 DUPCLOSURE                       R7 K87 [PROTO_101]
      304 CAPTURE                          UPVAL U34
      305 SETTABLEKS                       R7 R2 K88 ["subscribeGameStopped"]
      307 DUPCLOSURE                       R7 K89 [PROTO_102]
      308 CAPTURE                          UPVAL U35
      309 SETTABLEKS                       R7 R2 K90 ["getStudioPlayState"]
      311 GETUPVAL                         R7 36
      312 MOVE                             R8 R0
      313 MOVE                             R9 R1
      314 MOVE                             R10 R2
      315 CALL                             R7 3 0
      316 GETIMPORT                        R7 K16 [pcall]
      318 NEWCLOSURE                       R8 P31
      319 CAPTURE                          VAL R0
      320 CALL                             R7 1 2
      321 JUMPIFNOT                        R7 ; [+3]
      322 JUMPIFNOT                        R8 ; [+2]
      323 SETTABLEKS                       R8 R2 K91 ["assetAccessController"]
      325 DUPCLOSURE                       R9 K92 [PROTO_104]
      326 CAPTURE                          UPVAL U2
      327 SETTABLEKS                       R9 R2 K93 ["getExperimentFeatureEnabled"]
      329 DUPCLOSURE                       R9 K94 [PROTO_105]
      330 CAPTURE                          UPVAL U2
      331 SETTABLEKS                       R9 R2 K95 ["onceExperimentFeatureEnabled"]
      333 RETURN                           R2 1

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
       90 GETTABLEKS                       R16 R0 K24 ["Generated"]
       92 GETTABLEKS                       R16 R16 K25 ["OpenAPI"]
       94 GETTABLEKS                       R16 R16 K26 ["CreatorInventoryApi"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K21 [require]
       99 GETTABLEKS                       R17 R0 K24 ["Generated"]
      101 GETTABLEKS                       R17 R17 K25 ["OpenAPI"]
      103 GETTABLEKS                       R17 R17 K27 ["CubeGenerationGateway"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K21 [require]
      108 GETTABLEKS                       R18 R0 K22 ["Packages"]
      110 GETTABLEKS                       R18 R18 K28 ["DMNetworking"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K21 [require]
      115 GETTABLEKS                       R19 R0 K22 ["Packages"]
      117 GETTABLEKS                       R19 R19 K29 ["Framework"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K21 [require]
      122 GETTABLEKS                       R20 R0 K30 ["Src"]
      124 GETTABLEKS                       R20 R20 K31 ["Util"]
      126 GETTABLEKS                       R20 R20 K32 ["GameLoadedNotifier"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K21 [require]
      131 GETTABLEKS                       R21 R0 K30 ["Src"]
      133 GETTABLEKS                       R21 R21 K31 ["Util"]
      135 GETTABLEKS                       R21 R21 K33 ["GameStoppedNotifier"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K21 [require]
      140 GETTABLEKS                       R22 R0 K22 ["Packages"]
      142 GETTABLEKS                       R22 R22 K34 ["HttpWrapper"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K21 [require]
      147 GETTABLEKS                       R23 R0 K22 ["Packages"]
      149 GETTABLEKS                       R23 R23 K35 ["ModelContextProtocol"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K21 [require]
      154 GETTABLEKS                       R24 R0 K30 ["Src"]
      156 GETTABLEKS                       R24 R24 K31 ["Util"]
      158 GETTABLEKS                       R24 R24 K36 ["NotificationManagerStore"]
      160 CALL                             R23 1 1
      161 GETIMPORT                        R24 K21 [require]
      163 GETTABLEKS                       R25 R0 K22 ["Packages"]
      165 GETTABLEKS                       R25 R25 K37 ["Promise"]
      167 CALL                             R24 1 1
      168 GETIMPORT                        R25 K21 [require]
      170 GETTABLEKS                       R26 R0 K30 ["Src"]
      172 GETTABLEKS                       R26 R26 K31 ["Util"]
      174 GETTABLEKS                       R26 R26 K38 ["StudioAnimationGen"]
      176 CALL                             R25 1 1
      177 GETIMPORT                        R26 K21 [require]
      179 GETTABLEKS                       R27 R0 K30 ["Src"]
      181 GETTABLEKS                       R27 R27 K31 ["Util"]
      183 GETTABLEKS                       R27 R27 K39 ["StudioEndpointUtil"]
      185 CALL                             R26 1 1
      186 GETIMPORT                        R27 K21 [require]
      188 GETTABLEKS                       R28 R0 K30 ["Src"]
      190 GETTABLEKS                       R28 R28 K40 ["Host"]
      192 GETTABLEKS                       R28 R28 K41 ["Resources"]
      194 GETTABLEKS                       R28 R28 K42 ["StudioEventLogger"]
      196 CALL                             R27 1 1
      197 GETIMPORT                        R28 K21 [require]
      199 GETTABLEKS                       R29 R0 K30 ["Src"]
      201 GETTABLEKS                       R29 R29 K31 ["Util"]
      203 GETTABLEKS                       R29 R29 K43 ["StudioMaterialGenerator"]
      205 CALL                             R28 1 1
      206 GETIMPORT                        R29 K21 [require]
      208 GETTABLEKS                       R30 R0 K30 ["Src"]
      210 GETTABLEKS                       R30 R30 K31 ["Util"]
      212 GETTABLEKS                       R30 R30 K44 ["StudioNetworking"]
      214 CALL                             R29 1 1
      215 GETIMPORT                        R30 K21 [require]
      217 GETTABLEKS                       R31 R0 K30 ["Src"]
      219 GETTABLEKS                       R31 R31 K31 ["Util"]
      221 GETTABLEKS                       R31 R31 K45 ["StudioState"]
      223 CALL                             R30 1 1
      224 GETIMPORT                        R31 K21 [require]
      226 GETTABLEKS                       R32 R0 K30 ["Src"]
      228 GETTABLEKS                       R32 R32 K31 ["Util"]
      230 GETTABLEKS                       R32 R32 K46 ["createStudioInstancePicker"]
      232 CALL                             R31 1 1
      233 GETIMPORT                        R32 K21 [require]
      235 GETTABLEKS                       R33 R0 K24 ["Generated"]
      237 GETTABLEKS                       R33 R33 K25 ["OpenAPI"]
      239 GETTABLEKS                       R33 R33 K47 ["McpAssistantApi"]
      241 CALL                             R32 1 1
      242 GETIMPORT                        R33 K21 [require]
      244 GETTABLEKS                       R34 R0 K30 ["Src"]
      246 GETTABLEKS                       R34 R34 K31 ["Util"]
      248 GETTABLEKS                       R34 R34 K48 ["ExperimentFeature"]
      250 CALL                             R33 1 1
      251 GETTABLEKS                       R34 R14 K49 ["Flags"]
      253 GETTABLEKS                       R34 R34 K50 ["Shared"]
      255 GETTABLEKS                       R34 R34 K51 ["FFlagAssistantUserSkills"]
      257 GETIMPORT                        R35 K21 [require]
      259 GETTABLEKS                       R36 R0 K30 ["Src"]
      261 GETTABLEKS                       R36 R36 K49 ["Flags"]
      263 GETTABLEKS                       R36 R36 K52 ["FFlagAssistantLuaMaterialGenerator"]
      265 CALL                             R35 1 1
      266 GETIMPORT                        R36 K21 [require]
      268 GETTABLEKS                       R37 R0 K30 ["Src"]
      270 GETTABLEKS                       R37 R37 K49 ["Flags"]
      272 GETTABLEKS                       R37 R37 K53 ["FFlagAssistantNotificationManager"]
      274 CALL                             R36 1 1
      275 GETIMPORT                        R37 K21 [require]
      277 GETTABLEKS                       R38 R0 K30 ["Src"]
      279 GETTABLEKS                       R38 R38 K49 ["Flags"]
      281 GETTABLEKS                       R38 R38 K54 ["FFlagAssistantUseNewOpenAPIClients"]
      283 CALL                             R37 1 1
      284 GETIMPORT                        R38 K21 [require]
      286 GETTABLEKS                       R39 R0 K30 ["Src"]
      288 GETTABLEKS                       R39 R39 K49 ["Flags"]
      290 GETTABLEKS                       R39 R39 K55 ["FFlagGetOrCreateUniqueIdMethod"]
      292 CALL                             R38 1 1
      293 GETIMPORT                        R39 K21 [require]
      295 GETTABLEKS                       R40 R0 K30 ["Src"]
      297 GETTABLEKS                       R40 R40 K49 ["Flags"]
      299 GETTABLEKS                       R40 R40 K56 ["FStringAssistantDisableContextCompactionKey"]
      301 CALL                             R39 1 1
      302 GETIMPORT                        R40 K21 [require]
      304 GETTABLEKS                       R41 R0 K30 ["Src"]
      306 GETTABLEKS                       R41 R41 K49 ["Flags"]
      308 GETTABLEKS                       R41 R41 K57 ["FStringAssistantMultiChatExperimentKey"]
      310 CALL                             R40 1 1
      311 GETTABLEKS                       R41 R14 K49 ["Flags"]
      313 GETTABLEKS                       R41 R41 K50 ["Shared"]
      315 GETTABLEKS                       R41 R41 K58 ["FFlagAssistantPrivilegedCodeExecution"]
      317 GETTABLEKS                       R42 R14 K49 ["Flags"]
      319 GETTABLEKS                       R42 R42 K50 ["Shared"]
      321 GETTABLEKS                       R42 R42 K59 ["FFlagAssistantAnimationGenTool"]
      323 GETTABLEKS                       R43 R14 K49 ["Flags"]
      325 GETTABLEKS                       R43 R43 K50 ["Shared"]
      327 GETTABLEKS                       R43 R43 K60 ["FFlagDebugLogAssistantUI"]
      329 GETTABLEKS                       R44 R14 K49 ["Flags"]
      331 GETTABLEKS                       R44 R44 K50 ["Shared"]
      333 GETTABLEKS                       R44 R44 K61 ["FFlagAssistantInstancePickerSelectModel"]
      335 GETTABLEKS                       R45 R14 K49 ["Flags"]
      337 GETTABLEKS                       R45 R45 K50 ["Shared"]
      339 GETTABLEKS                       R45 R45 K62 ["FFlagPrimGenEnableStatusLog"]
      341 GETTABLEKS                       R46 R18 K63 ["Http"]
      343 GETTABLEKS                       R46 R46 K64 ["Networking"]
      345 GETTABLEKS                       R47 R46 K65 ["new"]
      347 DUPTABLE                         R48 K68 [{"isInternal", "loggingLevel"}]
      348 LOADB                            R49 1
      349 SETTABLEKS                       R49 R48 K66 ["isInternal"]
      351 MOVE                             R50 R43
      352 CALL                             R50 0 1
      353 JUMPIFNOT                        R50 ; [+2]
      354 LOADN                            R49 4
      355 JUMP                             ; [+1]
      356 LOADN                            R49 0
      357 SETTABLEKS                       R49 R48 K67 ["loggingLevel"]
      359 CALL                             R47 1 1
      360 GETTABLEKS                       R48 R18 K69 ["Url"]
      362 GETTABLEKS                       R49 R48 K65 ["new"]
      364 LOADNIL                          R50
      365 CALL                             R49 1 1
      366 DUPCLOSURE                       R50 K70 [PROTO_1]
      367 CAPTURE                          VAL R0
      368 CAPTURE                          VAL R21
      369 CAPTURE                          VAL R22
      370 DUPCLOSURE                       R51 K71 [PROTO_41]
      371 CAPTURE                          VAL R45
      372 CAPTURE                          VAL R34
      373 CAPTURE                          VAL R14
      374 DUPCLOSURE                       R52 K72 [PROTO_51]
      375 CAPTURE                          VAL R4
      376 CAPTURE                          VAL R41
      377 CAPTURE                          VAL R14
      378 DUPCLOSURE                       R53 K73 [PROTO_52]
      379 CAPTURE                          VAL R25
      380 DUPCLOSURE                       R54 K74 [PROTO_55]
      381 CAPTURE                          VAL R12
      382 CAPTURE                          VAL R26
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R14
      385 DUPCLOSURE                       R55 K75 [PROTO_64]
      386 CAPTURE                          VAL R31
      387 CAPTURE                          VAL R38
      388 CAPTURE                          VAL R13
      389 CAPTURE                          VAL R44
      390 DUPCLOSURE                       R56 K76 [PROTO_106]
      391 CAPTURE                          VAL R14
      392 CAPTURE                          VAL R49
      393 CAPTURE                          VAL R33
      394 CAPTURE                          VAL R39
      395 CAPTURE                          VAL R40
      396 CAPTURE                          VAL R27
      397 CAPTURE                          VAL R7
      398 CAPTURE                          VAL R24
      399 CAPTURE                          VAL R5
      400 CAPTURE                          VAL R11
      401 CAPTURE                          VAL R4
      402 CAPTURE                          VAL R35
      403 CAPTURE                          VAL R28
      404 CAPTURE                          VAL R36
      405 CAPTURE                          VAL R23
      406 CAPTURE                          VAL R2
      407 CAPTURE                          VAL R12
      408 CAPTURE                          VAL R26
      409 CAPTURE                          VAL R16
      410 CAPTURE                          VAL R42
      411 CAPTURE                          VAL R25
      412 CAPTURE                          VAL R10
      413 CAPTURE                          VAL R37
      414 CAPTURE                          VAL R15
      415 CAPTURE                          VAL R47
      416 CAPTURE                          VAL R41
      417 CAPTURE                          VAL R32
      418 CAPTURE                          VAL R51
      419 CAPTURE                          VAL R52
      420 CAPTURE                          VAL R50
      421 CAPTURE                          VAL R6
      422 CAPTURE                          VAL R9
      423 CAPTURE                          VAL R8
      424 CAPTURE                          VAL R19
      425 CAPTURE                          VAL R20
      426 CAPTURE                          VAL R30
      427 CAPTURE                          VAL R55
      428 RETURN                           R56 1
