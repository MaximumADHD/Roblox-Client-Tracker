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
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R2 K1 [pcall]
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+21]
        8 LOADK                            R4 K2 ["Failed to save prompt sharing setting: %*"]
        9 FASTCALL1                        TOSTRING R3 ; [+3]
       10 MOVE                             R7 R3
       11 GETIMPORT                        R6 K4 [tostring]
       13 CALL                             R6 1 1
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       20 JUMPIFNOT                        R5 ; [+8]
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R6 K9 ["[McpCaptureConsent] %*"]
       24 MOVE                             R8 R4
       25 NAMECALL                         R6 R6 K5 ["format"]
       27 CALL                             R6 2 1
       28 CALL                             R5 1 0
       29 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+50]
        3 LOADB                            R5 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R5
        6 CAPTURE                          VAL R0
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R3 K1 [pcall]
       10 CALL                             R3 1 2
       11 JUMPIF                           R3 ; [+21]
       12 LOADK                            R5 K2 ["Failed to save prompt sharing setting: %*"]
       13 FASTCALL1                        TOSTRING R4 ; [+3]
       14 MOVE                             R8 R4
       15 GETIMPORT                        R7 K4 [tostring]
       17 CALL                             R7 1 1
       18 NAMECALL                         R5 R5 K5 ["format"]
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K6 ["FFlagDebugAssistantMcpCaptureLogging"]
       24 JUMPIFNOT                        R6 ; [+8]
       25 GETIMPORT                        R6 K8 [warn]
       27 LOADK                            R7 K9 ["[McpCaptureConsent] %*"]
       28 MOVE                             R9 R5
       29 NAMECALL                         R7 R7 K5 ["format"]
       31 CALL                             R7 2 1
       32 CALL                             R6 1 0
       33 MOVE                             R2 R3
       34 GETUPVAL                         R3 0
       35 JUMPIFEQ                         R3 R1 ; [+7]
       37 GETUPVAL                         R3 3
       38 NAMECALL                         R3 R3 K10 ["get"]
       40 CALL                             R3 1 1
       41 LOADB                            R4 0
       42 RETURN                           R3 2
       43 NOT                              R3 R2
       44 SETUPVAL                         R3 1
       45 GETUPVAL                         R3 3
       46 LOADB                            R5 0
       47 NAMECALL                         R3 R3 K11 ["set"]
       49 CALL                             R3 2 0
       50 LOADB                            R3 0
       51 LOADB                            R4 1
       52 RETURN                           R3 2
       53 GETTABLEKS                       R3 R0 K12 ["getUserSettingsAsync"]
       55 LOADK                            R4 K13 ["mcp-prompt-sharing"]
       56 FASTPCALL                        pcall 2 ; [+2]
       57 GETIMPORT                        R2 K1 [pcall]
       59 CALL                             R2 2 2
       60 GETUPVAL                         R4 0
       61 JUMPIFEQ                         R4 R1 ; [+7]
       63 GETUPVAL                         R4 3
       64 NAMECALL                         R4 R4 K10 ["get"]
       66 CALL                             R4 1 1
       67 LOADB                            R5 0
       68 RETURN                           R4 2
       69 MOVE                             R4 R2
       70 JUMPIFNOT                        R4 ; [+23]
       71 FASTCALL1                        TYPEOF R3 ; [+3]
       72 MOVE                             R7 R3
       73 GETIMPORT                        R6 K15 [typeof]
       75 CALL                             R6 1 1
       76 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+12]
       78 GETTABLEKS                       R7 R3 K17 ["enabled"]
       80 FASTCALL1                        TYPEOF R7 ; [+2]
       81 GETIMPORT                        R6 K15 [typeof]
       83 CALL                             R6 1 1
       84 JUMPIFNOTEQKS                    R6 K18 ["boolean"] ; [+4]
       86 GETTABLEKS                       R5 R3 K17 ["enabled"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R5
       90 JUMPIFEQKB                       R5 TRUE ; [+2]
       92 LOADB                            R4 0 +1
       93 LOADB                            R4 1
       94 GETUPVAL                         R5 3
       95 MOVE                             R7 R4
       96 NAMECALL                         R5 R5 K11 ["set"]
       98 CALL                             R5 2 0
       99 MOVE                             R5 R4
      100 MOVE                             R6 R2
      101 RETURN                           R5 2

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
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R4 K4 [pcall]
       23 CALL                             R4 1 2
       24 JUMPIF                           R4 ; [+21]
       25 LOADK                            R6 K5 ["Failed to save prompt sharing setting: %*"]
       26 FASTCALL1                        TOSTRING R5 ; [+3]
       27 MOVE                             R9 R5
       28 GETIMPORT                        R8 K7 [tostring]
       30 CALL                             R8 1 1
       31 NAMECALL                         R6 R6 K8 ["format"]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K9 ["FFlagDebugAssistantMcpCaptureLogging"]
       37 JUMPIFNOT                        R7 ; [+8]
       38 GETIMPORT                        R7 K11 [warn]
       40 LOADK                            R8 K12 ["[McpCaptureConsent] %*"]
       41 MOVE                             R10 R6
       42 NAMECALL                         R8 R8 K8 ["format"]
       44 CALL                             R8 2 1
       45 CALL                             R7 1 0
       46 MOVE                             R3 R4
       47 GETUPVAL                         R4 0
       48 JUMPIFNOTEQ                      R4 R2 ; [+2]
       50 JUMPIF                           R3 ; [+1]
       51 RETURN                           R3 1
       52 LOADB                            R4 0
       53 SETUPVAL                         R4 1
       54 JUMPIFNOT                        R1 ; [+10]
       55 GETUPVAL                         R4 2
       56 LOADB                            R6 1
       57 NAMECALL                         R4 R4 K1 ["set"]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R4 3
       61 LOADB                            R6 1
       62 NAMECALL                         R4 R4 K2 ["Fire"]
       64 CALL                             R4 2 0
       65 LOADB                            R4 1
       66 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 LOADB                            R1 0
        3 LOADB                            R2 1
        4 RETURN                           R1 2
        5 GETTABLEKS                       R2 R0 K0 ["getUserSettingsAsync"]
        7 LOADK                            R3 K1 ["mcp-prompt-sharing"]
        8 FASTPCALL                        pcall 2 ; [+2]
        9 GETIMPORT                        R1 K3 [pcall]
       11 CALL                             R1 2 2
       12 JUMPIF                           R1 ; [+3]
       13 LOADNIL                          R3
       14 LOADB                            R4 0
       15 RETURN                           R3 2
       16 FASTCALL1                        TYPEOF R2 ; [+3]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R4 K5 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+12]
       23 GETTABLEKS                       R5 R2 K7 ["enabled"]
       25 FASTCALL1                        TYPEOF R5 ; [+2]
       26 GETIMPORT                        R4 K5 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K8 ["boolean"] ; [+4]
       31 GETTABLEKS                       R3 R2 K7 ["enabled"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 LOADB                            R4 1
       36 RETURN                           R3 2

PROTO_7:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+3]
        2 LOADB                            R2 0
        3 LOADB                            R3 1
        4 JUMP                             ; [+31]
        5 GETTABLEKS                       R5 R0 K0 ["getUserSettingsAsync"]
        7 LOADK                            R6 K1 ["mcp-prompt-sharing"]
        8 FASTPCALL                        pcall 2 ; [+2]
        9 GETIMPORT                        R4 K3 [pcall]
       11 CALL                             R4 2 2
       12 JUMPIF                           R4 ; [+3]
       13 LOADNIL                          R2
       14 LOADB                            R3 0
       15 JUMP                             ; [+20]
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K5 [typeof]
       20 CALL                             R6 1 1
       21 JUMPIFNOTEQKS                    R6 K6 ["table"] ; [+12]
       23 GETTABLEKS                       R7 R5 K7 ["enabled"]
       25 FASTCALL1                        TYPEOF R7 ; [+2]
       26 GETIMPORT                        R6 K5 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K8 ["boolean"] ; [+4]
       31 GETTABLEKS                       R2 R5 K7 ["enabled"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R2
       35 LOADB                            R3 1
       36 JUMPIFNOT                        R3 ; [+2]
       37 JUMPIFEQKNIL                     R2 ; [+3]
       39 LOADB                            R4 0
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 1
       42 MOVE                             R5 R0
       43 MOVE                             R6 R1
       44 CALL                             R4 2 1
       45 RETURN                           R4 1

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
