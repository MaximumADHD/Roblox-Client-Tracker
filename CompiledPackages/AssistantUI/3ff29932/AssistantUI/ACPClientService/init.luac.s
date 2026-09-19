PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFEQKS                       R1 K1 ["user_message"] ; [+2]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K2 ["content"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K3 ["type"]
       14 JUMPIFNOTEQKS                    R7 K4 ["image"] ; [+27]
       16 GETTABLEKS                       R7 R6 K5 ["uri"]
       18 JUMPIFNOT                        R7 ; [+15]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["restoreImage"]
       22 GETTABLEKS                       R8 R6 K5 ["uri"]
       24 DUPTABLE                         R9 K9 [{["type"] = "image", ["data"], ["mimeType"]}]
       25 GETTABLEKS                       R10 R6 K7 ["data"]
       27 SETTABLEKS                       R10 R9 K7 ["data"]
       29 GETTABLEKS                       R10 R6 K8 ["mimeType"]
       31 SETTABLEKS                       R10 R9 K8 ["mimeType"]
       33 CALL                             R7 2 0
       34 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R6
       38 GETIMPORT                        R7 K12 [table.insert]
       40 CALL                             R7 2 0
       41 JUMP                             ; [+49]
       42 GETTABLEKS                       R7 R6 K3 ["type"]
       44 JUMPIFNOTEQKS                    R7 K13 ["text"] ; [+39]
       46 GETIMPORT                        R8 K16 [string.match]
       48 GETTABLEKS                       R9 R6 K13 ["text"]
       50 LOADK                            R10 K17 ["^%s*<system_reminder>Attached image URI: (IMAGEID_[%w%-]+)</system_reminder>%s*$"]
       51 CALL                             R8 2 1
       52 JUMPIFNOTEQKNIL                  R8 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 GETIMPORT                        R9 K19 [string.find]
       58 GETTABLEKS                       R10 R6 K13 ["text"]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K20 ["SYSTEM_REMINDER_OPEN"]
       63 LOADN                            R12 1
       64 LOADB                            R13 1
       65 CALL                             R9 4 1
       66 JUMPIFNOTEQKNIL                  R9 ; [+2]
       68 LOADB                            R8 0 +1
       69 LOADB                            R8 1
       70 JUMPIF                           R7 ; [+20]
       71 JUMPIF                           R8 ; [+19]
       72 GETTABLEKS                       R9 R6 K13 ["text"]
       74 JUMPIFEQKS                       R9 K21 [""] ; [+16]
       76 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       78 MOVE                             R10 R1
       79 MOVE                             R11 R6
       80 GETIMPORT                        R9 K12 [table.insert]
       82 CALL                             R9 2 0
       83 JUMP                             ; [+7]
       84 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       86 MOVE                             R8 R1
       87 MOVE                             R9 R6
       88 GETIMPORT                        R7 K12 [table.insert]
       90 CALL                             R7 2 0
       91 FORGLOOP                         R2 2 ; [-80]
       93 LENGTH                           R2 R1
       94 JUMPIFNOTEQKN                    R2 K22 [0] ; [+3]
       96 LOADNIL                          R2
       97 RETURN                           R2 1
       98 GETIMPORT                        R2 K24 [table.clone]
      100 MOVE                             R3 R0
      101 CALL                             R2 1 1
      102 SETTABLEKS                       R1 R2 K2 ["content"]
      104 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["pending"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["in_progress"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionUpdateSignal"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 0
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K3 ["_observeSlashCommandSignature"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K4 ["_maybeExecuteClientTool"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R4 32 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["_client"]
       10 MOVE                             R4 R1
       11 JUMPIF                           R4 ; [+1]
       12 GETUPVAL                         R4 1
       13 SETTABLEKS                       R4 R3 K3 ["_eventLogger"]
       15 SETTABLEKS                       R2 R3 K4 ["_getToolCallMeta"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K5 ["new"]
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K6 ["_sessionUpdateSignal"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K7 ["_subscribedSessionIds"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K8 ["_sessionIdByThreadId"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K9 ["_toolCallMetaBySessionId"]
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K10 ["_toolUiContextByToolCallId"]
       39 NEWTABLE                         R4 0 0
       41 SETTABLEKS                       R4 R3 K11 ["_toolConfirmationHandlers"]
       43 NEWTABLE                         R4 0 0
       45 SETTABLEKS                       R4 R3 K12 ["_activeClientToolPromises"]
       47 NEWTABLE                         R4 0 0
       49 SETTABLEKS                       R4 R3 K13 ["_toolInvocationStateByToolCallId"]
       51 NEWTABLE                         R4 0 0
       53 SETTABLEKS                       R4 R3 K14 ["_executingClientTools"]
       55 NEWTABLE                         R4 0 0
       57 SETTABLEKS                       R4 R3 K15 ["_failedInvocationLoggedByToolCallId"]
       59 LOADNIL                          R4
       60 SETTABLEKS                       R4 R3 K16 ["_clientToolHandler"]
       62 LOADNIL                          R4
       63 SETTABLEKS                       R4 R3 K17 ["_listTools"]
       65 LOADNIL                          R4
       66 SETTABLEKS                       R4 R3 K18 ["_initializePromise"]
       68 NEWTABLE                         R4 0 0
       70 SETTABLEKS                       R4 R3 K19 ["_slashUserPromptBySessionId"]
       72 NEWTABLE                         R4 0 0
       74 SETTABLEKS                       R4 R3 K20 ["_matchedSlashCommandBySessionId"]
       76 NEWCLOSURE                       R6 P0
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U3
       79 NAMECALL                         R4 R0 K21 ["setSessionUpdateHandler"]
       81 CALL                             R4 2 0
       82 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["update"]
        2 GETTABLEKS                       R3 R2 K1 ["sessionUpdate"]
        4 JUMPIFEQKS                       R3 K2 ["tool_call"] ; [+6]
        6 GETTABLEKS                       R3 R2 K1 ["sessionUpdate"]
        8 JUMPIFEQKS                       R3 K3 ["tool_call_update"] ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R2 K4 ["toolCallId"]
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R5 R3
       15 GETIMPORT                        R4 K6 [typeof]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R5 R0 K8 ["_toolInvocationStateByToolCallId"]
       23 GETTABLE                         R4 R5 R3
       24 JUMPIFNOT                        R4 ; [+25]
       25 GETTABLEKS                       R6 R2 K9 ["title"]
       27 FASTCALL1                        TYPEOF R6 ; [+2]
       28 GETIMPORT                        R5 K6 [typeof]
       30 CALL                             R5 1 1
       31 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+17]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K10 ["isStudioTool"]
       36 GETTABLEKS                       R6 R2 K9 ["title"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K10 ["isStudioTool"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K11 ["stripPrefix"]
       44 GETTABLEKS                       R6 R2 K9 ["title"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K12 ["toolName"]
       49 RETURN                           R0 0
       50 GETTABLEKS                       R5 R0 K8 ["_toolInvocationStateByToolCallId"]
       52 DUPTABLE                         R6 K15 [{"startTime", "toolName", "isStudioTool", "sessionId"}]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K16 ["getTimestampMilliseconds"]
       56 CALL                             R7 0 1
       57 SETTABLEKS                       R7 R6 K13 ["startTime"]
       59 GETTABLEKS                       R9 R2 K9 ["title"]
       61 FASTCALL1                        TYPEOF R9 ; [+2]
       62 GETIMPORT                        R8 K6 [typeof]
       64 CALL                             R8 1 1
       65 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+8]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K11 ["stripPrefix"]
       70 GETTABLEKS                       R8 R2 K9 ["title"]
       72 CALL                             R7 1 1
       73 JUMP                             ; [+1]
       74 LOADK                            R7 K17 ["unknown_tool"]
       75 SETTABLEKS                       R7 R6 K12 ["toolName"]
       77 LOADB                            R7 0
       78 GETTABLEKS                       R9 R2 K9 ["title"]
       80 FASTCALL1                        TYPEOF R9 ; [+2]
       81 GETIMPORT                        R8 K6 [typeof]
       83 CALL                             R8 1 1
       84 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+7]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K10 ["isStudioTool"]
       89 GETTABLEKS                       R8 R2 K9 ["title"]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R7 R6 K10 ["isStudioTool"]
       94 GETTABLEKS                       R7 R1 K14 ["sessionId"]
       96 SETTABLEKS                       R7 R6 K14 ["sessionId"]
       98 SETTABLE                         R6 R5 R3
       99 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R2 ; [+5]
        1 GETTABLEKS                       R6 R0 K0 ["_failedInvocationLoggedByToolCallId"]
        3 GETTABLE                         R5 R6 R2
        4 JUMPIFNOT                        R5 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETTABLEKS                       R6 R0 K1 ["_toolInvocationStateByToolCallId"]
        9 GETTABLE                         R5 R6 R2
       10 JUMP                             ; [+1]
       11 LOADNIL                          R5
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R7 R0 K2 ["_toolUiContextByToolCallId"]
       15 GETTABLE                         R6 R7 R2
       16 JUMP                             ; [+1]
       17 LOADNIL                          R6
       18 GETTABLEKS                       R8 R0 K3 ["_getToolCallMeta"]
       20 JUMPIFNOT                        R8 ; [+12]
       21 GETTABLEKS                       R7 R0 K3 ["_getToolCallMeta"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R8 R5 K4 ["sessionId"]
       26 JUMP                             ; [+1]
       27 MOVE                             R8 R1
       28 CALL                             R7 1 1
       29 JUMPIF                           R7 ; [+5]
       30 NEWTABLE                         R7 0 0
       32 JUMP                             ; [+2]
       33 NEWTABLE                         R7 0 0
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K5 ["getTimestampMilliseconds"]
       38 CALL                             R8 0 1
       39 GETTABLEKS                       R9 R0 K6 ["_eventLogger"]
       41 GETTABLEKS                       R9 R9 K7 ["logFailedToolInvocation"]
       43 DUPTABLE                         R10 K16 [{"toolName", "isStudioTool", "startTime", "endTime", "failureReason", "messageGuid", "sessionId", "toolId", "assistantMode"}]
       44 JUMPIFNOT                        R5 ; [+3]
       45 GETTABLEKS                       R11 R5 K8 ["toolName"]
       47 JUMP                             ; [+8]
       48 JUMPIFNOT                        R3 ; [+6]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K17 ["stripPrefix"]
       52 MOVE                             R12 R3
       53 CALL                             R11 1 1
       54 JUMP                             ; [+1]
       55 LOADK                            R11 K18 ["unknown_tool"]
       56 SETTABLEKS                       R11 R10 K8 ["toolName"]
       58 JUMPIFNOT                        R5 ; [+3]
       59 GETTABLEKS                       R11 R5 K9 ["isStudioTool"]
       61 JUMP                             ; [+8]
       62 LOADB                            R11 0
       63 JUMPIFEQKNIL                     R3 ; [+6]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R11 R11 K9 ["isStudioTool"]
       68 MOVE                             R12 R3
       69 CALL                             R11 1 1
       70 SETTABLEKS                       R11 R10 K9 ["isStudioTool"]
       72 JUMPIFNOT                        R5 ; [+3]
       73 GETTABLEKS                       R11 R5 K10 ["startTime"]
       75 JUMP                             ; [+1]
       76 MOVE                             R11 R8
       77 SETTABLEKS                       R11 R10 K10 ["startTime"]
       79 SETTABLEKS                       R8 R10 K11 ["endTime"]
       81 SETTABLEKS                       R4 R10 K12 ["failureReason"]
       83 MOVE                             R11 R6
       84 JUMPIFNOT                        R11 ; [+2]
       85 GETTABLEKS                       R11 R6 K19 ["messageId"]
       87 SETTABLEKS                       R11 R10 K13 ["messageGuid"]
       89 JUMPIFNOT                        R5 ; [+3]
       90 GETTABLEKS                       R11 R5 K4 ["sessionId"]
       92 JUMP                             ; [+1]
       93 MOVE                             R11 R1
       94 SETTABLEKS                       R11 R10 K4 ["sessionId"]
       96 SETTABLEKS                       R2 R10 K14 ["toolId"]
       98 GETTABLEKS                       R11 R7 K15 ["assistantMode"]
      100 SETTABLEKS                       R11 R10 K15 ["assistantMode"]
      102 CALL                             R9 1 0
      103 JUMPIFNOT                        R2 ; [+12]
      104 GETTABLEKS                       R9 R0 K0 ["_failedInvocationLoggedByToolCallId"]
      106 LOADB                            R10 1
      107 SETTABLE                         R10 R9 R2
      108 GETTABLEKS                       R9 R0 K1 ["_toolInvocationStateByToolCallId"]
      110 LOADNIL                          R10
      111 SETTABLE                         R10 R9 R2
      112 GETTABLEKS                       R9 R0 K20 ["_executingClientTools"]
      114 LOADNIL                          R10
      115 SETTABLE                         R10 R9 R2
      116 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_toolCallMetaBySessionId"]
        2 GETIMPORT                        R4 K3 [table.clone]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 SETTABLE                         R4 R3 R1
        7 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["_toolCallMetaBySessionId"]
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1
        5 LOADNIL                          R2
        6 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["sessionUpdate"]
        2 JUMPIFEQKS                       R1 K1 ["user_message"] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 NEWTABLE                         R1 0 0
        8 GETTABLEKS                       R2 R0 K2 ["content"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K3 ["type"]
       15 JUMPIFNOTEQKS                    R7 K4 ["text"] ; [+47]
       17 GETTABLEKS                       R8 R6 K4 ["text"]
       19 FASTCALL1                        TYPEOF R8 ; [+2]
       20 GETIMPORT                        R7 K6 [typeof]
       22 CALL                             R7 1 1
       23 JUMPIFNOTEQKS                    R7 K7 ["string"] ; [+39]
       25 GETIMPORT                        R8 K9 [string.match]
       27 GETTABLEKS                       R9 R6 K4 ["text"]
       29 LOADK                            R10 K10 ["^%s*<system_reminder>Attached image URI: (IMAGEID_[%w%-]+)</system_reminder>%s*$"]
       30 CALL                             R8 2 1
       31 JUMPIFNOTEQKNIL                  R8 ; [+2]
       33 LOADB                            R7 0 +1
       34 LOADB                            R7 1
       35 GETIMPORT                        R9 K12 [string.find]
       37 GETTABLEKS                       R10 R6 K4 ["text"]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K13 ["SYSTEM_REMINDER_OPEN"]
       42 LOADN                            R12 1
       43 LOADB                            R13 1
       44 CALL                             R9 4 1
       45 JUMPIFNOTEQKNIL                  R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 JUMPIF                           R7 ; [+13]
       50 JUMPIF                           R8 ; [+12]
       51 GETTABLEKS                       R9 R6 K4 ["text"]
       53 JUMPIFEQKS                       R9 K14 [""] ; [+9]
       55 GETTABLEKS                       R11 R6 K4 ["text"]
       57 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       59 MOVE                             R10 R1
       60 GETIMPORT                        R9 K17 [table.insert]
       62 CALL                             R9 2 0
       63 FORGLOOP                         R2 2 ; [-51]
       65 LENGTH                           R2 R1
       66 JUMPIFNOTEQKN                    R2 K18 [0] ; [+3]
       68 LOADNIL                          R2
       69 RETURN                           R2 1
       70 GETIMPORT                        R2 K20 [table.concat]
       72 MOVE                             R3 R1
       73 LOADK                            R4 K14 [""]
       74 CALL                             R2 2 -1
       75 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["_slashUserPromptBySessionId"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        2 FASTCALL1                        TYPEOF R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K4 ["update"]
       12 GETTABLEKS                       R4 R3 K5 ["sessionUpdate"]
       14 JUMPIFNOTEQKS                    R4 K6 ["state_update"] ; [+14]
       16 GETTABLEKS                       R4 R3 K7 ["state"]
       18 JUMPIFNOTEQKS                    R4 K8 ["idle"] ; [+10]
       20 GETTABLEKS                       R4 R0 K9 ["_slashUserPromptBySessionId"]
       22 LOADNIL                          R5
       23 SETTABLE                         R5 R4 R2
       24 GETTABLEKS                       R4 R0 K10 ["_matchedSlashCommandBySessionId"]
       26 LOADNIL                          R5
       27 SETTABLE                         R5 R4 R2
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 JUMPIFEQKNIL                     R4 ; [+6]
       34 GETTABLEKS                       R6 R0 K9 ["_slashUserPromptBySessionId"]
       36 GETTABLE                         R5 R6 R2
       37 JUMPIFEQ                         R5 R4 ; [+2]
       39 RETURN                           R0 0
       40 GETTABLEKS                       R5 R0 K9 ["_slashUserPromptBySessionId"]
       42 LOADNIL                          R6
       43 SETTABLE                         R6 R5 R2
       44 GETTABLEKS                       R5 R0 K10 ["_matchedSlashCommandBySessionId"]
       46 LOADB                            R6 1
       47 SETTABLE                         R6 R5 R2
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["isMCPDestructing"]
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["FFlagDebugLogAssistantUI"]
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETIMPORT                        R1 K3 [print]
       14 LOADK                            R2 K4 ["[Tool Call] skip submit result: toolCallId=%*, because MCP is being destructed, we don't submit the dmnetworking disconnect error as tool result"]
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R2 R2 K5 ["format"]
       18 CALL                             R2 2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K1 ["FFlagDebugLogAssistantUI"]
       24 JUMPIFNOT                        R1 ; [+22]
       25 GETIMPORT                        R1 K3 [print]
       27 LOADK                            R2 K6 ["[Tool Call] submit result: toolCallId=%* isError=%*"]
       28 GETUPVAL                         R4 3
       29 LOADB                            R5 0
       30 FASTCALL1                        TYPEOF R0 ; [+3]
       31 MOVE                             R7 R0
       32 GETIMPORT                        R6 K8 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K9 ["table"] ; [+7]
       37 GETTABLEKS                       R6 R0 K10 ["isError"]
       39 JUMPIFEQKB                       R6 TRUE ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 NAMECALL                         R2 R2 K5 ["format"]
       45 CALL                             R2 3 1
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 4
       48 GETTABLEKS                       R1 R1 K11 ["submitToolResult"]
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R2 R2 K12 ["_client"]
       53 DUPTABLE                         R3 K17 [{"sessionId", "referenceId", "turnId", "content"}]
       54 GETUPVAL                         R4 6
       55 SETTABLEKS                       R4 R3 K13 ["sessionId"]
       57 GETUPVAL                         R4 7
       58 GETTABLEKS                       R4 R4 K14 ["referenceId"]
       60 SETTABLEKS                       R4 R3 K14 ["referenceId"]
       62 GETUPVAL                         R4 7
       63 GETTABLEKS                       R4 R4 K15 ["turnId"]
       65 SETTABLEKS                       R4 R3 K15 ["turnId"]
       67 SETTABLEKS                       R0 R3 K16 ["content"]
       69 CALL                             R1 2 0
       70 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K3 [{[1] = True, ["content"]}]
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K6 [{["type"] = "text", ["text"]}]
        4 SETTABLEKS                       R0 R3 K5 ["text"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K2 ["content"]
       10 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Tool Call] cancelled: toolCallId=%*"]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R1 R1 K4 ["format"]
       10 CALL                             R1 2 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K5 ["interrupt"]
       17 GETUPVAL                         R1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 3
       20 JUMPIFNOT                        R0 ; [+4]
       21 GETUPVAL                         R0 3
       22 NAMECALL                         R0 R0 K6 ["cancel"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETTABLEKS                       R2 R0 K0 ["result"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[Tool Call] execute rejected: toolCallId=%* error=%*"]
        7 GETUPVAL                         R4 1
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R6 R0
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 3 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 3
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K5 [tostring]
       23 CALL                             R3 1 1
       24 CALL                             R2 1 1
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[Tool Call] confirmation decision: toolCallId=%* decision=%*"]
        7 GETUPVAL                         R4 1
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R6 R0
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 3 1
       16 CALL                             R1 1 0
       17 JUMPIFNOTEQKS                    R0 K7 ["interrupted"] ; [+13]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R4 1
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K8 ["title"]
       25 LOADK                            R6 K9 ["confirmation_interrupted_before_execution"]
       26 NAMECALL                         R1 R1 K10 ["_logFailedToolInvocation"]
       28 CALL                             R1 5 0
       29 LOADNIL                          R1
       30 RETURN                           R1 1
       31 JUMPIFNOTEQKS                    R0 K11 ["deny"] ; [+18]
       33 GETUPVAL                         R1 2
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R4 1
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K8 ["title"]
       39 LOADK                            R6 K12 ["user_denied"]
       40 NAMECALL                         R1 R1 K10 ["_logFailedToolInvocation"]
       42 CALL                             R1 5 0
       43 GETUPVAL                         R1 5
       44 GETUPVAL                         R2 6
       45 LOADK                            R3 K13 ["The tool call was cancelled by the user."]
       46 CALL                             R2 1 1
       47 CALL                             R1 1 0
       48 LOADNIL                          R1
       49 RETURN                           R1 1
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K14 ["_executingClientTools"]
       53 GETUPVAL                         R2 1
       54 LOADB                            R3 1
       55 SETTABLE                         R3 R1 R2
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
       59 JUMPIFNOT                        R1 ; [+11]
       60 GETIMPORT                        R1 K2 [print]
       62 LOADK                            R2 K15 ["[Tool Call] execute: toolCallId=%* name=%*"]
       63 GETUPVAL                         R4 1
       64 GETUPVAL                         R5 7
       65 GETTABLEKS                       R5 R5 K16 ["name"]
       67 NAMECALL                         R2 R2 K6 ["format"]
       69 CALL                             R2 3 1
       70 CALL                             R1 1 0
       71 GETUPVAL                         R1 9
       72 GETUPVAL                         R2 7
       73 CALL                             R1 1 1
       74 SETUPVAL                         R1 8
       75 GETUPVAL                         R1 10
       76 GETTABLEKS                       R1 R1 K17 ["resolve"]
       78 GETUPVAL                         R2 8
       79 CALL                             R1 1 1
       80 NEWCLOSURE                       R3 P0
       81 CAPTURE                          UPVAL U5
       82 NAMECALL                         R1 R1 K18 ["andThen"]
       84 CALL                             R1 2 1
       85 NEWCLOSURE                       R3 P1
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U6
       90 NAMECALL                         R1 R1 K19 ["catch"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1

PROTO_17:
        0 MOVE                             R3 R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 4
        8 GETTABLEKS                       R3 R3 K0 ["resolve"]
       10 GETUPVAL                         R4 5
       11 CALL                             R3 1 1
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U12
       23 CAPTURE                          UPVAL U4
       24 NAMECALL                         R3 R3 K1 ["andThen"]
       26 CALL                             R3 2 1
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 NAMECALL                         R3 R3 K1 ["andThen"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_activeClientToolPromises"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+20]
        6 GETUPVAL                         R2 2
        7 GETTABLE                         R1 R0 R2
        8 GETUPVAL                         R2 3
        9 JUMPIFNOTEQ                      R1 R2 ; [+16]
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 GETIMPORT                        R1 K2 [next]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKNIL                  R1 ; [+7]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["_activeClientToolPromises"]
       23 GETUPVAL                         R2 1
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K3 ["_toolInvocationStateByToolCallId"]
       29 GETUPVAL                         R2 2
       30 LOADNIL                          R3
       31 SETTABLE                         R3 R1 R2
       32 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantDisableSessionFilter"]
        5 JUMPIF                           R3 ; [+5]
        6 GETTABLEKS                       R4 R0 K2 ["_subscribedSessionIds"]
        8 GETTABLE                         R3 R4 R2
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R0 K3 ["_trackToolInvocation"]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R1 K4 ["update"]
       17 GETTABLEKS                       R4 R3 K5 ["sessionUpdate"]
       19 JUMPIFEQKS                       R4 K6 ["tool_call"] ; [+6]
       21 GETTABLEKS                       R4 R3 K5 ["sessionUpdate"]
       23 JUMPIFEQKS                       R4 K7 ["tool_call_update"] ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R4 R3 K8 ["toolCallId"]
       28 GETTABLEKS                       R6 R0 K9 ["_toolConfirmationHandlers"]
       30 GETTABLE                         R5 R6 R2
       31 JUMPIFNOT                        R4 ; [+54]
       32 GETTABLEKS                       R6 R3 K10 ["status"]
       34 JUMPIFEQKS                       R6 K11 ["failed"] ; [+5]
       36 GETTABLEKS                       R6 R3 K10 ["status"]
       38 JUMPIFNOTEQKS                    R6 K12 ["cancelled"] ; [+47]
       40 GETTABLEKS                       R6 R3 K10 ["status"]
       42 JUMPIFNOTEQKS                    R6 K11 ["failed"] ; [+13]
       44 GETTABLEKS                       R7 R0 K13 ["_executingClientTools"]
       46 GETTABLE                         R6 R7 R4
       47 JUMPIF                           R6 ; [+8]
       48 MOVE                             R8 R2
       49 MOVE                             R9 R4
       50 GETTABLEKS                       R10 R3 K14 ["title"]
       52 LOADK                            R11 K15 ["failed_before_execution"]
       53 NAMECALL                         R6 R0 K16 ["_logFailedToolInvocation"]
       55 CALL                             R6 5 0
       56 JUMPIFNOT                        R5 ; [+4]
       57 GETTABLEKS                       R6 R5 K17 ["interrupt"]
       59 MOVE                             R7 R4
       60 CALL                             R6 1 0
       61 MOVE                             R6 R2
       62 JUMPIFNOT                        R6 ; [+3]
       63 GETTABLEKS                       R7 R0 K18 ["_activeClientToolPromises"]
       65 GETTABLE                         R6 R7 R2
       66 MOVE                             R7 R6
       67 JUMPIFNOT                        R7 ; [+1]
       68 GETTABLE                         R7 R6 R4
       69 JUMPIFNOT                        R7 ; [+3]
       70 NAMECALL                         R8 R7 K19 ["cancel"]
       72 CALL                             R8 1 0
       73 GETTABLEKS                       R8 R0 K20 ["_toolInvocationStateByToolCallId"]
       75 LOADNIL                          R9
       76 SETTABLE                         R9 R8 R4
       77 GETTABLEKS                       R8 R0 K13 ["_executingClientTools"]
       79 LOADNIL                          R9
       80 SETTABLE                         R9 R8 R4
       81 GETTABLEKS                       R8 R0 K21 ["_failedInvocationLoggedByToolCallId"]
       83 LOADNIL                          R9
       84 SETTABLE                         R9 R8 R4
       85 RETURN                           R0 0
       86 JUMPIFNOT                        R4 ; [+17]
       87 GETTABLEKS                       R6 R3 K10 ["status"]
       89 JUMPIFNOTEQKS                    R6 K22 ["completed"] ; [+14]
       91 GETTABLEKS                       R6 R0 K20 ["_toolInvocationStateByToolCallId"]
       93 LOADNIL                          R7
       94 SETTABLE                         R7 R6 R4
       95 GETTABLEKS                       R6 R0 K13 ["_executingClientTools"]
       97 LOADNIL                          R7
       98 SETTABLE                         R7 R6 R4
       99 GETTABLEKS                       R6 R0 K21 ["_failedInvocationLoggedByToolCallId"]
      101 LOADNIL                          R7
      102 SETTABLE                         R7 R6 R4
      103 RETURN                           R0 0
      104 GETTABLEKS                       R6 R3 K5 ["sessionUpdate"]
      106 JUMPIFEQKS                       R6 K7 ["tool_call_update"] ; [+2]
      108 RETURN                           R0 0
      109 GETTABLEKS                       R6 R3 K23 ["_meta"]
      111 JUMPIFNOT                        R6 ; [+4]
      112 GETTABLEKS                       R6 R3 K23 ["_meta"]
      114 GETTABLEKS                       R6 R6 K24 ["_roblox"]
      116 JUMPIFNOT                        R6 ; [+3]
      117 GETTABLEKS                       R7 R6 K25 ["expectsReply"]
      119 JUMPIF                           R7 ; [+1]
      120 RETURN                           R0 0
      121 GETUPVAL                         R7 0
      122 GETTABLEKS                       R7 R7 K26 ["FFlagDebugLogAssistantUI"]
      124 JUMPIFNOT                        R7 ; [+31]
      125 GETIMPORT                        R7 K28 [print]
      127 LOADK                            R11 K29 ["[Tool Call] receive expectsReply: sessionId=%* toolCallId=%* "]
      128 MOVE                             R13 R2
      129 FASTCALL1                        TOSTRING R4 ; [+3]
      130 MOVE                             R15 R4
      131 GETIMPORT                        R14 K31 [tostring]
      133 CALL                             R14 1 1
      134 NAMECALL                         R11 R11 K32 ["format"]
      136 CALL                             R11 3 1
      137 MOVE                             R9 R11
      138 LOADK                            R10 K33 ["title=%* status=%*"]
      139 GETTABLEKS                       R13 R3 K14 ["title"]
      141 FASTCALL1                        TOSTRING R13 ; [+2]
      142 GETIMPORT                        R12 K31 [tostring]
      144 CALL                             R12 1 1
      145 GETTABLEKS                       R14 R3 K10 ["status"]
      147 FASTCALL1                        TOSTRING R14 ; [+2]
      148 GETIMPORT                        R13 K31 [tostring]
      150 CALL                             R13 1 1
      151 NAMECALL                         R10 R10 K32 ["format"]
      153 CALL                             R10 3 1
      154 CONCAT                           R8 R9 R10
      155 CALL                             R7 1 0
      156 GETTABLEKS                       R8 R6 K34 ["referenceId"]
      158 FASTCALL1                        TYPEOF R8 ; [+2]
      159 GETIMPORT                        R7 K36 [typeof]
      161 CALL                             R7 1 1
      162 JUMPIFNOTEQKS                    R7 K37 ["string"] ; [+23]
      164 FASTCALL1                        TYPEOF R4 ; [+3]
      165 MOVE                             R8 R4
      166 GETIMPORT                        R7 K36 [typeof]
      168 CALL                             R7 1 1
      169 JUMPIFNOTEQKS                    R7 K37 ["string"] ; [+16]
      171 FASTCALL1                        TYPEOF R2 ; [+3]
      172 MOVE                             R8 R2
      173 GETIMPORT                        R7 K36 [typeof]
      175 CALL                             R7 1 1
      176 JUMPIFNOTEQKS                    R7 K37 ["string"] ; [+9]
      178 GETTABLEKS                       R8 R3 K14 ["title"]
      180 FASTCALL1                        TYPEOF R8 ; [+2]
      181 GETIMPORT                        R7 K36 [typeof]
      183 CALL                             R7 1 1
      184 JUMPIFEQKS                       R7 K37 ["string"] ; [+32]
      186 GETUPVAL                         R7 0
      187 GETTABLEKS                       R7 R7 K26 ["FFlagDebugLogAssistantUI"]
      189 JUMPIFNOT                        R7 ; [+18]
      190 GETIMPORT                        R7 K28 [print]
      192 LOADK                            R8 K38 ["[Tool Call] malformed update: toolCallId=%* title=%*"]
      193 FASTCALL1                        TOSTRING R4 ; [+3]
      194 MOVE                             R11 R4
      195 GETIMPORT                        R10 K31 [tostring]
      197 CALL                             R10 1 1
      198 GETTABLEKS                       R12 R3 K14 ["title"]
      200 FASTCALL1                        TOSTRING R12 ; [+2]
      201 GETIMPORT                        R11 K31 [tostring]
      203 CALL                             R11 1 1
      204 NAMECALL                         R8 R8 K32 ["format"]
      206 CALL                             R8 3 1
      207 CALL                             R7 1 0
      208 MOVE                             R9 R2
      209 MOVE                             R10 R4
      210 GETTABLEKS                       R11 R3 K14 ["title"]
      212 LOADK                            R12 K39 ["malformed_update"]
      213 NAMECALL                         R7 R0 K16 ["_logFailedToolInvocation"]
      215 CALL                             R7 5 0
      216 RETURN                           R0 0
      217 LOADB                            R7 0
      218 GETTABLEKS                       R8 R0 K40 ["_listTools"]
      220 JUMPIFNOT                        R8 ; [+15]
      221 GETTABLEKS                       R8 R0 K40 ["_listTools"]
      223 DUPTABLE                         R9 K43 [{["includeDisabledTools"] = True}]
      224 CALL                             R8 1 3
      225 FORGPREP                         R8
      226 GETTABLEKS                       R13 R12 K44 ["name"]
      228 GETTABLEKS                       R14 R3 K14 ["title"]
      230 JUMPIFNOTEQ                      R13 R14 ; [+3]
      232 LOADB                            R7 1
      233 JUMP                             ; [+2]
      234 FORGLOOP                         R8 2 ; [-9]
      236 JUMPIF                           R7 ; [+21]
      237 GETUPVAL                         R8 0
      238 GETTABLEKS                       R8 R8 K26 ["FFlagDebugLogAssistantUI"]
      240 JUMPIFNOT                        R8 ; [+16]
      241 GETIMPORT                        R8 K28 [print]
      243 LOADK                            R12 K45 ["[Tool Call] skip execute: tool not in client list title=%* "]
      244 GETTABLEKS                       R14 R3 K14 ["title"]
      246 NAMECALL                         R12 R12 K32 ["format"]
      248 CALL                             R12 2 1
      249 MOVE                             R10 R12
      250 LOADK                            R11 K46 ["toolCallId=%*"]
      251 MOVE                             R13 R4
      252 NAMECALL                         R11 R11 K32 ["format"]
      254 CALL                             R11 2 1
      255 CONCAT                           R9 R10 R11
      256 CALL                             R8 1 0
      257 RETURN                           R0 0
      258 GETTABLEKS                       R9 R0 K18 ["_activeClientToolPromises"]
      260 GETTABLE                         R8 R9 R2
      261 GETTABLEKS                       R10 R0 K13 ["_executingClientTools"]
      263 GETTABLE                         R9 R10 R4
      264 JUMPIF                           R9 ; [+3]
      265 JUMPIFNOT                        R8 ; [+15]
      266 GETTABLE                         R9 R8 R4
      267 JUMPIFNOT                        R9 ; [+13]
      268 GETUPVAL                         R9 0
      269 GETTABLEKS                       R9 R9 K26 ["FFlagDebugLogAssistantUI"]
      271 JUMPIFNOT                        R9 ; [+8]
      272 GETIMPORT                        R9 K28 [print]
      274 LOADK                            R10 K47 ["[Tool Call] skip execute: already in flight toolCallId=%*"]
      275 MOVE                             R12 R4
      276 NAMECALL                         R10 R10 K32 ["format"]
      278 CALL                             R10 2 1
      279 CALL                             R9 1 0
      280 RETURN                           R0 0
      281 GETTABLEKS                       R10 R0 K48 ["_toolUiContextByToolCallId"]
      283 GETTABLE                         R9 R10 R4
      284 GETUPVAL                         R10 0
      285 GETTABLEKS                       R10 R10 K26 ["FFlagDebugLogAssistantUI"]
      287 JUMPIFNOT                        R10 ; [+39]
      288 GETIMPORT                        R10 K28 [print]
      290 LOADK                            R15 K49 ["[Tool Call] UI context: toolCallId=%* found=%* "]
      291 MOVE                             R17 R4
      292 JUMPIFNOTEQKNIL                  R9 ; [+2]
      294 LOADB                            R18 0 +1
      295 LOADB                            R18 1
      296 NAMECALL                         R15 R15 K32 ["format"]
      298 CALL                             R15 3 1
      299 MOVE                             R12 R15
      300 LOADK                            R15 K50 ["messageId=%* "]
      301 MOVE                             R18 R9
      302 JUMPIFNOT                        R18 ; [+2]
      303 GETTABLEKS                       R18 R9 K51 ["messageId"]
      305 FASTCALL1                        TOSTRING R18 ; [+2]
      306 GETIMPORT                        R17 K31 [tostring]
      308 CALL                             R17 1 1
      309 NAMECALL                         R15 R15 K32 ["format"]
      311 CALL                             R15 2 1
      312 MOVE                             R13 R15
      313 LOADK                            R14 K52 ["contentId=%*"]
      314 MOVE                             R17 R9
      315 JUMPIFNOT                        R17 ; [+2]
      316 GETTABLEKS                       R17 R9 K53 ["contentId"]
      318 FASTCALL1                        TOSTRING R17 ; [+2]
      319 GETIMPORT                        R16 K31 [tostring]
      321 CALL                             R16 1 1
      322 NAMECALL                         R14 R14 K32 ["format"]
      324 CALL                             R14 2 1
      325 CONCAT                           R11 R12 R14
      326 CALL                             R10 1 0
      327 NEWCLOSURE                       R10 P0
      328 CAPTURE                          UPVAL U1
      329 CAPTURE                          UPVAL U2
      330 CAPTURE                          UPVAL U0
      331 CAPTURE                          VAL R4
      332 CAPTURE                          UPVAL U3
      333 CAPTURE                          VAL R0
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R6
      336 DUPCLOSURE                       R11 K54 [PROTO_12]
      337 GETTABLEKS                       R12 R0 K55 ["_clientToolHandler"]
      339 JUMPIF                           R12 ; [+26]
      340 GETUPVAL                         R13 0
      341 GETTABLEKS                       R13 R13 K26 ["FFlagDebugLogAssistantUI"]
      343 JUMPIFNOT                        R13 ; [+8]
      344 GETIMPORT                        R13 K28 [print]
      346 LOADK                            R14 K56 ["[Tool Call] missing client handler: toolCallId=%*"]
      347 MOVE                             R16 R4
      348 NAMECALL                         R14 R14 K32 ["format"]
      350 CALL                             R14 2 1
      351 CALL                             R13 1 0
      352 MOVE                             R15 R2
      353 MOVE                             R16 R4
      354 GETTABLEKS                       R17 R3 K14 ["title"]
      356 LOADK                            R18 K57 ["missing_client_handler"]
      357 NAMECALL                         R13 R0 K16 ["_logFailedToolInvocation"]
      359 CALL                             R13 5 0
      360 MOVE                             R13 R10
      361 MOVE                             R14 R11
      362 LOADK                            R15 K58 ["No client tool handler registered"]
      363 CALL                             R14 1 1
      364 CALL                             R13 1 0
      365 RETURN                           R0 0
      366 GETTABLEKS                       R14 R6 K59 ["isSlashCommand"]
      368 JUMPIFEQKB                       R14 TRUE ; [+2]
      370 LOADB                            R13 0 +1
      371 LOADB                            R13 1
      372 JUMPIF                           R13 ; [+14]
      373 GETUPVAL                         R14 0
      374 GETTABLEKS                       R14 R14 K60 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      376 JUMPIFNOT                        R14 ; [+10]
      377 GETTABLEKS                       R15 R0 K61 ["_matchedSlashCommandBySessionId"]
      379 GETTABLE                         R14 R15 R2
      380 JUMPIFNOTEQKB                    R14 TRUE ; [+6]
      382 LOADB                            R13 1
      383 GETTABLEKS                       R14 R0 K61 ["_matchedSlashCommandBySessionId"]
      385 LOADNIL                          R15
      386 SETTABLE                         R15 R14 R2
      387 DUPTABLE                         R14 K63 [{"sessionId", "name", "arguments", "referenceId", "toolCallId", "messageId", "contentId", "isSlashCommand"}]
      388 SETTABLEKS                       R2 R14 K0 ["sessionId"]
      390 GETTABLEKS                       R15 R3 K14 ["title"]
      392 SETTABLEKS                       R15 R14 K44 ["name"]
      394 GETTABLEKS                       R15 R3 K64 ["rawInput"]
      396 JUMPIF                           R15 ; [+2]
      397 NEWTABLE                         R15 0 0
      399 SETTABLEKS                       R15 R14 K62 ["arguments"]
      401 GETTABLEKS                       R15 R6 K34 ["referenceId"]
      403 SETTABLEKS                       R15 R14 K34 ["referenceId"]
      405 SETTABLEKS                       R4 R14 K8 ["toolCallId"]
      407 MOVE                             R15 R9
      408 JUMPIFNOT                        R15 ; [+2]
      409 GETTABLEKS                       R15 R9 K51 ["messageId"]
      411 SETTABLEKS                       R15 R14 K51 ["messageId"]
      413 MOVE                             R15 R9
      414 JUMPIFNOT                        R15 ; [+2]
      415 GETTABLEKS                       R15 R9 K53 ["contentId"]
      417 SETTABLEKS                       R15 R14 K53 ["contentId"]
      419 SETTABLEKS                       R13 R14 K59 ["isSlashCommand"]
      421 JUMPIFNOT                        R5 ; [+25]
      422 GETTABLEKS                       R15 R5 K65 ["request"]
      424 DUPTABLE                         R16 K68 [{"toolCallId", "toolName", "toolInput", "messageId"}]
      425 SETTABLEKS                       R4 R16 K8 ["toolCallId"]
      427 GETUPVAL                         R17 4
      428 GETTABLEKS                       R17 R17 K69 ["ToolNaming"]
      430 GETTABLEKS                       R17 R17 K70 ["stripPrefix"]
      432 GETTABLEKS                       R18 R14 K44 ["name"]
      434 CALL                             R17 1 1
      435 SETTABLEKS                       R17 R16 K66 ["toolName"]
      437 GETTABLEKS                       R17 R14 K62 ["arguments"]
      439 SETTABLEKS                       R17 R16 K67 ["toolInput"]
      441 GETTABLEKS                       R17 R14 K51 ["messageId"]
      443 SETTABLEKS                       R17 R16 K51 ["messageId"]
      445 CALL                             R15 1 1
      446 JUMP                             ; [+5]
      447 GETUPVAL                         R15 5
      448 GETTABLEKS                       R15 R15 K71 ["resolve"]
      450 LOADK                            R16 K72 ["execute"]
      451 CALL                             R15 1 1
      452 LOADNIL                          R16
      453 GETUPVAL                         R17 5
      454 GETTABLEKS                       R17 R17 K73 ["new"]
      456 NEWCLOSURE                       R18 P2
      457 CAPTURE                          UPVAL U0
      458 CAPTURE                          VAL R4
      459 CAPTURE                          VAL R5
      460 CAPTURE                          REF R16
      461 CAPTURE                          UPVAL U5
      462 CAPTURE                          VAL R15
      463 CAPTURE                          VAL R0
      464 CAPTURE                          VAL R2
      465 CAPTURE                          VAL R3
      466 CAPTURE                          VAL R10
      467 CAPTURE                          VAL R11
      468 CAPTURE                          VAL R14
      469 CAPTURE                          VAL R12
      470 CALL                             R17 1 1
      471 GETTABLEKS                       R19 R0 K18 ["_activeClientToolPromises"]
      473 GETTABLE                         R18 R19 R2
      474 JUMPIF                           R18 ; [+5]
      475 NEWTABLE                         R18 0 0
      477 GETTABLEKS                       R19 R0 K18 ["_activeClientToolPromises"]
      479 SETTABLE                         R18 R19 R2
      480 SETTABLE                         R17 R18 R4
      481 NEWCLOSURE                       R21 P3
      482 CAPTURE                          VAL R0
      483 CAPTURE                          VAL R2
      484 CAPTURE                          VAL R4
      485 CAPTURE                          VAL R17
      486 NAMECALL                         R19 R17 K74 ["finally"]
      488 CALL                             R19 2 0
      489 CLOSEUPVALS                      R16
      490 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_initializePromise"]
        2 JUMPIF                           R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K1 ["_client"]
        5 DUPTABLE                         R3 K4 [{"protocolVersion", "clientCapabilities"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["LATEST_PROTOCOL_VERSION"]
        9 SETTABLEKS                       R4 R3 K2 ["protocolVersion"]
       11 GETUPVAL                         R4 1
       12 SETTABLEKS                       R4 R3 K3 ["clientCapabilities"]
       14 NAMECALL                         R1 R1 K6 ["initialize"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["_initializePromise"]
       19 GETTABLEKS                       R1 R0 K0 ["_initializePromise"]
       21 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["newSession"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+42]
        4 GETIMPORT                        R1 K3 [table.create]
        6 GETTABLEKS                       R3 R0 K4 ["sessions"]
        8 LENGTH                           R2 R3
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K4 ["sessions"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R9 R6 K5 ["sessionId"]
       17 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K7 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-9]
       25 GETIMPORT                        R2 K9 [print]
       27 LOADK                            R3 K10 ["[ACPClientService] listSessions response: sessionCount=%* sessionIds=[%*] nextPageToken=%*"]
       28 GETTABLEKS                       R6 R0 K4 ["sessions"]
       30 LENGTH                           R5 R6
       31 GETIMPORT                        R6 K12 [table.concat]
       33 MOVE                             R7 R1
       34 LOADK                            R8 K13 [", "]
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R8 R0 K14 ["nextPageToken"]
       38 FASTCALL1                        TOSTRING R8 ; [+2]
       39 GETIMPORT                        R7 K16 [tostring]
       41 CALL                             R7 1 1
       42 NAMECALL                         R3 R3 K17 ["format"]
       44 CALL                             R3 4 1
       45 CALL                             R2 1 0
       46 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["listSessions"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K2 [PROTO_23]
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K3 ["andThen"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_25:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_26:
        0 JUMPIFNOT                        R3 ; [+3]
        1 LENGTH                           R4 R2
        2 JUMPIFNOTEQKN                    R4 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 LENGTH                           R5 R2
        6 GETTABLE                         R4 R2 R5
        7 GETTABLEKS                       R5 R4 K1 ["sessionUpdate"]
        9 JUMPIFEQKS                       R5 K2 ["tool_call"] ; [+6]
       11 GETTABLEKS                       R5 R4 K1 ["sessionUpdate"]
       13 JUMPIFEQKS                       R5 K3 ["tool_call_update"] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R6 R4 K4 ["status"]
       18 LOADB                            R5 1
       19 JUMPIFEQKS                       R6 K5 ["pending"] ; [+5]
       21 JUMPIFEQKS                       R6 K6 ["in_progress"] ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 JUMPIF                           R5 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["FFlagDebugLogAssistantUI"]
       30 JUMPIFNOT                        R5 ; [+25]
       31 GETIMPORT                        R5 K9 [print]
       33 LOADK                            R9 K10 ["[Tool Call] resume pending from history toolCallId=%* "]
       34 GETTABLEKS                       R12 R4 K11 ["toolCallId"]
       36 FASTCALL1                        TOSTRING R12 ; [+2]
       37 GETIMPORT                        R11 K13 [tostring]
       39 CALL                             R11 1 1
       40 NAMECALL                         R9 R9 K14 ["format"]
       42 CALL                             R9 2 1
       43 MOVE                             R7 R9
       44 LOADK                            R8 K15 ["title=%*"]
       45 GETTABLEKS                       R11 R4 K16 ["title"]
       47 FASTCALL1                        TOSTRING R11 ; [+2]
       48 GETIMPORT                        R10 K13 [tostring]
       50 CALL                             R10 1 1
       51 NAMECALL                         R8 R8 K14 ["format"]
       53 CALL                             R8 2 1
       54 CONCAT                           R6 R7 R8
       55 CALL                             R5 1 0
       56 DUPTABLE                         R7 K19 [{"sessionId", "update"}]
       57 SETTABLEKS                       R1 R7 K17 ["sessionId"]
       59 SETTABLEKS                       R4 R7 K18 ["update"]
       61 NAMECALL                         R5 R0 K20 ["_maybeExecuteClientTool"]
       63 CALL                             R5 2 0
       64 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+42]
        4 GETTABLEKS                       R2 R0 K1 ["history"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETTABLEKS                       R2 R0 K1 ["history"]
        9 LENGTH                           R1 R2
       10 JUMP                             ; [+1]
       11 LOADN                            R1 0
       12 GETIMPORT                        R2 K3 [print]
       14 LOADK                            R3 K4 ["[ACPClientService] loadSession response: sessionId=%* historyCount=%*"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K5 ["sessionId"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K6 ["format"]
       21 CALL                             R3 3 1
       22 CALL                             R2 1 0
       23 GETIMPORT                        R2 K8 [pcall]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K9 ["JSONEncode"]
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R0
       30 CALL                             R2 3 2
       31 GETIMPORT                        R4 K3 [print]
       33 LOADK                            R5 K10 ["[ACPClientService] loadSession response: %*"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 MOVE                             R7 R3
       36 JUMP                             ; [+5]
       37 FASTCALL1                        TOSTRING R3 ; [+3]
       38 MOVE                             R8 R3
       39 GETIMPORT                        R7 K12 [tostring]
       41 CALL                             R7 1 1
       42 NAMECALL                         R5 R5 K6 ["format"]
       44 CALL                             R5 2 1
       45 CALL                             R4 1 0
       46 NEWTABLE                         R1 0 0
       48 GETTABLEKS                       R2 R0 K1 ["history"]
       50 JUMPIF                           R2 ; [+2]
       51 NEWTABLE                         R2 0 0
       53 MOVE                             R3 R2
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 FORGPREP                         R3
       57 GETUPVAL                         R8 3
       58 MOVE                             R9 R7
       59 CALL                             R8 1 1
       60 JUMPIFNOT                        R8 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       63 MOVE                             R10 R1
       64 MOVE                             R11 R8
       65 GETIMPORT                        R9 K15 [table.insert]
       67 CALL                             R9 2 0
       68 FORGLOOP                         R3 2 ; [-12]
       70 GETUPVAL                         R3 0
       71 GETTABLEKS                       R3 R3 K16 ["FFlagAssistantACPBatchHistoryReplay"]
       73 JUMPIFNOT                        R3 ; [+6]
       74 GETUPVAL                         R3 4
       75 JUMPIFNOT                        R3 ; [+15]
       76 GETUPVAL                         R3 4
       77 MOVE                             R4 R1
       78 CALL                             R3 1 0
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R3 5
       81 JUMPIFNOT                        R3 ; [+9]
       82 MOVE                             R3 R1
       83 LOADNIL                          R4
       84 LOADNIL                          R5
       85 FORGPREP                         R3
       86 GETUPVAL                         R8 5
       87 MOVE                             R9 R7
       88 CALL                             R8 1 0
       89 FORGLOOP                         R3 2 ; [-4]
       91 GETUPVAL                         R3 6
       92 CALL                             R3 0 1
       93 JUMPIFNOT                        R3 ; [+15]
       94 GETUPVAL                         R3 7
       95 GETUPVAL                         R5 1
       96 GETTABLEKS                       R5 R5 K5 ["sessionId"]
       98 MOVE                             R6 R1
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K17 ["historyPageToken"]
      102 JUMPIFEQKNIL                     R8 ; [+2]
      104 LOADB                            R7 0 +1
      105 LOADB                            R7 1
      106 NAMECALL                         R3 R3 K18 ["_resumePendingClientToolsFromHistory"]
      108 CALL                             R3 4 0
      109 GETIMPORT                        R3 K20 [table.clone]
      111 MOVE                             R4 R0
      112 CALL                             R3 1 1
      113 SETTABLEKS                       R1 R3 K1 ["history"]
      115 RETURN                           R3 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[ACPClientService] loadSession failed: sessionId=%* error=%*"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K4 ["sessionId"]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 3 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K6 ["reject"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[ACPClientService] loadSession request: sessionId=%* historyPageToken=%*"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K4 ["sessionId"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K5 ["historyPageToken"]
       13 FASTCALL1                        TOSTRING R5 ; [+2]
       14 GETIMPORT                        R4 K7 [tostring]
       16 CALL                             R4 1 1
       17 NAMECALL                         R1 R1 K8 ["format"]
       19 CALL                             R1 3 1
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K9 ["_client"]
       24 GETUPVAL                         R2 1
       25 NAMECALL                         R0 R0 K10 ["loadSession"]
       27 CALL                             R0 2 1
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U2
       37 NAMECALL                         R0 R0 K11 ["andThen"]
       39 CALL                             R0 2 1
       40 NEWCLOSURE                       R2 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U9
       45 NAMECALL                         R0 R0 K12 ["catch"]
       47 CALL                             R0 2 -1
       48 RETURN                           R0 -1

PROTO_30:
        0 NAMECALL                         R4 R0 K0 ["ensureInitialized"]
        2 CALL                             R4 1 1
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 NAMECALL                         R4 R4 K1 ["andThen"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["setSessionMode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_32:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateSessionInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_34:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSession"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_36:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["cancel"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_38:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["sessionId"]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+32]
       11 GETTABLEKS                       R4 R0 K4 ["_activeClientToolPromises"]
       13 GETTABLE                         R3 R4 R2
       14 JUMPIFNOT                        R3 ; [+27]
       15 GETIMPORT                        R4 K7 [table.clone]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 3
       19 FORGPREP                         R4
       20 GETTABLEKS                       R10 R0 K8 ["_executingClientTools"]
       22 GETTABLE                         R9 R10 R7
       23 JUMPIF                           R9 ; [+13]
       24 GETTABLEKS                       R10 R0 K9 ["_toolInvocationStateByToolCallId"]
       26 GETTABLE                         R9 R10 R7
       27 MOVE                             R12 R2
       28 MOVE                             R13 R7
       29 MOVE                             R14 R9
       30 JUMPIFNOT                        R14 ; [+2]
       31 GETTABLEKS                       R14 R9 K10 ["toolName"]
       33 LOADK                            R15 K11 ["cancel_before_execution"]
       34 NAMECALL                         R10 R0 K12 ["_logFailedToolInvocation"]
       36 CALL                             R10 5 0
       37 NAMECALL                         R9 R8 K13 ["cancel"]
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 ; [-21]
       42 NAMECALL                         R3 R0 K14 ["ensureInitialized"]
       44 CALL                             R3 1 1
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 NAMECALL                         R3 R3 K15 ["andThen"]
       50 CALL                             R3 2 -1
       51 RETURN                           R3 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["prompt"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_40:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["_slashUserPromptBySessionId"]
        5 GETUPVAL                         R3 2
        6 GETTABLE                         R1 R2 R3
        7 GETUPVAL                         R2 3
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["_slashUserPromptBySessionId"]
       13 GETUPVAL                         R2 2
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["reject"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sessionId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["userPromptText"]
        6 LOADB                            R2 0
        7 LOADB                            R3 0
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R4 K3 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+14]
       15 GETIMPORT                        R4 K6 [string.find]
       17 MOVE                             R5 R1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K7 ["SYSTEM_REMINDER_OPEN"]
       21 LOADN                            R7 1
       22 LOADB                            R8 1
       23 CALL                             R4 4 1
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
       31 JUMPIFNOT                        R4 ; [+24]
       32 FASTCALL1                        TYPEOF R0 ; [+3]
       33 MOVE                             R5 R0
       34 GETIMPORT                        R4 K3 [typeof]
       36 CALL                             R4 1 1
       37 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+18]
       39 FASTCALL1                        TYPEOF R1 ; [+3]
       40 MOVE                             R5 R1
       41 GETIMPORT                        R4 K3 [typeof]
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+11]
       46 JUMPIFEQKS                       R1 K9 [""] ; [+9]
       48 JUMPIF                           R3 ; [+7]
       49 GETUPVAL                         R4 3
       50 MOVE                             R6 R0
       51 MOVE                             R7 R1
       52 NAMECALL                         R4 R4 K10 ["rememberSlashUserPrompt"]
       54 CALL                             R4 3 0
       55 LOADB                            R2 1
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R4 R4 K11 ["requestToolCall"]
       59 GETUPVAL                         R5 3
       60 GETTABLEKS                       R5 R5 K12 ["_client"]
       62 GETUPVAL                         R6 0
       63 CALL                             R4 2 1
       64 NEWCLOSURE                       R6 P0
       65 CAPTURE                          REF R2
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U5
       70 NAMECALL                         R4 R4 K13 ["catch"]
       72 CALL                             R4 2 -1
       73 CLOSEUPVALS                      R2
       74 RETURN                           R4 -1

PROTO_43:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R2 R2 K1 ["andThen"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["sessionId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["update"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["_subscribedSessionIds"]
       12 GETUPVAL                         R1 3
       13 LOADB                            R2 0
       14 SETTABLE                         R2 R0 R1
       15 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R4 R0 K0 ["_subscribedSessionIds"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETIMPORT                        R3 K2 [warn]
        6 LOADK                            R4 K3 ["[Assistant][ACP] Session already subscribed: sessionId=%*"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R4 R4 K4 ["format"]
       10 CALL                             R4 2 1
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R0 K0 ["_subscribedSessionIds"]
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R3 R1
       16 GETTABLEKS                       R3 R0 K5 ["_sessionUpdateSignal"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R3 R3 K6 ["Connect"]
       23 CALL                             R3 2 1
       24 LOADB                            R4 0
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          REF R4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CLOSEUPVALS                      R4
       31 RETURN                           R5 1

PROTO_47:
        0 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+5]
        4 JUMPIFEQ                         R3 R2 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["dispose"]
        8 CALL                             R4 0 0
        9 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
       11 SETTABLE                         R2 R4 R1
       12 RETURN                           R0 0

PROTO_48:
        0 SETTABLEKS                       R1 R0 K0 ["_clientToolHandler"]
        2 RETURN                           R0 0

PROTO_49:
        0 SETTABLEKS                       R1 R0 K0 ["_listTools"]
        2 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R4 R0 K0 ["_toolUiContextByToolCallId"]
        2 DUPTABLE                         R5 K3 [{"messageId", "contentId"}]
        3 SETTABLEKS                       R2 R5 K1 ["messageId"]
        5 SETTABLEKS                       R3 R5 K2 ["contentId"]
        7 SETTABLE                         R5 R4 R1
        8 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionIdByThreadId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        6 SETTABLE                         R3 R1 R2
        7 GETTABLEKS                       R1 R0 K1 ["sessionId"]
        9 RETURN                           R1 1

PROTO_52:
        0 JUMPIFNOT                        R2 ; [+6]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["resolve"]
        4 MOVE                             R4 R2
        5 CALL                             R3 1 -1
        6 RETURN                           R3 -1
        7 GETTABLEKS                       R4 R0 K1 ["_sessionIdByThreadId"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["resolve"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 -1
       16 RETURN                           R4 -1
       17 DUPTABLE                         R6 K5 [{["cwd"] = "/", ["mcpServers"]}]
       18 NEWTABLE                         R7 0 0
       20 SETTABLEKS                       R7 R6 K4 ["mcpServers"]
       22 NAMECALL                         R4 R0 K6 ["newSession"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R4 R4 K7 ["andThen"]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["ACPUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["AssistantHarness"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["createClientToolHandler"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Guest"]
       32 GETTABLEKS                       R5 R5 K11 ["Environment"]
       34 GETTABLEKS                       R5 R5 K12 ["EventLogger"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["ImageContentStore"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K7 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["Promise"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K7 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["Signal"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Types"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K19 ["buildToolTransports"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K20 ["FlagUtils"]
       79 GETTABLEKS                       R12 R12 K21 ["getIsAssistantUseRemoteService"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R11 R11 K22 ["get"]
       84 GETIMPORT                        R12 K24 [game]
       86 LOADK                            R14 K25 ["HttpService"]
       87 NAMECALL                         R12 R12 K26 ["GetService"]
       89 CALL                             R12 2 1
       90 GETTABLEKS                       R13 R2 K27 ["Acp"]
       92 GETTABLEKS                       R13 R13 K18 ["Types"]
       94 GETTABLEKS                       R14 R2 K27 ["Acp"]
       96 GETTABLEKS                       R14 R14 K28 ["RobloxExtensions"]
       98 GETTABLEKS                       R15 R2 K29 ["Engine"]
      100 GETTABLEKS                       R15 R15 K30 ["Time"]
      102 GETTABLEKS                       R16 R2 K31 ["ToolNaming"]
      104 GETTABLEKS                       R17 R2 K32 ["describeError"]
      106 DUPTABLE                         R18 K36 [{["fs"], ["terminal"] = False}]
      107 DUPTABLE                         R19 K39 [{["readTextFile"] = False, ["writeTextFile"] = False}]
      108 SETTABLEKS                       R19 R18 K33 ["fs"]
      110 DUPCLOSURE                       R19 K40 [PROTO_0]
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R9
      113 DUPCLOSURE                       R20 K41 [PROTO_1]
      114 NEWTABLE                         R21 32 0
      116 SETTABLEKS                       R21 R21 K42 ["__index"]
      118 DUPCLOSURE                       R22 K43 [PROTO_3]
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R5
      123 SETTABLEKS                       R22 R21 K44 ["new"]
      125 DUPCLOSURE                       R22 K45 [PROTO_4]
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R15
      128 SETTABLEKS                       R22 R21 K46 ["_trackToolInvocation"]
      130 DUPCLOSURE                       R22 K47 [PROTO_5]
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 SETTABLEKS                       R22 R21 K48 ["_logFailedToolInvocation"]
      135 DUPCLOSURE                       R22 K49 [PROTO_6]
      136 SETTABLEKS                       R22 R21 K50 ["setSessionToolCallMeta"]
      138 DUPCLOSURE                       R22 K51 [PROTO_7]
      139 SETTABLEKS                       R22 R21 K52 ["getSessionToolCallMeta"]
      141 DUPCLOSURE                       R22 K53 [PROTO_8]
      142 CAPTURE                          VAL R9
      143 DUPCLOSURE                       R23 K54 [PROTO_9]
      144 SETTABLEKS                       R23 R21 K55 ["rememberSlashUserPrompt"]
      146 DUPCLOSURE                       R23 K56 [PROTO_10]
      147 CAPTURE                          VAL R22
      148 SETTABLEKS                       R23 R21 K57 ["_observeSlashCommandSignature"]
      150 DUPCLOSURE                       R23 K58 [PROTO_19]
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R7
      157 SETTABLEKS                       R23 R21 K59 ["_maybeExecuteClientTool"]
      159 DUPCLOSURE                       R23 K60 [PROTO_20]
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R18
      162 SETTABLEKS                       R23 R21 K61 ["ensureInitialized"]
      164 DUPCLOSURE                       R23 K62 [PROTO_22]
      165 SETTABLEKS                       R23 R21 K63 ["newSession"]
      167 DUPCLOSURE                       R23 K64 [PROTO_25]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R23 R21 K65 ["listSessionsPage"]
      171 DUPCLOSURE                       R23 K66 [PROTO_26]
      172 CAPTURE                          VAL R5
      173 SETTABLEKS                       R23 R21 K67 ["_resumePendingClientToolsFromHistory"]
      175 DUPCLOSURE                       R23 K68 [PROTO_30]
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R7
      182 SETTABLEKS                       R23 R21 K69 ["loadSessionPage"]
      184 DUPCLOSURE                       R23 K70 [PROTO_32]
      185 SETTABLEKS                       R23 R21 K71 ["setSessionMode"]
      187 DUPCLOSURE                       R23 K72 [PROTO_34]
      188 CAPTURE                          VAL R14
      189 SETTABLEKS                       R23 R21 K73 ["updateSessionInfo"]
      191 DUPCLOSURE                       R23 K74 [PROTO_36]
      192 CAPTURE                          VAL R14
      193 SETTABLEKS                       R23 R21 K75 ["deleteSession"]
      195 DUPCLOSURE                       R23 K76 [PROTO_38]
      196 SETTABLEKS                       R23 R21 K77 ["cancel"]
      198 DUPCLOSURE                       R23 K78 [PROTO_40]
      199 SETTABLEKS                       R23 R21 K79 ["prompt"]
      201 DUPCLOSURE                       R23 K80 [PROTO_43]
      202 CAPTURE                          VAL R9
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R7
      206 SETTABLEKS                       R23 R21 K81 ["requestToolCall"]
      208 DUPCLOSURE                       R23 K82 [PROTO_46]
      209 SETTABLEKS                       R23 R21 K83 ["subscribeToSessionUpdates"]
      211 DUPCLOSURE                       R23 K84 [PROTO_47]
      212 SETTABLEKS                       R23 R21 K85 ["setClientToolConfirmationHandler"]
      214 DUPCLOSURE                       R23 K86 [PROTO_48]
      215 SETTABLEKS                       R23 R21 K87 ["setClientToolHandler"]
      217 DUPCLOSURE                       R23 K88 [PROTO_49]
      218 SETTABLEKS                       R23 R21 K89 ["setListTools"]
      220 DUPCLOSURE                       R23 K90 [PROTO_50]
      221 SETTABLEKS                       R23 R21 K91 ["setClientToolUiContext"]
      223 DUPCLOSURE                       R23 K92 [PROTO_52]
      224 CAPTURE                          VAL R7
      225 SETTABLEKS                       R23 R21 K93 ["getOrCreateSessionForThread"]
      227 RETURN                           R21 1
