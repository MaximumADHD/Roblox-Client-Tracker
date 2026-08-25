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
       25 SETTABLEKS                       R4 R3 K7 ["_sessionIdByThreadId"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K8 ["_toolCallMetaBySessionId"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K9 ["_toolUiContextByToolCallId"]
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K10 ["_toolConfirmationHandlers"]
       39 NEWTABLE                         R4 0 0
       41 SETTABLEKS                       R4 R3 K11 ["_activeClientToolPromises"]
       43 NEWTABLE                         R4 0 0
       45 SETTABLEKS                       R4 R3 K12 ["_toolInvocationStateByToolCallId"]
       47 NEWTABLE                         R4 0 0
       49 SETTABLEKS                       R4 R3 K13 ["_executingClientTools"]
       51 NEWTABLE                         R4 0 0
       53 SETTABLEKS                       R4 R3 K14 ["_failedInvocationLoggedByToolCallId"]
       55 LOADNIL                          R4
       56 SETTABLEKS                       R4 R3 K15 ["_clientToolHandler"]
       58 LOADNIL                          R4
       59 SETTABLEKS                       R4 R3 K16 ["_listTools"]
       61 LOADNIL                          R4
       62 SETTABLEKS                       R4 R3 K17 ["_initializePromise"]
       64 NEWTABLE                         R4 0 0
       66 SETTABLEKS                       R4 R3 K18 ["_slashUserPromptBySessionId"]
       68 NEWTABLE                         R4 0 0
       70 SETTABLEKS                       R4 R3 K19 ["_matchedSlashCommandBySessionId"]
       72 NEWCLOSURE                       R6 P0
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U3
       75 NAMECALL                         R4 R0 K20 ["setSessionUpdateHandler"]
       77 CALL                             R4 2 0
       78 RETURN                           R3 1

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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R1 ; [+19]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isMCPDestructing"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+14]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["FFlagDebugLogAssistantUI"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETIMPORT                        R1 K4 [print]
       15 LOADK                            R3 K5 ["[Tool Call] skip submit result: toolCallId=%*, because MCP is being destructed, we don't submit the dmnetworking disconnect error as tool result"]
       16 GETUPVAL                         R5 2
       17 NAMECALL                         R3 R3 K6 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K2 ["FFlagDebugLogAssistantUI"]
       26 JUMPIFNOT                        R1 ; [+23]
       27 GETIMPORT                        R1 K4 [print]
       29 LOADK                            R3 K7 ["[Tool Call] submit result: toolCallId=%* isError=%*"]
       30 GETUPVAL                         R5 2
       31 LOADB                            R6 0
       32 FASTCALL1                        TYPEOF R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K9 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+7]
       39 GETTABLEKS                       R7 R0 K11 ["isError"]
       41 JUMPIFEQKB                       R7 TRUE ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 NAMECALL                         R3 R3 K6 ["format"]
       47 CALL                             R3 3 1
       48 MOVE                             R2 R3
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 3
       51 GETTABLEKS                       R1 R1 K12 ["submitToolResult"]
       53 GETUPVAL                         R2 4
       54 GETTABLEKS                       R2 R2 K13 ["_client"]
       56 DUPTABLE                         R3 K18 [{"sessionId", "referenceId", "turnId", "content"}]
       57 GETUPVAL                         R4 5
       58 SETTABLEKS                       R4 R3 K14 ["sessionId"]
       60 GETUPVAL                         R4 6
       61 GETTABLEKS                       R4 R4 K15 ["referenceId"]
       63 SETTABLEKS                       R4 R3 K15 ["referenceId"]
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R4 R4 K16 ["turnId"]
       68 SETTABLEKS                       R4 R3 K16 ["turnId"]
       70 SETTABLEKS                       R0 R3 K17 ["content"]
       72 CALL                             R1 2 0
       73 RETURN                           R0 0

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
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R2 K3 ["[Tool Call] cancelled: toolCallId=%*"]
        7 GETUPVAL                         R4 1
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 MOVE                             R1 R2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 2
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K5 ["interrupt"]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 3
       23 NAMECALL                         R0 R0 K6 ["cancel"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

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
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[Tool Call] execute rejected: toolCallId=%* error=%*"]
        7 GETUPVAL                         R5 1
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K5 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 3 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 3
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K5 [tostring]
       24 CALL                             R3 1 1
       25 CALL                             R2 1 1
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[Tool Call] confirmation decision: toolCallId=%* decision=%*"]
        7 GETUPVAL                         R5 1
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K5 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 3 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 JUMPIFNOTEQKS                    R0 K7 ["interrupted"] ; [+13]
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 1
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K8 ["title"]
       26 LOADK                            R6 K9 ["interrupted_before_execution"]
       27 NAMECALL                         R1 R1 K10 ["_logFailedToolInvocation"]
       29 CALL                             R1 5 0
       30 LOADNIL                          R1
       31 RETURN                           R1 1
       32 JUMPIFNOTEQKS                    R0 K11 ["deny"] ; [+18]
       34 GETUPVAL                         R1 2
       35 GETUPVAL                         R3 3
       36 GETUPVAL                         R4 1
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K8 ["title"]
       40 LOADK                            R6 K12 ["user_denied"]
       41 NAMECALL                         R1 R1 K10 ["_logFailedToolInvocation"]
       43 CALL                             R1 5 0
       44 GETUPVAL                         R1 5
       45 GETUPVAL                         R2 6
       46 LOADK                            R3 K13 ["The tool call was cancelled by the user."]
       47 CALL                             R2 1 1
       48 CALL                             R1 1 0
       49 LOADNIL                          R1
       50 RETURN                           R1 1
       51 GETUPVAL                         R1 2
       52 GETTABLEKS                       R1 R1 K14 ["_executingClientTools"]
       54 GETUPVAL                         R2 1
       55 LOADB                            R3 1
       56 SETTABLE                         R3 R1 R2
       57 GETUPVAL                         R1 0
       58 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
       60 JUMPIFNOT                        R1 ; [+12]
       61 GETIMPORT                        R1 K2 [print]
       63 LOADK                            R3 K15 ["[Tool Call] execute: toolCallId=%* name=%*"]
       64 GETUPVAL                         R5 1
       65 GETUPVAL                         R6 7
       66 GETTABLEKS                       R6 R6 K16 ["name"]
       68 NAMECALL                         R3 R3 K6 ["format"]
       70 CALL                             R3 3 1
       71 MOVE                             R2 R3
       72 CALL                             R1 1 0
       73 GETUPVAL                         R1 9
       74 GETUPVAL                         R2 7
       75 CALL                             R1 1 1
       76 SETUPVAL                         R1 8
       77 GETUPVAL                         R1 10
       78 GETTABLEKS                       R1 R1 K17 ["resolve"]
       80 GETUPVAL                         R2 8
       81 CALL                             R1 1 1
       82 NEWCLOSURE                       R3 P0
       83 CAPTURE                          UPVAL U5
       84 NAMECALL                         R1 R1 K18 ["andThen"]
       86 CALL                             R1 2 1
       87 NEWCLOSURE                       R3 P1
       88 CAPTURE                          UPVAL U0
       89 CAPTURE                          UPVAL U1
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U6
       92 NAMECALL                         R1 R1 K19 ["catch"]
       94 CALL                             R1 2 -1
       95 RETURN                           R1 -1

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
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_trackToolInvocation"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R1 K1 ["update"]
        6 GETTABLEKS                       R3 R2 K2 ["sessionUpdate"]
        8 JUMPIFEQKS                       R3 K3 ["tool_call"] ; [+6]
       10 GETTABLEKS                       R3 R2 K2 ["sessionUpdate"]
       12 JUMPIFEQKS                       R3 K4 ["tool_call_update"] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R1 K5 ["sessionId"]
       17 GETTABLEKS                       R4 R2 K6 ["toolCallId"]
       19 GETTABLEKS                       R6 R0 K7 ["_toolConfirmationHandlers"]
       21 GETTABLE                         R5 R6 R3
       22 JUMPIFNOT                        R4 ; [+54]
       23 GETTABLEKS                       R6 R2 K8 ["status"]
       25 JUMPIFEQKS                       R6 K9 ["failed"] ; [+5]
       27 GETTABLEKS                       R6 R2 K8 ["status"]
       29 JUMPIFNOTEQKS                    R6 K10 ["cancelled"] ; [+47]
       31 GETTABLEKS                       R6 R2 K8 ["status"]
       33 JUMPIFNOTEQKS                    R6 K9 ["failed"] ; [+13]
       35 GETTABLEKS                       R7 R0 K11 ["_executingClientTools"]
       37 GETTABLE                         R6 R7 R4
       38 JUMPIF                           R6 ; [+8]
       39 MOVE                             R8 R3
       40 MOVE                             R9 R4
       41 GETTABLEKS                       R10 R2 K12 ["title"]
       43 LOADK                            R11 K13 ["interrupted_before_execution"]
       44 NAMECALL                         R6 R0 K14 ["_logFailedToolInvocation"]
       46 CALL                             R6 5 0
       47 JUMPIFNOT                        R5 ; [+4]
       48 GETTABLEKS                       R6 R5 K15 ["interrupt"]
       50 MOVE                             R7 R4
       51 CALL                             R6 1 0
       52 MOVE                             R6 R3
       53 JUMPIFNOT                        R6 ; [+3]
       54 GETTABLEKS                       R7 R0 K16 ["_activeClientToolPromises"]
       56 GETTABLE                         R6 R7 R3
       57 MOVE                             R7 R6
       58 JUMPIFNOT                        R7 ; [+1]
       59 GETTABLE                         R7 R6 R4
       60 JUMPIFNOT                        R7 ; [+3]
       61 NAMECALL                         R8 R7 K17 ["cancel"]
       63 CALL                             R8 1 0
       64 GETTABLEKS                       R8 R0 K18 ["_toolInvocationStateByToolCallId"]
       66 LOADNIL                          R9
       67 SETTABLE                         R9 R8 R4
       68 GETTABLEKS                       R8 R0 K11 ["_executingClientTools"]
       70 LOADNIL                          R9
       71 SETTABLE                         R9 R8 R4
       72 GETTABLEKS                       R8 R0 K19 ["_failedInvocationLoggedByToolCallId"]
       74 LOADNIL                          R9
       75 SETTABLE                         R9 R8 R4
       76 RETURN                           R0 0
       77 JUMPIFNOT                        R4 ; [+17]
       78 GETTABLEKS                       R6 R2 K8 ["status"]
       80 JUMPIFNOTEQKS                    R6 K20 ["completed"] ; [+14]
       82 GETTABLEKS                       R6 R0 K18 ["_toolInvocationStateByToolCallId"]
       84 LOADNIL                          R7
       85 SETTABLE                         R7 R6 R4
       86 GETTABLEKS                       R6 R0 K11 ["_executingClientTools"]
       88 LOADNIL                          R7
       89 SETTABLE                         R7 R6 R4
       90 GETTABLEKS                       R6 R0 K19 ["_failedInvocationLoggedByToolCallId"]
       92 LOADNIL                          R7
       93 SETTABLE                         R7 R6 R4
       94 RETURN                           R0 0
       95 GETTABLEKS                       R6 R2 K2 ["sessionUpdate"]
       97 JUMPIFEQKS                       R6 K4 ["tool_call_update"] ; [+2]
       99 RETURN                           R0 0
      100 GETTABLEKS                       R6 R2 K21 ["_meta"]
      102 JUMPIFNOT                        R6 ; [+4]
      103 GETTABLEKS                       R6 R2 K21 ["_meta"]
      105 GETTABLEKS                       R6 R6 K22 ["_roblox"]
      107 JUMPIFNOT                        R6 ; [+3]
      108 GETTABLEKS                       R7 R6 K23 ["expectsReply"]
      110 JUMPIF                           R7 ; [+1]
      111 RETURN                           R0 0
      112 GETUPVAL                         R7 0
      113 GETTABLEKS                       R7 R7 K24 ["FFlagDebugLogAssistantUI"]
      115 JUMPIFNOT                        R7 ; [+32]
      116 GETIMPORT                        R7 K26 [print]
      118 LOADK                            R11 K27 ["[Tool Call] receive expectsReply: sessionId=%* toolCallId=%* "]
      119 MOVE                             R13 R3
      120 FASTCALL1                        TOSTRING R4 ; [+3]
      121 MOVE                             R15 R4
      122 GETIMPORT                        R14 K29 [tostring]
      124 CALL                             R14 1 1
      125 NAMECALL                         R11 R11 K30 ["format"]
      127 CALL                             R11 3 1
      128 MOVE                             R9 R11
      129 LOADK                            R11 K31 ["title=%* status=%*"]
      130 GETTABLEKS                       R14 R2 K12 ["title"]
      132 FASTCALL1                        TOSTRING R14 ; [+2]
      133 GETIMPORT                        R13 K29 [tostring]
      135 CALL                             R13 1 1
      136 GETTABLEKS                       R15 R2 K8 ["status"]
      138 FASTCALL1                        TOSTRING R15 ; [+2]
      139 GETIMPORT                        R14 K29 [tostring]
      141 CALL                             R14 1 1
      142 NAMECALL                         R11 R11 K30 ["format"]
      144 CALL                             R11 3 1
      145 MOVE                             R10 R11
      146 CONCAT                           R8 R9 R10
      147 CALL                             R7 1 0
      148 GETTABLEKS                       R8 R6 K32 ["referenceId"]
      150 FASTCALL1                        TYPEOF R8 ; [+2]
      151 GETIMPORT                        R7 K34 [typeof]
      153 CALL                             R7 1 1
      154 JUMPIFNOTEQKS                    R7 K35 ["string"] ; [+23]
      156 FASTCALL1                        TYPEOF R4 ; [+3]
      157 MOVE                             R8 R4
      158 GETIMPORT                        R7 K34 [typeof]
      160 CALL                             R7 1 1
      161 JUMPIFNOTEQKS                    R7 K35 ["string"] ; [+16]
      163 FASTCALL1                        TYPEOF R3 ; [+3]
      164 MOVE                             R8 R3
      165 GETIMPORT                        R7 K34 [typeof]
      167 CALL                             R7 1 1
      168 JUMPIFNOTEQKS                    R7 K35 ["string"] ; [+9]
      170 GETTABLEKS                       R8 R2 K12 ["title"]
      172 FASTCALL1                        TYPEOF R8 ; [+2]
      173 GETIMPORT                        R7 K34 [typeof]
      175 CALL                             R7 1 1
      176 JUMPIFEQKS                       R7 K35 ["string"] ; [+33]
      178 GETUPVAL                         R7 0
      179 GETTABLEKS                       R7 R7 K24 ["FFlagDebugLogAssistantUI"]
      181 JUMPIFNOT                        R7 ; [+19]
      182 GETIMPORT                        R7 K26 [print]
      184 LOADK                            R9 K36 ["[Tool Call] malformed update: toolCallId=%* title=%*"]
      185 FASTCALL1                        TOSTRING R4 ; [+3]
      186 MOVE                             R12 R4
      187 GETIMPORT                        R11 K29 [tostring]
      189 CALL                             R11 1 1
      190 GETTABLEKS                       R13 R2 K12 ["title"]
      192 FASTCALL1                        TOSTRING R13 ; [+2]
      193 GETIMPORT                        R12 K29 [tostring]
      195 CALL                             R12 1 1
      196 NAMECALL                         R9 R9 K30 ["format"]
      198 CALL                             R9 3 1
      199 MOVE                             R8 R9
      200 CALL                             R7 1 0
      201 MOVE                             R9 R3
      202 MOVE                             R10 R4
      203 GETTABLEKS                       R11 R2 K12 ["title"]
      205 LOADK                            R12 K37 ["malformed_update"]
      206 NAMECALL                         R7 R0 K14 ["_logFailedToolInvocation"]
      208 CALL                             R7 5 0
      209 RETURN                           R0 0
      210 LOADB                            R7 0
      211 GETTABLEKS                       R8 R0 K38 ["_listTools"]
      213 JUMPIFNOT                        R8 ; [+15]
      214 GETTABLEKS                       R8 R0 K38 ["_listTools"]
      216 DUPTABLE                         R9 K41 [{["includeDisabledTools"] = True}]
      217 CALL                             R8 1 3
      218 FORGPREP                         R8
      219 GETTABLEKS                       R13 R12 K42 ["name"]
      221 GETTABLEKS                       R14 R2 K12 ["title"]
      223 JUMPIFNOTEQ                      R13 R14 ; [+3]
      225 LOADB                            R7 1
      226 JUMP                             ; [+2]
      227 FORGLOOP                         R8 2 ; [-9]
      229 JUMPIF                           R7 ; [+22]
      230 GETUPVAL                         R8 0
      231 GETTABLEKS                       R8 R8 K24 ["FFlagDebugLogAssistantUI"]
      233 JUMPIFNOT                        R8 ; [+17]
      234 GETIMPORT                        R8 K26 [print]
      236 LOADK                            R12 K43 ["[Tool Call] skip execute: tool not in client list title=%* "]
      237 GETTABLEKS                       R14 R2 K12 ["title"]
      239 NAMECALL                         R12 R12 K30 ["format"]
      241 CALL                             R12 2 1
      242 MOVE                             R10 R12
      243 LOADK                            R12 K44 ["toolCallId=%*"]
      244 MOVE                             R14 R4
      245 NAMECALL                         R12 R12 K30 ["format"]
      247 CALL                             R12 2 1
      248 MOVE                             R11 R12
      249 CONCAT                           R9 R10 R11
      250 CALL                             R8 1 0
      251 RETURN                           R0 0
      252 GETTABLEKS                       R9 R0 K45 ["_toolUiContextByToolCallId"]
      254 GETTABLE                         R8 R9 R4
      255 GETUPVAL                         R9 0
      256 GETTABLEKS                       R9 R9 K24 ["FFlagDebugLogAssistantUI"]
      258 JUMPIFNOT                        R9 ; [+40]
      259 GETIMPORT                        R9 K26 [print]
      261 LOADK                            R14 K46 ["[Tool Call] UI context: toolCallId=%* found=%* "]
      262 MOVE                             R16 R4
      263 JUMPIFNOTEQKNIL                  R8 ; [+2]
      265 LOADB                            R17 0 +1
      266 LOADB                            R17 1
      267 NAMECALL                         R14 R14 K30 ["format"]
      269 CALL                             R14 3 1
      270 MOVE                             R11 R14
      271 LOADK                            R14 K47 ["messageId=%* "]
      272 MOVE                             R17 R8
      273 JUMPIFNOT                        R17 ; [+2]
      274 GETTABLEKS                       R17 R8 K48 ["messageId"]
      276 FASTCALL1                        TOSTRING R17 ; [+2]
      277 GETIMPORT                        R16 K29 [tostring]
      279 CALL                             R16 1 1
      280 NAMECALL                         R14 R14 K30 ["format"]
      282 CALL                             R14 2 1
      283 MOVE                             R12 R14
      284 LOADK                            R14 K49 ["contentId=%*"]
      285 MOVE                             R17 R8
      286 JUMPIFNOT                        R17 ; [+2]
      287 GETTABLEKS                       R17 R8 K50 ["contentId"]
      289 FASTCALL1                        TOSTRING R17 ; [+2]
      290 GETIMPORT                        R16 K29 [tostring]
      292 CALL                             R16 1 1
      293 NAMECALL                         R14 R14 K30 ["format"]
      295 CALL                             R14 2 1
      296 MOVE                             R13 R14
      297 CONCAT                           R10 R11 R13
      298 CALL                             R9 1 0
      299 NEWCLOSURE                       R9 P0
      300 CAPTURE                          UPVAL U0
      301 CAPTURE                          UPVAL U1
      302 CAPTURE                          VAL R4
      303 CAPTURE                          UPVAL U2
      304 CAPTURE                          VAL R0
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R6
      307 DUPCLOSURE                       R10 K51 [PROTO_12]
      308 GETTABLEKS                       R11 R0 K52 ["_clientToolHandler"]
      310 JUMPIF                           R11 ; [+27]
      311 GETUPVAL                         R12 0
      312 GETTABLEKS                       R12 R12 K24 ["FFlagDebugLogAssistantUI"]
      314 JUMPIFNOT                        R12 ; [+9]
      315 GETIMPORT                        R12 K26 [print]
      317 LOADK                            R14 K53 ["[Tool Call] missing client handler: toolCallId=%*"]
      318 MOVE                             R16 R4
      319 NAMECALL                         R14 R14 K30 ["format"]
      321 CALL                             R14 2 1
      322 MOVE                             R13 R14
      323 CALL                             R12 1 0
      324 MOVE                             R14 R3
      325 MOVE                             R15 R4
      326 GETTABLEKS                       R16 R2 K12 ["title"]
      328 LOADK                            R17 K54 ["missing_client_handler"]
      329 NAMECALL                         R12 R0 K14 ["_logFailedToolInvocation"]
      331 CALL                             R12 5 0
      332 MOVE                             R12 R9
      333 MOVE                             R13 R10
      334 LOADK                            R14 K55 ["No client tool handler registered"]
      335 CALL                             R13 1 1
      336 CALL                             R12 1 0
      337 RETURN                           R0 0
      338 GETTABLEKS                       R13 R6 K56 ["isSlashCommand"]
      340 JUMPIFEQKB                       R13 TRUE ; [+2]
      342 LOADB                            R12 0 +1
      343 LOADB                            R12 1
      344 JUMPIF                           R12 ; [+14]
      345 GETUPVAL                         R13 0
      346 GETTABLEKS                       R13 R13 K57 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
      348 JUMPIFNOT                        R13 ; [+10]
      349 GETTABLEKS                       R14 R0 K58 ["_matchedSlashCommandBySessionId"]
      351 GETTABLE                         R13 R14 R3
      352 JUMPIFNOTEQKB                    R13 TRUE ; [+6]
      354 LOADB                            R12 1
      355 GETTABLEKS                       R13 R0 K58 ["_matchedSlashCommandBySessionId"]
      357 LOADNIL                          R14
      358 SETTABLE                         R14 R13 R3
      359 DUPTABLE                         R13 K60 [{"sessionId", "name", "arguments", "referenceId", "toolCallId", "messageId", "contentId", "isSlashCommand"}]
      360 SETTABLEKS                       R3 R13 K5 ["sessionId"]
      362 GETTABLEKS                       R14 R2 K12 ["title"]
      364 SETTABLEKS                       R14 R13 K42 ["name"]
      366 GETTABLEKS                       R14 R2 K61 ["rawInput"]
      368 JUMPIF                           R14 ; [+2]
      369 NEWTABLE                         R14 0 0
      371 SETTABLEKS                       R14 R13 K59 ["arguments"]
      373 GETTABLEKS                       R14 R6 K32 ["referenceId"]
      375 SETTABLEKS                       R14 R13 K32 ["referenceId"]
      377 SETTABLEKS                       R4 R13 K6 ["toolCallId"]
      379 MOVE                             R14 R8
      380 JUMPIFNOT                        R14 ; [+2]
      381 GETTABLEKS                       R14 R8 K48 ["messageId"]
      383 SETTABLEKS                       R14 R13 K48 ["messageId"]
      385 MOVE                             R14 R8
      386 JUMPIFNOT                        R14 ; [+2]
      387 GETTABLEKS                       R14 R8 K50 ["contentId"]
      389 SETTABLEKS                       R14 R13 K50 ["contentId"]
      391 SETTABLEKS                       R12 R13 K56 ["isSlashCommand"]
      393 JUMPIFNOT                        R5 ; [+25]
      394 GETTABLEKS                       R14 R5 K62 ["request"]
      396 DUPTABLE                         R15 K65 [{"toolCallId", "toolName", "toolInput", "messageId"}]
      397 SETTABLEKS                       R4 R15 K6 ["toolCallId"]
      399 GETUPVAL                         R16 3
      400 GETTABLEKS                       R16 R16 K66 ["ToolNaming"]
      402 GETTABLEKS                       R16 R16 K67 ["stripPrefix"]
      404 GETTABLEKS                       R17 R13 K42 ["name"]
      406 CALL                             R16 1 1
      407 SETTABLEKS                       R16 R15 K63 ["toolName"]
      409 GETTABLEKS                       R16 R13 K59 ["arguments"]
      411 SETTABLEKS                       R16 R15 K64 ["toolInput"]
      413 GETTABLEKS                       R16 R13 K48 ["messageId"]
      415 SETTABLEKS                       R16 R15 K48 ["messageId"]
      417 CALL                             R14 1 1
      418 JUMP                             ; [+5]
      419 GETUPVAL                         R14 4
      420 GETTABLEKS                       R14 R14 K68 ["resolve"]
      422 LOADK                            R15 K69 ["execute"]
      423 CALL                             R14 1 1
      424 LOADNIL                          R15
      425 GETUPVAL                         R16 4
      426 GETTABLEKS                       R16 R16 K70 ["new"]
      428 NEWCLOSURE                       R17 P2
      429 CAPTURE                          UPVAL U0
      430 CAPTURE                          VAL R4
      431 CAPTURE                          VAL R5
      432 CAPTURE                          REF R15
      433 CAPTURE                          UPVAL U4
      434 CAPTURE                          VAL R14
      435 CAPTURE                          VAL R0
      436 CAPTURE                          VAL R3
      437 CAPTURE                          VAL R2
      438 CAPTURE                          VAL R9
      439 CAPTURE                          VAL R10
      440 CAPTURE                          VAL R13
      441 CAPTURE                          VAL R11
      442 CALL                             R16 1 1
      443 GETTABLEKS                       R18 R0 K16 ["_activeClientToolPromises"]
      445 GETTABLE                         R17 R18 R3
      446 JUMPIF                           R17 ; [+5]
      447 NEWTABLE                         R17 0 0
      449 GETTABLEKS                       R18 R0 K16 ["_activeClientToolPromises"]
      451 SETTABLE                         R17 R18 R3
      452 SETTABLE                         R16 R17 R4
      453 NEWCLOSURE                       R20 P3
      454 CAPTURE                          VAL R0
      455 CAPTURE                          VAL R3
      456 CAPTURE                          VAL R4
      457 CAPTURE                          VAL R16
      458 NAMECALL                         R18 R16 K71 ["finally"]
      460 CALL                             R18 2 0
      461 CLOSEUPVALS                      R15
      462 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["listSessions"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_24:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_25:
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
       30 JUMPIFNOT                        R5 ; [+26]
       31 GETIMPORT                        R5 K9 [print]
       33 LOADK                            R9 K10 ["[Tool Call] resume pending from history toolCallId=%* "]
       34 GETTABLEKS                       R12 R4 K11 ["toolCallId"]
       36 FASTCALL1                        TOSTRING R12 ; [+2]
       37 GETIMPORT                        R11 K13 [tostring]
       39 CALL                             R11 1 1
       40 NAMECALL                         R9 R9 K14 ["format"]
       42 CALL                             R9 2 1
       43 MOVE                             R7 R9
       44 LOADK                            R9 K15 ["title=%*"]
       45 GETTABLEKS                       R12 R4 K16 ["title"]
       47 FASTCALL1                        TOSTRING R12 ; [+2]
       48 GETIMPORT                        R11 K13 [tostring]
       50 CALL                             R11 1 1
       51 NAMECALL                         R9 R9 K14 ["format"]
       53 CALL                             R9 2 1
       54 MOVE                             R8 R9
       55 CONCAT                           R6 R7 R8
       56 CALL                             R5 1 0
       57 DUPTABLE                         R7 K19 [{"sessionId", "update"}]
       58 SETTABLEKS                       R1 R7 K17 ["sessionId"]
       60 SETTABLEKS                       R4 R7 K18 ["update"]
       62 NAMECALL                         R5 R0 K20 ["_maybeExecuteClientTool"]
       64 CALL                             R5 2 0
       65 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETIMPORT                        R1 K2 [pcall]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K3 ["JSONEncode"]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 CALL                             R1 3 2
       12 GETIMPORT                        R3 K5 [print]
       14 LOADK                            R5 K6 ["[ACPClientService] loadSession response: %*"]
       15 JUMPIFNOT                        R1 ; [+2]
       16 MOVE                             R7 R2
       17 JUMP                             ; [+5]
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R8 R2
       20 GETIMPORT                        R7 K8 [tostring]
       22 CALL                             R7 1 1
       23 NAMECALL                         R5 R5 K9 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 CALL                             R3 1 0
       28 NEWTABLE                         R1 0 0
       30 GETTABLEKS                       R2 R0 K10 ["history"]
       32 JUMPIF                           R2 ; [+2]
       33 NEWTABLE                         R2 0 0
       35 MOVE                             R3 R2
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 GETUPVAL                         R8 2
       40 MOVE                             R9 R7
       41 CALL                             R8 1 1
       42 JUMPIFNOT                        R8 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       45 MOVE                             R10 R1
       46 MOVE                             R11 R8
       47 GETIMPORT                        R9 K13 [table.insert]
       49 CALL                             R9 2 0
       50 FORGLOOP                         R3 2 ; [-12]
       52 GETUPVAL                         R3 3
       53 JUMPIFNOT                        R3 ; [+9]
       54 MOVE                             R3 R1
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 GETUPVAL                         R8 3
       59 MOVE                             R9 R7
       60 CALL                             R8 1 0
       61 FORGLOOP                         R3 2 ; [-4]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K14 ["FFlagAssistantUseRemoteService"]
       66 JUMPIFNOT                        R3 ; [+15]
       67 GETUPVAL                         R3 4
       68 GETUPVAL                         R5 5
       69 GETTABLEKS                       R5 R5 K15 ["sessionId"]
       71 MOVE                             R6 R1
       72 GETUPVAL                         R8 5
       73 GETTABLEKS                       R8 R8 K16 ["historyPageToken"]
       75 JUMPIFEQKNIL                     R8 ; [+2]
       77 LOADB                            R7 0 +1
       78 LOADB                            R7 1
       79 NAMECALL                         R3 R3 K17 ["_resumePendingClientToolsFromHistory"]
       81 CALL                             R3 4 0
       82 GETIMPORT                        R3 K19 [table.clone]
       84 MOVE                             R4 R0
       85 CALL                             R3 1 1
       86 SETTABLEKS                       R1 R3 K10 ["history"]
       88 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["loadSession"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R0 R0 K2 ["andThen"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_28:
        0 NAMECALL                         R3 R0 K0 ["ensureInitialized"]
        2 CALL                             R3 1 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 NAMECALL                         R3 R3 K1 ["andThen"]
       12 CALL                             R3 2 -1
       13 RETURN                           R3 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["setSessionMode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_30:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateSessionInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_32:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSession"]
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
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["cancel"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_36:
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
       33 LOADK                            R15 K11 ["interrupted_before_execution"]
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

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["prompt"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_38:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sessionId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["userPromptText"]
        6 LOADB                            R2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantOmitSlashToolCallDroppedFields"]
       10 JUMPIFNOT                        R3 ; [+23]
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K4 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+17]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K4 [typeof]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K5 ["string"] ; [+10]
       25 JUMPIFEQKS                       R1 K6 [""] ; [+8]
       27 GETUPVAL                         R3 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 NAMECALL                         R3 R3 K7 ["rememberSlashUserPrompt"]
       32 CALL                             R3 3 0
       33 LOADB                            R2 1
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K8 ["requestToolCall"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K9 ["_client"]
       40 GETUPVAL                         R5 0
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          REF R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U4
       48 NAMECALL                         R3 R3 K10 ["catch"]
       50 CALL                             R3 2 -1
       51 CLOSEUPVALS                      R2
       52 RETURN                           R3 -1

PROTO_41:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R2 R2 K1 ["andThen"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["sessionId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["update"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R3 R0 K0 ["_sessionUpdateSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

PROTO_45:
        0 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+5]
        4 JUMPIFEQ                         R3 R2 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["dispose"]
        8 CALL                             R4 0 0
        9 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
       11 SETTABLE                         R2 R4 R1
       12 RETURN                           R0 0

PROTO_46:
        0 SETTABLEKS                       R1 R0 K0 ["_clientToolHandler"]
        2 RETURN                           R0 0

PROTO_47:
        0 SETTABLEKS                       R1 R0 K0 ["_listTools"]
        2 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R4 R0 K0 ["_toolUiContextByToolCallId"]
        2 DUPTABLE                         R5 K3 [{"messageId", "contentId"}]
        3 SETTABLEKS                       R2 R5 K1 ["messageId"]
        5 SETTABLEKS                       R3 R5 K2 ["contentId"]
        7 SETTABLE                         R5 R4 R1
        8 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionIdByThreadId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        6 SETTABLE                         R3 R1 R2
        7 GETTABLEKS                       R1 R0 K1 ["sessionId"]
        9 RETURN                           R1 1

PROTO_50:
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
       75 GETIMPORT                        R11 K21 [game]
       77 LOADK                            R13 K22 ["HttpService"]
       78 NAMECALL                         R11 R11 K23 ["GetService"]
       80 CALL                             R11 2 1
       81 GETTABLEKS                       R12 R2 K24 ["Acp"]
       83 GETTABLEKS                       R12 R12 K18 ["Types"]
       85 GETTABLEKS                       R13 R2 K24 ["Acp"]
       87 GETTABLEKS                       R13 R13 K25 ["RobloxExtensions"]
       89 GETTABLEKS                       R14 R2 K26 ["Engine"]
       91 GETTABLEKS                       R14 R14 K27 ["Time"]
       93 GETTABLEKS                       R15 R2 K28 ["ToolNaming"]
       95 DUPTABLE                         R16 K32 [{["fs"], ["terminal"] = False}]
       96 DUPTABLE                         R17 K35 [{["readTextFile"] = False, ["writeTextFile"] = False}]
       97 SETTABLEKS                       R17 R16 K29 ["fs"]
       99 DUPCLOSURE                       R17 K36 [PROTO_0]
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R9
      102 DUPCLOSURE                       R18 K37 [PROTO_1]
      103 NEWTABLE                         R19 32 0
      105 SETTABLEKS                       R19 R19 K38 ["__index"]
      107 DUPCLOSURE                       R20 K39 [PROTO_3]
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R20 R19 K40 ["new"]
      114 DUPCLOSURE                       R20 K41 [PROTO_4]
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R14
      117 SETTABLEKS                       R20 R19 K42 ["_trackToolInvocation"]
      119 DUPCLOSURE                       R20 K43 [PROTO_5]
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R15
      122 SETTABLEKS                       R20 R19 K44 ["_logFailedToolInvocation"]
      124 DUPCLOSURE                       R20 K45 [PROTO_6]
      125 SETTABLEKS                       R20 R19 K46 ["setSessionToolCallMeta"]
      127 DUPCLOSURE                       R20 K47 [PROTO_7]
      128 SETTABLEKS                       R20 R19 K48 ["getSessionToolCallMeta"]
      130 DUPCLOSURE                       R20 K49 [PROTO_8]
      131 CAPTURE                          VAL R9
      132 DUPCLOSURE                       R21 K50 [PROTO_9]
      133 SETTABLEKS                       R21 R19 K51 ["rememberSlashUserPrompt"]
      135 DUPCLOSURE                       R21 K52 [PROTO_10]
      136 CAPTURE                          VAL R20
      137 SETTABLEKS                       R21 R19 K53 ["_observeSlashCommandSignature"]
      139 DUPCLOSURE                       R21 K54 [PROTO_19]
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R21 R19 K55 ["_maybeExecuteClientTool"]
      147 DUPCLOSURE                       R21 K56 [PROTO_20]
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R16
      150 SETTABLEKS                       R21 R19 K57 ["ensureInitialized"]
      152 DUPCLOSURE                       R21 K58 [PROTO_22]
      153 SETTABLEKS                       R21 R19 K59 ["newSession"]
      155 DUPCLOSURE                       R21 K60 [PROTO_24]
      156 SETTABLEKS                       R21 R19 K61 ["listSessionsPage"]
      158 DUPCLOSURE                       R21 K62 [PROTO_25]
      159 CAPTURE                          VAL R5
      160 SETTABLEKS                       R21 R19 K63 ["_resumePendingClientToolsFromHistory"]
      162 DUPCLOSURE                       R21 K64 [PROTO_28]
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R17
      166 SETTABLEKS                       R21 R19 K65 ["loadSessionPage"]
      168 DUPCLOSURE                       R21 K66 [PROTO_30]
      169 SETTABLEKS                       R21 R19 K67 ["setSessionMode"]
      171 DUPCLOSURE                       R21 K68 [PROTO_32]
      172 CAPTURE                          VAL R13
      173 SETTABLEKS                       R21 R19 K69 ["updateSessionInfo"]
      175 DUPCLOSURE                       R21 K70 [PROTO_34]
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R21 R19 K71 ["deleteSession"]
      179 DUPCLOSURE                       R21 K72 [PROTO_36]
      180 SETTABLEKS                       R21 R19 K73 ["cancel"]
      182 DUPCLOSURE                       R21 K74 [PROTO_38]
      183 SETTABLEKS                       R21 R19 K75 ["prompt"]
      185 DUPCLOSURE                       R21 K76 [PROTO_41]
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R7
      189 SETTABLEKS                       R21 R19 K77 ["requestToolCall"]
      191 DUPCLOSURE                       R21 K78 [PROTO_44]
      192 SETTABLEKS                       R21 R19 K79 ["subscribeToSessionUpdates"]
      194 DUPCLOSURE                       R21 K80 [PROTO_45]
      195 SETTABLEKS                       R21 R19 K81 ["setClientToolConfirmationHandler"]
      197 DUPCLOSURE                       R21 K82 [PROTO_46]
      198 SETTABLEKS                       R21 R19 K83 ["setClientToolHandler"]
      200 DUPCLOSURE                       R21 K84 [PROTO_47]
      201 SETTABLEKS                       R21 R19 K85 ["setListTools"]
      203 DUPCLOSURE                       R21 K86 [PROTO_48]
      204 SETTABLEKS                       R21 R19 K87 ["setClientToolUiContext"]
      206 DUPCLOSURE                       R21 K88 [PROTO_50]
      207 CAPTURE                          VAL R7
      208 SETTABLEKS                       R21 R19 K89 ["getOrCreateSessionForThread"]
      210 RETURN                           R19 1
