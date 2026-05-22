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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ListUserSkillsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["ReadUserSkillsFileAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["WriteUserSkillsFileAsync"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["DeleteUserSkillsFileAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OpenUserSkillsFolderAsync"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
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
      114 GETUPVAL                         R4 1
      115 CALL                             R4 0 1
      116 JUMPIFNOT                        R4 ; [+44]
      117 GETTABLEKS                       R4 R0 K29 ["userSkills"]
      119 NEWCLOSURE                       R5 P23
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R5 R4 K30 ["listAsync"]
      123 GETTABLEKS                       R4 R0 K29 ["userSkills"]
      125 NEWCLOSURE                       R5 P24
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R5 R4 K24 ["readFileAsync"]
      129 GETUPVAL                         R4 2
      130 GETTABLEKS                       R4 R4 K31 ["Utils"]
      132 GETTABLEKS                       R4 R4 K32 ["DataModelType"]
      134 GETTABLEKS                       R5 R4 K33 ["getDataModelType"]
      136 CALL                             R5 0 1
      137 GETTABLEKS                       R6 R4 K34 ["Types"]
      139 GETTABLEKS                       R6 R6 K35 ["Standalone"]
      141 JUMPIFNOTEQ                      R5 R6 ; [+19]
      143 GETTABLEKS                       R5 R0 K29 ["userSkills"]
      145 NEWCLOSURE                       R6 P25
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R6 R5 K36 ["writeFileAsync"]
      149 GETTABLEKS                       R5 R0 K29 ["userSkills"]
      151 NEWCLOSURE                       R6 P26
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R6 R5 K37 ["deleteFileAsync"]
      155 GETTABLEKS                       R5 R0 K29 ["userSkills"]
      157 NEWCLOSURE                       R6 P27
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R6 R5 K38 ["openFolderAsync"]
      161 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["RunBoundCodeAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["BindCodeAsync"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R1 2

PROTO_38:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["StopCodeAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UpdateScriptSourceAsync"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["UpdateSourceAsync"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getUserSettingsAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Constants"]
        6 GETTABLEKS                       R1 R1 K2 ["USE_ELEVATED_CAPABILITIES_KEY"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_43:
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

PROTO_44:
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
       35 DUPCLOSURE                       R5 K8 [PROTO_41]
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

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["tools"]
        8 GETTABLEKS                       R2 R2 K2 ["animationGen"]
       10 GETTABLEKS                       R3 R1 K3 ["generateAnimationAsync"]
       12 SETTABLEKS                       R3 R2 K3 ["generateAnimationAsync"]
       14 GETTABLEKS                       R3 R1 K4 ["publishAnimationAsync"]
       16 SETTABLEKS                       R3 R2 K4 ["publishAnimationAsync"]
       18 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetUpload"]
        3 GETTABLEKS                       R0 R0 K1 ["postUploadAssetAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_47:
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

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["tools"]
        2 GETTABLEKS                       R1 R1 K1 ["meshGen"]
        4 DUPCLOSURE                       R2 K2 [PROTO_47]
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

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_50:
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

PROTO_51:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_57:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R3 1 3
        6 GETTABLEKS                       R6 R2 K2 ["instances"]
        8 DUPCLOSURE                       R7 K3 [PROTO_50]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R7 R6 K4 ["getUniqueId"]
       13 GETTABLEKS                       R6 R2 K2 ["instances"]
       15 DUPCLOSURE                       R7 K5 [PROTO_51]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R7 R6 K6 ["getInstanceFromUniqueId"]
       19 DUPCLOSURE                       R6 K7 [PROTO_52]
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

PROTO_58:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_59:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 NOT                              R0 R1
        7 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getExperimentFeatureEnabled"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_62:
        0 GETIMPORT                        R1 K1 [game]
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K2 ["GetEngineFeature"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantExperimentation"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_64:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateWebStreamClientInternal"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_65:
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

PROTO_66:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R2 R2 K0 ["Start"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["GenerateMaterialVariantsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGenerator"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["UploadMaterialsAsync"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_77:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParamErrorJson"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreatorInventoryApi"]
        3 GETTABLEKS                       R0 R0 K1 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_81:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_80]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 RETURN                           R2 1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SystemPrompt"]
        3 GETTABLEKS                       R0 R0 K1 ["postGetSystemPromptV1SystemPromptPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

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
       20 JUMPIFEQKNIL                     R2 ; [+6]
       22 GETTABLEKS                       R3 R1 K3 ["data"]
       24 LENGTH                           R2 R3
       25 JUMPIFNOTEQKN                    R2 K4 [0] ; [+5]
       27 GETIMPORT                        R2 K6 [error]
       29 LOADK                            R3 K7 ["System prompt response contained no data"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R1 K3 ["data"]
       33 RETURN                           R2 1

PROTO_84:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["CopyToClipboard"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetClassIcon"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetEditorSource"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_88:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_89:
        0 LOADN                            R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 CLOSEUPVALS                      R0
        8 RETURN                           R0 1

PROTO_90:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["StartPlaySolo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K1 ["StopPlaySolo"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MessageOut"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameLoaded"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_94:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["subscribeGameStopped"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_95:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioPlayState"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_96:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_97:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Guest"]
        3 GETTABLEKS                       R2 R2 K1 ["Environment"]
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["APIS_URL"]
       11 SETTABLEKS                       R3 R2 K4 ["apisUrl"]
       13 DUPCLOSURE                       R3 K5 [PROTO_58]
       14 SETTABLEKS                       R3 R2 K6 ["isDevFrameworkAvailable"]
       16 DUPCLOSURE                       R3 K7 [PROTO_59]
       17 SETTABLEKS                       R3 R2 K8 ["isRobloxScriptSecurity"]
       19 GETUPVAL                         R3 2
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+5]
       22 DUPCLOSURE                       R3 K9 [PROTO_60]
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 SETTABLEKS                       R3 R2 K10 ["isCompactionExperimentEnabled"]
       27 GETTABLEKS                       R3 R2 K11 ["setMultiChatExperimentEnabledFn"]
       29 DUPCLOSURE                       R4 K12 [PROTO_61]
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U5
       32 CALL                             R3 1 0
       33 DUPCLOSURE                       R3 K13 [PROTO_62]
       34 SETTABLEKS                       R3 R2 K14 ["getEngineFeature"]
       36 GETIMPORT                        R3 K16 [pcall]
       38 NEWCLOSURE                       R4 P5
       39 CAPTURE                          VAL R0
       40 CALL                             R3 1 2
       41 JUMPIFNOT                        R3 ; [+2]
       42 MOVE                             R5 R4
       43 JUMPIF                           R5 ; [+1]
       44 LOADNIL                          R5
       45 GETUPVAL                         R6 6
       46 GETTABLEKS                       R6 R6 K17 ["createStudioEventLogger"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R2 K18 ["EventLogger"]
       52 GETTABLEKS                       R6 R2 K19 ["http"]
       54 DUPCLOSURE                       R7 K20 [PROTO_64]
       55 CAPTURE                          UPVAL U7
       56 SETTABLEKS                       R7 R6 K21 ["createWebStreamClient"]
       58 GETTABLEKS                       R6 R2 K19 ["http"]
       60 DUPCLOSURE                       R7 K22 [PROTO_67]
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 SETTABLEKS                       R7 R6 K23 ["requestAsync"]
       65 GETTABLEKS                       R6 R2 K19 ["http"]
       67 DUPCLOSURE                       R7 K24 [PROTO_69]
       68 CAPTURE                          UPVAL U9
       69 SETTABLEKS                       R7 R6 K25 ["openUrl"]
       71 GETTABLEKS                       R6 R2 K26 ["selection"]
       73 DUPCLOSURE                       R7 K27 [PROTO_70]
       74 CAPTURE                          UPVAL U10
       75 SETTABLEKS                       R7 R6 K28 ["get"]
       77 GETTABLEKS                       R6 R2 K26 ["selection"]
       79 DUPCLOSURE                       R7 K29 [PROTO_71]
       80 CAPTURE                          UPVAL U10
       81 SETTABLEKS                       R7 R6 K30 ["set"]
       83 DUPCLOSURE                       R6 K31 [PROTO_72]
       84 CAPTURE                          UPVAL U11
       85 SETTABLEKS                       R6 R2 K32 ["openScriptAsync"]
       87 GETTABLEKS                       R6 R2 K33 ["tools"]
       89 GETTABLEKS                       R6 R6 K34 ["marketplaceInsertion"]
       91 GETUPVAL                         R7 0
       92 GETTABLEKS                       R7 R7 K0 ["Guest"]
       94 GETTABLEKS                       R7 R7 K35 ["LoadAssetHandlers"]
       96 GETTABLEKS                       R7 R7 K36 ["getRobloxScriptHandler"]
       98 GETIMPORT                        R8 K38 [game]
      100 CALL                             R7 1 1
      101 SETTABLEKS                       R7 R6 K39 ["loadAssetAsync"]
      103 GETUPVAL                         R6 12
      104 CALL                             R6 0 1
      105 JUMPIFNOT                        R6 ; [+52]
      106 GETTABLEKS                       R6 R2 K33 ["tools"]
      108 GETTABLEKS                       R6 R6 K40 ["materialGen"]
      110 GETUPVAL                         R7 13
      111 GETTABLEKS                       R7 R7 K41 ["create"]
      113 DUPTABLE                         R8 K45 [{"NotificationManager", "Networking", "Telemetry"}]
      114 GETUPVAL                         R10 14
      115 CALL                             R10 0 1
      116 JUMPIFNOT                        R10 ; [+9]
      117 NAMECALL                         R10 R1 K46 ["IsGuest"]
      119 CALL                             R10 1 1
      120 JUMPIFNOT                        R10 ; [+5]
      121 GETUPVAL                         R9 15
      122 GETTABLEKS                       R9 R9 K28 ["get"]
      124 CALL                             R9 0 1
      125 JUMP                             ; [+1]
      126 LOADNIL                          R9
      127 SETTABLEKS                       R9 R8 K42 ["NotificationManager"]
      129 SETTABLEKS                       R1 R8 K43 ["Networking"]
      131 GETUPVAL                         R9 6
      132 GETTABLEKS                       R9 R9 K47 ["makeStudioTelemetryEvents"]
      134 MOVE                             R10 R5
      135 CALL                             R9 1 1
      136 SETTABLEKS                       R9 R8 K44 ["Telemetry"]
      138 CALL                             R7 1 1
      139 GETTABLEKS                       R8 R7 K48 ["generateMaterialVariantsAsync"]
      141 SETTABLEKS                       R8 R6 K48 ["generateMaterialVariantsAsync"]
      143 GETTABLEKS                       R8 R7 K49 ["uploadMaterialsAsync"]
      145 SETTABLEKS                       R8 R6 K49 ["uploadMaterialsAsync"]
      147 GETUPVAL                         R8 14
      148 CALL                             R8 0 1
      149 JUMPIFNOT                        R8 ; [+28]
      150 GETTABLEKS                       R8 R1 K50 ["Destroying"]
      152 NEWCLOSURE                       R10 P12
      153 CAPTURE                          VAL R7
      154 NAMECALL                         R8 R8 K51 ["Once"]
      156 CALL                             R8 2 0
      157 JUMP                             ; [+20]
      158 GETTABLEKS                       R6 R2 K33 ["tools"]
      160 GETTABLEKS                       R6 R6 K40 ["materialGen"]
      162 GETUPVAL                         R7 16
      163 JUMPIFNOT                        R7 ; [+4]
      164 DUPCLOSURE                       R7 K52 [PROTO_74]
      165 CAPTURE                          UPVAL U16
      166 SETTABLEKS                       R7 R6 K48 ["generateMaterialVariantsAsync"]
      168 GETIMPORT                        R7 K16 [pcall]
      170 NEWCLOSURE                       R8 P14
      171 CAPTURE                          VAL R0
      172 CALL                             R7 1 2
      173 JUMPIFNOT                        R7 ; [+4]
      174 NEWCLOSURE                       R9 P15
      175 CAPTURE                          VAL R8
      176 SETTABLEKS                       R9 R6 K49 ["uploadMaterialsAsync"]
      178 GETUPVAL                         R6 17
      179 CALL                             R6 0 1
      180 JUMPIFNOT                        R6 ; [+22]
      181 GETTABLEKS                       R6 R2 K33 ["tools"]
      183 GETTABLEKS                       R6 R6 K53 ["meshGen"]
      185 DUPCLOSURE                       R7 K54 [PROTO_47]
      186 CAPTURE                          UPVAL U18
      187 CAPTURE                          UPVAL U19
      188 CAPTURE                          UPVAL U20
      189 SETTABLEKS                       R7 R6 K55 ["publishModelAsync"]
      191 GETUPVAL                         R7 0
      192 GETTABLEKS                       R7 R7 K0 ["Guest"]
      194 GETTABLEKS                       R7 R7 K35 ["LoadAssetHandlers"]
      196 GETTABLEKS                       R7 R7 K36 ["getRobloxScriptHandler"]
      198 GETIMPORT                        R8 K38 [game]
      200 CALL                             R7 1 1
      201 SETTABLEKS                       R7 R6 K39 ["loadAssetAsync"]
      203 GETUPVAL                         R6 21
      204 CALL                             R6 0 1
      205 JUMPIFNOT                        R6 ; [+18]
      206 GETUPVAL                         R6 22
      207 GETTABLEKS                       R6 R6 K41 ["create"]
      209 CALL                             R6 0 1
      210 JUMPIF                           R6 ; [+1]
      211 JUMP                             ; [+12]
      212 GETTABLEKS                       R7 R2 K33 ["tools"]
      214 GETTABLEKS                       R7 R7 K56 ["animationGen"]
      216 GETTABLEKS                       R8 R6 K57 ["generateAnimationAsync"]
      218 SETTABLEKS                       R8 R7 K57 ["generateAnimationAsync"]
      220 GETTABLEKS                       R8 R6 K58 ["publishAnimationAsync"]
      222 SETTABLEKS                       R8 R7 K58 ["publishAnimationAsync"]
      224 GETTABLEKS                       R6 R2 K33 ["tools"]
      226 GETTABLEKS                       R6 R6 K59 ["uploadImage"]
      228 DUPCLOSURE                       R7 K60 [PROTO_77]
      229 CAPTURE                          UPVAL U23
      230 SETTABLEKS                       R7 R6 K61 ["publishAssetAsync"]
      232 DUPCLOSURE                       R7 K62 [PROTO_79]
      233 CAPTURE                          UPVAL U24
      234 CAPTURE                          UPVAL U19
      235 CAPTURE                          UPVAL U25
      236 CAPTURE                          UPVAL U1
      237 CAPTURE                          UPVAL U26
      238 SETTABLEKS                       R7 R6 K63 ["searchAssetAsync"]
      240 GETUPVAL                         R6 27
      241 CALL                             R6 0 1
      242 JUMPIFNOT                        R6 ; [+4]
      243 DUPCLOSURE                       R6 K64 [PROTO_81]
      244 CAPTURE                          UPVAL U18
      245 SETTABLEKS                       R6 R2 K65 ["hasInternalPermission"]
      247 DUPCLOSURE                       R6 K66 [PROTO_83]
      248 CAPTURE                          UPVAL U19
      249 CAPTURE                          UPVAL U28
      250 SETTABLEKS                       R6 R2 K67 ["fetchSystemPromptAsync"]
      252 GETUPVAL                         R6 29
      253 MOVE                             R7 R2
      254 MOVE                             R8 R0
      255 CALL                             R6 2 0
      256 GETUPVAL                         R6 30
      257 MOVE                             R7 R2
      258 MOVE                             R8 R0
      259 CALL                             R6 2 0
      260 GETUPVAL                         R6 31
      261 CALL                             R6 0 0
      262 DUPCLOSURE                       R6 K68 [PROTO_84]
      263 CAPTURE                          UPVAL U18
      264 SETTABLEKS                       R6 R2 K69 ["copyToClipboard"]
      266 DUPCLOSURE                       R6 K70 [PROTO_85]
      267 CAPTURE                          UPVAL U18
      268 SETTABLEKS                       R6 R2 K71 ["getClassIcon"]
      270 GETUPVAL                         R6 0
      271 GETTABLEKS                       R6 R6 K0 ["Guest"]
      273 GETTABLEKS                       R6 R6 K72 ["RecordingHandlers"]
      275 GETTABLEKS                       R6 R6 K73 ["getPluginHandlers"]
      277 GETUPVAL                         R7 32
      278 CALL                             R6 1 1
      279 GETTABLEKS                       R7 R6 K74 ["startRecording"]
      281 SETTABLEKS                       R7 R2 K74 ["startRecording"]
      283 GETTABLEKS                       R7 R6 K75 ["endRecording"]
      285 SETTABLEKS                       R7 R2 K75 ["endRecording"]
      287 NEWCLOSURE                       R7 P23
      288 CAPTURE                          VAL R1
      289 SETTABLEKS                       R7 R2 K76 ["getNetworking"]
      291 DUPCLOSURE                       R7 K77 [PROTO_87]
      292 CAPTURE                          UPVAL U11
      293 SETTABLEKS                       R7 R2 K78 ["getScriptSource"]
      295 DUPCLOSURE                       R7 K79 [PROTO_89]
      296 CAPTURE                          UPVAL U18
      297 SETTABLEKS                       R7 R2 K80 ["getUserId"]
      299 DUPCLOSURE                       R7 K81 [PROTO_90]
      300 CAPTURE                          UPVAL U33
      301 SETTABLEKS                       R7 R2 K82 ["startStopPlayAsync"]
      303 DUPCLOSURE                       R7 K83 [PROTO_92]
      304 CAPTURE                          UPVAL U34
      305 SETTABLEKS                       R7 R2 K84 ["subscribeOutput"]
      307 DUPCLOSURE                       R7 K85 [PROTO_93]
      308 CAPTURE                          UPVAL U35
      309 SETTABLEKS                       R7 R2 K86 ["subscribeGameLoaded"]
      311 DUPCLOSURE                       R7 K87 [PROTO_94]
      312 CAPTURE                          UPVAL U36
      313 SETTABLEKS                       R7 R2 K88 ["subscribeGameStopped"]
      315 DUPCLOSURE                       R7 K89 [PROTO_95]
      316 CAPTURE                          UPVAL U37
      317 SETTABLEKS                       R7 R2 K90 ["getStudioPlayState"]
      319 GETUPVAL                         R7 17
      320 CALL                             R7 0 1
      321 JUMPIFNOT                        R7 ; [+5]
      322 GETUPVAL                         R7 38
      323 MOVE                             R8 R0
      324 MOVE                             R9 R1
      325 MOVE                             R10 R2
      326 CALL                             R7 3 0
      327 GETIMPORT                        R7 K16 [pcall]
      329 NEWCLOSURE                       R8 P31
      330 CAPTURE                          VAL R0
      331 CALL                             R7 1 2
      332 JUMPIFNOT                        R7 ; [+3]
      333 JUMPIFNOT                        R8 ; [+2]
      334 SETTABLEKS                       R8 R2 K91 ["assetAccessController"]
      336 RETURN                           R2 1

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
      255 GETTABLEKS                       R34 R34 K51 ["FFlagAssistantContextCompactionExp"]
      257 GETTABLEKS                       R35 R14 K49 ["Flags"]
      259 GETTABLEKS                       R35 R35 K50 ["Shared"]
      261 GETTABLEKS                       R35 R35 K52 ["FFlagAssistantUserSkills"]
      263 GETIMPORT                        R36 K21 [require]
      265 GETTABLEKS                       R37 R0 K30 ["Src"]
      267 GETTABLEKS                       R37 R37 K49 ["Flags"]
      269 GETTABLEKS                       R37 R37 K53 ["FFlagAssistantLuaMaterialGenerator"]
      271 CALL                             R36 1 1
      272 GETIMPORT                        R37 K21 [require]
      274 GETTABLEKS                       R38 R0 K30 ["Src"]
      276 GETTABLEKS                       R38 R38 K49 ["Flags"]
      278 GETTABLEKS                       R38 R38 K54 ["FFlagAssistantNotificationManager"]
      280 CALL                             R37 1 1
      281 GETIMPORT                        R38 K21 [require]
      283 GETTABLEKS                       R39 R0 K30 ["Src"]
      285 GETTABLEKS                       R39 R39 K49 ["Flags"]
      287 GETTABLEKS                       R39 R39 K55 ["FFlagAssistantUseNewOpenAPIClients"]
      289 CALL                             R38 1 1
      290 GETIMPORT                        R39 K21 [require]
      292 GETTABLEKS                       R40 R0 K30 ["Src"]
      294 GETTABLEKS                       R40 R40 K49 ["Flags"]
      296 GETTABLEKS                       R40 R40 K56 ["FFlagGetOrCreateUniqueIdMethod"]
      298 CALL                             R39 1 1
      299 GETIMPORT                        R40 K21 [require]
      301 GETTABLEKS                       R41 R0 K30 ["Src"]
      303 GETTABLEKS                       R41 R41 K49 ["Flags"]
      305 GETTABLEKS                       R41 R41 K57 ["FStringAssistantDisableContextCompactionKey"]
      307 CALL                             R40 1 1
      308 GETIMPORT                        R41 K21 [require]
      310 GETTABLEKS                       R42 R0 K30 ["Src"]
      312 GETTABLEKS                       R42 R42 K49 ["Flags"]
      314 GETTABLEKS                       R42 R42 K58 ["FStringAssistantMultiChatExperimentKey"]
      316 CALL                             R41 1 1
      317 GETTABLEKS                       R42 R14 K49 ["Flags"]
      319 GETTABLEKS                       R42 R42 K50 ["Shared"]
      321 GETTABLEKS                       R42 R42 K59 ["FFlagAssistantPrivilegedCodeExecution"]
      323 GETTABLEKS                       R43 R14 K49 ["Flags"]
      325 GETTABLEKS                       R43 R43 K50 ["Shared"]
      327 GETTABLEKS                       R43 R43 K60 ["FFlagAssistantAnimationGenTool"]
      329 GETTABLEKS                       R44 R14 K49 ["Flags"]
      331 GETTABLEKS                       R44 R44 K50 ["Shared"]
      333 GETTABLEKS                       R44 R44 K61 ["FFlagAssistantUseNewMeshGenTool"]
      335 GETTABLEKS                       R45 R14 K49 ["Flags"]
      337 GETTABLEKS                       R45 R45 K50 ["Shared"]
      339 GETTABLEKS                       R45 R45 K62 ["FFlagDebugLogAssistantUI"]
      341 GETTABLEKS                       R46 R14 K49 ["Flags"]
      343 GETTABLEKS                       R46 R46 K50 ["Shared"]
      345 GETTABLEKS                       R46 R46 K63 ["FFlagAssistantInstancePickerSelectModel"]
      347 GETTABLEKS                       R47 R14 K49 ["Flags"]
      349 GETTABLEKS                       R47 R47 K50 ["Shared"]
      351 GETTABLEKS                       R47 R47 K64 ["FFlagPrimGenEnableStatusLog"]
      353 GETTABLEKS                       R48 R18 K65 ["Http"]
      355 GETTABLEKS                       R48 R48 K66 ["Networking"]
      357 GETTABLEKS                       R49 R48 K67 ["new"]
      359 DUPTABLE                         R50 K70 [{"isInternal", "loggingLevel"}]
      360 LOADB                            R51 1
      361 SETTABLEKS                       R51 R50 K68 ["isInternal"]
      363 MOVE                             R52 R45
      364 CALL                             R52 0 1
      365 JUMPIFNOT                        R52 ; [+2]
      366 LOADN                            R51 4
      367 JUMP                             ; [+1]
      368 LOADN                            R51 0
      369 SETTABLEKS                       R51 R50 K69 ["loggingLevel"]
      371 CALL                             R49 1 1
      372 GETTABLEKS                       R50 R18 K71 ["Url"]
      374 GETTABLEKS                       R51 R50 K67 ["new"]
      376 LOADNIL                          R52
      377 CALL                             R51 1 1
      378 DUPCLOSURE                       R52 K72 [PROTO_1]
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R21
      381 CAPTURE                          VAL R22
      382 DUPCLOSURE                       R53 K73 [PROTO_34]
      383 CAPTURE                          VAL R47
      384 CAPTURE                          VAL R35
      385 CAPTURE                          VAL R14
      386 DUPCLOSURE                       R54 K74 [PROTO_44]
      387 CAPTURE                          VAL R4
      388 CAPTURE                          VAL R42
      389 CAPTURE                          VAL R14
      390 DUPCLOSURE                       R55 K75 [PROTO_45]
      391 CAPTURE                          VAL R25
      392 DUPCLOSURE                       R56 K76 [PROTO_48]
      393 CAPTURE                          VAL R12
      394 CAPTURE                          VAL R26
      395 CAPTURE                          VAL R16
      396 CAPTURE                          VAL R14
      397 DUPCLOSURE                       R57 K77 [PROTO_57]
      398 CAPTURE                          VAL R31
      399 CAPTURE                          VAL R39
      400 CAPTURE                          VAL R13
      401 CAPTURE                          VAL R46
      402 DUPCLOSURE                       R58 K78 [PROTO_97]
      403 CAPTURE                          VAL R14
      404 CAPTURE                          VAL R51
      405 CAPTURE                          VAL R34
      406 CAPTURE                          VAL R33
      407 CAPTURE                          VAL R40
      408 CAPTURE                          VAL R41
      409 CAPTURE                          VAL R27
      410 CAPTURE                          VAL R7
      411 CAPTURE                          VAL R24
      412 CAPTURE                          VAL R5
      413 CAPTURE                          VAL R11
      414 CAPTURE                          VAL R4
      415 CAPTURE                          VAL R36
      416 CAPTURE                          VAL R28
      417 CAPTURE                          VAL R37
      418 CAPTURE                          VAL R23
      419 CAPTURE                          VAL R2
      420 CAPTURE                          VAL R44
      421 CAPTURE                          VAL R12
      422 CAPTURE                          VAL R26
      423 CAPTURE                          VAL R16
      424 CAPTURE                          VAL R43
      425 CAPTURE                          VAL R25
      426 CAPTURE                          VAL R10
      427 CAPTURE                          VAL R38
      428 CAPTURE                          VAL R15
      429 CAPTURE                          VAL R49
      430 CAPTURE                          VAL R42
      431 CAPTURE                          VAL R32
      432 CAPTURE                          VAL R53
      433 CAPTURE                          VAL R54
      434 CAPTURE                          VAL R52
      435 CAPTURE                          VAL R6
      436 CAPTURE                          VAL R9
      437 CAPTURE                          VAL R8
      438 CAPTURE                          VAL R19
      439 CAPTURE                          VAL R20
      440 CAPTURE                          VAL R30
      441 CAPTURE                          VAL R57
      442 RETURN                           R58 1
