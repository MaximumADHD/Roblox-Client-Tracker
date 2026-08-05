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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionUpdateSignal"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["_maybeExecuteClientTool"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 16 0
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
       59 SETTABLEKS                       R4 R3 K16 ["_initializePromise"]
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          VAL R3
       63 NAMECALL                         R4 R0 K17 ["setSessionUpdateHandler"]
       65 CALL                             R4 2 0
       66 RETURN                           R3 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_toolCallMetaBySessionId"]
        2 GETIMPORT                        R4 K3 [table.clone]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 SETTABLE                         R4 R3 R1
        7 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETTABLEKS                       R3 R0 K0 ["_toolCallMetaBySessionId"]
        3 GETTABLE                         R2 R3 R1
        4 RETURN                           R2 1
        5 LOADNIL                          R2
        6 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["submitToolResult"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["_client"]
        6 DUPTABLE                         R3 K6 [{"sessionId", "referenceId", "turnId", "content"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K2 ["sessionId"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["referenceId"]
       13 SETTABLEKS                       R4 R3 K3 ["referenceId"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["turnId"]
       18 SETTABLEKS                       R4 R3 K4 ["turnId"]
       20 SETTABLEKS                       R0 R3 K5 ["content"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1] = True, ["content"]}]
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K6 [{["type"] = "text", ["text"]}]
        4 SETTABLEKS                       R0 R3 K5 ["text"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K2 ["content"]
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["interrupt"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["cancel"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["result"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["submitToolResult"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["_client"]
       11 DUPTABLE                         R4 K7 [{"sessionId", "referenceId", "turnId", "content"}]
       12 GETUPVAL                         R5 2
       13 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["referenceId"]
       18 SETTABLEKS                       R5 R4 K4 ["referenceId"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K5 ["turnId"]
       23 SETTABLEKS                       R5 R4 K5 ["turnId"]
       25 SETTABLEKS                       R1 R4 K6 ["content"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["submitToolResult"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["_client"]
       13 DUPTABLE                         R4 K8 [{"sessionId", "referenceId", "turnId", "content"}]
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K4 ["sessionId"]
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K5 ["referenceId"]
       20 SETTABLEKS                       R5 R4 K5 ["referenceId"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K6 ["turnId"]
       25 SETTABLEKS                       R5 R4 K6 ["turnId"]
       27 SETTABLEKS                       R1 R4 K7 ["content"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKS                    R0 K0 ["interrupted"] ; [+13]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 GETTABLEKS                       R5 R5 K1 ["title"]
        8 LOADK                            R6 K2 ["interrupted_before_execution"]
        9 NAMECALL                         R1 R1 K3 ["_logFailedToolInvocation"]
       11 CALL                             R1 5 0
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 JUMPIFNOTEQKS                    R0 K4 ["deny"] ; [+39]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K1 ["title"]
       22 LOADK                            R6 K5 ["user_denied"]
       23 NAMECALL                         R1 R1 K3 ["_logFailedToolInvocation"]
       25 CALL                             R1 5 0
       26 GETUPVAL                         R1 4
       27 LOADK                            R2 K6 ["The tool call was cancelled by the user."]
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K7 ["submitToolResult"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K8 ["_client"]
       35 DUPTABLE                         R4 K13 [{"sessionId", "referenceId", "turnId", "content"}]
       36 GETUPVAL                         R5 1
       37 SETTABLEKS                       R5 R4 K9 ["sessionId"]
       39 GETUPVAL                         R5 6
       40 GETTABLEKS                       R5 R5 K10 ["referenceId"]
       42 SETTABLEKS                       R5 R4 K10 ["referenceId"]
       44 GETUPVAL                         R5 6
       45 GETTABLEKS                       R5 R5 K11 ["turnId"]
       47 SETTABLEKS                       R5 R4 K11 ["turnId"]
       49 SETTABLEKS                       R1 R4 K12 ["content"]
       51 CALL                             R2 2 0
       52 LOADNIL                          R1
       53 RETURN                           R1 1
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K14 ["_executingClientTools"]
       57 GETUPVAL                         R2 2
       58 LOADB                            R3 1
       59 SETTABLE                         R3 R1 R2
       60 GETUPVAL                         R1 8
       61 GETUPVAL                         R2 9
       62 CALL                             R1 1 1
       63 SETUPVAL                         R1 7
       64 GETUPVAL                         R1 10
       65 GETTABLEKS                       R1 R1 K15 ["resolve"]
       67 GETUPVAL                         R2 7
       68 CALL                             R1 1 1
       69 NEWCLOSURE                       R3 P0
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          UPVAL U6
       74 NAMECALL                         R1 R1 K16 ["andThen"]
       76 CALL                             R1 2 1
       77 NEWCLOSURE                       R3 P1
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          UPVAL U6
       83 NAMECALL                         R1 R1 K17 ["catch"]
       85 CALL                             R1 2 -1
       86 RETURN                           R1 -1

PROTO_13:
        0 MOVE                             R3 R2
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R3 1 0
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["resolve"]
        9 GETUPVAL                         R4 4
       10 CALL                             R3 1 1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U12
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R3 R3 K1 ["andThen"]
       25 CALL                             R3 2 1
       26 MOVE                             R5 R0
       27 MOVE                             R6 R1
       28 NAMECALL                         R3 R3 K1 ["andThen"]
       30 CALL                             R3 3 0
       31 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       22 JUMPIFNOT                        R4 ; [+46]
       23 GETTABLEKS                       R6 R2 K8 ["status"]
       25 JUMPIFNOTEQKS                    R6 K9 ["failed"] ; [+43]
       27 GETTABLEKS                       R7 R0 K10 ["_executingClientTools"]
       29 GETTABLE                         R6 R7 R4
       30 JUMPIF                           R6 ; [+8]
       31 MOVE                             R8 R3
       32 MOVE                             R9 R4
       33 GETTABLEKS                       R10 R2 K11 ["title"]
       35 LOADK                            R11 K12 ["interrupted_before_execution"]
       36 NAMECALL                         R6 R0 K13 ["_logFailedToolInvocation"]
       38 CALL                             R6 5 0
       39 JUMPIFNOT                        R5 ; [+4]
       40 GETTABLEKS                       R6 R5 K14 ["interrupt"]
       42 MOVE                             R7 R4
       43 CALL                             R6 1 0
       44 MOVE                             R6 R3
       45 JUMPIFNOT                        R6 ; [+3]
       46 GETTABLEKS                       R7 R0 K15 ["_activeClientToolPromises"]
       48 GETTABLE                         R6 R7 R3
       49 MOVE                             R7 R6
       50 JUMPIFNOT                        R7 ; [+1]
       51 GETTABLE                         R7 R6 R4
       52 JUMPIFNOT                        R7 ; [+3]
       53 NAMECALL                         R8 R7 K16 ["cancel"]
       55 CALL                             R8 1 0
       56 GETTABLEKS                       R8 R0 K17 ["_toolInvocationStateByToolCallId"]
       58 LOADNIL                          R9
       59 SETTABLE                         R9 R8 R4
       60 GETTABLEKS                       R8 R0 K10 ["_executingClientTools"]
       62 LOADNIL                          R9
       63 SETTABLE                         R9 R8 R4
       64 GETTABLEKS                       R8 R0 K18 ["_failedInvocationLoggedByToolCallId"]
       66 LOADNIL                          R9
       67 SETTABLE                         R9 R8 R4
       68 RETURN                           R0 0
       69 JUMPIFNOT                        R4 ; [+17]
       70 GETTABLEKS                       R6 R2 K8 ["status"]
       72 JUMPIFNOTEQKS                    R6 K19 ["completed"] ; [+14]
       74 GETTABLEKS                       R6 R0 K17 ["_toolInvocationStateByToolCallId"]
       76 LOADNIL                          R7
       77 SETTABLE                         R7 R6 R4
       78 GETTABLEKS                       R6 R0 K10 ["_executingClientTools"]
       80 LOADNIL                          R7
       81 SETTABLE                         R7 R6 R4
       82 GETTABLEKS                       R6 R0 K18 ["_failedInvocationLoggedByToolCallId"]
       84 LOADNIL                          R7
       85 SETTABLE                         R7 R6 R4
       86 RETURN                           R0 0
       87 GETTABLEKS                       R6 R2 K2 ["sessionUpdate"]
       89 JUMPIFEQKS                       R6 K4 ["tool_call_update"] ; [+2]
       91 RETURN                           R0 0
       92 GETTABLEKS                       R6 R2 K20 ["_meta"]
       94 JUMPIFNOT                        R6 ; [+4]
       95 GETTABLEKS                       R6 R2 K20 ["_meta"]
       97 GETTABLEKS                       R6 R6 K21 ["_roblox"]
       99 JUMPIFNOT                        R6 ; [+3]
      100 GETTABLEKS                       R7 R6 K22 ["expectsReply"]
      102 JUMPIF                           R7 ; [+1]
      103 RETURN                           R0 0
      104 GETTABLEKS                       R8 R6 K23 ["referenceId"]
      106 FASTCALL1                        TYPEOF R8 ; [+2]
      107 GETIMPORT                        R7 K25 [typeof]
      109 CALL                             R7 1 1
      110 JUMPIFNOTEQKS                    R7 K26 ["string"] ; [+23]
      112 FASTCALL1                        TYPEOF R4 ; [+3]
      113 MOVE                             R8 R4
      114 GETIMPORT                        R7 K25 [typeof]
      116 CALL                             R7 1 1
      117 JUMPIFNOTEQKS                    R7 K26 ["string"] ; [+16]
      119 FASTCALL1                        TYPEOF R3 ; [+3]
      120 MOVE                             R8 R3
      121 GETIMPORT                        R7 K25 [typeof]
      123 CALL                             R7 1 1
      124 JUMPIFNOTEQKS                    R7 K26 ["string"] ; [+9]
      126 GETTABLEKS                       R8 R2 K11 ["title"]
      128 FASTCALL1                        TYPEOF R8 ; [+2]
      129 GETIMPORT                        R7 K25 [typeof]
      131 CALL                             R7 1 1
      132 JUMPIFEQKS                       R7 K26 ["string"] ; [+10]
      134 MOVE                             R9 R3
      135 MOVE                             R10 R4
      136 GETTABLEKS                       R11 R2 K11 ["title"]
      138 LOADK                            R12 K27 ["malformed_update"]
      139 NAMECALL                         R7 R0 K13 ["_logFailedToolInvocation"]
      141 CALL                             R7 5 0
      142 RETURN                           R0 0
      143 GETTABLEKS                       R8 R0 K28 ["_toolUiContextByToolCallId"]
      145 GETTABLE                         R7 R8 R4
      146 NEWCLOSURE                       R8 P0
      147 CAPTURE                          UPVAL U0
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R6
      151 DUPCLOSURE                       R9 K29 [PROTO_8]
      152 GETTABLEKS                       R10 R0 K30 ["_clientToolHandler"]
      154 JUMPIF                           R10 ; [+31]
      155 MOVE                             R13 R3
      156 MOVE                             R14 R4
      157 GETTABLEKS                       R15 R2 K11 ["title"]
      159 LOADK                            R16 K31 ["missing_client_handler"]
      160 NAMECALL                         R11 R0 K13 ["_logFailedToolInvocation"]
      162 CALL                             R11 5 0
      163 MOVE                             R11 R9
      164 LOADK                            R12 K32 ["No client tool handler registered"]
      165 CALL                             R11 1 1
      166 GETUPVAL                         R12 0
      167 GETTABLEKS                       R12 R12 K33 ["submitToolResult"]
      169 GETTABLEKS                       R13 R0 K34 ["_client"]
      171 DUPTABLE                         R14 K37 [{"sessionId", "referenceId", "turnId", "content"}]
      172 SETTABLEKS                       R3 R14 K5 ["sessionId"]
      174 GETTABLEKS                       R15 R6 K23 ["referenceId"]
      176 SETTABLEKS                       R15 R14 K23 ["referenceId"]
      178 GETTABLEKS                       R15 R6 K35 ["turnId"]
      180 SETTABLEKS                       R15 R14 K35 ["turnId"]
      182 SETTABLEKS                       R11 R14 K36 ["content"]
      184 CALL                             R12 2 0
      185 RETURN                           R0 0
      186 DUPTABLE                         R11 K42 [{"sessionId", "name", "arguments", "referenceId", "toolCallId", "messageId", "contentId"}]
      187 SETTABLEKS                       R3 R11 K5 ["sessionId"]
      189 GETTABLEKS                       R12 R2 K11 ["title"]
      191 SETTABLEKS                       R12 R11 K38 ["name"]
      193 GETTABLEKS                       R12 R2 K43 ["rawInput"]
      195 JUMPIF                           R12 ; [+2]
      196 NEWTABLE                         R12 0 0
      198 SETTABLEKS                       R12 R11 K39 ["arguments"]
      200 GETTABLEKS                       R12 R6 K23 ["referenceId"]
      202 SETTABLEKS                       R12 R11 K23 ["referenceId"]
      204 SETTABLEKS                       R4 R11 K6 ["toolCallId"]
      206 MOVE                             R12 R7
      207 JUMPIFNOT                        R12 ; [+2]
      208 GETTABLEKS                       R12 R7 K40 ["messageId"]
      210 SETTABLEKS                       R12 R11 K40 ["messageId"]
      212 MOVE                             R12 R7
      213 JUMPIFNOT                        R12 ; [+2]
      214 GETTABLEKS                       R12 R7 K41 ["contentId"]
      216 SETTABLEKS                       R12 R11 K41 ["contentId"]
      218 JUMPIFNOT                        R5 ; [+25]
      219 GETTABLEKS                       R12 R5 K44 ["request"]
      221 DUPTABLE                         R13 K47 [{"toolCallId", "toolName", "toolInput", "messageId"}]
      222 SETTABLEKS                       R4 R13 K6 ["toolCallId"]
      224 GETUPVAL                         R14 1
      225 GETTABLEKS                       R14 R14 K48 ["ToolNaming"]
      227 GETTABLEKS                       R14 R14 K49 ["stripPrefix"]
      229 GETTABLEKS                       R15 R11 K38 ["name"]
      231 CALL                             R14 1 1
      232 SETTABLEKS                       R14 R13 K45 ["toolName"]
      234 GETTABLEKS                       R14 R11 K39 ["arguments"]
      236 SETTABLEKS                       R14 R13 K46 ["toolInput"]
      238 GETTABLEKS                       R14 R11 K40 ["messageId"]
      240 SETTABLEKS                       R14 R13 K40 ["messageId"]
      242 CALL                             R12 1 1
      243 JUMP                             ; [+5]
      244 GETUPVAL                         R12 2
      245 GETTABLEKS                       R12 R12 K50 ["resolve"]
      247 LOADK                            R13 K51 ["execute"]
      248 CALL                             R12 1 1
      249 LOADNIL                          R13
      250 GETUPVAL                         R14 2
      251 GETTABLEKS                       R14 R14 K52 ["new"]
      253 NEWCLOSURE                       R15 P2
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R4
      256 CAPTURE                          REF R13
      257 CAPTURE                          UPVAL U2
      258 CAPTURE                          VAL R12
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R9
      263 CAPTURE                          UPVAL U0
      264 CAPTURE                          VAL R6
      265 CAPTURE                          VAL R10
      266 CAPTURE                          VAL R11
      267 CALL                             R14 1 1
      268 GETTABLEKS                       R16 R0 K15 ["_activeClientToolPromises"]
      270 GETTABLE                         R15 R16 R3
      271 JUMPIF                           R15 ; [+5]
      272 NEWTABLE                         R15 0 0
      274 GETTABLEKS                       R16 R0 K15 ["_activeClientToolPromises"]
      276 SETTABLE                         R15 R16 R3
      277 SETTABLE                         R14 R15 R4
      278 NEWCLOSURE                       R18 P3
      279 CAPTURE                          VAL R0
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R14
      283 NAMECALL                         R16 R14 K53 ["finally"]
      285 CALL                             R16 2 0
      286 CLOSEUPVALS                      R13
      287 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["newSession"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_18:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["listSessions"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_20:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["history"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R7
       13 CALL                             R8 1 1
       14 JUMPIFNOT                        R8 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       17 MOVE                             R10 R1
       18 MOVE                             R11 R8
       19 GETIMPORT                        R9 K3 [table.insert]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R3 2 ; [-12]
       24 GETUPVAL                         R3 1
       25 JUMPIFNOT                        R3 ; [+9]
       26 MOVE                             R3 R1
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETUPVAL                         R8 1
       31 MOVE                             R9 R7
       32 CALL                             R8 1 0
       33 FORGLOOP                         R3 2 ; [-4]
       35 GETIMPORT                        R3 K5 [table.clone]
       37 MOVE                             R4 R0
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R1 R3 K0 ["history"]
       41 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["loadSession"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R0 R0 K2 ["andThen"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_23:
        0 NAMECALL                         R3 R0 K0 ["ensureInitialized"]
        2 CALL                             R3 1 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R3 K1 ["andThen"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["setSessionMode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_25:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateSessionInfo"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deleteSession"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["_client"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_29:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["cancel"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_client"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["prompt"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_33:
        0 NAMECALL                         R2 R0 K0 ["ensureInitialized"]
        2 CALL                             R2 1 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K1 ["andThen"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["sessionId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["update"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["_sessionUpdateSignal"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R3 R3 K1 ["Connect"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

PROTO_37:
        0 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+5]
        4 JUMPIFEQ                         R3 R2 ; [+4]
        6 GETTABLEKS                       R4 R3 K1 ["dispose"]
        8 CALL                             R4 0 0
        9 GETTABLEKS                       R4 R0 K0 ["_toolConfirmationHandlers"]
       11 SETTABLE                         R2 R4 R1
       12 RETURN                           R0 0

PROTO_38:
        0 SETTABLEKS                       R1 R0 K0 ["_clientToolHandler"]
        2 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R4 R0 K0 ["_toolUiContextByToolCallId"]
        2 DUPTABLE                         R5 K3 [{"messageId", "contentId"}]
        3 SETTABLEKS                       R2 R5 K1 ["messageId"]
        5 SETTABLEKS                       R3 R5 K2 ["contentId"]
        7 SETTABLE                         R5 R4 R1
        8 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_sessionIdByThreadId"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        6 SETTABLE                         R3 R1 R2
        7 GETTABLEKS                       R1 R0 K1 ["sessionId"]
        9 RETURN                           R1 1

PROTO_41:
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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["createClientToolHandler"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Guest"]
       25 GETTABLEKS                       R4 R4 K10 ["Environment"]
       27 GETTABLEKS                       R4 R4 K11 ["EventLogger"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["ImageContentStore"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["Promise"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["Signal"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Types"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K17 ["Acp"]
       58 GETTABLEKS                       R8 R8 K16 ["Types"]
       60 GETTABLEKS                       R9 R1 K17 ["Acp"]
       62 GETTABLEKS                       R9 R9 K18 ["RobloxExtensions"]
       64 GETTABLEKS                       R10 R1 K19 ["Engine"]
       66 GETTABLEKS                       R10 R10 K20 ["Time"]
       68 GETTABLEKS                       R11 R1 K21 ["ToolNaming"]
       70 DUPTABLE                         R12 K25 [{["fs"], ["terminal"] = False}]
       71 DUPTABLE                         R13 K28 [{["readTextFile"] = False, ["writeTextFile"] = False}]
       72 SETTABLEKS                       R13 R12 K22 ["fs"]
       74 DUPCLOSURE                       R13 K29 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 NEWTABLE                         R14 32 0
       79 SETTABLEKS                       R14 R14 K30 ["__index"]
       81 DUPCLOSURE                       R15 K31 [PROTO_2]
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R15 R14 K32 ["new"]
       87 DUPCLOSURE                       R15 K33 [PROTO_3]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R15 R14 K34 ["_trackToolInvocation"]
       92 DUPCLOSURE                       R15 K35 [PROTO_4]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 SETTABLEKS                       R15 R14 K36 ["_logFailedToolInvocation"]
       97 DUPCLOSURE                       R15 K37 [PROTO_5]
       98 SETTABLEKS                       R15 R14 K38 ["setSessionToolCallMeta"]
      100 DUPCLOSURE                       R15 K39 [PROTO_6]
      101 SETTABLEKS                       R15 R14 K40 ["getSessionToolCallMeta"]
      103 DUPCLOSURE                       R15 K41 [PROTO_15]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R15 R14 K42 ["_maybeExecuteClientTool"]
      109 DUPCLOSURE                       R15 K43 [PROTO_16]
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R15 R14 K44 ["ensureInitialized"]
      114 DUPCLOSURE                       R15 K45 [PROTO_18]
      115 SETTABLEKS                       R15 R14 K46 ["newSession"]
      117 DUPCLOSURE                       R15 K47 [PROTO_20]
      118 SETTABLEKS                       R15 R14 K48 ["listSessionsPage"]
      120 DUPCLOSURE                       R15 K49 [PROTO_23]
      121 CAPTURE                          VAL R13
      122 SETTABLEKS                       R15 R14 K50 ["loadSessionPage"]
      124 DUPCLOSURE                       R15 K51 [PROTO_25]
      125 SETTABLEKS                       R15 R14 K52 ["setSessionMode"]
      127 DUPCLOSURE                       R15 K53 [PROTO_27]
      128 CAPTURE                          VAL R9
      129 SETTABLEKS                       R15 R14 K54 ["updateSessionInfo"]
      131 DUPCLOSURE                       R15 K55 [PROTO_29]
      132 CAPTURE                          VAL R9
      133 SETTABLEKS                       R15 R14 K56 ["deleteSession"]
      135 DUPCLOSURE                       R15 K57 [PROTO_31]
      136 SETTABLEKS                       R15 R14 K58 ["cancel"]
      138 DUPCLOSURE                       R15 K59 [PROTO_33]
      139 SETTABLEKS                       R15 R14 K60 ["prompt"]
      141 DUPCLOSURE                       R15 K61 [PROTO_36]
      142 SETTABLEKS                       R15 R14 K62 ["subscribeToSessionUpdates"]
      144 DUPCLOSURE                       R15 K63 [PROTO_37]
      145 SETTABLEKS                       R15 R14 K64 ["setClientToolConfirmationHandler"]
      147 DUPCLOSURE                       R15 K65 [PROTO_38]
      148 SETTABLEKS                       R15 R14 K66 ["setClientToolHandler"]
      150 DUPCLOSURE                       R15 K67 [PROTO_39]
      151 SETTABLEKS                       R15 R14 K68 ["setClientToolUiContext"]
      153 DUPCLOSURE                       R15 K69 [PROTO_41]
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R15 R14 K70 ["getOrCreateSessionForThread"]
      157 RETURN                           R14 1
