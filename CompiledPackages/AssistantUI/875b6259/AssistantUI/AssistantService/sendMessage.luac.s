PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["kind"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+4]
        8 GETTABLEKS                       R7 R6 K1 ["optionId"]
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-8]
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"messageId", "contentId", "transformFn"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["messageId"]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["contentId"]
        8 DUPCLOSURE                       R3 K4 [PROTO_1]
        9 SETTABLEKS                       R3 R2 K2 ["transformFn"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K5 ["options"]
       15 MOVE                             R4 R3
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R9 R8 K6 ["kind"]
       21 JUMPIFNOTEQ                      R9 R0 ; [+4]
       23 GETTABLEKS                       R2 R8 K7 ["optionId"]
       25 JUMP                             ; [+3]
       26 FORGLOOP                         R4 2 ; [-8]
       28 LOADNIL                          R2
       29 OR                               R1 R2 R0
       30 GETUPVAL                         R2 4
       31 DUPTABLE                         R3 K9 [{"outcome"}]
       32 DUPTABLE                         R4 K10 [{"outcome", "optionId"}]
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K11 ["Selected"]
       36 SETTABLEKS                       R5 R4 K8 ["outcome"]
       38 SETTABLEKS                       R1 R4 K7 ["optionId"]
       40 SETTABLEKS                       R4 R3 K8 ["outcome"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AllowOnce"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RejectOnce"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AllowAlways"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toolCall"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["toolCall"]
        7 GETTABLEKS                       R2 R2 K2 ["title"]
        9 ORK                              R1 R2 K1 ["unknown_tool"]
       10 JUMP                             ; [+1]
       11 LOADK                            R1 K1 ["unknown_tool"]
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 LOADNIL                          R3
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          REF R3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 DUPTABLE                         R5 K8 [{"type", "toolName", "onConfirm", "onReject", "onAlwaysAccept"}]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K9 ["Type"]
       26 SETTABLEKS                       R6 R5 K3 ["type"]
       28 SETTABLEKS                       R1 R5 K4 ["toolName"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          UPVAL U5
       33 SETTABLEKS                       R6 R5 K5 ["onConfirm"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U5
       38 SETTABLEKS                       R6 R5 K6 ["onReject"]
       40 NEWCLOSURE                       R6 P3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U5
       43 SETTABLEKS                       R6 R5 K7 ["onAlwaysAccept"]
       45 GETUPVAL                         R6 6
       46 DUPTABLE                         R7 K12 [{"messageId", "content"}]
       47 SETTABLEKS                       R2 R7 K10 ["messageId"]
       49 SETTABLEKS                       R5 R7 K11 ["content"]
       51 CALL                             R6 1 1
       52 MOVE                             R3 R6
       53 CLOSEUPVALS                      R3
       54 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 RETURN                           R3 1

PROTO_9:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K2 [{"type", "text"}]
        3 LOADK                            R3 K1 ["text"]
        4 SETTABLEKS                       R3 R2 K0 ["type"]
        6 GETTABLEKS                       R3 R0 K1 ["text"]
        8 SETTABLEKS                       R3 R2 K1 ["text"]
       10 SETLIST                          R1 R2 1 [1]
       12 GETTABLEKS                       R2 R0 K3 ["images"]
       14 JUMPIFNOT                        R2 ; [+25]
       15 GETTABLEKS                       R2 R0 K3 ["images"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 DUPTABLE                         R9 K6 [{"type", "data", "mimeType"}]
       21 LOADK                            R10 K7 ["image"]
       22 SETTABLEKS                       R10 R9 K0 ["type"]
       24 GETTABLEKS                       R10 R6 K4 ["data"]
       26 SETTABLEKS                       R10 R9 K4 ["data"]
       28 GETTABLEKS                       R10 R6 K5 ["mimeType"]
       30 SETTABLEKS                       R10 R9 K5 ["mimeType"]
       32 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       34 MOVE                             R8 R1
       35 GETIMPORT                        R7 K10 [table.insert]
       37 CALL                             R7 2 0
       38 FORGLOOP                         R2 2 ; [-19]
       40 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R3 K3 [{"sessionId", "prompt", "_meta"}]
        1 SETTABLEKS                       R2 R3 K0 ["sessionId"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K1 ["prompt"]
        8 DUPTABLE                         R4 K5 [{"_roblox"}]
        9 DUPTABLE                         R5 K8 [{"providerConfig", "retry"}]
       10 DUPTABLE                         R6 K11 [{"apiKeys", "selectedModel"}]
       11 GETTABLEKS                       R7 R0 K9 ["apiKeys"]
       13 SETTABLEKS                       R7 R6 K9 ["apiKeys"]
       15 GETTABLEKS                       R7 R0 K10 ["selectedModel"]
       17 SETTABLEKS                       R7 R6 K10 ["selectedModel"]
       19 SETTABLEKS                       R6 R5 K6 ["providerConfig"]
       21 GETTABLEKS                       R7 R1 K7 ["retry"]
       23 JUMPIFNOT                        R7 ; [+6]
       24 DUPTABLE                         R6 K13 [{"previousMessageId"}]
       25 GETTABLEKS                       R7 R1 K12 ["previousMessageId"]
       27 SETTABLEKS                       R7 R6 K12 ["previousMessageId"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K7 ["retry"]
       33 SETTABLEKS                       R5 R4 K4 ["_roblox"]
       35 SETTABLEKS                       R4 R3 K2 ["_meta"]
       37 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getOrCreateAssistantMessage"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["handleUpdate"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["service"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 NAMECALL                         R0 R0 K1 ["setPermissionRequestHandler"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["service"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["threadId"]
        6 NAMECALL                         R2 R2 K2 ["getOrCreateSessionForThread"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K3 ["await"]
       11 CALL                             R2 1 2
       12 JUMPIF                           R2 ; [+13]
       13 MOVE                             R4 R1
       14 LOADK                            R6 K4 ["failed to resolve sessionId: %*"]
       15 FASTCALL1                        TOSTRING R3 ; [+3]
       16 MOVE                             R9 R3
       17 GETIMPORT                        R8 K6 [tostring]
       19 CALL                             R8 1 1
       20 NAMECALL                         R6 R6 K7 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 CALL                             R4 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K8 ["new"]
       29 DUPTABLE                         R5 K12 [{"addMessage", "addContent", "editContent"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K9 ["addMessage"]
       33 SETTABLEKS                       R6 R5 K9 ["addMessage"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K10 ["addContent"]
       38 SETTABLEKS                       R6 R5 K10 ["addContent"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K11 ["editContent"]
       43 SETTABLEKS                       R6 R5 K11 ["editContent"]
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["service"]
       49 MOVE                             R7 R3
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K10 ["addContent"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K11 ["editContent"]
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R4
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R10
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R9
       66 NAMECALL                         R5 R5 K13 ["setPermissionRequestHandler"]
       68 CALL                             R5 3 0
       69 GETUPVAL                         R5 6
       70 GETUPVAL                         R6 0
       71 GETUPVAL                         R7 7
       72 MOVE                             R8 R3
       73 CALL                             R5 3 1
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K0 ["service"]
       77 MOVE                             R8 R5
       78 NEWCLOSURE                       R9 P2
       79 CAPTURE                          VAL R4
       80 NAMECALL                         R6 R6 K14 ["prompt"]
       82 CALL                             R6 3 1
       83 NEWCLOSURE                       R8 P3
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          VAL R3
       86 NAMECALL                         R6 R6 K15 ["finally"]
       88 CALL                             R6 2 1
       89 NAMECALL                         R6 R6 K3 ["await"]
       91 CALL                             R6 1 2
       92 JUMPIF                           R6 ; [+13]
       93 MOVE                             R8 R1
       94 LOADK                            R10 K16 ["prompt failed: %*"]
       95 FASTCALL1                        TOSTRING R7 ; [+3]
       96 MOVE                             R13 R7
       97 GETIMPORT                        R12 K6 [tostring]
       99 CALL                             R12 1 1
      100 NAMECALL                         R10 R10 K7 ["format"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 CALL                             R8 1 0
      105 RETURN                           R0 0
      106 MOVE                             R8 R0
      107 CALL                             R8 0 0
      108 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K8 ["AssistantServiceUIRelay"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K9 ["Promise"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R6 K11 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K12 ["ToolConfirmationContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K13 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R1 K14 ["Acp"]
       53 GETTABLEKS                       R7 R7 K13 ["Types"]
       55 GETTABLEKS                       R8 R7 K15 ["PermissionOptionKinds"]
       57 GETTABLEKS                       R9 R7 K16 ["PermissionOutcomes"]
       59 DUPCLOSURE                       R10 K17 [PROTO_0]
       60 DUPCLOSURE                       R11 K18 [PROTO_8]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R12 K19 [PROTO_9]
       66 DUPCLOSURE                       R13 K20 [PROTO_10]
       67 CAPTURE                          VAL R12
       68 DUPCLOSURE                       R14 K21 [PROTO_15]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R13
       75 RETURN                           R14 1
