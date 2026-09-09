PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL1                        TYPEOF R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+20]
       22 GETTABLEKS                       R7 R6 K3 ["type"]
       24 JUMPIFNOTEQKS                    R7 K4 ["text"] ; [+16]
       26 DUPTABLE                         R9 K6 [{["type"] = "content", ["content"]}]
       27 DUPTABLE                         R10 K7 [{["type"] = "text", ["text"]}]
       28 GETTABLEKS                       R11 R6 K4 ["text"]
       30 SETTABLEKS                       R11 R10 K4 ["text"]
       32 SETTABLEKS                       R10 R9 K5 ["content"]
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K9 [table.insert]
       39 CALL                             R7 2 0
       40 JUMP                             ; [+29]
       41 FASTCALL1                        TYPEOF R6 ; [+3]
       42 MOVE                             R8 R6
       43 GETIMPORT                        R7 K1 [typeof]
       45 CALL                             R7 1 1
       46 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+23]
       48 GETTABLEKS                       R7 R6 K3 ["type"]
       50 JUMPIFNOTEQKS                    R7 K10 ["image"] ; [+19]
       52 DUPTABLE                         R9 K6 [{["type"] = "content", ["content"]}]
       53 DUPTABLE                         R10 K13 [{["type"] = "image", ["data"], ["mimeType"]}]
       54 GETTABLEKS                       R11 R6 K11 ["data"]
       56 SETTABLEKS                       R11 R10 K11 ["data"]
       58 GETTABLEKS                       R11 R6 K12 ["mimeType"]
       60 SETTABLEKS                       R11 R10 K12 ["mimeType"]
       62 SETTABLEKS                       R10 R9 K5 ["content"]
       64 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       66 MOVE                             R8 R1
       67 GETIMPORT                        R7 K9 [table.insert]
       69 CALL                             R7 2 0
       70 FORGLOOP                         R2 2 ; [-56]
       72 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K0 ["toolCallId"]
       10 JUMPIFNOT                        R6 ; [+26]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K6 [{["sessionUpdate"], [2], ["title"], ["status"] = "failed", ["content"]}]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R8 R8 K7 ["ToolCallUpdate"]
       16 SETTABLEKS                       R8 R7 K1 ["sessionUpdate"]
       18 GETTABLEKS                       R8 R5 K0 ["toolCallId"]
       20 SETTABLEKS                       R8 R7 K0 ["toolCallId"]
       22 GETTABLEKS                       R8 R5 K2 ["title"]
       24 SETTABLEKS                       R8 R7 K2 ["title"]
       26 NEWTABLE                         R8 0 1
       28 DUPTABLE                         R9 K9 [{["type"] = "content", ["content"]}]
       29 DUPTABLE                         R10 K12 [{["type"] = "text", ["text"] = "The tool call was cancelled by the user."}]
       30 SETTABLEKS                       R10 R9 K5 ["content"]
       32 SETLIST                          R8 R9 1 [1]
       34 SETTABLEKS                       R8 R7 K5 ["content"]
       36 CALL                             R6 1 0
       37 FORGLOOP                         R1 2 ; [-30]
       39 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFEQKS                       R1 K1 ["text"] ; [+5]
        4 GETTABLEKS                       R1 R0 K0 ["type"]
        6 JUMPIFNOTEQKS                    R1 K2 ["thinking"] ; [+11]
        8 GETUPVAL                         R1 0
        9 LOADB                            R3 0
       10 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K0 ["type"]
       16 SETTABLE                         R3 R2 R1
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K0 ["type"]
       20 JUMPIFNOTEQKS                    R1 K4 ["tool_use"] ; [+36]
       22 GETUPVAL                         R1 0
       23 LOADB                            R3 0
       24 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       26 CALL                             R1 2 1
       27 DUPTABLE                         R2 K9 [{["toolCallId"], ["title"], ["rawInput"] = }]
       28 GETTABLEKS                       R3 R0 K10 ["id"]
       30 SETTABLEKS                       R3 R2 K5 ["toolCallId"]
       32 GETTABLEKS                       R3 R0 K11 ["name"]
       34 SETTABLEKS                       R3 R2 K6 ["title"]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R4 R0 K11 ["name"]
       39 SETTABLE                         R2 R3 R4
       40 GETUPVAL                         R3 3
       41 DUPTABLE                         R4 K15 [{["sessionUpdate"], ["toolCallId"], ["title"], ["status"] = "pending"}]
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K16 ["ToolCall"]
       45 SETTABLEKS                       R5 R4 K12 ["sessionUpdate"]
       47 GETTABLEKS                       R5 R2 K5 ["toolCallId"]
       49 SETTABLEKS                       R5 R4 K5 ["toolCallId"]
       51 GETTABLEKS                       R5 R2 K6 ["title"]
       53 SETTABLEKS                       R5 R4 K6 ["title"]
       55 CALL                             R3 1 0
       56 RETURN                           R1 1
       57 GETTABLEKS                       R1 R0 K0 ["type"]
       59 JUMPIFNOTEQKS                    R1 K17 ["compaction_status"] ; [+15]
       61 GETUPVAL                         R1 3
       62 DUPTABLE                         R2 K19 [{["sessionUpdate"], ["status"] = "in_progress"}]
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R3 R3 K20 ["CompactionStatus"]
       66 SETTABLEKS                       R3 R2 K12 ["sessionUpdate"]
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 0
       70 LOADB                            R3 0
       71 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       73 CALL                             R1 2 -1
       74 RETURN                           R1 -1
       75 LOADNIL                          R1
       76 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["text_delta"] ; [+17]
        4 GETUPVAL                         R3 0
        5 DUPTABLE                         R4 K4 [{"sessionUpdate", "content"}]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K5 ["AgentMessageChunk"]
        9 SETTABLEKS                       R5 R4 K2 ["sessionUpdate"]
       11 DUPTABLE                         R5 K7 [{[1] = "text", ["text"]}]
       12 GETTABLEKS                       R6 R1 K6 ["text"]
       14 SETTABLEKS                       R6 R5 K6 ["text"]
       16 SETTABLEKS                       R5 R4 K3 ["content"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R1 K0 ["type"]
       22 JUMPIFNOTEQKS                    R3 K8 ["thinking_delta"] ; [+17]
       24 GETUPVAL                         R3 0
       25 DUPTABLE                         R4 K4 [{"sessionUpdate", "content"}]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K9 ["AgentThoughtChunk"]
       29 SETTABLEKS                       R5 R4 K2 ["sessionUpdate"]
       31 DUPTABLE                         R5 K7 [{[1] = "text", ["text"]}]
       32 GETTABLEKS                       R6 R1 K10 ["thinking"]
       34 SETTABLEKS                       R6 R5 K6 ["text"]
       36 SETTABLEKS                       R5 R4 K3 ["content"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R3 R1 K0 ["type"]
       42 JUMPIFNOTEQKS                    R3 K11 ["json_delta"] ; [+42]
       44 JUMPIFNOT                        R2 ; [+3]
       45 GETTABLEKS                       R3 R2 K12 ["toolName"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R3
       49 JUMPIFNOT                        R3 ; [+3]
       50 GETUPVAL                         R5 2
       51 GETTABLE                         R4 R5 R3
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 JUMPIFNOT                        R4 ; [+42]
       55 GETTABLEKS                       R5 R4 K13 ["toolCallId"]
       57 JUMPIFNOT                        R5 ; [+39]
       58 GETUPVAL                         R5 0
       59 DUPTABLE                         R6 K18 [{["sessionUpdate"], ["toolCallId"], ["title"], ["status"] = "pending", ["_meta"]}]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K19 ["ToolCallUpdate"]
       63 SETTABLEKS                       R7 R6 K2 ["sessionUpdate"]
       65 GETTABLEKS                       R7 R4 K13 ["toolCallId"]
       67 SETTABLEKS                       R7 R6 K13 ["toolCallId"]
       69 GETTABLEKS                       R7 R4 K14 ["title"]
       71 SETTABLEKS                       R7 R6 K14 ["title"]
       73 DUPTABLE                         R7 K21 [{"_roblox"}]
       74 DUPTABLE                         R8 K23 [{"rawInputDelta"}]
       75 GETTABLEKS                       R9 R1 K24 ["jsonDelta"]
       77 SETTABLEKS                       R9 R8 K22 ["rawInputDelta"]
       79 SETTABLEKS                       R8 R7 K20 ["_roblox"]
       81 SETTABLEKS                       R7 R6 K17 ["_meta"]
       83 CALL                             R5 1 0
       84 RETURN                           R0 0
       85 GETTABLEKS                       R3 R1 K0 ["type"]
       87 JUMPIFNOTEQKS                    R3 K25 ["summary_delta"] ; [+9]
       89 GETUPVAL                         R3 0
       90 DUPTABLE                         R4 K27 [{["sessionUpdate"], ["status"] = "complete"}]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K28 ["CompactionStatus"]
       94 SETTABLEKS                       R5 R4 K2 ["sessionUpdate"]
       96 CALL                             R3 1 0
       97 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFNOTEQKS                    R1 K0 ["thinking"] ; [+9]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K2 [{"sessionUpdate"}]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K3 ["ThoughtFinished"]
       10 SETTABLEKS                       R3 R2 K1 ["sessionUpdate"]
       12 CALL                             R1 1 0
       13 JUMPIFNOT                        R0 ; [+3]
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 SETTABLE                         R2 R1 R0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K3 [{"toolCallId", "title", "rawInput"}]
        1 GETTABLEKS                       R4 R1 K4 ["id"]
        3 SETTABLEKS                       R4 R3 K0 ["toolCallId"]
        5 GETTABLEKS                       R4 R1 K5 ["name"]
        7 SETTABLEKS                       R4 R3 K1 ["title"]
        9 GETTABLEKS                       R4 R1 K6 ["input"]
       11 SETTABLEKS                       R4 R3 K2 ["rawInput"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R1 K5 ["name"]
       16 SETTABLE                         R3 R4 R5
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K10 [{["sessionUpdate"], [2], ["title"], ["status"] = "pending", ["rawInput"]}]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K11 ["ToolCallUpdate"]
       22 SETTABLEKS                       R6 R5 K7 ["sessionUpdate"]
       24 GETTABLEKS                       R6 R3 K0 ["toolCallId"]
       26 SETTABLEKS                       R6 R5 K0 ["toolCallId"]
       28 GETTABLEKS                       R6 R3 K1 ["title"]
       30 SETTABLEKS                       R6 R5 K1 ["title"]
       32 GETTABLEKS                       R6 R3 K2 ["rawInput"]
       34 SETTABLEKS                       R6 R5 K2 ["rawInput"]
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K6 [{"sessionUpdate", "toolCallId", "title", "status", "content", "rawOutput"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K7 ["ToolCallUpdate"]
        5 SETTABLEKS                       R5 R4 K0 ["sessionUpdate"]
        7 GETTABLEKS                       R5 R1 K8 ["id"]
        9 SETTABLEKS                       R5 R4 K1 ["toolCallId"]
       11 GETTABLEKS                       R5 R1 K9 ["name"]
       13 SETTABLEKS                       R5 R4 K2 ["title"]
       15 GETTABLEKS                       R6 R1 K10 ["isError"]
       17 JUMPIFNOT                        R6 ; [+2]
       18 LOADK                            R5 K11 ["failed"]
       19 JUMP                             ; [+1]
       20 LOADK                            R5 K12 ["completed"]
       21 SETTABLEKS                       R5 R4 K3 ["status"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R6 R1 K4 ["content"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K4 ["content"]
       29 GETTABLEKS                       R5 R1 K13 ["structuredContent"]
       31 SETTABLEKS                       R5 R4 K5 ["rawOutput"]
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R4 R1 K9 ["name"]
       37 LOADNIL                          R5
       38 SETTABLE                         R5 R3 R4
       39 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R6 K0 ["Expected pending tool call for %*"]
        3 MOVE                             R8 R0
        4 NAMECALL                         R6 R6 K1 ["format"]
        6 CALL                             R6 2 1
        7 MOVE                             R5 R6
        8 FASTCALL2                        ASSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 LOADB                            R3 1
       15 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["sendUpdate"]
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 DUPTABLE                         R5 K10 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onPreExecuteToolUse", "onToolResult", "checkToolConfirmationRequestAsync", "getToolCallOptions", "cancelPending"}]
       11 DUPCLOSURE                       R6 K11 [PROTO_2]
       12 SETTABLEKS                       R6 R5 K1 ["onNewMessage"]
       14 NEWCLOSURE                       R6 P2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R3
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R6 R5 K2 ["onContentStart"]
       22 NEWCLOSURE                       R6 P3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          REF R2
       26 SETTABLEKS                       R6 R5 K3 ["onContentDelta"]
       28 NEWCLOSURE                       R6 P4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R6 R5 K4 ["onContentFinished"]
       34 NEWCLOSURE                       R6 P5
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R6 R5 K5 ["onPreExecuteToolUse"]
       40 NEWCLOSURE                       R6 P6
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          REF R2
       45 SETTABLEKS                       R6 R5 K6 ["onToolResult"]
       47 NEWCLOSURE                       R6 P7
       48 CAPTURE                          REF R2
       49 SETTABLEKS                       R6 R5 K7 ["checkToolConfirmationRequestAsync"]
       51 NEWCLOSURE                       R6 P8
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R6 R5 K8 ["getToolCallOptions"]
       55 SETTABLEKS                       R4 R5 K9 ["cancelPending"]
       57 CLOSEUPVALS                      R2
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["AgentClientProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K11 [game]
       28 LOADK                            R6 K12 ["HttpService"]
       29 NAMECALL                         R4 R4 K13 ["GetService"]
       31 CALL                             R4 2 1
       32 GETTABLEKS                       R5 R3 K14 ["SessionUpdateKind"]
       34 DUPCLOSURE                       R6 K15 [PROTO_0]
       35 DUPCLOSURE                       R7 K16 [PROTO_10]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R6
       39 DUPTABLE                         R8 K19 [{"create", "toToolCallContent"}]
       40 SETTABLEKS                       R7 R8 K17 ["create"]
       42 SETTABLEKS                       R6 R8 K18 ["toToolCallContent"]
       44 RETURN                           R8 1
