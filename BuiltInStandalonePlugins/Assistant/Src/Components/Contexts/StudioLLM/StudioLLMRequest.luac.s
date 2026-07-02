PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 JUMPIFEQKS                       R1 K0 [""] ; [+2]
        3 RETURN                           R1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R2 0
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SubagentConversation"]
        3 GETTABLEKS                       R0 R0 K1 ["postCreateSubagentConversationV1SubagentConversationPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Conversation"]
        3 GETTABLEKS                       R0 R0 K1 ["postCreateConversationV1ConversationPostAsync"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["callWithOptions"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["callWithOptions"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 MOVE                             R5 R2
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R1 2 1
        4 GETTABLEKS                       R2 R1 K0 ["success"]
        6 JUMPIF                           R2 ; [+6]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["throwError"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETTABLEKS                       R3 R1 K2 ["data"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R1 K0 ["isSubagent"]
        3 JUMPIFNOT                        R5 ; [+3]
        4 GETTABLEKS                       R4 R1 K1 ["selectedModel"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 LOADK                            R6 K2 ["auto"]
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 LOADK                            R6 K2 ["auto"]
       16 CALL                             R4 2 1
       17 DUPTABLE                         R5 K7 [{"system", "llm_config", "messages", "tools"}]
       18 GETTABLEKS                       R6 R1 K3 ["system"]
       20 SETTABLEKS                       R6 R5 K3 ["system"]
       22 DUPTABLE                         R6 K13 [{["model"], ["thinking_mode"], ["max_tokens"], ["parallel_tool_calls"] = True}]
       23 SETTABLEKS                       R3 R6 K8 ["model"]
       25 SETTABLEKS                       R4 R6 K9 ["thinking_mode"]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K10 ["max_tokens"]
       31 SETTABLEKS                       R6 R5 K4 ["llm_config"]
       33 GETTABLEKS                       R6 R1 K5 ["messages"]
       35 SETTABLEKS                       R6 R5 K5 ["messages"]
       37 GETTABLEKS                       R6 R1 K6 ["tools"]
       39 SETTABLEKS                       R6 R5 K6 ["tools"]
       41 DUPTABLE                         R6 K22 [{["threadId"], ["messageId"], ["requestId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
       42 GETTABLEKS                       R7 R1 K14 ["threadId"]
       44 SETTABLEKS                       R7 R6 K14 ["threadId"]
       46 GETTABLEKS                       R7 R1 K23 ["messageGuid"]
       48 SETTABLEKS                       R7 R6 K15 ["messageId"]
       50 SETTABLEKS                       R2 R6 K16 ["requestId"]
       52 SETTABLEKS                       R5 R6 K17 ["conversation"]
       54 GETTABLEKS                       R7 R1 K24 ["isFirstMessage"]
       56 SETTABLEKS                       R7 R6 K18 ["firstMessage"]
       58 GETTABLEKS                       R7 R1 K25 ["isAgenticMode"]
       60 SETTABLEKS                       R7 R6 K19 ["useAgenticMode"]
       62 GETTABLEKS                       R7 R1 K21 ["assistantMode"]
       64 SETTABLEKS                       R7 R6 K21 ["assistantMode"]
       66 GETUPVAL                         R7 4
       67 CALL                             R7 0 1
       68 JUMPIFNOT                        R7 ; [+125]
       69 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
       71 JUMPIFEQKB                       R8 TRUE ; [+2]
       73 LOADB                            R7 0 +1
       74 LOADB                            R7 1
       75 JUMPIFNOT                        R7 ; [+3]
       76 GETUPVAL                         R8 5
       77 CALL                             R8 0 1
       78 JUMP                             ; [+2]
       79 GETUPVAL                         R8 6
       80 CALL                             R8 0 1
       81 GETUPVAL                         R9 0
       82 MOVE                             R10 R8
       83 GETTABLEKS                       R11 R1 K26 ["conversationUrl"]
       85 CALL                             R9 2 1
       86 JUMPIFNOT                        R9 ; [+48]
       87 JUMPIFEQKS                       R9 K27 [""] ; [+47]
       89 NEWTABLE                         R10 1 0
       91 LOADK                            R11 K28 ["application/json"]
       92 SETTABLEKS                       R11 R10 K29 ["Content-Type"]
       94 JUMPIFEQKS                       R8 K27 [""] ; [+25]
       96 LOADNIL                          R11
       97 GETUPVAL                         R12 7
       98 CALL                             R12 0 1
       99 JUMPIFNOT                        R12 ; [+9]
      100 GETUPVAL                         R12 8
      101 GETTABLEKS                       R12 R12 K30 ["get"]
      103 CALL                             R12 0 1
      104 GETTABLEKS                       R13 R12 K31 ["getUserId"]
      106 CALL                             R13 0 1
      107 MOVE                             R11 R13
      108 JUMP                             ; [+4]
      109 NAMECALL                         R12 R0 K32 ["GetUserId"]
      111 CALL                             R12 1 1
      112 MOVE                             R11 R12
      113 FASTCALL1                        TOSTRING R11 ; [+3]
      114 MOVE                             R13 R11
      115 GETIMPORT                        R12 K34 [tostring]
      117 CALL                             R12 1 1
      118 SETTABLEKS                       R12 R10 K35 ["robloxctx-authenticated-userid"]
      120 GETUPVAL                         R11 9
      121 GETTABLEKS                       R11 R11 K36 ["Json"]
      123 GETTABLEKS                       R11 R11 K37 ["encode"]
      125 MOVE                             R12 R6
      126 CALL                             R11 1 1
      127 GETUPVAL                         R12 10
      128 MOVE                             R14 R9
      129 MOVE                             R15 R11
      130 MOVE                             R16 R10
      131 NAMECALL                         R12 R12 K38 ["post"]
      133 CALL                             R12 4 -1
      134 RETURN                           R12 -1
      135 DUPTABLE                         R10 K39 [{["threadId"], ["requestId"], ["messageId"], ["conversation"], ["firstMessage"], ["useAgenticMode"], ["isDebugMode"] = True, ["assistantMode"]}]
      136 GETTABLEKS                       R11 R1 K14 ["threadId"]
      138 SETTABLEKS                       R11 R10 K14 ["threadId"]
      140 SETTABLEKS                       R2 R10 K16 ["requestId"]
      142 GETTABLEKS                       R11 R1 K23 ["messageGuid"]
      144 SETTABLEKS                       R11 R10 K15 ["messageId"]
      146 DUPTABLE                         R11 K41 [{"system", "llmConfig", "messages", "tools"}]
      147 GETTABLEKS                       R12 R1 K3 ["system"]
      149 SETTABLEKS                       R12 R11 K3 ["system"]
      151 DUPTABLE                         R12 K47 [{["model"], ["thinkingMode"], ["parallelToolCalls"] = True, ["maxTokens"], ["temperature"] = }]
      152 SETTABLEKS                       R3 R12 K8 ["model"]
      154 SETTABLEKS                       R4 R12 K42 ["thinkingMode"]
      156 GETUPVAL                         R13 3
      157 CALL                             R13 0 1
      158 SETTABLEKS                       R13 R12 K44 ["maxTokens"]
      160 SETTABLEKS                       R12 R11 K40 ["llmConfig"]
      162 GETTABLEKS                       R12 R1 K5 ["messages"]
      164 SETTABLEKS                       R12 R11 K5 ["messages"]
      166 GETTABLEKS                       R12 R1 K6 ["tools"]
      168 SETTABLEKS                       R12 R11 K6 ["tools"]
      170 SETTABLEKS                       R11 R10 K17 ["conversation"]
      172 GETTABLEKS                       R11 R1 K24 ["isFirstMessage"]
      174 SETTABLEKS                       R11 R10 K18 ["firstMessage"]
      176 GETTABLEKS                       R11 R1 K25 ["isAgenticMode"]
      178 SETTABLEKS                       R11 R10 K19 ["useAgenticMode"]
      180 GETTABLEKS                       R11 R1 K21 ["assistantMode"]
      182 SETTABLEKS                       R11 R10 K21 ["assistantMode"]
      184 GETUPVAL                         R11 11
      185 GETTABLEKS                       R11 R11 K48 ["new"]
      187 NEWCLOSURE                       R12 P0
      188 CAPTURE                          UPVAL U12
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R7
      191 CAPTURE                          UPVAL U13
      192 CALL                             R11 1 -1
      193 RETURN                           R11 -1
      194 GETTABLEKS                       R8 R1 K0 ["isSubagent"]
      196 JUMPIFEQKB                       R8 TRUE ; [+2]
      198 LOADB                            R7 0 +1
      199 LOADB                            R7 1
      200 JUMPIFNOT                        R7 ; [+3]
      201 GETUPVAL                         R8 5
      202 CALL                             R8 0 1
      203 JUMP                             ; [+2]
      204 GETUPVAL                         R8 6
      205 CALL                             R8 0 1
      206 GETTABLEKS                       R10 R1 K26 ["conversationUrl"]
      208 JUMPIFNOT                        R10 ; [+4]
      209 JUMPIFEQKS                       R10 K27 [""] ; [+3]
      211 MOVE                             R9 R10
      212 JUMP                             ; [+4]
      213 JUMPIFNOT                        R7 ; [+2]
      214 GETUPVAL                         R9 14
      215 JUMP                             ; [+1]
      216 GETUPVAL                         R9 15
      217 GETUPVAL                         R10 0
      218 MOVE                             R11 R8
      219 MOVE                             R12 R9
      220 CALL                             R10 2 1
      221 NEWTABLE                         R11 1 0
      223 LOADK                            R12 K28 ["application/json"]
      224 SETTABLEKS                       R12 R11 K29 ["Content-Type"]
      226 JUMPIFEQKS                       R8 K27 [""] ; [+25]
      228 LOADNIL                          R12
      229 GETUPVAL                         R13 7
      230 CALL                             R13 0 1
      231 JUMPIFNOT                        R13 ; [+9]
      232 GETUPVAL                         R13 8
      233 GETTABLEKS                       R13 R13 K30 ["get"]
      235 CALL                             R13 0 1
      236 GETTABLEKS                       R14 R13 K31 ["getUserId"]
      238 CALL                             R14 0 1
      239 MOVE                             R12 R14
      240 JUMP                             ; [+4]
      241 NAMECALL                         R13 R0 K32 ["GetUserId"]
      243 CALL                             R13 1 1
      244 MOVE                             R12 R13
      245 FASTCALL1                        TOSTRING R12 ; [+3]
      246 MOVE                             R14 R12
      247 GETIMPORT                        R13 K34 [tostring]
      249 CALL                             R13 1 1
      250 SETTABLEKS                       R13 R11 K35 ["robloxctx-authenticated-userid"]
      252 GETUPVAL                         R12 9
      253 GETTABLEKS                       R12 R12 K36 ["Json"]
      255 GETTABLEKS                       R12 R12 K37 ["encode"]
      257 MOVE                             R13 R6
      258 CALL                             R12 1 1
      259 GETUPVAL                         R13 10
      260 MOVE                             R15 R10
      261 MOVE                             R16 R12
      262 MOVE                             R17 R11
      263 NAMECALL                         R13 R13 K38 ["post"]
      265 CALL                             R13 4 -1
      266 RETURN                           R13 -1

PROTO_6:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["responseCode"]
        3 JUMPIFNOTEQKN                    R3 K1 [429] ; [+18]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       10 JUMPIFEQKS                       R3 K3 ["\"Quota Exceeded\""] ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["responseBody"]
       14 JUMPIFNOTEQKS                    R3 K4 ["\"Quota Checking Failed\""] ; [+3]
       16 LOADK                            R2 K5 ["quota_exceeded"]
       17 JUMP                             ; [+5]
       18 LOADK                            R2 K6 ["too_many_request"]
       19 JUMP                             ; [+3]
       20 LOADK                            R2 K5 ["quota_exceeded"]
       21 JUMP                             ; [+1]
       22 LOADK                            R2 K7 ["request_failed"]
       23 MOVE                             R3 R1
       24 DUPTABLE                         R4 K10 [{["type"] = "error", ["error"]}]
       25 SETTABLEKS                       R2 R4 K9 ["error"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["isProcessing"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["isProcessing"]
        7 GETTABLEKS                       R2 R0 K1 ["receivedResponses"]
        9 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFEQKNIL                     R1 ; [+58]
       14 GETIMPORT                        R2 K4 [pcall]
       16 GETTABLEKS                       R3 R0 K5 ["callback"]
       18 GETTABLEKS                       R4 R1 K6 ["event"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       23 JUMPIFNOTEQKN                    R2 K7 [0] ; [+17]
       25 GETIMPORT                        R3 K10 [os.clock]
       27 CALL                             R3 0 1
       28 GETTABLEKS                       R4 R0 K11 ["startTime"]
       30 SUB                              R2 R3 R4
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K12 ["get"]
       34 CALL                             R3 0 1
       35 GETTABLEKS                       R3 R3 K13 ["EventLogger"]
       37 GETTABLEKS                       R4 R3 K14 ["logInitialResponseLatency"]
       39 MOVE                             R5 R2
       40 CALL                             R4 1 0
       41 GETTABLEKS                       R2 R1 K6 ["event"]
       43 JUMPIFNOT                        R2 ; [+16]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K15 ["isTerminalEventType"]
       47 GETTABLEKS                       R3 R1 K6 ["event"]
       49 CALL                             R2 1 1
       50 JUMPIFNOT                        R2 ; [+9]
       51 GETUPVAL                         R2 2
       52 GETTABLEKS                       R3 R0 K16 ["requestId"]
       54 LOADNIL                          R4
       55 SETTABLE                         R4 R2 R3
       56 LOADB                            R2 0
       57 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       59 RETURN                           R0 0
       60 GETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       62 ADDK                             R2 R2 K17 [1]
       63 SETTABLEKS                       R2 R0 K2 ["currentSequenceNumber"]
       65 GETTABLEKS                       R2 R0 K1 ["receivedResponses"]
       67 GETTABLEKS                       R3 R0 K2 ["currentSequenceNumber"]
       69 GETTABLE                         R1 R2 R3
       70 JUMPBACK                         ; [-59]
       71 LOADB                            R2 0
       72 SETTABLEKS                       R2 R0 K0 ["isProcessing"]
       74 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["detail"]
        8 CALL                             R0 1 1
        9 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+7]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R4 K4 ["Failed to parse notification event detail:"]
       10 GETTABLEKS                       R5 R0 K5 ["detail"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R5 R2 K6 ["requestId"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R3 K7 ["receivedResponses"]
       22 GETTABLEKS                       R5 R2 K8 ["sequenceNumber"]
       24 SETTABLE                         R2 R4 R5
       25 GETTABLEKS                       R4 R3 K9 ["isProcessing"]
       27 JUMPIF                           R4 ; [+5]
       28 GETIMPORT                        R4 K12 [task.spawn]
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETUPVAL                         R1 4
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+11]
       10 GETUPVAL                         R1 5
       11 GETTABLEKS                       R1 R1 K0 ["get"]
       13 CALL                             R1 0 1
       14 GETTABLEKS                       R2 R1 K1 ["listen"]
       16 LOADK                            R3 K2 ["AssistantPlugin"]
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 SETUPVAL                         R2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 6
       22 GETTABLEKS                       R1 R1 K3 ["RobloxEventReceived"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R1 R1 K4 ["Connect"]
       28 CALL                             R1 2 1
       29 SETUPVAL                         R1 0
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K3 [table.clear]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R1 R2
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 3
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["set"]
        8 GETTABLEKS                       R4 R0 K2 ["messageGuid"]
       10 MOVE                             R5 R2
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 0
       14 GETUPVAL                         R3 3
       15 DUPTABLE                         R4 K11 [{["callback"], ["receivedResponses"], ["currentSequenceNumber"] = 0, ["startTime"], ["isProcessing"] = False, ["requestId"]}]
       16 SETTABLEKS                       R1 R4 K3 ["callback"]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K4 ["receivedResponses"]
       22 GETIMPORT                        R5 K14 [os.clock]
       24 CALL                             R5 0 1
       25 SETTABLEKS                       R5 R4 K7 ["startTime"]
       27 SETTABLEKS                       R2 R4 K10 ["requestId"]
       29 SETTABLE                         R4 R3 R2
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R4 5
       32 MOVE                             R5 R0
       33 MOVE                             R6 R2
       34 CALL                             R3 3 1
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R3 R3 K15 ["catch"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+10]
        5 LOADK                            R6 K0 ["NotificationService"]
        6 NAMECALL                         R4 R0 K1 ["GetService"]
        8 CALL                             R4 2 1
        9 MOVE                             R2 R4
       10 LOADK                            R6 K2 ["StudioService"]
       11 NAMECALL                         R4 R0 K1 ["GetService"]
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 NEWTABLE                         R4 0 0
       17 LOADNIL                          R5
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R4
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          REF R5
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R6
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          REF R2
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETTABLEKS                       R8 R1 K3 ["Unloading"]
       33 NEWCLOSURE                       R10 P2
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R4
       36 NAMECALL                         R8 R8 K4 ["Connect"]
       38 CALL                             R8 2 0
       39 NEWCLOSURE                       R8 P3
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          REF R3
       46 CAPTURE                          UPVAL U8
       47 CLOSEUPVALS                      R2
       48 RETURN                           R8 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["LuauPolyfill"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Generated"]
       38 GETTABLEKS                       R6 R6 K15 ["OpenAPI"]
       40 GETTABLEKS                       R6 R6 K16 ["McpAssistantApi"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["ModelContextProtocol"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K18 ["Src"]
       54 GETTABLEKS                       R8 R8 K19 ["Util"]
       56 GETTABLEKS                       R8 R8 K20 ["NotificationManagerStore"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Packages"]
       63 GETTABLEKS                       R9 R9 K21 ["Promise"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K18 ["Src"]
       70 GETTABLEKS                       R10 R10 K19 ["Util"]
       72 GETTABLEKS                       R10 R10 K22 ["StudioEndpointUtil"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K18 ["Src"]
       79 GETTABLEKS                       R11 R11 K23 ["Types"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K18 ["Src"]
       86 GETTABLEKS                       R12 R12 K19 ["Util"]
       88 GETTABLEKS                       R12 R12 K24 ["stringCoalesce"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K18 ["Src"]
       95 GETTABLEKS                       R13 R13 K25 ["Flags"]
       97 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantNotificationManager"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K18 ["Src"]
      104 GETTABLEKS                       R14 R14 K25 ["Flags"]
      106 GETTABLEKS                       R14 R14 K27 ["FFlagAssistantUseNewOpenAPIClients"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K18 ["Src"]
      113 GETTABLEKS                       R15 R15 K25 ["Flags"]
      115 GETTABLEKS                       R15 R15 K28 ["FFlagMCPAssistantTooManyRequestLog"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K18 ["Src"]
      122 GETTABLEKS                       R16 R16 K25 ["Flags"]
      124 GETTABLEKS                       R16 R16 K29 ["FIntConvAIAssistantMaxTokens"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R0 K18 ["Src"]
      131 GETTABLEKS                       R17 R17 K25 ["Flags"]
      133 GETTABLEKS                       R17 R17 K30 ["FStringMCPAssistantThinkingMode"]
      135 CALL                             R16 1 1
      136 GETTABLEKS                       R17 R2 K25 ["Flags"]
      138 GETTABLEKS                       R17 R17 K31 ["Shared"]
      140 GETTABLEKS                       R17 R17 K32 ["FFlagDebugLogAssistantUI"]
      142 GETTABLEKS                       R18 R2 K25 ["Flags"]
      144 GETTABLEKS                       R18 R18 K31 ["Shared"]
      146 GETTABLEKS                       R18 R18 K33 ["FStringMCPAssistantCustomModelName"]
      148 GETTABLEKS                       R19 R2 K25 ["Flags"]
      150 GETTABLEKS                       R19 R19 K31 ["Shared"]
      152 GETTABLEKS                       R19 R19 K34 ["FStringMCPAssistantURLOverride"]
      154 GETTABLEKS                       R20 R2 K25 ["Flags"]
      156 GETTABLEKS                       R20 R20 K31 ["Shared"]
      158 GETTABLEKS                       R20 R20 K35 ["FStringSubagentURLOverride"]
      160 GETTABLEKS                       R21 R2 K36 ["Utils"]
      162 GETTABLEKS                       R21 R21 K37 ["ServerStreamIdStore"]
      164 GETTABLEKS                       R22 R2 K36 ["Utils"]
      166 GETTABLEKS                       R22 R22 K38 ["StreamEventUtils"]
      168 GETTABLEKS                       R23 R3 K39 ["Http"]
      170 GETTABLEKS                       R23 R23 K40 ["Networking"]
      172 GETTABLEKS                       R24 R23 K41 ["new"]
      174 DUPTABLE                         R25 K45 [{["isInternal"] = True, ["loggingLevel"]}]
      175 MOVE                             R27 R17
      176 CALL                             R27 0 1
      177 JUMPIFNOT                        R27 ; [+2]
      178 LOADN                            R26 4
      179 JUMP                             ; [+1]
      180 LOADN                            R26 0
      181 SETTABLEKS                       R26 R25 K44 ["loggingLevel"]
      183 CALL                             R24 1 1
      184 GETTABLEKS                       R25 R2 K46 ["Guest"]
      186 GETTABLEKS                       R25 R25 K47 ["Environment"]
      188 GETTABLEKS                       R26 R3 K39 ["Http"]
      190 GETTABLEKS                       R26 R26 K48 ["HttpResponse"]
      192 GETTABLEKS                       R27 R3 K49 ["Url"]
      194 GETTABLEKS                       R28 R27 K41 ["new"]
      196 LOADNIL                          R29
      197 CALL                             R28 1 1
      198 LOADK                            R30 K50 ["%*/studio-assistant/v1/conversation"]
      199 GETTABLEKS                       R32 R28 K51 ["APIS_URL"]
      201 NAMECALL                         R30 R30 K52 ["format"]
      203 CALL                             R30 2 1
      204 MOVE                             R29 R30
      205 LOADK                            R31 K53 ["%*/studio-assistant/v1/subagent-conversation"]
      206 GETTABLEKS                       R33 R28 K51 ["APIS_URL"]
      208 NAMECALL                         R31 R31 K52 ["format"]
      210 CALL                             R31 2 1
      211 MOVE                             R30 R31
      212 DUPCLOSURE                       R31 K54 [PROTO_0]
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R29
      215 DUPCLOSURE                       R32 K55 [PROTO_3]
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R5
      218 DUPCLOSURE                       R33 K56 [PROTO_5]
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R24
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R9
      233 CAPTURE                          VAL R30
      234 CAPTURE                          VAL R29
      235 DUPTABLE                         R34 K63 [{["QUOTA_EXCEEDED"] = "quota_exceeded", ["TOO_MANY_REQUESTS"] = "too_many_request", ["REQUEST_FAILED"] = "request_failed"}]
      236 DUPCLOSURE                       R35 K64 [PROTO_6]
      237 CAPTURE                          VAL R14
      238 DUPCLOSURE                       R36 K65 [PROTO_15]
      239 CAPTURE                          VAL R12
      240 CAPTURE                          VAL R25
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R1
      245 CAPTURE                          VAL R21
      246 CAPTURE                          VAL R33
      247 CAPTURE                          VAL R35
      248 DUPCLOSURE                       R37 K66 [PROTO_16]
      249 CAPTURE                          VAL R36
      250 DUPTABLE                         R38 K68 [{"createRequestHandler"}]
      251 SETTABLEKS                       R37 R38 K67 ["createRequestHandler"]
      253 RETURN                           R38 1
