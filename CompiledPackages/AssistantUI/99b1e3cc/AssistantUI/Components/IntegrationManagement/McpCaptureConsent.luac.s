PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R0 K3 ["enabled"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["enabled"]
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[McpCaptureConsent] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"enabled"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["enabled"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["setUserSettingsAsync"]
        7 LOADK                            R2 K3 ["mcp-prompt-sharing"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+21]
        7 LOADK                            R4 K2 ["Failed to save prompt sharing setting: %*"]
        8 FASTCALL1                        TOSTRING R3 ; [+3]
        9 MOVE                             R7 R3
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       19 JUMPIFNOT                        R5 ; [+8]
       20 GETIMPORT                        R5 K8 [warn]
       22 LOADK                            R6 K9 ["[McpCaptureConsent] %*"]
       23 MOVE                             R8 R4
       24 NAMECALL                         R6 R6 K5 ["format"]
       26 CALL                             R6 2 1
       27 CALL                             R5 1 0
       28 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+49]
        3 GETIMPORT                        R3 K1 [pcall]
        5 LOADB                            R5 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R5
        8 CAPTURE                          VAL R0
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+21]
       11 LOADK                            R5 K2 ["Failed to save prompt sharing setting: %*"]
       12 FASTCALL1                        TOSTRING R4 ; [+3]
       13 MOVE                             R8 R4
       14 GETIMPORT                        R7 K4 [tostring]
       16 CALL                             R7 1 1
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       23 JUMPIFNOT                        R6 ; [+8]
       24 GETIMPORT                        R6 K8 [warn]
       26 LOADK                            R7 K9 ["[McpCaptureConsent] %*"]
       27 MOVE                             R9 R5
       28 NAMECALL                         R7 R7 K5 ["format"]
       30 CALL                             R7 2 1
       31 CALL                             R6 1 0
       32 MOVE                             R2 R3
       33 GETUPVAL                         R3 0
       34 JUMPIFEQ                         R3 R1 ; [+7]
       36 GETUPVAL                         R3 3
       37 NAMECALL                         R3 R3 K10 ["get"]
       39 CALL                             R3 1 1
       40 LOADB                            R4 0
       41 RETURN                           R3 2
       42 NOT                              R3 R2
       43 SETUPVAL                         R3 1
       44 GETUPVAL                         R3 3
       45 LOADB                            R5 0
       46 NAMECALL                         R3 R3 K11 ["set"]
       48 CALL                             R3 2 0
       49 LOADB                            R3 0
       50 LOADB                            R4 1
       51 RETURN                           R3 2
       52 GETIMPORT                        R2 K1 [pcall]
       54 GETTABLEKS                       R3 R0 K12 ["getUserSettingsAsync"]
       56 LOADK                            R4 K13 ["mcp-prompt-sharing"]
       57 CALL                             R2 2 2
       58 GETUPVAL                         R4 0
       59 JUMPIFEQ                         R4 R1 ; [+7]
       61 GETUPVAL                         R4 3
       62 NAMECALL                         R4 R4 K10 ["get"]
       64 CALL                             R4 1 1
       65 LOADB                            R5 0
       66 RETURN                           R4 2
       67 MOVE                             R4 R2
       68 JUMPIFNOT                        R4 ; [+23]
       69 FASTCALL1                        TYPEOF R3 ; [+3]
       70 MOVE                             R7 R3
       71 GETIMPORT                        R6 K15 [typeof]
       73 CALL                             R6 1 1
       74 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+12]
       76 GETTABLEKS                       R7 R3 K17 ["enabled"]
       78 FASTCALL1                        TYPEOF R7 ; [+2]
       79 GETIMPORT                        R6 K15 [typeof]
       81 CALL                             R6 1 1
       82 JUMPIFNOTEQKS                    R6 K18 ["boolean"] ; [+4]
       84 GETTABLEKS                       R5 R3 K17 ["enabled"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R5
       88 JUMPIFEQKB                       R5 TRUE ; [+2]
       90 LOADB                            R4 0 +1
       91 LOADB                            R4 1
       92 GETUPVAL                         R5 3
       93 MOVE                             R7 R4
       94 NAMECALL                         R5 R5 K11 ["set"]
       96 CALL                             R5 2 0
       97 MOVE                             R5 R4
       98 MOVE                             R6 R2
       99 RETURN                           R5 2

PROTO_5:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 0
        4 JUMPIF                           R1 ; [+12]
        5 LOADB                            R3 1
        6 SETUPVAL                         R3 1
        7 GETUPVAL                         R3 2
        8 LOADB                            R5 0
        9 NAMECALL                         R3 R3 K1 ["set"]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 3
       13 LOADB                            R5 0
       14 NAMECALL                         R3 R3 K2 ["Fire"]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R4 K4 [pcall]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CALL                             R4 1 2
       23 JUMPIF                           R4 ; [+21]
       24 LOADK                            R6 K5 ["Failed to save prompt sharing setting: %*"]
       25 FASTCALL1                        TOSTRING R5 ; [+3]
       26 MOVE                             R9 R5
       27 GETIMPORT                        R8 K7 [tostring]
       29 CALL                             R8 1 1
       30 NAMECALL                         R6 R6 K8 ["format"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K9 ["FFlagDebugAssistantMcpCaptureLogging"]
       36 JUMPIFNOT                        R7 ; [+8]
       37 GETIMPORT                        R7 K11 [warn]
       39 LOADK                            R8 K12 ["[McpCaptureConsent] %*"]
       40 MOVE                             R10 R6
       41 NAMECALL                         R8 R8 K8 ["format"]
       43 CALL                             R8 2 1
       44 CALL                             R7 1 0
       45 MOVE                             R3 R4
       46 GETUPVAL                         R4 0
       47 JUMPIFNOTEQ                      R4 R2 ; [+2]
       49 JUMPIF                           R3 ; [+1]
       50 RETURN                           R3 1
       51 LOADB                            R4 0
       52 SETUPVAL                         R4 1
       53 JUMPIFNOT                        R1 ; [+10]
       54 GETUPVAL                         R4 2
       55 LOADB                            R6 1
       56 NAMECALL                         R4 R4 K1 ["set"]
       58 CALL                             R4 2 0
       59 GETUPVAL                         R4 3
       60 LOADB                            R6 1
       61 NAMECALL                         R4 R4 K2 ["Fire"]
       63 CALL                             R4 2 0
       64 LOADB                            R4 1
       65 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 LOADB                            R1 0
        3 LOADB                            R2 1
        4 RETURN                           R1 2
        5 GETIMPORT                        R1 K1 [pcall]
        7 GETTABLEKS                       R2 R0 K2 ["getUserSettingsAsync"]
        9 LOADK                            R3 K3 ["mcp-prompt-sharing"]
       10 CALL                             R1 2 2
       11 JUMPIF                           R1 ; [+3]
       12 LOADNIL                          R3
       13 LOADB                            R4 0
       14 RETURN                           R3 2
       15 FASTCALL1                        TYPEOF R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K5 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+12]
       22 GETTABLEKS                       R5 R2 K7 ["enabled"]
       24 FASTCALL1                        TYPEOF R5 ; [+2]
       25 GETIMPORT                        R4 K5 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K8 ["boolean"] ; [+4]
       30 GETTABLEKS                       R3 R2 K7 ["enabled"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R3
       34 LOADB                            R4 1
       35 RETURN                           R3 2

PROTO_7:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+3]
        2 LOADB                            R2 0
        3 LOADB                            R3 1
        4 JUMP                             ; [+30]
        5 GETIMPORT                        R4 K1 [pcall]
        7 GETTABLEKS                       R5 R0 K2 ["getUserSettingsAsync"]
        9 LOADK                            R6 K3 ["mcp-prompt-sharing"]
       10 CALL                             R4 2 2
       11 JUMPIF                           R4 ; [+3]
       12 LOADNIL                          R2
       13 LOADB                            R3 0
       14 JUMP                             ; [+20]
       15 FASTCALL1                        TYPEOF R5 ; [+3]
       16 MOVE                             R7 R5
       17 GETIMPORT                        R6 K5 [typeof]
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKS                    R6 K6 ["table"] ; [+12]
       22 GETTABLEKS                       R7 R5 K7 ["enabled"]
       24 FASTCALL1                        TYPEOF R7 ; [+2]
       25 GETIMPORT                        R6 K5 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFNOTEQKS                    R6 K8 ["boolean"] ; [+4]
       30 GETTABLEKS                       R2 R5 K7 ["enabled"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 LOADB                            R3 1
       35 JUMPIFNOT                        R3 ; [+2]
       36 JUMPIFEQKNIL                     R2 ; [+3]
       38 LOADB                            R4 0
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 1
       41 MOVE                             R5 R0
       42 MOVE                             R6 R1
       43 CALL                             R4 2 1
       44 RETURN                           R4 1

PROTO_8:
        0 LOADB                            R2 0
        1 SETUPVAL                         R2 0
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 ADDK                             R2 R2 K0 [1]
        9 SETUPVAL                         R2 2
       10 GETUPVAL                         R2 3
       11 LOADB                            R4 0
       12 NAMECALL                         R2 R2 K1 ["set"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Signal"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R3 K12 ["Util"]
       35 GETTABLEKS                       R5 R5 K13 ["Observable"]
       37 GETTABLEKS                       R6 R5 K14 ["new"]
       39 LOADB                            R7 0
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R4 K14 ["new"]
       43 CALL                             R7 0 1
       44 LOADB                            R8 0
       45 LOADN                            R9 0
       46 DUPCLOSURE                       R10 K15 [PROTO_0]
       47 DUPCLOSURE                       R11 K16 [PROTO_1]
       48 CAPTURE                          VAL R2
       49 DUPCLOSURE                       R12 K17 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 NEWCLOSURE                       R13 P3
       52 CAPTURE                          REF R9
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 NEWCLOSURE                       R14 P4
       57 CAPTURE                          REF R9
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 NEWCLOSURE                       R15 P5
       63 CAPTURE                          REF R8
       64 NEWCLOSURE                       R16 P6
       65 CAPTURE                          REF R8
       66 CAPTURE                          VAL R14
       67 NEWCLOSURE                       R17 P7
       68 CAPTURE                          REF R8
       69 CAPTURE                          VAL R13
       70 CAPTURE                          REF R9
       71 CAPTURE                          VAL R6
       72 DUPCLOSURE                       R18 K18 [PROTO_9]
       73 CAPTURE                          VAL R6
       74 DUPTABLE                         R19 K29 [{["SETTINGS_KEY"] = "mcp-prompt-sharing", ["enabledObservable"], ["changedHere"], ["loadAsync"], ["setEnabledAsync"], ["readSavedAsync"], ["saveDefaultAsync"], ["applyRemoteChangeAsync"], ["isEnabled"]}]
       75 SETTABLEKS                       R6 R19 K21 ["enabledObservable"]
       77 SETTABLEKS                       R7 R19 K22 ["changedHere"]
       79 SETTABLEKS                       R13 R19 K23 ["loadAsync"]
       81 SETTABLEKS                       R14 R19 K24 ["setEnabledAsync"]
       83 SETTABLEKS                       R15 R19 K25 ["readSavedAsync"]
       85 SETTABLEKS                       R16 R19 K26 ["saveDefaultAsync"]
       87 SETTABLEKS                       R17 R19 K27 ["applyRemoteChangeAsync"]
       89 SETTABLEKS                       R18 R19 K28 ["isEnabled"]
       91 CLOSEUPVALS                      R8
       92 RETURN                           R19 1
